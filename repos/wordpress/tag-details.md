<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `wordpress`

-	[`wordpress:4.7.1-apache`](#wordpress471-apache)
-	[`wordpress:4.7-apache`](#wordpress47-apache)
-	[`wordpress:4-apache`](#wordpress4-apache)
-	[`wordpress:apache`](#wordpressapache)
-	[`wordpress:4.7.1`](#wordpress471)
-	[`wordpress:4.7`](#wordpress47)
-	[`wordpress:4`](#wordpress4)
-	[`wordpress:latest`](#wordpresslatest)
-	[`wordpress:4.7.1-php5.6-apache`](#wordpress471-php56-apache)
-	[`wordpress:4.7-php5.6-apache`](#wordpress47-php56-apache)
-	[`wordpress:4-php5.6-apache`](#wordpress4-php56-apache)
-	[`wordpress:php5.6-apache`](#wordpressphp56-apache)
-	[`wordpress:4.7.1-php5.6`](#wordpress471-php56)
-	[`wordpress:4.7-php5.6`](#wordpress47-php56)
-	[`wordpress:4-php5.6`](#wordpress4-php56)
-	[`wordpress:php5.6`](#wordpressphp56)
-	[`wordpress:4.7.1-fpm`](#wordpress471-fpm)
-	[`wordpress:4.7-fpm`](#wordpress47-fpm)
-	[`wordpress:4-fpm`](#wordpress4-fpm)
-	[`wordpress:fpm`](#wordpressfpm)
-	[`wordpress:4.7.1-php5.6-fpm`](#wordpress471-php56-fpm)
-	[`wordpress:4.7-php5.6-fpm`](#wordpress47-php56-fpm)
-	[`wordpress:4-php5.6-fpm`](#wordpress4-php56-fpm)
-	[`wordpress:php5.6-fpm`](#wordpressphp56-fpm)
-	[`wordpress:4.7.1-fpm-alpine`](#wordpress471-fpm-alpine)
-	[`wordpress:4.7-fpm-alpine`](#wordpress47-fpm-alpine)
-	[`wordpress:4-fpm-alpine`](#wordpress4-fpm-alpine)
-	[`wordpress:fpm-alpine`](#wordpressfpm-alpine)
-	[`wordpress:4.7.1-php5.6-fpm-alpine`](#wordpress471-php56-fpm-alpine)
-	[`wordpress:4.7-php5.6-fpm-alpine`](#wordpress47-php56-fpm-alpine)
-	[`wordpress:4-php5.6-fpm-alpine`](#wordpress4-php56-fpm-alpine)
-	[`wordpress:php5.6-fpm-alpine`](#wordpressphp56-fpm-alpine)
-	[`wordpress:4.7.1-php7.0-apache`](#wordpress471-php70-apache)
-	[`wordpress:4.7-php7.0-apache`](#wordpress47-php70-apache)
-	[`wordpress:4-php7.0-apache`](#wordpress4-php70-apache)
-	[`wordpress:php7.0-apache`](#wordpressphp70-apache)
-	[`wordpress:4.7.1-php7.0`](#wordpress471-php70)
-	[`wordpress:4.7-php7.0`](#wordpress47-php70)
-	[`wordpress:4-php7.0`](#wordpress4-php70)
-	[`wordpress:php7.0`](#wordpressphp70)
-	[`wordpress:4.7.1-php7.0-fpm`](#wordpress471-php70-fpm)
-	[`wordpress:4.7-php7.0-fpm`](#wordpress47-php70-fpm)
-	[`wordpress:4-php7.0-fpm`](#wordpress4-php70-fpm)
-	[`wordpress:php7.0-fpm`](#wordpressphp70-fpm)
-	[`wordpress:4.7.1-php7.0-fpm-alpine`](#wordpress471-php70-fpm-alpine)
-	[`wordpress:4.7-php7.0-fpm-alpine`](#wordpress47-php70-fpm-alpine)
-	[`wordpress:4-php7.0-fpm-alpine`](#wordpress4-php70-fpm-alpine)
-	[`wordpress:php7.0-fpm-alpine`](#wordpressphp70-fpm-alpine)
-	[`wordpress:4.7.1-php7.1-apache`](#wordpress471-php71-apache)
-	[`wordpress:4.7-php7.1-apache`](#wordpress47-php71-apache)
-	[`wordpress:4-php7.1-apache`](#wordpress4-php71-apache)
-	[`wordpress:php7.1-apache`](#wordpressphp71-apache)
-	[`wordpress:4.7.1-php7.1`](#wordpress471-php71)
-	[`wordpress:4.7-php7.1`](#wordpress47-php71)
-	[`wordpress:4-php7.1`](#wordpress4-php71)
-	[`wordpress:php7.1`](#wordpressphp71)
-	[`wordpress:4.7.1-php7.1-fpm`](#wordpress471-php71-fpm)
-	[`wordpress:4.7-php7.1-fpm`](#wordpress47-php71-fpm)
-	[`wordpress:4-php7.1-fpm`](#wordpress4-php71-fpm)
-	[`wordpress:php7.1-fpm`](#wordpressphp71-fpm)
-	[`wordpress:4.7.1-php7.1-fpm-alpine`](#wordpress471-php71-fpm-alpine)
-	[`wordpress:4.7-php7.1-fpm-alpine`](#wordpress47-php71-fpm-alpine)
-	[`wordpress:4-php7.1-fpm-alpine`](#wordpress4-php71-fpm-alpine)
-	[`wordpress:php7.1-fpm-alpine`](#wordpressphp71-fpm-alpine)

## `wordpress:4.7.1-apache`

```console
$ docker pull wordpress@sha256:dc200d1fa3bb018055fb6781799dd7600380e820816f078d4708bbd1725b44e4
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.1-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163610308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fe82b15de92c560a4a28c0ea253e3d232db8b19df45f072368fd6542232dca`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 18:58:14 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 18:58:15 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 18:58:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 18:58:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:00:37 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:00:38 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:39 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:00:39 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:00:39 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:08:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:08:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:08:24 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:08:24 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:08:24 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:08:25 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:08:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:08:27 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:08:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:08:28 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:68e89dc461a48d9e93c9915bb3233eaa869146db3b92125be821664fb0e79721`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 12.6 MB (12575534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242d52193cec2285db52e92953e5c937abe9eb29129a23e81daa28fa6a3fdce0`  
		Last Modified: Wed, 18 Jan 2017 03:05:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c855dcde1be5b3f79962fb227ba3a407b84183aa8c81991b5e40d24b297b4775`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 9.2 MB (9247138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e412dcce5fdc2fb20e263812cf733920e1181edb43735bac700e9bd27925f19`  
		Last Modified: Wed, 18 Jan 2017 03:05:13 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b06e2997b74a2bc1d9ed3f534b481ea05d3338a954665d862a4bd62d8c7c176`  
		Last Modified: Wed, 18 Jan 2017 03:05:10 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8975cd7aff838629c1c8f0cd01642cc5cce5bd144f8769abd0016a9b0adc3f2a`  
		Last Modified: Wed, 18 Jan 2017 08:01:00 GMT  
		Size: 2.1 MB (2135021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56af758ac690f70ed5d398eadd17d2ac3e4a7e450165aa740a8ef458c11bbcf`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f101a6a4b68c5b8b2e0127b4c285b079b32f691cce15664c63986369e5df97`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36300c44965a08059290c67d3696891e4a72eecab10799d1c98f9cf8dd38874f`  
		Last Modified: Wed, 18 Jan 2017 08:01:02 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0963f4f3f9c7be45f7ed27d7bf4e70199ebdb9b403787e5574353bd5930b2757`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-apache`

```console
$ docker pull wordpress@sha256:dc200d1fa3bb018055fb6781799dd7600380e820816f078d4708bbd1725b44e4
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163610308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fe82b15de92c560a4a28c0ea253e3d232db8b19df45f072368fd6542232dca`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 18:58:14 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 18:58:15 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 18:58:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 18:58:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:00:37 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:00:38 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:39 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:00:39 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:00:39 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:08:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:08:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:08:24 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:08:24 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:08:24 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:08:25 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:08:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:08:27 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:08:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:08:28 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:68e89dc461a48d9e93c9915bb3233eaa869146db3b92125be821664fb0e79721`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 12.6 MB (12575534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242d52193cec2285db52e92953e5c937abe9eb29129a23e81daa28fa6a3fdce0`  
		Last Modified: Wed, 18 Jan 2017 03:05:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c855dcde1be5b3f79962fb227ba3a407b84183aa8c81991b5e40d24b297b4775`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 9.2 MB (9247138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e412dcce5fdc2fb20e263812cf733920e1181edb43735bac700e9bd27925f19`  
		Last Modified: Wed, 18 Jan 2017 03:05:13 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b06e2997b74a2bc1d9ed3f534b481ea05d3338a954665d862a4bd62d8c7c176`  
		Last Modified: Wed, 18 Jan 2017 03:05:10 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8975cd7aff838629c1c8f0cd01642cc5cce5bd144f8769abd0016a9b0adc3f2a`  
		Last Modified: Wed, 18 Jan 2017 08:01:00 GMT  
		Size: 2.1 MB (2135021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56af758ac690f70ed5d398eadd17d2ac3e4a7e450165aa740a8ef458c11bbcf`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f101a6a4b68c5b8b2e0127b4c285b079b32f691cce15664c63986369e5df97`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36300c44965a08059290c67d3696891e4a72eecab10799d1c98f9cf8dd38874f`  
		Last Modified: Wed, 18 Jan 2017 08:01:02 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0963f4f3f9c7be45f7ed27d7bf4e70199ebdb9b403787e5574353bd5930b2757`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-apache`

```console
$ docker pull wordpress@sha256:dc200d1fa3bb018055fb6781799dd7600380e820816f078d4708bbd1725b44e4
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163610308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fe82b15de92c560a4a28c0ea253e3d232db8b19df45f072368fd6542232dca`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 18:58:14 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 18:58:15 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 18:58:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 18:58:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:00:37 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:00:38 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:39 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:00:39 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:00:39 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:08:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:08:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:08:24 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:08:24 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:08:24 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:08:25 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:08:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:08:27 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:08:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:08:28 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:68e89dc461a48d9e93c9915bb3233eaa869146db3b92125be821664fb0e79721`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 12.6 MB (12575534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242d52193cec2285db52e92953e5c937abe9eb29129a23e81daa28fa6a3fdce0`  
		Last Modified: Wed, 18 Jan 2017 03:05:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c855dcde1be5b3f79962fb227ba3a407b84183aa8c81991b5e40d24b297b4775`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 9.2 MB (9247138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e412dcce5fdc2fb20e263812cf733920e1181edb43735bac700e9bd27925f19`  
		Last Modified: Wed, 18 Jan 2017 03:05:13 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b06e2997b74a2bc1d9ed3f534b481ea05d3338a954665d862a4bd62d8c7c176`  
		Last Modified: Wed, 18 Jan 2017 03:05:10 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8975cd7aff838629c1c8f0cd01642cc5cce5bd144f8769abd0016a9b0adc3f2a`  
		Last Modified: Wed, 18 Jan 2017 08:01:00 GMT  
		Size: 2.1 MB (2135021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56af758ac690f70ed5d398eadd17d2ac3e4a7e450165aa740a8ef458c11bbcf`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f101a6a4b68c5b8b2e0127b4c285b079b32f691cce15664c63986369e5df97`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36300c44965a08059290c67d3696891e4a72eecab10799d1c98f9cf8dd38874f`  
		Last Modified: Wed, 18 Jan 2017 08:01:02 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0963f4f3f9c7be45f7ed27d7bf4e70199ebdb9b403787e5574353bd5930b2757`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:apache`

```console
$ docker pull wordpress@sha256:dc200d1fa3bb018055fb6781799dd7600380e820816f078d4708bbd1725b44e4
```

-	Platforms:
	-	linux; amd64

### `wordpress:apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163610308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fe82b15de92c560a4a28c0ea253e3d232db8b19df45f072368fd6542232dca`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 18:58:14 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 18:58:15 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 18:58:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 18:58:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:00:37 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:00:38 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:39 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:00:39 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:00:39 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:08:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:08:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:08:24 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:08:24 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:08:24 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:08:25 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:08:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:08:27 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:08:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:08:28 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:68e89dc461a48d9e93c9915bb3233eaa869146db3b92125be821664fb0e79721`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 12.6 MB (12575534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242d52193cec2285db52e92953e5c937abe9eb29129a23e81daa28fa6a3fdce0`  
		Last Modified: Wed, 18 Jan 2017 03:05:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c855dcde1be5b3f79962fb227ba3a407b84183aa8c81991b5e40d24b297b4775`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 9.2 MB (9247138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e412dcce5fdc2fb20e263812cf733920e1181edb43735bac700e9bd27925f19`  
		Last Modified: Wed, 18 Jan 2017 03:05:13 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b06e2997b74a2bc1d9ed3f534b481ea05d3338a954665d862a4bd62d8c7c176`  
		Last Modified: Wed, 18 Jan 2017 03:05:10 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8975cd7aff838629c1c8f0cd01642cc5cce5bd144f8769abd0016a9b0adc3f2a`  
		Last Modified: Wed, 18 Jan 2017 08:01:00 GMT  
		Size: 2.1 MB (2135021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56af758ac690f70ed5d398eadd17d2ac3e4a7e450165aa740a8ef458c11bbcf`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f101a6a4b68c5b8b2e0127b4c285b079b32f691cce15664c63986369e5df97`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36300c44965a08059290c67d3696891e4a72eecab10799d1c98f9cf8dd38874f`  
		Last Modified: Wed, 18 Jan 2017 08:01:02 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0963f4f3f9c7be45f7ed27d7bf4e70199ebdb9b403787e5574353bd5930b2757`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.1`

```console
$ docker pull wordpress@sha256:dc200d1fa3bb018055fb6781799dd7600380e820816f078d4708bbd1725b44e4
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163610308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fe82b15de92c560a4a28c0ea253e3d232db8b19df45f072368fd6542232dca`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 18:58:14 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 18:58:15 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 18:58:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 18:58:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:00:37 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:00:38 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:39 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:00:39 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:00:39 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:08:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:08:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:08:24 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:08:24 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:08:24 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:08:25 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:08:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:08:27 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:08:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:08:28 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:68e89dc461a48d9e93c9915bb3233eaa869146db3b92125be821664fb0e79721`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 12.6 MB (12575534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242d52193cec2285db52e92953e5c937abe9eb29129a23e81daa28fa6a3fdce0`  
		Last Modified: Wed, 18 Jan 2017 03:05:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c855dcde1be5b3f79962fb227ba3a407b84183aa8c81991b5e40d24b297b4775`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 9.2 MB (9247138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e412dcce5fdc2fb20e263812cf733920e1181edb43735bac700e9bd27925f19`  
		Last Modified: Wed, 18 Jan 2017 03:05:13 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b06e2997b74a2bc1d9ed3f534b481ea05d3338a954665d862a4bd62d8c7c176`  
		Last Modified: Wed, 18 Jan 2017 03:05:10 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8975cd7aff838629c1c8f0cd01642cc5cce5bd144f8769abd0016a9b0adc3f2a`  
		Last Modified: Wed, 18 Jan 2017 08:01:00 GMT  
		Size: 2.1 MB (2135021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56af758ac690f70ed5d398eadd17d2ac3e4a7e450165aa740a8ef458c11bbcf`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f101a6a4b68c5b8b2e0127b4c285b079b32f691cce15664c63986369e5df97`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36300c44965a08059290c67d3696891e4a72eecab10799d1c98f9cf8dd38874f`  
		Last Modified: Wed, 18 Jan 2017 08:01:02 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0963f4f3f9c7be45f7ed27d7bf4e70199ebdb9b403787e5574353bd5930b2757`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7`

```console
$ docker pull wordpress@sha256:dc200d1fa3bb018055fb6781799dd7600380e820816f078d4708bbd1725b44e4
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163610308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fe82b15de92c560a4a28c0ea253e3d232db8b19df45f072368fd6542232dca`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 18:58:14 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 18:58:15 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 18:58:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 18:58:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:00:37 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:00:38 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:39 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:00:39 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:00:39 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:08:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:08:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:08:24 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:08:24 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:08:24 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:08:25 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:08:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:08:27 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:08:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:08:28 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:68e89dc461a48d9e93c9915bb3233eaa869146db3b92125be821664fb0e79721`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 12.6 MB (12575534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242d52193cec2285db52e92953e5c937abe9eb29129a23e81daa28fa6a3fdce0`  
		Last Modified: Wed, 18 Jan 2017 03:05:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c855dcde1be5b3f79962fb227ba3a407b84183aa8c81991b5e40d24b297b4775`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 9.2 MB (9247138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e412dcce5fdc2fb20e263812cf733920e1181edb43735bac700e9bd27925f19`  
		Last Modified: Wed, 18 Jan 2017 03:05:13 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b06e2997b74a2bc1d9ed3f534b481ea05d3338a954665d862a4bd62d8c7c176`  
		Last Modified: Wed, 18 Jan 2017 03:05:10 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8975cd7aff838629c1c8f0cd01642cc5cce5bd144f8769abd0016a9b0adc3f2a`  
		Last Modified: Wed, 18 Jan 2017 08:01:00 GMT  
		Size: 2.1 MB (2135021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56af758ac690f70ed5d398eadd17d2ac3e4a7e450165aa740a8ef458c11bbcf`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f101a6a4b68c5b8b2e0127b4c285b079b32f691cce15664c63986369e5df97`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36300c44965a08059290c67d3696891e4a72eecab10799d1c98f9cf8dd38874f`  
		Last Modified: Wed, 18 Jan 2017 08:01:02 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0963f4f3f9c7be45f7ed27d7bf4e70199ebdb9b403787e5574353bd5930b2757`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4`

```console
$ docker pull wordpress@sha256:dc200d1fa3bb018055fb6781799dd7600380e820816f078d4708bbd1725b44e4
```

-	Platforms:
	-	linux; amd64

### `wordpress:4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163610308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fe82b15de92c560a4a28c0ea253e3d232db8b19df45f072368fd6542232dca`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 18:58:14 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 18:58:15 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 18:58:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 18:58:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:00:37 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:00:38 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:39 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:00:39 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:00:39 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:08:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:08:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:08:24 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:08:24 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:08:24 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:08:25 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:08:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:08:27 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:08:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:08:28 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:68e89dc461a48d9e93c9915bb3233eaa869146db3b92125be821664fb0e79721`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 12.6 MB (12575534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242d52193cec2285db52e92953e5c937abe9eb29129a23e81daa28fa6a3fdce0`  
		Last Modified: Wed, 18 Jan 2017 03:05:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c855dcde1be5b3f79962fb227ba3a407b84183aa8c81991b5e40d24b297b4775`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 9.2 MB (9247138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e412dcce5fdc2fb20e263812cf733920e1181edb43735bac700e9bd27925f19`  
		Last Modified: Wed, 18 Jan 2017 03:05:13 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b06e2997b74a2bc1d9ed3f534b481ea05d3338a954665d862a4bd62d8c7c176`  
		Last Modified: Wed, 18 Jan 2017 03:05:10 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8975cd7aff838629c1c8f0cd01642cc5cce5bd144f8769abd0016a9b0adc3f2a`  
		Last Modified: Wed, 18 Jan 2017 08:01:00 GMT  
		Size: 2.1 MB (2135021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56af758ac690f70ed5d398eadd17d2ac3e4a7e450165aa740a8ef458c11bbcf`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f101a6a4b68c5b8b2e0127b4c285b079b32f691cce15664c63986369e5df97`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36300c44965a08059290c67d3696891e4a72eecab10799d1c98f9cf8dd38874f`  
		Last Modified: Wed, 18 Jan 2017 08:01:02 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0963f4f3f9c7be45f7ed27d7bf4e70199ebdb9b403787e5574353bd5930b2757`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:latest`

```console
$ docker pull wordpress@sha256:dc200d1fa3bb018055fb6781799dd7600380e820816f078d4708bbd1725b44e4
```

-	Platforms:
	-	linux; amd64

### `wordpress:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163610308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fe82b15de92c560a4a28c0ea253e3d232db8b19df45f072368fd6542232dca`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 18:58:14 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 18:58:15 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 18:58:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 18:58:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:00:37 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:00:38 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:39 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:00:39 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:00:39 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:08:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:08:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:08:24 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:08:24 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:08:24 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:08:25 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:08:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:08:27 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:08:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:08:28 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:68e89dc461a48d9e93c9915bb3233eaa869146db3b92125be821664fb0e79721`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 12.6 MB (12575534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242d52193cec2285db52e92953e5c937abe9eb29129a23e81daa28fa6a3fdce0`  
		Last Modified: Wed, 18 Jan 2017 03:05:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c855dcde1be5b3f79962fb227ba3a407b84183aa8c81991b5e40d24b297b4775`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 9.2 MB (9247138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e412dcce5fdc2fb20e263812cf733920e1181edb43735bac700e9bd27925f19`  
		Last Modified: Wed, 18 Jan 2017 03:05:13 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b06e2997b74a2bc1d9ed3f534b481ea05d3338a954665d862a4bd62d8c7c176`  
		Last Modified: Wed, 18 Jan 2017 03:05:10 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8975cd7aff838629c1c8f0cd01642cc5cce5bd144f8769abd0016a9b0adc3f2a`  
		Last Modified: Wed, 18 Jan 2017 08:01:00 GMT  
		Size: 2.1 MB (2135021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56af758ac690f70ed5d398eadd17d2ac3e4a7e450165aa740a8ef458c11bbcf`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f101a6a4b68c5b8b2e0127b4c285b079b32f691cce15664c63986369e5df97`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36300c44965a08059290c67d3696891e4a72eecab10799d1c98f9cf8dd38874f`  
		Last Modified: Wed, 18 Jan 2017 08:01:02 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0963f4f3f9c7be45f7ed27d7bf4e70199ebdb9b403787e5574353bd5930b2757`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.1-php5.6-apache`

```console
$ docker pull wordpress@sha256:dc200d1fa3bb018055fb6781799dd7600380e820816f078d4708bbd1725b44e4
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.1-php5.6-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163610308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fe82b15de92c560a4a28c0ea253e3d232db8b19df45f072368fd6542232dca`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 18:58:14 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 18:58:15 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 18:58:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 18:58:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:00:37 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:00:38 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:39 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:00:39 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:00:39 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:08:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:08:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:08:24 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:08:24 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:08:24 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:08:25 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:08:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:08:27 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:08:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:08:28 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:68e89dc461a48d9e93c9915bb3233eaa869146db3b92125be821664fb0e79721`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 12.6 MB (12575534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242d52193cec2285db52e92953e5c937abe9eb29129a23e81daa28fa6a3fdce0`  
		Last Modified: Wed, 18 Jan 2017 03:05:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c855dcde1be5b3f79962fb227ba3a407b84183aa8c81991b5e40d24b297b4775`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 9.2 MB (9247138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e412dcce5fdc2fb20e263812cf733920e1181edb43735bac700e9bd27925f19`  
		Last Modified: Wed, 18 Jan 2017 03:05:13 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b06e2997b74a2bc1d9ed3f534b481ea05d3338a954665d862a4bd62d8c7c176`  
		Last Modified: Wed, 18 Jan 2017 03:05:10 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8975cd7aff838629c1c8f0cd01642cc5cce5bd144f8769abd0016a9b0adc3f2a`  
		Last Modified: Wed, 18 Jan 2017 08:01:00 GMT  
		Size: 2.1 MB (2135021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56af758ac690f70ed5d398eadd17d2ac3e4a7e450165aa740a8ef458c11bbcf`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f101a6a4b68c5b8b2e0127b4c285b079b32f691cce15664c63986369e5df97`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36300c44965a08059290c67d3696891e4a72eecab10799d1c98f9cf8dd38874f`  
		Last Modified: Wed, 18 Jan 2017 08:01:02 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0963f4f3f9c7be45f7ed27d7bf4e70199ebdb9b403787e5574353bd5930b2757`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php5.6-apache`

```console
$ docker pull wordpress@sha256:dc200d1fa3bb018055fb6781799dd7600380e820816f078d4708bbd1725b44e4
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php5.6-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163610308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fe82b15de92c560a4a28c0ea253e3d232db8b19df45f072368fd6542232dca`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 18:58:14 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 18:58:15 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 18:58:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 18:58:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:00:37 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:00:38 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:39 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:00:39 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:00:39 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:08:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:08:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:08:24 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:08:24 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:08:24 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:08:25 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:08:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:08:27 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:08:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:08:28 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:68e89dc461a48d9e93c9915bb3233eaa869146db3b92125be821664fb0e79721`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 12.6 MB (12575534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242d52193cec2285db52e92953e5c937abe9eb29129a23e81daa28fa6a3fdce0`  
		Last Modified: Wed, 18 Jan 2017 03:05:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c855dcde1be5b3f79962fb227ba3a407b84183aa8c81991b5e40d24b297b4775`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 9.2 MB (9247138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e412dcce5fdc2fb20e263812cf733920e1181edb43735bac700e9bd27925f19`  
		Last Modified: Wed, 18 Jan 2017 03:05:13 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b06e2997b74a2bc1d9ed3f534b481ea05d3338a954665d862a4bd62d8c7c176`  
		Last Modified: Wed, 18 Jan 2017 03:05:10 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8975cd7aff838629c1c8f0cd01642cc5cce5bd144f8769abd0016a9b0adc3f2a`  
		Last Modified: Wed, 18 Jan 2017 08:01:00 GMT  
		Size: 2.1 MB (2135021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56af758ac690f70ed5d398eadd17d2ac3e4a7e450165aa740a8ef458c11bbcf`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f101a6a4b68c5b8b2e0127b4c285b079b32f691cce15664c63986369e5df97`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36300c44965a08059290c67d3696891e4a72eecab10799d1c98f9cf8dd38874f`  
		Last Modified: Wed, 18 Jan 2017 08:01:02 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0963f4f3f9c7be45f7ed27d7bf4e70199ebdb9b403787e5574353bd5930b2757`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php5.6-apache`

```console
$ docker pull wordpress@sha256:dc200d1fa3bb018055fb6781799dd7600380e820816f078d4708bbd1725b44e4
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php5.6-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163610308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fe82b15de92c560a4a28c0ea253e3d232db8b19df45f072368fd6542232dca`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 18:58:14 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 18:58:15 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 18:58:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 18:58:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:00:37 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:00:38 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:39 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:00:39 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:00:39 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:08:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:08:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:08:24 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:08:24 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:08:24 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:08:25 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:08:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:08:27 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:08:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:08:28 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:68e89dc461a48d9e93c9915bb3233eaa869146db3b92125be821664fb0e79721`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 12.6 MB (12575534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242d52193cec2285db52e92953e5c937abe9eb29129a23e81daa28fa6a3fdce0`  
		Last Modified: Wed, 18 Jan 2017 03:05:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c855dcde1be5b3f79962fb227ba3a407b84183aa8c81991b5e40d24b297b4775`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 9.2 MB (9247138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e412dcce5fdc2fb20e263812cf733920e1181edb43735bac700e9bd27925f19`  
		Last Modified: Wed, 18 Jan 2017 03:05:13 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b06e2997b74a2bc1d9ed3f534b481ea05d3338a954665d862a4bd62d8c7c176`  
		Last Modified: Wed, 18 Jan 2017 03:05:10 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8975cd7aff838629c1c8f0cd01642cc5cce5bd144f8769abd0016a9b0adc3f2a`  
		Last Modified: Wed, 18 Jan 2017 08:01:00 GMT  
		Size: 2.1 MB (2135021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56af758ac690f70ed5d398eadd17d2ac3e4a7e450165aa740a8ef458c11bbcf`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f101a6a4b68c5b8b2e0127b4c285b079b32f691cce15664c63986369e5df97`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36300c44965a08059290c67d3696891e4a72eecab10799d1c98f9cf8dd38874f`  
		Last Modified: Wed, 18 Jan 2017 08:01:02 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0963f4f3f9c7be45f7ed27d7bf4e70199ebdb9b403787e5574353bd5930b2757`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php5.6-apache`

```console
$ docker pull wordpress@sha256:dc200d1fa3bb018055fb6781799dd7600380e820816f078d4708bbd1725b44e4
```

-	Platforms:
	-	linux; amd64

### `wordpress:php5.6-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163610308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fe82b15de92c560a4a28c0ea253e3d232db8b19df45f072368fd6542232dca`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 18:58:14 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 18:58:15 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 18:58:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 18:58:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:00:37 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:00:38 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:39 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:00:39 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:00:39 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:08:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:08:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:08:24 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:08:24 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:08:24 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:08:25 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:08:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:08:27 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:08:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:08:28 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:68e89dc461a48d9e93c9915bb3233eaa869146db3b92125be821664fb0e79721`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 12.6 MB (12575534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242d52193cec2285db52e92953e5c937abe9eb29129a23e81daa28fa6a3fdce0`  
		Last Modified: Wed, 18 Jan 2017 03:05:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c855dcde1be5b3f79962fb227ba3a407b84183aa8c81991b5e40d24b297b4775`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 9.2 MB (9247138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e412dcce5fdc2fb20e263812cf733920e1181edb43735bac700e9bd27925f19`  
		Last Modified: Wed, 18 Jan 2017 03:05:13 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b06e2997b74a2bc1d9ed3f534b481ea05d3338a954665d862a4bd62d8c7c176`  
		Last Modified: Wed, 18 Jan 2017 03:05:10 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8975cd7aff838629c1c8f0cd01642cc5cce5bd144f8769abd0016a9b0adc3f2a`  
		Last Modified: Wed, 18 Jan 2017 08:01:00 GMT  
		Size: 2.1 MB (2135021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56af758ac690f70ed5d398eadd17d2ac3e4a7e450165aa740a8ef458c11bbcf`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f101a6a4b68c5b8b2e0127b4c285b079b32f691cce15664c63986369e5df97`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36300c44965a08059290c67d3696891e4a72eecab10799d1c98f9cf8dd38874f`  
		Last Modified: Wed, 18 Jan 2017 08:01:02 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0963f4f3f9c7be45f7ed27d7bf4e70199ebdb9b403787e5574353bd5930b2757`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.1-php5.6`

```console
$ docker pull wordpress@sha256:dc200d1fa3bb018055fb6781799dd7600380e820816f078d4708bbd1725b44e4
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.1-php5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163610308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fe82b15de92c560a4a28c0ea253e3d232db8b19df45f072368fd6542232dca`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 18:58:14 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 18:58:15 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 18:58:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 18:58:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:00:37 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:00:38 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:39 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:00:39 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:00:39 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:08:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:08:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:08:24 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:08:24 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:08:24 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:08:25 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:08:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:08:27 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:08:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:08:28 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:68e89dc461a48d9e93c9915bb3233eaa869146db3b92125be821664fb0e79721`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 12.6 MB (12575534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242d52193cec2285db52e92953e5c937abe9eb29129a23e81daa28fa6a3fdce0`  
		Last Modified: Wed, 18 Jan 2017 03:05:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c855dcde1be5b3f79962fb227ba3a407b84183aa8c81991b5e40d24b297b4775`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 9.2 MB (9247138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e412dcce5fdc2fb20e263812cf733920e1181edb43735bac700e9bd27925f19`  
		Last Modified: Wed, 18 Jan 2017 03:05:13 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b06e2997b74a2bc1d9ed3f534b481ea05d3338a954665d862a4bd62d8c7c176`  
		Last Modified: Wed, 18 Jan 2017 03:05:10 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8975cd7aff838629c1c8f0cd01642cc5cce5bd144f8769abd0016a9b0adc3f2a`  
		Last Modified: Wed, 18 Jan 2017 08:01:00 GMT  
		Size: 2.1 MB (2135021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56af758ac690f70ed5d398eadd17d2ac3e4a7e450165aa740a8ef458c11bbcf`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f101a6a4b68c5b8b2e0127b4c285b079b32f691cce15664c63986369e5df97`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36300c44965a08059290c67d3696891e4a72eecab10799d1c98f9cf8dd38874f`  
		Last Modified: Wed, 18 Jan 2017 08:01:02 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0963f4f3f9c7be45f7ed27d7bf4e70199ebdb9b403787e5574353bd5930b2757`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php5.6`

```console
$ docker pull wordpress@sha256:dc200d1fa3bb018055fb6781799dd7600380e820816f078d4708bbd1725b44e4
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163610308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fe82b15de92c560a4a28c0ea253e3d232db8b19df45f072368fd6542232dca`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 18:58:14 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 18:58:15 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 18:58:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 18:58:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:00:37 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:00:38 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:39 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:00:39 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:00:39 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:08:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:08:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:08:24 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:08:24 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:08:24 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:08:25 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:08:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:08:27 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:08:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:08:28 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:68e89dc461a48d9e93c9915bb3233eaa869146db3b92125be821664fb0e79721`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 12.6 MB (12575534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242d52193cec2285db52e92953e5c937abe9eb29129a23e81daa28fa6a3fdce0`  
		Last Modified: Wed, 18 Jan 2017 03:05:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c855dcde1be5b3f79962fb227ba3a407b84183aa8c81991b5e40d24b297b4775`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 9.2 MB (9247138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e412dcce5fdc2fb20e263812cf733920e1181edb43735bac700e9bd27925f19`  
		Last Modified: Wed, 18 Jan 2017 03:05:13 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b06e2997b74a2bc1d9ed3f534b481ea05d3338a954665d862a4bd62d8c7c176`  
		Last Modified: Wed, 18 Jan 2017 03:05:10 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8975cd7aff838629c1c8f0cd01642cc5cce5bd144f8769abd0016a9b0adc3f2a`  
		Last Modified: Wed, 18 Jan 2017 08:01:00 GMT  
		Size: 2.1 MB (2135021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56af758ac690f70ed5d398eadd17d2ac3e4a7e450165aa740a8ef458c11bbcf`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f101a6a4b68c5b8b2e0127b4c285b079b32f691cce15664c63986369e5df97`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36300c44965a08059290c67d3696891e4a72eecab10799d1c98f9cf8dd38874f`  
		Last Modified: Wed, 18 Jan 2017 08:01:02 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0963f4f3f9c7be45f7ed27d7bf4e70199ebdb9b403787e5574353bd5930b2757`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php5.6`

```console
$ docker pull wordpress@sha256:dc200d1fa3bb018055fb6781799dd7600380e820816f078d4708bbd1725b44e4
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163610308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fe82b15de92c560a4a28c0ea253e3d232db8b19df45f072368fd6542232dca`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 18:58:14 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 18:58:15 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 18:58:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 18:58:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:00:37 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:00:38 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:39 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:00:39 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:00:39 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:08:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:08:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:08:24 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:08:24 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:08:24 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:08:25 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:08:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:08:27 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:08:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:08:28 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:68e89dc461a48d9e93c9915bb3233eaa869146db3b92125be821664fb0e79721`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 12.6 MB (12575534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242d52193cec2285db52e92953e5c937abe9eb29129a23e81daa28fa6a3fdce0`  
		Last Modified: Wed, 18 Jan 2017 03:05:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c855dcde1be5b3f79962fb227ba3a407b84183aa8c81991b5e40d24b297b4775`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 9.2 MB (9247138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e412dcce5fdc2fb20e263812cf733920e1181edb43735bac700e9bd27925f19`  
		Last Modified: Wed, 18 Jan 2017 03:05:13 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b06e2997b74a2bc1d9ed3f534b481ea05d3338a954665d862a4bd62d8c7c176`  
		Last Modified: Wed, 18 Jan 2017 03:05:10 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8975cd7aff838629c1c8f0cd01642cc5cce5bd144f8769abd0016a9b0adc3f2a`  
		Last Modified: Wed, 18 Jan 2017 08:01:00 GMT  
		Size: 2.1 MB (2135021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56af758ac690f70ed5d398eadd17d2ac3e4a7e450165aa740a8ef458c11bbcf`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f101a6a4b68c5b8b2e0127b4c285b079b32f691cce15664c63986369e5df97`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36300c44965a08059290c67d3696891e4a72eecab10799d1c98f9cf8dd38874f`  
		Last Modified: Wed, 18 Jan 2017 08:01:02 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0963f4f3f9c7be45f7ed27d7bf4e70199ebdb9b403787e5574353bd5930b2757`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php5.6`

```console
$ docker pull wordpress@sha256:dc200d1fa3bb018055fb6781799dd7600380e820816f078d4708bbd1725b44e4
```

-	Platforms:
	-	linux; amd64

### `wordpress:php5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163610308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fe82b15de92c560a4a28c0ea253e3d232db8b19df45f072368fd6542232dca`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 18:58:14 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 18:58:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 18:58:15 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 18:58:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 18:58:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:00:37 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:00:38 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:00:39 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:00:39 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:00:39 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:08:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:08:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:08:24 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:08:24 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:08:24 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:08:25 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:08:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:08:27 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:08:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:08:28 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:68e89dc461a48d9e93c9915bb3233eaa869146db3b92125be821664fb0e79721`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 12.6 MB (12575534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242d52193cec2285db52e92953e5c937abe9eb29129a23e81daa28fa6a3fdce0`  
		Last Modified: Wed, 18 Jan 2017 03:05:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c855dcde1be5b3f79962fb227ba3a407b84183aa8c81991b5e40d24b297b4775`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 9.2 MB (9247138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e412dcce5fdc2fb20e263812cf733920e1181edb43735bac700e9bd27925f19`  
		Last Modified: Wed, 18 Jan 2017 03:05:13 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b06e2997b74a2bc1d9ed3f534b481ea05d3338a954665d862a4bd62d8c7c176`  
		Last Modified: Wed, 18 Jan 2017 03:05:10 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8975cd7aff838629c1c8f0cd01642cc5cce5bd144f8769abd0016a9b0adc3f2a`  
		Last Modified: Wed, 18 Jan 2017 08:01:00 GMT  
		Size: 2.1 MB (2135021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56af758ac690f70ed5d398eadd17d2ac3e4a7e450165aa740a8ef458c11bbcf`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f101a6a4b68c5b8b2e0127b4c285b079b32f691cce15664c63986369e5df97`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36300c44965a08059290c67d3696891e4a72eecab10799d1c98f9cf8dd38874f`  
		Last Modified: Wed, 18 Jan 2017 08:01:02 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0963f4f3f9c7be45f7ed27d7bf4e70199ebdb9b403787e5574353bd5930b2757`  
		Last Modified: Wed, 18 Jan 2017 08:00:59 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.1-fpm`

```console
$ docker pull wordpress@sha256:d00c7e8480e521628685e12a67aadf48385a093e820fae3444ac5f3f21b3db6d
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.1-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160240327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22d484960bf0cdc1a964b139054f387599da8a40e460408847bffad25eb10ccc`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:00:41 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:00:42 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 19:00:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:00:51 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:04:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:04:04 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:04:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:04:05 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:04:05 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 17 Jan 2017 19:04:06 GMT
EXPOSE 9000/tcp
# Tue, 17 Jan 2017 19:04:06 GMT
CMD ["php-fpm"]
# Tue, 17 Jan 2017 21:09:00 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:09:01 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:09:02 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:09:02 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:09:02 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:09:04 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:09:05 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:09:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:09:05 GMT
CMD ["php-fpm"]
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
	-	`sha256:383c7d7b892766d10ab9d9c3fce8dcd0000df742d3fd9879001644fc34958ae1`  
		Last Modified: Wed, 18 Jan 2017 03:08:09 GMT  
		Size: 12.6 MB (12556256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31625978708571731cda4e2865c6cfab9165681f88a748ef3d3d126704f0a233`  
		Last Modified: Wed, 18 Jan 2017 03:08:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550961f464a7226935b9919af92334765c490f38b09fc99ae5105047e0176a87`  
		Last Modified: Wed, 18 Jan 2017 03:08:09 GMT  
		Size: 8.8 MB (8763476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24727762dda53523f878dc7fdc5d4a022d1a202e227301b51649b0d54ae4e97`  
		Last Modified: Wed, 18 Jan 2017 03:08:05 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c9f543564e9445472f7df1d6915e7db756cb22b8b104f97fc0ab61056446ba`  
		Last Modified: Wed, 18 Jan 2017 03:08:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa54785de131453fb773c0ea0a6b9b0b3ab7ca1c1069653831046622d4b6601`  
		Last Modified: Wed, 18 Jan 2017 03:08:01 GMT  
		Size: 7.6 KB (7627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c577a52d23b792380dfc8063a7ba3547dd8178bdc73f49398016040d04c80d`  
		Last Modified: Wed, 18 Jan 2017 08:05:13 GMT  
		Size: 2.1 MB (2112684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bfa64ee14a40b37c8329af121ffe45520503ea97c0728162415750aef3d60e`  
		Last Modified: Wed, 18 Jan 2017 08:05:13 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275150abf19e04b8f8cde14e3dbb2b3db486311566b53fa3f5e667e600ff745d`  
		Last Modified: Wed, 18 Jan 2017 08:05:16 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf701efa905342e152387f7ab2d719a28a9d3991bd7a3535d1f8ce436e44b78`  
		Last Modified: Wed, 18 Jan 2017 08:05:12 GMT  
		Size: 2.9 KB (2933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-fpm`

```console
$ docker pull wordpress@sha256:d00c7e8480e521628685e12a67aadf48385a093e820fae3444ac5f3f21b3db6d
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160240327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22d484960bf0cdc1a964b139054f387599da8a40e460408847bffad25eb10ccc`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:00:41 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:00:42 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 19:00:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:00:51 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:04:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:04:04 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:04:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:04:05 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:04:05 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 17 Jan 2017 19:04:06 GMT
EXPOSE 9000/tcp
# Tue, 17 Jan 2017 19:04:06 GMT
CMD ["php-fpm"]
# Tue, 17 Jan 2017 21:09:00 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:09:01 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:09:02 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:09:02 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:09:02 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:09:04 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:09:05 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:09:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:09:05 GMT
CMD ["php-fpm"]
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
	-	`sha256:383c7d7b892766d10ab9d9c3fce8dcd0000df742d3fd9879001644fc34958ae1`  
		Last Modified: Wed, 18 Jan 2017 03:08:09 GMT  
		Size: 12.6 MB (12556256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31625978708571731cda4e2865c6cfab9165681f88a748ef3d3d126704f0a233`  
		Last Modified: Wed, 18 Jan 2017 03:08:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550961f464a7226935b9919af92334765c490f38b09fc99ae5105047e0176a87`  
		Last Modified: Wed, 18 Jan 2017 03:08:09 GMT  
		Size: 8.8 MB (8763476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24727762dda53523f878dc7fdc5d4a022d1a202e227301b51649b0d54ae4e97`  
		Last Modified: Wed, 18 Jan 2017 03:08:05 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c9f543564e9445472f7df1d6915e7db756cb22b8b104f97fc0ab61056446ba`  
		Last Modified: Wed, 18 Jan 2017 03:08:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa54785de131453fb773c0ea0a6b9b0b3ab7ca1c1069653831046622d4b6601`  
		Last Modified: Wed, 18 Jan 2017 03:08:01 GMT  
		Size: 7.6 KB (7627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c577a52d23b792380dfc8063a7ba3547dd8178bdc73f49398016040d04c80d`  
		Last Modified: Wed, 18 Jan 2017 08:05:13 GMT  
		Size: 2.1 MB (2112684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bfa64ee14a40b37c8329af121ffe45520503ea97c0728162415750aef3d60e`  
		Last Modified: Wed, 18 Jan 2017 08:05:13 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275150abf19e04b8f8cde14e3dbb2b3db486311566b53fa3f5e667e600ff745d`  
		Last Modified: Wed, 18 Jan 2017 08:05:16 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf701efa905342e152387f7ab2d719a28a9d3991bd7a3535d1f8ce436e44b78`  
		Last Modified: Wed, 18 Jan 2017 08:05:12 GMT  
		Size: 2.9 KB (2933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-fpm`

```console
$ docker pull wordpress@sha256:d00c7e8480e521628685e12a67aadf48385a093e820fae3444ac5f3f21b3db6d
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160240327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22d484960bf0cdc1a964b139054f387599da8a40e460408847bffad25eb10ccc`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:00:41 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:00:42 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 19:00:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:00:51 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:04:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:04:04 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:04:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:04:05 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:04:05 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 17 Jan 2017 19:04:06 GMT
EXPOSE 9000/tcp
# Tue, 17 Jan 2017 19:04:06 GMT
CMD ["php-fpm"]
# Tue, 17 Jan 2017 21:09:00 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:09:01 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:09:02 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:09:02 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:09:02 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:09:04 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:09:05 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:09:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:09:05 GMT
CMD ["php-fpm"]
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
	-	`sha256:383c7d7b892766d10ab9d9c3fce8dcd0000df742d3fd9879001644fc34958ae1`  
		Last Modified: Wed, 18 Jan 2017 03:08:09 GMT  
		Size: 12.6 MB (12556256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31625978708571731cda4e2865c6cfab9165681f88a748ef3d3d126704f0a233`  
		Last Modified: Wed, 18 Jan 2017 03:08:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550961f464a7226935b9919af92334765c490f38b09fc99ae5105047e0176a87`  
		Last Modified: Wed, 18 Jan 2017 03:08:09 GMT  
		Size: 8.8 MB (8763476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24727762dda53523f878dc7fdc5d4a022d1a202e227301b51649b0d54ae4e97`  
		Last Modified: Wed, 18 Jan 2017 03:08:05 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c9f543564e9445472f7df1d6915e7db756cb22b8b104f97fc0ab61056446ba`  
		Last Modified: Wed, 18 Jan 2017 03:08:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa54785de131453fb773c0ea0a6b9b0b3ab7ca1c1069653831046622d4b6601`  
		Last Modified: Wed, 18 Jan 2017 03:08:01 GMT  
		Size: 7.6 KB (7627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c577a52d23b792380dfc8063a7ba3547dd8178bdc73f49398016040d04c80d`  
		Last Modified: Wed, 18 Jan 2017 08:05:13 GMT  
		Size: 2.1 MB (2112684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bfa64ee14a40b37c8329af121ffe45520503ea97c0728162415750aef3d60e`  
		Last Modified: Wed, 18 Jan 2017 08:05:13 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275150abf19e04b8f8cde14e3dbb2b3db486311566b53fa3f5e667e600ff745d`  
		Last Modified: Wed, 18 Jan 2017 08:05:16 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf701efa905342e152387f7ab2d719a28a9d3991bd7a3535d1f8ce436e44b78`  
		Last Modified: Wed, 18 Jan 2017 08:05:12 GMT  
		Size: 2.9 KB (2933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:fpm`

```console
$ docker pull wordpress@sha256:d00c7e8480e521628685e12a67aadf48385a093e820fae3444ac5f3f21b3db6d
```

-	Platforms:
	-	linux; amd64

### `wordpress:fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160240327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22d484960bf0cdc1a964b139054f387599da8a40e460408847bffad25eb10ccc`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:00:41 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:00:42 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 19:00:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:00:51 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:04:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:04:04 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:04:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:04:05 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:04:05 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 17 Jan 2017 19:04:06 GMT
EXPOSE 9000/tcp
# Tue, 17 Jan 2017 19:04:06 GMT
CMD ["php-fpm"]
# Tue, 17 Jan 2017 21:09:00 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:09:01 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:09:02 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:09:02 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:09:02 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:09:04 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:09:05 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:09:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:09:05 GMT
CMD ["php-fpm"]
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
	-	`sha256:383c7d7b892766d10ab9d9c3fce8dcd0000df742d3fd9879001644fc34958ae1`  
		Last Modified: Wed, 18 Jan 2017 03:08:09 GMT  
		Size: 12.6 MB (12556256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31625978708571731cda4e2865c6cfab9165681f88a748ef3d3d126704f0a233`  
		Last Modified: Wed, 18 Jan 2017 03:08:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550961f464a7226935b9919af92334765c490f38b09fc99ae5105047e0176a87`  
		Last Modified: Wed, 18 Jan 2017 03:08:09 GMT  
		Size: 8.8 MB (8763476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24727762dda53523f878dc7fdc5d4a022d1a202e227301b51649b0d54ae4e97`  
		Last Modified: Wed, 18 Jan 2017 03:08:05 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c9f543564e9445472f7df1d6915e7db756cb22b8b104f97fc0ab61056446ba`  
		Last Modified: Wed, 18 Jan 2017 03:08:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa54785de131453fb773c0ea0a6b9b0b3ab7ca1c1069653831046622d4b6601`  
		Last Modified: Wed, 18 Jan 2017 03:08:01 GMT  
		Size: 7.6 KB (7627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c577a52d23b792380dfc8063a7ba3547dd8178bdc73f49398016040d04c80d`  
		Last Modified: Wed, 18 Jan 2017 08:05:13 GMT  
		Size: 2.1 MB (2112684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bfa64ee14a40b37c8329af121ffe45520503ea97c0728162415750aef3d60e`  
		Last Modified: Wed, 18 Jan 2017 08:05:13 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275150abf19e04b8f8cde14e3dbb2b3db486311566b53fa3f5e667e600ff745d`  
		Last Modified: Wed, 18 Jan 2017 08:05:16 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf701efa905342e152387f7ab2d719a28a9d3991bd7a3535d1f8ce436e44b78`  
		Last Modified: Wed, 18 Jan 2017 08:05:12 GMT  
		Size: 2.9 KB (2933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.1-php5.6-fpm`

```console
$ docker pull wordpress@sha256:d00c7e8480e521628685e12a67aadf48385a093e820fae3444ac5f3f21b3db6d
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.1-php5.6-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160240327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22d484960bf0cdc1a964b139054f387599da8a40e460408847bffad25eb10ccc`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:00:41 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:00:42 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 19:00:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:00:51 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:04:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:04:04 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:04:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:04:05 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:04:05 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 17 Jan 2017 19:04:06 GMT
EXPOSE 9000/tcp
# Tue, 17 Jan 2017 19:04:06 GMT
CMD ["php-fpm"]
# Tue, 17 Jan 2017 21:09:00 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:09:01 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:09:02 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:09:02 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:09:02 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:09:04 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:09:05 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:09:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:09:05 GMT
CMD ["php-fpm"]
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
	-	`sha256:383c7d7b892766d10ab9d9c3fce8dcd0000df742d3fd9879001644fc34958ae1`  
		Last Modified: Wed, 18 Jan 2017 03:08:09 GMT  
		Size: 12.6 MB (12556256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31625978708571731cda4e2865c6cfab9165681f88a748ef3d3d126704f0a233`  
		Last Modified: Wed, 18 Jan 2017 03:08:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550961f464a7226935b9919af92334765c490f38b09fc99ae5105047e0176a87`  
		Last Modified: Wed, 18 Jan 2017 03:08:09 GMT  
		Size: 8.8 MB (8763476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24727762dda53523f878dc7fdc5d4a022d1a202e227301b51649b0d54ae4e97`  
		Last Modified: Wed, 18 Jan 2017 03:08:05 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c9f543564e9445472f7df1d6915e7db756cb22b8b104f97fc0ab61056446ba`  
		Last Modified: Wed, 18 Jan 2017 03:08:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa54785de131453fb773c0ea0a6b9b0b3ab7ca1c1069653831046622d4b6601`  
		Last Modified: Wed, 18 Jan 2017 03:08:01 GMT  
		Size: 7.6 KB (7627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c577a52d23b792380dfc8063a7ba3547dd8178bdc73f49398016040d04c80d`  
		Last Modified: Wed, 18 Jan 2017 08:05:13 GMT  
		Size: 2.1 MB (2112684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bfa64ee14a40b37c8329af121ffe45520503ea97c0728162415750aef3d60e`  
		Last Modified: Wed, 18 Jan 2017 08:05:13 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275150abf19e04b8f8cde14e3dbb2b3db486311566b53fa3f5e667e600ff745d`  
		Last Modified: Wed, 18 Jan 2017 08:05:16 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf701efa905342e152387f7ab2d719a28a9d3991bd7a3535d1f8ce436e44b78`  
		Last Modified: Wed, 18 Jan 2017 08:05:12 GMT  
		Size: 2.9 KB (2933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php5.6-fpm`

```console
$ docker pull wordpress@sha256:d00c7e8480e521628685e12a67aadf48385a093e820fae3444ac5f3f21b3db6d
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php5.6-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160240327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22d484960bf0cdc1a964b139054f387599da8a40e460408847bffad25eb10ccc`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:00:41 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:00:42 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 19:00:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:00:51 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:04:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:04:04 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:04:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:04:05 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:04:05 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 17 Jan 2017 19:04:06 GMT
EXPOSE 9000/tcp
# Tue, 17 Jan 2017 19:04:06 GMT
CMD ["php-fpm"]
# Tue, 17 Jan 2017 21:09:00 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:09:01 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:09:02 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:09:02 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:09:02 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:09:04 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:09:05 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:09:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:09:05 GMT
CMD ["php-fpm"]
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
	-	`sha256:383c7d7b892766d10ab9d9c3fce8dcd0000df742d3fd9879001644fc34958ae1`  
		Last Modified: Wed, 18 Jan 2017 03:08:09 GMT  
		Size: 12.6 MB (12556256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31625978708571731cda4e2865c6cfab9165681f88a748ef3d3d126704f0a233`  
		Last Modified: Wed, 18 Jan 2017 03:08:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550961f464a7226935b9919af92334765c490f38b09fc99ae5105047e0176a87`  
		Last Modified: Wed, 18 Jan 2017 03:08:09 GMT  
		Size: 8.8 MB (8763476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24727762dda53523f878dc7fdc5d4a022d1a202e227301b51649b0d54ae4e97`  
		Last Modified: Wed, 18 Jan 2017 03:08:05 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c9f543564e9445472f7df1d6915e7db756cb22b8b104f97fc0ab61056446ba`  
		Last Modified: Wed, 18 Jan 2017 03:08:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa54785de131453fb773c0ea0a6b9b0b3ab7ca1c1069653831046622d4b6601`  
		Last Modified: Wed, 18 Jan 2017 03:08:01 GMT  
		Size: 7.6 KB (7627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c577a52d23b792380dfc8063a7ba3547dd8178bdc73f49398016040d04c80d`  
		Last Modified: Wed, 18 Jan 2017 08:05:13 GMT  
		Size: 2.1 MB (2112684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bfa64ee14a40b37c8329af121ffe45520503ea97c0728162415750aef3d60e`  
		Last Modified: Wed, 18 Jan 2017 08:05:13 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275150abf19e04b8f8cde14e3dbb2b3db486311566b53fa3f5e667e600ff745d`  
		Last Modified: Wed, 18 Jan 2017 08:05:16 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf701efa905342e152387f7ab2d719a28a9d3991bd7a3535d1f8ce436e44b78`  
		Last Modified: Wed, 18 Jan 2017 08:05:12 GMT  
		Size: 2.9 KB (2933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php5.6-fpm`

```console
$ docker pull wordpress@sha256:d00c7e8480e521628685e12a67aadf48385a093e820fae3444ac5f3f21b3db6d
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php5.6-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160240327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22d484960bf0cdc1a964b139054f387599da8a40e460408847bffad25eb10ccc`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:00:41 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:00:42 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 19:00:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:00:51 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:04:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:04:04 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:04:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:04:05 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:04:05 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 17 Jan 2017 19:04:06 GMT
EXPOSE 9000/tcp
# Tue, 17 Jan 2017 19:04:06 GMT
CMD ["php-fpm"]
# Tue, 17 Jan 2017 21:09:00 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:09:01 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:09:02 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:09:02 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:09:02 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:09:04 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:09:05 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:09:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:09:05 GMT
CMD ["php-fpm"]
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
	-	`sha256:383c7d7b892766d10ab9d9c3fce8dcd0000df742d3fd9879001644fc34958ae1`  
		Last Modified: Wed, 18 Jan 2017 03:08:09 GMT  
		Size: 12.6 MB (12556256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31625978708571731cda4e2865c6cfab9165681f88a748ef3d3d126704f0a233`  
		Last Modified: Wed, 18 Jan 2017 03:08:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550961f464a7226935b9919af92334765c490f38b09fc99ae5105047e0176a87`  
		Last Modified: Wed, 18 Jan 2017 03:08:09 GMT  
		Size: 8.8 MB (8763476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24727762dda53523f878dc7fdc5d4a022d1a202e227301b51649b0d54ae4e97`  
		Last Modified: Wed, 18 Jan 2017 03:08:05 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c9f543564e9445472f7df1d6915e7db756cb22b8b104f97fc0ab61056446ba`  
		Last Modified: Wed, 18 Jan 2017 03:08:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa54785de131453fb773c0ea0a6b9b0b3ab7ca1c1069653831046622d4b6601`  
		Last Modified: Wed, 18 Jan 2017 03:08:01 GMT  
		Size: 7.6 KB (7627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c577a52d23b792380dfc8063a7ba3547dd8178bdc73f49398016040d04c80d`  
		Last Modified: Wed, 18 Jan 2017 08:05:13 GMT  
		Size: 2.1 MB (2112684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bfa64ee14a40b37c8329af121ffe45520503ea97c0728162415750aef3d60e`  
		Last Modified: Wed, 18 Jan 2017 08:05:13 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275150abf19e04b8f8cde14e3dbb2b3db486311566b53fa3f5e667e600ff745d`  
		Last Modified: Wed, 18 Jan 2017 08:05:16 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf701efa905342e152387f7ab2d719a28a9d3991bd7a3535d1f8ce436e44b78`  
		Last Modified: Wed, 18 Jan 2017 08:05:12 GMT  
		Size: 2.9 KB (2933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php5.6-fpm`

```console
$ docker pull wordpress@sha256:d00c7e8480e521628685e12a67aadf48385a093e820fae3444ac5f3f21b3db6d
```

-	Platforms:
	-	linux; amd64

### `wordpress:php5.6-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160240327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22d484960bf0cdc1a964b139054f387599da8a40e460408847bffad25eb10ccc`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:00:41 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:00:42 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 19:00:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:00:51 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:04:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:04:04 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:04:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:04:05 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:04:05 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 17 Jan 2017 19:04:06 GMT
EXPOSE 9000/tcp
# Tue, 17 Jan 2017 19:04:06 GMT
CMD ["php-fpm"]
# Tue, 17 Jan 2017 21:09:00 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:09:01 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:09:02 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:09:02 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:09:02 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:09:04 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:09:05 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:09:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:09:05 GMT
CMD ["php-fpm"]
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
	-	`sha256:383c7d7b892766d10ab9d9c3fce8dcd0000df742d3fd9879001644fc34958ae1`  
		Last Modified: Wed, 18 Jan 2017 03:08:09 GMT  
		Size: 12.6 MB (12556256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31625978708571731cda4e2865c6cfab9165681f88a748ef3d3d126704f0a233`  
		Last Modified: Wed, 18 Jan 2017 03:08:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550961f464a7226935b9919af92334765c490f38b09fc99ae5105047e0176a87`  
		Last Modified: Wed, 18 Jan 2017 03:08:09 GMT  
		Size: 8.8 MB (8763476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24727762dda53523f878dc7fdc5d4a022d1a202e227301b51649b0d54ae4e97`  
		Last Modified: Wed, 18 Jan 2017 03:08:05 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c9f543564e9445472f7df1d6915e7db756cb22b8b104f97fc0ab61056446ba`  
		Last Modified: Wed, 18 Jan 2017 03:08:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa54785de131453fb773c0ea0a6b9b0b3ab7ca1c1069653831046622d4b6601`  
		Last Modified: Wed, 18 Jan 2017 03:08:01 GMT  
		Size: 7.6 KB (7627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c577a52d23b792380dfc8063a7ba3547dd8178bdc73f49398016040d04c80d`  
		Last Modified: Wed, 18 Jan 2017 08:05:13 GMT  
		Size: 2.1 MB (2112684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bfa64ee14a40b37c8329af121ffe45520503ea97c0728162415750aef3d60e`  
		Last Modified: Wed, 18 Jan 2017 08:05:13 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275150abf19e04b8f8cde14e3dbb2b3db486311566b53fa3f5e667e600ff745d`  
		Last Modified: Wed, 18 Jan 2017 08:05:16 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf701efa905342e152387f7ab2d719a28a9d3991bd7a3535d1f8ce436e44b78`  
		Last Modified: Wed, 18 Jan 2017 08:05:12 GMT  
		Size: 2.9 KB (2933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.1-fpm-alpine`

```console
$ docker pull wordpress@sha256:bf4d5e6976e7214a50802347ed1e672adffcf08938155ac7761c1ea7ab0df701
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.1-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35080005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccbc3d162dc06aed0a809f987669902fa8f37ad41cd0923335ae73e2f4805d27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 27 Dec 2016 20:40:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 27 Dec 2016 20:40:08 GMT
ENV PHP_VERSION=5.6.29
# Tue, 27 Dec 2016 20:40:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 27 Dec 2016 20:40:09 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 27 Dec 2016 20:40:17 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 27 Dec 2016 20:40:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:50:46 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 27 Dec 2016 20:50:48 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:50:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 27 Dec 2016 20:50:49 GMT
WORKDIR /var/www/html
# Tue, 27 Dec 2016 20:50:50 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 27 Dec 2016 20:50:50 GMT
EXPOSE 9000/tcp
# Tue, 27 Dec 2016 20:50:51 GMT
CMD ["php-fpm"]
# Tue, 27 Dec 2016 22:10:33 GMT
RUN apk add --no-cache 		bash 		sed
# Tue, 27 Dec 2016 22:11:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 27 Dec 2016 22:11:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 27 Dec 2016 22:11:07 GMT
VOLUME [/var/www/html]
# Fri, 13 Jan 2017 19:37:45 GMT
ENV WORDPRESS_VERSION=4.7.1
# Fri, 13 Jan 2017 19:37:45 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Fri, 13 Jan 2017 19:37:48 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 13 Jan 2017 19:37:49 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Fri, 13 Jan 2017 19:37:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jan 2017 19:37:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6f92d59be217f34edf9fb50130efaafead41e66a73b9f151bfb35596d3e416`  
		Last Modified: Tue, 27 Dec 2016 21:30:10 GMT  
		Size: 12.6 MB (12617830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd4dd6c2241dce0ab2d966def1b431d00a094850ba52af2085a50b08c859c9c7`  
		Last Modified: Tue, 27 Dec 2016 21:30:05 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18c6de50a3a2b794679ccb67aea566cf5342a6afe5fda5cb4cf9dc9d2a89e8f`  
		Last Modified: Tue, 27 Dec 2016 21:30:10 GMT  
		Size: 10.0 MB (9960416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee55edbee98a21844a6f681e3326420d1a6d679347b6371b3f109c8106b79a57`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 2.0 KB (2000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8573fffdbc05f45676b791b72909188911c932524c284e69e6f086d35343434`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4264bf71b3406fe88f3aee450aeb23264c1102026114dcbca21c8d401222a640`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 7.6 KB (7617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df735e44a149a130a83bcf2134dbf45b7c315fa939746666176cde1f0c0f94f`  
		Last Modified: Tue, 27 Dec 2016 22:35:59 GMT  
		Size: 590.0 KB (589977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b321d25c237095453ff973558df65ab10cf7b095b2e83db35c59f62ad077f8e`  
		Last Modified: Tue, 27 Dec 2016 22:35:59 GMT  
		Size: 709.0 KB (708971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae688b8d153a65d75fad4f5747b6e1009b9403a553661715e2771158a287cf2`  
		Last Modified: Tue, 27 Dec 2016 22:35:58 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5aaa707568ef9ad4f77920e6caff968f92fe319b3deda1d444f3faec5b088b`  
		Last Modified: Fri, 13 Jan 2017 19:44:50 GMT  
		Size: 7.8 MB (7826284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ce386511480e5ee0780c8a0be4bffb05b7e5836011f2232c23a133e4907675`  
		Last Modified: Fri, 13 Jan 2017 19:44:48 GMT  
		Size: 2.9 KB (2925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-fpm-alpine`

```console
$ docker pull wordpress@sha256:bf4d5e6976e7214a50802347ed1e672adffcf08938155ac7761c1ea7ab0df701
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35080005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccbc3d162dc06aed0a809f987669902fa8f37ad41cd0923335ae73e2f4805d27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 27 Dec 2016 20:40:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 27 Dec 2016 20:40:08 GMT
ENV PHP_VERSION=5.6.29
# Tue, 27 Dec 2016 20:40:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 27 Dec 2016 20:40:09 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 27 Dec 2016 20:40:17 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 27 Dec 2016 20:40:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:50:46 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 27 Dec 2016 20:50:48 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:50:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 27 Dec 2016 20:50:49 GMT
WORKDIR /var/www/html
# Tue, 27 Dec 2016 20:50:50 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 27 Dec 2016 20:50:50 GMT
EXPOSE 9000/tcp
# Tue, 27 Dec 2016 20:50:51 GMT
CMD ["php-fpm"]
# Tue, 27 Dec 2016 22:10:33 GMT
RUN apk add --no-cache 		bash 		sed
# Tue, 27 Dec 2016 22:11:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 27 Dec 2016 22:11:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 27 Dec 2016 22:11:07 GMT
VOLUME [/var/www/html]
# Fri, 13 Jan 2017 19:37:45 GMT
ENV WORDPRESS_VERSION=4.7.1
# Fri, 13 Jan 2017 19:37:45 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Fri, 13 Jan 2017 19:37:48 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 13 Jan 2017 19:37:49 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Fri, 13 Jan 2017 19:37:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jan 2017 19:37:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6f92d59be217f34edf9fb50130efaafead41e66a73b9f151bfb35596d3e416`  
		Last Modified: Tue, 27 Dec 2016 21:30:10 GMT  
		Size: 12.6 MB (12617830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd4dd6c2241dce0ab2d966def1b431d00a094850ba52af2085a50b08c859c9c7`  
		Last Modified: Tue, 27 Dec 2016 21:30:05 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18c6de50a3a2b794679ccb67aea566cf5342a6afe5fda5cb4cf9dc9d2a89e8f`  
		Last Modified: Tue, 27 Dec 2016 21:30:10 GMT  
		Size: 10.0 MB (9960416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee55edbee98a21844a6f681e3326420d1a6d679347b6371b3f109c8106b79a57`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 2.0 KB (2000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8573fffdbc05f45676b791b72909188911c932524c284e69e6f086d35343434`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4264bf71b3406fe88f3aee450aeb23264c1102026114dcbca21c8d401222a640`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 7.6 KB (7617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df735e44a149a130a83bcf2134dbf45b7c315fa939746666176cde1f0c0f94f`  
		Last Modified: Tue, 27 Dec 2016 22:35:59 GMT  
		Size: 590.0 KB (589977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b321d25c237095453ff973558df65ab10cf7b095b2e83db35c59f62ad077f8e`  
		Last Modified: Tue, 27 Dec 2016 22:35:59 GMT  
		Size: 709.0 KB (708971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae688b8d153a65d75fad4f5747b6e1009b9403a553661715e2771158a287cf2`  
		Last Modified: Tue, 27 Dec 2016 22:35:58 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5aaa707568ef9ad4f77920e6caff968f92fe319b3deda1d444f3faec5b088b`  
		Last Modified: Fri, 13 Jan 2017 19:44:50 GMT  
		Size: 7.8 MB (7826284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ce386511480e5ee0780c8a0be4bffb05b7e5836011f2232c23a133e4907675`  
		Last Modified: Fri, 13 Jan 2017 19:44:48 GMT  
		Size: 2.9 KB (2925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-fpm-alpine`

```console
$ docker pull wordpress@sha256:bf4d5e6976e7214a50802347ed1e672adffcf08938155ac7761c1ea7ab0df701
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35080005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccbc3d162dc06aed0a809f987669902fa8f37ad41cd0923335ae73e2f4805d27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 27 Dec 2016 20:40:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 27 Dec 2016 20:40:08 GMT
ENV PHP_VERSION=5.6.29
# Tue, 27 Dec 2016 20:40:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 27 Dec 2016 20:40:09 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 27 Dec 2016 20:40:17 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 27 Dec 2016 20:40:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:50:46 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 27 Dec 2016 20:50:48 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:50:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 27 Dec 2016 20:50:49 GMT
WORKDIR /var/www/html
# Tue, 27 Dec 2016 20:50:50 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 27 Dec 2016 20:50:50 GMT
EXPOSE 9000/tcp
# Tue, 27 Dec 2016 20:50:51 GMT
CMD ["php-fpm"]
# Tue, 27 Dec 2016 22:10:33 GMT
RUN apk add --no-cache 		bash 		sed
# Tue, 27 Dec 2016 22:11:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 27 Dec 2016 22:11:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 27 Dec 2016 22:11:07 GMT
VOLUME [/var/www/html]
# Fri, 13 Jan 2017 19:37:45 GMT
ENV WORDPRESS_VERSION=4.7.1
# Fri, 13 Jan 2017 19:37:45 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Fri, 13 Jan 2017 19:37:48 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 13 Jan 2017 19:37:49 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Fri, 13 Jan 2017 19:37:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jan 2017 19:37:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6f92d59be217f34edf9fb50130efaafead41e66a73b9f151bfb35596d3e416`  
		Last Modified: Tue, 27 Dec 2016 21:30:10 GMT  
		Size: 12.6 MB (12617830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd4dd6c2241dce0ab2d966def1b431d00a094850ba52af2085a50b08c859c9c7`  
		Last Modified: Tue, 27 Dec 2016 21:30:05 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18c6de50a3a2b794679ccb67aea566cf5342a6afe5fda5cb4cf9dc9d2a89e8f`  
		Last Modified: Tue, 27 Dec 2016 21:30:10 GMT  
		Size: 10.0 MB (9960416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee55edbee98a21844a6f681e3326420d1a6d679347b6371b3f109c8106b79a57`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 2.0 KB (2000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8573fffdbc05f45676b791b72909188911c932524c284e69e6f086d35343434`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4264bf71b3406fe88f3aee450aeb23264c1102026114dcbca21c8d401222a640`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 7.6 KB (7617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df735e44a149a130a83bcf2134dbf45b7c315fa939746666176cde1f0c0f94f`  
		Last Modified: Tue, 27 Dec 2016 22:35:59 GMT  
		Size: 590.0 KB (589977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b321d25c237095453ff973558df65ab10cf7b095b2e83db35c59f62ad077f8e`  
		Last Modified: Tue, 27 Dec 2016 22:35:59 GMT  
		Size: 709.0 KB (708971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae688b8d153a65d75fad4f5747b6e1009b9403a553661715e2771158a287cf2`  
		Last Modified: Tue, 27 Dec 2016 22:35:58 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5aaa707568ef9ad4f77920e6caff968f92fe319b3deda1d444f3faec5b088b`  
		Last Modified: Fri, 13 Jan 2017 19:44:50 GMT  
		Size: 7.8 MB (7826284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ce386511480e5ee0780c8a0be4bffb05b7e5836011f2232c23a133e4907675`  
		Last Modified: Fri, 13 Jan 2017 19:44:48 GMT  
		Size: 2.9 KB (2925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:fpm-alpine`

```console
$ docker pull wordpress@sha256:bf4d5e6976e7214a50802347ed1e672adffcf08938155ac7761c1ea7ab0df701
```

-	Platforms:
	-	linux; amd64

### `wordpress:fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35080005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccbc3d162dc06aed0a809f987669902fa8f37ad41cd0923335ae73e2f4805d27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 27 Dec 2016 20:40:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 27 Dec 2016 20:40:08 GMT
ENV PHP_VERSION=5.6.29
# Tue, 27 Dec 2016 20:40:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 27 Dec 2016 20:40:09 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 27 Dec 2016 20:40:17 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 27 Dec 2016 20:40:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:50:46 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 27 Dec 2016 20:50:48 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:50:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 27 Dec 2016 20:50:49 GMT
WORKDIR /var/www/html
# Tue, 27 Dec 2016 20:50:50 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 27 Dec 2016 20:50:50 GMT
EXPOSE 9000/tcp
# Tue, 27 Dec 2016 20:50:51 GMT
CMD ["php-fpm"]
# Tue, 27 Dec 2016 22:10:33 GMT
RUN apk add --no-cache 		bash 		sed
# Tue, 27 Dec 2016 22:11:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 27 Dec 2016 22:11:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 27 Dec 2016 22:11:07 GMT
VOLUME [/var/www/html]
# Fri, 13 Jan 2017 19:37:45 GMT
ENV WORDPRESS_VERSION=4.7.1
# Fri, 13 Jan 2017 19:37:45 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Fri, 13 Jan 2017 19:37:48 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 13 Jan 2017 19:37:49 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Fri, 13 Jan 2017 19:37:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jan 2017 19:37:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6f92d59be217f34edf9fb50130efaafead41e66a73b9f151bfb35596d3e416`  
		Last Modified: Tue, 27 Dec 2016 21:30:10 GMT  
		Size: 12.6 MB (12617830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd4dd6c2241dce0ab2d966def1b431d00a094850ba52af2085a50b08c859c9c7`  
		Last Modified: Tue, 27 Dec 2016 21:30:05 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18c6de50a3a2b794679ccb67aea566cf5342a6afe5fda5cb4cf9dc9d2a89e8f`  
		Last Modified: Tue, 27 Dec 2016 21:30:10 GMT  
		Size: 10.0 MB (9960416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee55edbee98a21844a6f681e3326420d1a6d679347b6371b3f109c8106b79a57`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 2.0 KB (2000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8573fffdbc05f45676b791b72909188911c932524c284e69e6f086d35343434`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4264bf71b3406fe88f3aee450aeb23264c1102026114dcbca21c8d401222a640`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 7.6 KB (7617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df735e44a149a130a83bcf2134dbf45b7c315fa939746666176cde1f0c0f94f`  
		Last Modified: Tue, 27 Dec 2016 22:35:59 GMT  
		Size: 590.0 KB (589977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b321d25c237095453ff973558df65ab10cf7b095b2e83db35c59f62ad077f8e`  
		Last Modified: Tue, 27 Dec 2016 22:35:59 GMT  
		Size: 709.0 KB (708971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae688b8d153a65d75fad4f5747b6e1009b9403a553661715e2771158a287cf2`  
		Last Modified: Tue, 27 Dec 2016 22:35:58 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5aaa707568ef9ad4f77920e6caff968f92fe319b3deda1d444f3faec5b088b`  
		Last Modified: Fri, 13 Jan 2017 19:44:50 GMT  
		Size: 7.8 MB (7826284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ce386511480e5ee0780c8a0be4bffb05b7e5836011f2232c23a133e4907675`  
		Last Modified: Fri, 13 Jan 2017 19:44:48 GMT  
		Size: 2.9 KB (2925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.1-php5.6-fpm-alpine`

```console
$ docker pull wordpress@sha256:bf4d5e6976e7214a50802347ed1e672adffcf08938155ac7761c1ea7ab0df701
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.1-php5.6-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35080005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccbc3d162dc06aed0a809f987669902fa8f37ad41cd0923335ae73e2f4805d27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 27 Dec 2016 20:40:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 27 Dec 2016 20:40:08 GMT
ENV PHP_VERSION=5.6.29
# Tue, 27 Dec 2016 20:40:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 27 Dec 2016 20:40:09 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 27 Dec 2016 20:40:17 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 27 Dec 2016 20:40:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:50:46 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 27 Dec 2016 20:50:48 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:50:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 27 Dec 2016 20:50:49 GMT
WORKDIR /var/www/html
# Tue, 27 Dec 2016 20:50:50 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 27 Dec 2016 20:50:50 GMT
EXPOSE 9000/tcp
# Tue, 27 Dec 2016 20:50:51 GMT
CMD ["php-fpm"]
# Tue, 27 Dec 2016 22:10:33 GMT
RUN apk add --no-cache 		bash 		sed
# Tue, 27 Dec 2016 22:11:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 27 Dec 2016 22:11:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 27 Dec 2016 22:11:07 GMT
VOLUME [/var/www/html]
# Fri, 13 Jan 2017 19:37:45 GMT
ENV WORDPRESS_VERSION=4.7.1
# Fri, 13 Jan 2017 19:37:45 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Fri, 13 Jan 2017 19:37:48 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 13 Jan 2017 19:37:49 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Fri, 13 Jan 2017 19:37:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jan 2017 19:37:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6f92d59be217f34edf9fb50130efaafead41e66a73b9f151bfb35596d3e416`  
		Last Modified: Tue, 27 Dec 2016 21:30:10 GMT  
		Size: 12.6 MB (12617830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd4dd6c2241dce0ab2d966def1b431d00a094850ba52af2085a50b08c859c9c7`  
		Last Modified: Tue, 27 Dec 2016 21:30:05 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18c6de50a3a2b794679ccb67aea566cf5342a6afe5fda5cb4cf9dc9d2a89e8f`  
		Last Modified: Tue, 27 Dec 2016 21:30:10 GMT  
		Size: 10.0 MB (9960416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee55edbee98a21844a6f681e3326420d1a6d679347b6371b3f109c8106b79a57`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 2.0 KB (2000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8573fffdbc05f45676b791b72909188911c932524c284e69e6f086d35343434`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4264bf71b3406fe88f3aee450aeb23264c1102026114dcbca21c8d401222a640`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 7.6 KB (7617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df735e44a149a130a83bcf2134dbf45b7c315fa939746666176cde1f0c0f94f`  
		Last Modified: Tue, 27 Dec 2016 22:35:59 GMT  
		Size: 590.0 KB (589977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b321d25c237095453ff973558df65ab10cf7b095b2e83db35c59f62ad077f8e`  
		Last Modified: Tue, 27 Dec 2016 22:35:59 GMT  
		Size: 709.0 KB (708971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae688b8d153a65d75fad4f5747b6e1009b9403a553661715e2771158a287cf2`  
		Last Modified: Tue, 27 Dec 2016 22:35:58 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5aaa707568ef9ad4f77920e6caff968f92fe319b3deda1d444f3faec5b088b`  
		Last Modified: Fri, 13 Jan 2017 19:44:50 GMT  
		Size: 7.8 MB (7826284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ce386511480e5ee0780c8a0be4bffb05b7e5836011f2232c23a133e4907675`  
		Last Modified: Fri, 13 Jan 2017 19:44:48 GMT  
		Size: 2.9 KB (2925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php5.6-fpm-alpine`

```console
$ docker pull wordpress@sha256:bf4d5e6976e7214a50802347ed1e672adffcf08938155ac7761c1ea7ab0df701
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php5.6-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35080005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccbc3d162dc06aed0a809f987669902fa8f37ad41cd0923335ae73e2f4805d27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 27 Dec 2016 20:40:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 27 Dec 2016 20:40:08 GMT
ENV PHP_VERSION=5.6.29
# Tue, 27 Dec 2016 20:40:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 27 Dec 2016 20:40:09 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 27 Dec 2016 20:40:17 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 27 Dec 2016 20:40:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:50:46 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 27 Dec 2016 20:50:48 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:50:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 27 Dec 2016 20:50:49 GMT
WORKDIR /var/www/html
# Tue, 27 Dec 2016 20:50:50 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 27 Dec 2016 20:50:50 GMT
EXPOSE 9000/tcp
# Tue, 27 Dec 2016 20:50:51 GMT
CMD ["php-fpm"]
# Tue, 27 Dec 2016 22:10:33 GMT
RUN apk add --no-cache 		bash 		sed
# Tue, 27 Dec 2016 22:11:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 27 Dec 2016 22:11:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 27 Dec 2016 22:11:07 GMT
VOLUME [/var/www/html]
# Fri, 13 Jan 2017 19:37:45 GMT
ENV WORDPRESS_VERSION=4.7.1
# Fri, 13 Jan 2017 19:37:45 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Fri, 13 Jan 2017 19:37:48 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 13 Jan 2017 19:37:49 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Fri, 13 Jan 2017 19:37:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jan 2017 19:37:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6f92d59be217f34edf9fb50130efaafead41e66a73b9f151bfb35596d3e416`  
		Last Modified: Tue, 27 Dec 2016 21:30:10 GMT  
		Size: 12.6 MB (12617830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd4dd6c2241dce0ab2d966def1b431d00a094850ba52af2085a50b08c859c9c7`  
		Last Modified: Tue, 27 Dec 2016 21:30:05 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18c6de50a3a2b794679ccb67aea566cf5342a6afe5fda5cb4cf9dc9d2a89e8f`  
		Last Modified: Tue, 27 Dec 2016 21:30:10 GMT  
		Size: 10.0 MB (9960416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee55edbee98a21844a6f681e3326420d1a6d679347b6371b3f109c8106b79a57`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 2.0 KB (2000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8573fffdbc05f45676b791b72909188911c932524c284e69e6f086d35343434`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4264bf71b3406fe88f3aee450aeb23264c1102026114dcbca21c8d401222a640`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 7.6 KB (7617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df735e44a149a130a83bcf2134dbf45b7c315fa939746666176cde1f0c0f94f`  
		Last Modified: Tue, 27 Dec 2016 22:35:59 GMT  
		Size: 590.0 KB (589977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b321d25c237095453ff973558df65ab10cf7b095b2e83db35c59f62ad077f8e`  
		Last Modified: Tue, 27 Dec 2016 22:35:59 GMT  
		Size: 709.0 KB (708971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae688b8d153a65d75fad4f5747b6e1009b9403a553661715e2771158a287cf2`  
		Last Modified: Tue, 27 Dec 2016 22:35:58 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5aaa707568ef9ad4f77920e6caff968f92fe319b3deda1d444f3faec5b088b`  
		Last Modified: Fri, 13 Jan 2017 19:44:50 GMT  
		Size: 7.8 MB (7826284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ce386511480e5ee0780c8a0be4bffb05b7e5836011f2232c23a133e4907675`  
		Last Modified: Fri, 13 Jan 2017 19:44:48 GMT  
		Size: 2.9 KB (2925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php5.6-fpm-alpine`

```console
$ docker pull wordpress@sha256:bf4d5e6976e7214a50802347ed1e672adffcf08938155ac7761c1ea7ab0df701
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php5.6-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35080005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccbc3d162dc06aed0a809f987669902fa8f37ad41cd0923335ae73e2f4805d27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 27 Dec 2016 20:40:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 27 Dec 2016 20:40:08 GMT
ENV PHP_VERSION=5.6.29
# Tue, 27 Dec 2016 20:40:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 27 Dec 2016 20:40:09 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 27 Dec 2016 20:40:17 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 27 Dec 2016 20:40:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:50:46 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 27 Dec 2016 20:50:48 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:50:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 27 Dec 2016 20:50:49 GMT
WORKDIR /var/www/html
# Tue, 27 Dec 2016 20:50:50 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 27 Dec 2016 20:50:50 GMT
EXPOSE 9000/tcp
# Tue, 27 Dec 2016 20:50:51 GMT
CMD ["php-fpm"]
# Tue, 27 Dec 2016 22:10:33 GMT
RUN apk add --no-cache 		bash 		sed
# Tue, 27 Dec 2016 22:11:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 27 Dec 2016 22:11:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 27 Dec 2016 22:11:07 GMT
VOLUME [/var/www/html]
# Fri, 13 Jan 2017 19:37:45 GMT
ENV WORDPRESS_VERSION=4.7.1
# Fri, 13 Jan 2017 19:37:45 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Fri, 13 Jan 2017 19:37:48 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 13 Jan 2017 19:37:49 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Fri, 13 Jan 2017 19:37:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jan 2017 19:37:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6f92d59be217f34edf9fb50130efaafead41e66a73b9f151bfb35596d3e416`  
		Last Modified: Tue, 27 Dec 2016 21:30:10 GMT  
		Size: 12.6 MB (12617830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd4dd6c2241dce0ab2d966def1b431d00a094850ba52af2085a50b08c859c9c7`  
		Last Modified: Tue, 27 Dec 2016 21:30:05 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18c6de50a3a2b794679ccb67aea566cf5342a6afe5fda5cb4cf9dc9d2a89e8f`  
		Last Modified: Tue, 27 Dec 2016 21:30:10 GMT  
		Size: 10.0 MB (9960416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee55edbee98a21844a6f681e3326420d1a6d679347b6371b3f109c8106b79a57`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 2.0 KB (2000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8573fffdbc05f45676b791b72909188911c932524c284e69e6f086d35343434`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4264bf71b3406fe88f3aee450aeb23264c1102026114dcbca21c8d401222a640`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 7.6 KB (7617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df735e44a149a130a83bcf2134dbf45b7c315fa939746666176cde1f0c0f94f`  
		Last Modified: Tue, 27 Dec 2016 22:35:59 GMT  
		Size: 590.0 KB (589977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b321d25c237095453ff973558df65ab10cf7b095b2e83db35c59f62ad077f8e`  
		Last Modified: Tue, 27 Dec 2016 22:35:59 GMT  
		Size: 709.0 KB (708971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae688b8d153a65d75fad4f5747b6e1009b9403a553661715e2771158a287cf2`  
		Last Modified: Tue, 27 Dec 2016 22:35:58 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5aaa707568ef9ad4f77920e6caff968f92fe319b3deda1d444f3faec5b088b`  
		Last Modified: Fri, 13 Jan 2017 19:44:50 GMT  
		Size: 7.8 MB (7826284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ce386511480e5ee0780c8a0be4bffb05b7e5836011f2232c23a133e4907675`  
		Last Modified: Fri, 13 Jan 2017 19:44:48 GMT  
		Size: 2.9 KB (2925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php5.6-fpm-alpine`

```console
$ docker pull wordpress@sha256:bf4d5e6976e7214a50802347ed1e672adffcf08938155ac7761c1ea7ab0df701
```

-	Platforms:
	-	linux; amd64

### `wordpress:php5.6-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35080005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccbc3d162dc06aed0a809f987669902fa8f37ad41cd0923335ae73e2f4805d27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 27 Dec 2016 20:40:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 27 Dec 2016 20:40:08 GMT
ENV PHP_VERSION=5.6.29
# Tue, 27 Dec 2016 20:40:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 27 Dec 2016 20:40:09 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 27 Dec 2016 20:40:17 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 27 Dec 2016 20:40:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:50:46 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 27 Dec 2016 20:50:48 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:50:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 27 Dec 2016 20:50:49 GMT
WORKDIR /var/www/html
# Tue, 27 Dec 2016 20:50:50 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 27 Dec 2016 20:50:50 GMT
EXPOSE 9000/tcp
# Tue, 27 Dec 2016 20:50:51 GMT
CMD ["php-fpm"]
# Tue, 27 Dec 2016 22:10:33 GMT
RUN apk add --no-cache 		bash 		sed
# Tue, 27 Dec 2016 22:11:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 27 Dec 2016 22:11:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 27 Dec 2016 22:11:07 GMT
VOLUME [/var/www/html]
# Fri, 13 Jan 2017 19:37:45 GMT
ENV WORDPRESS_VERSION=4.7.1
# Fri, 13 Jan 2017 19:37:45 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Fri, 13 Jan 2017 19:37:48 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 13 Jan 2017 19:37:49 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Fri, 13 Jan 2017 19:37:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jan 2017 19:37:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6f92d59be217f34edf9fb50130efaafead41e66a73b9f151bfb35596d3e416`  
		Last Modified: Tue, 27 Dec 2016 21:30:10 GMT  
		Size: 12.6 MB (12617830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd4dd6c2241dce0ab2d966def1b431d00a094850ba52af2085a50b08c859c9c7`  
		Last Modified: Tue, 27 Dec 2016 21:30:05 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18c6de50a3a2b794679ccb67aea566cf5342a6afe5fda5cb4cf9dc9d2a89e8f`  
		Last Modified: Tue, 27 Dec 2016 21:30:10 GMT  
		Size: 10.0 MB (9960416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee55edbee98a21844a6f681e3326420d1a6d679347b6371b3f109c8106b79a57`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 2.0 KB (2000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8573fffdbc05f45676b791b72909188911c932524c284e69e6f086d35343434`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4264bf71b3406fe88f3aee450aeb23264c1102026114dcbca21c8d401222a640`  
		Last Modified: Tue, 27 Dec 2016 21:30:04 GMT  
		Size: 7.6 KB (7617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df735e44a149a130a83bcf2134dbf45b7c315fa939746666176cde1f0c0f94f`  
		Last Modified: Tue, 27 Dec 2016 22:35:59 GMT  
		Size: 590.0 KB (589977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b321d25c237095453ff973558df65ab10cf7b095b2e83db35c59f62ad077f8e`  
		Last Modified: Tue, 27 Dec 2016 22:35:59 GMT  
		Size: 709.0 KB (708971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae688b8d153a65d75fad4f5747b6e1009b9403a553661715e2771158a287cf2`  
		Last Modified: Tue, 27 Dec 2016 22:35:58 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5aaa707568ef9ad4f77920e6caff968f92fe319b3deda1d444f3faec5b088b`  
		Last Modified: Fri, 13 Jan 2017 19:44:50 GMT  
		Size: 7.8 MB (7826284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ce386511480e5ee0780c8a0be4bffb05b7e5836011f2232c23a133e4907675`  
		Last Modified: Fri, 13 Jan 2017 19:44:48 GMT  
		Size: 2.9 KB (2925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.1-php7.0-apache`

```console
$ docker pull wordpress@sha256:6d90588c24a1f520152320ebb959efd89d80e01bc97052497df4edef85bfabe1
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.1-php7.0-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167765283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8072588ee8ce0997c30f764049508707d60a8647b25291782d5f5e363747d4dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:25:09 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 17 Jan 2017 19:25:09 GMT
ENV PHP_VERSION=7.0.14
# Tue, 17 Jan 2017 19:25:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:25:10 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Tue, 17 Jan 2017 19:25:17 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:25:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:27:34 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:27:35 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:35 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:27:35 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:27:36 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:09:42 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:09:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:09:44 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:09:44 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:09:45 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:09:45 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:09:47 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:09:47 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:09:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:09:48 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:b72344288bf9a0487fd075d281d582138d80cf65b398f4b7d25544fc030254d6`  
		Last Modified: Wed, 18 Jan 2017 03:19:58 GMT  
		Size: 12.7 MB (12664371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f61fae28adbd7791c12a18ec74256d2a6d881b3250ffff7350300d0d405772`  
		Last Modified: Wed, 18 Jan 2017 03:19:56 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8276fc7e09c7628657f6f9004433e978d603a3c4eb4e54d7b7c38c2d4fc6f6a9`  
		Last Modified: Wed, 18 Jan 2017 03:20:01 GMT  
		Size: 13.3 MB (13300000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe439284a916d8f929eca92b60f5f976996bfb414a285916ed7237d55fdd9f76`  
		Last Modified: Wed, 18 Jan 2017 03:19:53 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a88bc584bb02781e16122bfc95ff5ad0b80a1231fe002995ba851634beaa01`  
		Last Modified: Wed, 18 Jan 2017 03:19:53 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fd0e2873dcf430986eb3489317fd85b5716ffc4961f6c316bd324429f1ed23`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 2.1 MB (2148283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c67e88a125ea5d4d32caff17943a6aaa3dc3a41fb6f162fe3dabf58ffb8523`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7ec07f70554002bcf40b8f839e82f90a91c7e7453077111199903a349109dd`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98944e777d384b02ed360db5a52c3cf06184be9fd5aebad5598df046f6239776`  
		Last Modified: Wed, 18 Jan 2017 08:07:22 GMT  
		Size: 7.8 MB (7826190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d1d98ee052beba4d1feae1173be94f77888c165df2e97fd0d82e4cd88e37ad`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 2.9 KB (2933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php7.0-apache`

```console
$ docker pull wordpress@sha256:6d90588c24a1f520152320ebb959efd89d80e01bc97052497df4edef85bfabe1
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php7.0-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167765283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8072588ee8ce0997c30f764049508707d60a8647b25291782d5f5e363747d4dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:25:09 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 17 Jan 2017 19:25:09 GMT
ENV PHP_VERSION=7.0.14
# Tue, 17 Jan 2017 19:25:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:25:10 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Tue, 17 Jan 2017 19:25:17 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:25:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:27:34 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:27:35 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:35 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:27:35 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:27:36 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:09:42 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:09:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:09:44 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:09:44 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:09:45 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:09:45 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:09:47 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:09:47 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:09:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:09:48 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:b72344288bf9a0487fd075d281d582138d80cf65b398f4b7d25544fc030254d6`  
		Last Modified: Wed, 18 Jan 2017 03:19:58 GMT  
		Size: 12.7 MB (12664371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f61fae28adbd7791c12a18ec74256d2a6d881b3250ffff7350300d0d405772`  
		Last Modified: Wed, 18 Jan 2017 03:19:56 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8276fc7e09c7628657f6f9004433e978d603a3c4eb4e54d7b7c38c2d4fc6f6a9`  
		Last Modified: Wed, 18 Jan 2017 03:20:01 GMT  
		Size: 13.3 MB (13300000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe439284a916d8f929eca92b60f5f976996bfb414a285916ed7237d55fdd9f76`  
		Last Modified: Wed, 18 Jan 2017 03:19:53 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a88bc584bb02781e16122bfc95ff5ad0b80a1231fe002995ba851634beaa01`  
		Last Modified: Wed, 18 Jan 2017 03:19:53 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fd0e2873dcf430986eb3489317fd85b5716ffc4961f6c316bd324429f1ed23`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 2.1 MB (2148283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c67e88a125ea5d4d32caff17943a6aaa3dc3a41fb6f162fe3dabf58ffb8523`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7ec07f70554002bcf40b8f839e82f90a91c7e7453077111199903a349109dd`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98944e777d384b02ed360db5a52c3cf06184be9fd5aebad5598df046f6239776`  
		Last Modified: Wed, 18 Jan 2017 08:07:22 GMT  
		Size: 7.8 MB (7826190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d1d98ee052beba4d1feae1173be94f77888c165df2e97fd0d82e4cd88e37ad`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 2.9 KB (2933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php7.0-apache`

```console
$ docker pull wordpress@sha256:6d90588c24a1f520152320ebb959efd89d80e01bc97052497df4edef85bfabe1
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.0-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167765283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8072588ee8ce0997c30f764049508707d60a8647b25291782d5f5e363747d4dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:25:09 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 17 Jan 2017 19:25:09 GMT
ENV PHP_VERSION=7.0.14
# Tue, 17 Jan 2017 19:25:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:25:10 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Tue, 17 Jan 2017 19:25:17 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:25:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:27:34 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:27:35 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:35 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:27:35 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:27:36 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:09:42 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:09:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:09:44 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:09:44 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:09:45 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:09:45 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:09:47 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:09:47 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:09:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:09:48 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:b72344288bf9a0487fd075d281d582138d80cf65b398f4b7d25544fc030254d6`  
		Last Modified: Wed, 18 Jan 2017 03:19:58 GMT  
		Size: 12.7 MB (12664371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f61fae28adbd7791c12a18ec74256d2a6d881b3250ffff7350300d0d405772`  
		Last Modified: Wed, 18 Jan 2017 03:19:56 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8276fc7e09c7628657f6f9004433e978d603a3c4eb4e54d7b7c38c2d4fc6f6a9`  
		Last Modified: Wed, 18 Jan 2017 03:20:01 GMT  
		Size: 13.3 MB (13300000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe439284a916d8f929eca92b60f5f976996bfb414a285916ed7237d55fdd9f76`  
		Last Modified: Wed, 18 Jan 2017 03:19:53 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a88bc584bb02781e16122bfc95ff5ad0b80a1231fe002995ba851634beaa01`  
		Last Modified: Wed, 18 Jan 2017 03:19:53 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fd0e2873dcf430986eb3489317fd85b5716ffc4961f6c316bd324429f1ed23`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 2.1 MB (2148283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c67e88a125ea5d4d32caff17943a6aaa3dc3a41fb6f162fe3dabf58ffb8523`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7ec07f70554002bcf40b8f839e82f90a91c7e7453077111199903a349109dd`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98944e777d384b02ed360db5a52c3cf06184be9fd5aebad5598df046f6239776`  
		Last Modified: Wed, 18 Jan 2017 08:07:22 GMT  
		Size: 7.8 MB (7826190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d1d98ee052beba4d1feae1173be94f77888c165df2e97fd0d82e4cd88e37ad`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 2.9 KB (2933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php7.0-apache`

```console
$ docker pull wordpress@sha256:6d90588c24a1f520152320ebb959efd89d80e01bc97052497df4edef85bfabe1
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.0-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167765283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8072588ee8ce0997c30f764049508707d60a8647b25291782d5f5e363747d4dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:25:09 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 17 Jan 2017 19:25:09 GMT
ENV PHP_VERSION=7.0.14
# Tue, 17 Jan 2017 19:25:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:25:10 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Tue, 17 Jan 2017 19:25:17 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:25:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:27:34 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:27:35 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:35 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:27:35 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:27:36 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:09:42 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:09:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:09:44 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:09:44 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:09:45 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:09:45 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:09:47 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:09:47 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:09:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:09:48 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:b72344288bf9a0487fd075d281d582138d80cf65b398f4b7d25544fc030254d6`  
		Last Modified: Wed, 18 Jan 2017 03:19:58 GMT  
		Size: 12.7 MB (12664371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f61fae28adbd7791c12a18ec74256d2a6d881b3250ffff7350300d0d405772`  
		Last Modified: Wed, 18 Jan 2017 03:19:56 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8276fc7e09c7628657f6f9004433e978d603a3c4eb4e54d7b7c38c2d4fc6f6a9`  
		Last Modified: Wed, 18 Jan 2017 03:20:01 GMT  
		Size: 13.3 MB (13300000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe439284a916d8f929eca92b60f5f976996bfb414a285916ed7237d55fdd9f76`  
		Last Modified: Wed, 18 Jan 2017 03:19:53 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a88bc584bb02781e16122bfc95ff5ad0b80a1231fe002995ba851634beaa01`  
		Last Modified: Wed, 18 Jan 2017 03:19:53 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fd0e2873dcf430986eb3489317fd85b5716ffc4961f6c316bd324429f1ed23`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 2.1 MB (2148283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c67e88a125ea5d4d32caff17943a6aaa3dc3a41fb6f162fe3dabf58ffb8523`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7ec07f70554002bcf40b8f839e82f90a91c7e7453077111199903a349109dd`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98944e777d384b02ed360db5a52c3cf06184be9fd5aebad5598df046f6239776`  
		Last Modified: Wed, 18 Jan 2017 08:07:22 GMT  
		Size: 7.8 MB (7826190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d1d98ee052beba4d1feae1173be94f77888c165df2e97fd0d82e4cd88e37ad`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 2.9 KB (2933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.1-php7.0`

```console
$ docker pull wordpress@sha256:6d90588c24a1f520152320ebb959efd89d80e01bc97052497df4edef85bfabe1
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.1-php7.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167765283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8072588ee8ce0997c30f764049508707d60a8647b25291782d5f5e363747d4dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:25:09 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 17 Jan 2017 19:25:09 GMT
ENV PHP_VERSION=7.0.14
# Tue, 17 Jan 2017 19:25:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:25:10 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Tue, 17 Jan 2017 19:25:17 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:25:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:27:34 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:27:35 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:35 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:27:35 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:27:36 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:09:42 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:09:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:09:44 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:09:44 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:09:45 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:09:45 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:09:47 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:09:47 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:09:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:09:48 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:b72344288bf9a0487fd075d281d582138d80cf65b398f4b7d25544fc030254d6`  
		Last Modified: Wed, 18 Jan 2017 03:19:58 GMT  
		Size: 12.7 MB (12664371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f61fae28adbd7791c12a18ec74256d2a6d881b3250ffff7350300d0d405772`  
		Last Modified: Wed, 18 Jan 2017 03:19:56 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8276fc7e09c7628657f6f9004433e978d603a3c4eb4e54d7b7c38c2d4fc6f6a9`  
		Last Modified: Wed, 18 Jan 2017 03:20:01 GMT  
		Size: 13.3 MB (13300000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe439284a916d8f929eca92b60f5f976996bfb414a285916ed7237d55fdd9f76`  
		Last Modified: Wed, 18 Jan 2017 03:19:53 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a88bc584bb02781e16122bfc95ff5ad0b80a1231fe002995ba851634beaa01`  
		Last Modified: Wed, 18 Jan 2017 03:19:53 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fd0e2873dcf430986eb3489317fd85b5716ffc4961f6c316bd324429f1ed23`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 2.1 MB (2148283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c67e88a125ea5d4d32caff17943a6aaa3dc3a41fb6f162fe3dabf58ffb8523`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7ec07f70554002bcf40b8f839e82f90a91c7e7453077111199903a349109dd`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98944e777d384b02ed360db5a52c3cf06184be9fd5aebad5598df046f6239776`  
		Last Modified: Wed, 18 Jan 2017 08:07:22 GMT  
		Size: 7.8 MB (7826190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d1d98ee052beba4d1feae1173be94f77888c165df2e97fd0d82e4cd88e37ad`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 2.9 KB (2933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php7.0`

```console
$ docker pull wordpress@sha256:6d90588c24a1f520152320ebb959efd89d80e01bc97052497df4edef85bfabe1
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php7.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167765283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8072588ee8ce0997c30f764049508707d60a8647b25291782d5f5e363747d4dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:25:09 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 17 Jan 2017 19:25:09 GMT
ENV PHP_VERSION=7.0.14
# Tue, 17 Jan 2017 19:25:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:25:10 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Tue, 17 Jan 2017 19:25:17 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:25:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:27:34 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:27:35 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:35 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:27:35 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:27:36 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:09:42 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:09:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:09:44 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:09:44 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:09:45 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:09:45 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:09:47 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:09:47 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:09:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:09:48 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:b72344288bf9a0487fd075d281d582138d80cf65b398f4b7d25544fc030254d6`  
		Last Modified: Wed, 18 Jan 2017 03:19:58 GMT  
		Size: 12.7 MB (12664371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f61fae28adbd7791c12a18ec74256d2a6d881b3250ffff7350300d0d405772`  
		Last Modified: Wed, 18 Jan 2017 03:19:56 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8276fc7e09c7628657f6f9004433e978d603a3c4eb4e54d7b7c38c2d4fc6f6a9`  
		Last Modified: Wed, 18 Jan 2017 03:20:01 GMT  
		Size: 13.3 MB (13300000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe439284a916d8f929eca92b60f5f976996bfb414a285916ed7237d55fdd9f76`  
		Last Modified: Wed, 18 Jan 2017 03:19:53 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a88bc584bb02781e16122bfc95ff5ad0b80a1231fe002995ba851634beaa01`  
		Last Modified: Wed, 18 Jan 2017 03:19:53 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fd0e2873dcf430986eb3489317fd85b5716ffc4961f6c316bd324429f1ed23`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 2.1 MB (2148283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c67e88a125ea5d4d32caff17943a6aaa3dc3a41fb6f162fe3dabf58ffb8523`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7ec07f70554002bcf40b8f839e82f90a91c7e7453077111199903a349109dd`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98944e777d384b02ed360db5a52c3cf06184be9fd5aebad5598df046f6239776`  
		Last Modified: Wed, 18 Jan 2017 08:07:22 GMT  
		Size: 7.8 MB (7826190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d1d98ee052beba4d1feae1173be94f77888c165df2e97fd0d82e4cd88e37ad`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 2.9 KB (2933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php7.0`

```console
$ docker pull wordpress@sha256:6d90588c24a1f520152320ebb959efd89d80e01bc97052497df4edef85bfabe1
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167765283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8072588ee8ce0997c30f764049508707d60a8647b25291782d5f5e363747d4dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:25:09 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 17 Jan 2017 19:25:09 GMT
ENV PHP_VERSION=7.0.14
# Tue, 17 Jan 2017 19:25:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:25:10 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Tue, 17 Jan 2017 19:25:17 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:25:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:27:34 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:27:35 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:35 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:27:35 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:27:36 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:09:42 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:09:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:09:44 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:09:44 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:09:45 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:09:45 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:09:47 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:09:47 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:09:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:09:48 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:b72344288bf9a0487fd075d281d582138d80cf65b398f4b7d25544fc030254d6`  
		Last Modified: Wed, 18 Jan 2017 03:19:58 GMT  
		Size: 12.7 MB (12664371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f61fae28adbd7791c12a18ec74256d2a6d881b3250ffff7350300d0d405772`  
		Last Modified: Wed, 18 Jan 2017 03:19:56 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8276fc7e09c7628657f6f9004433e978d603a3c4eb4e54d7b7c38c2d4fc6f6a9`  
		Last Modified: Wed, 18 Jan 2017 03:20:01 GMT  
		Size: 13.3 MB (13300000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe439284a916d8f929eca92b60f5f976996bfb414a285916ed7237d55fdd9f76`  
		Last Modified: Wed, 18 Jan 2017 03:19:53 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a88bc584bb02781e16122bfc95ff5ad0b80a1231fe002995ba851634beaa01`  
		Last Modified: Wed, 18 Jan 2017 03:19:53 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fd0e2873dcf430986eb3489317fd85b5716ffc4961f6c316bd324429f1ed23`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 2.1 MB (2148283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c67e88a125ea5d4d32caff17943a6aaa3dc3a41fb6f162fe3dabf58ffb8523`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7ec07f70554002bcf40b8f839e82f90a91c7e7453077111199903a349109dd`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98944e777d384b02ed360db5a52c3cf06184be9fd5aebad5598df046f6239776`  
		Last Modified: Wed, 18 Jan 2017 08:07:22 GMT  
		Size: 7.8 MB (7826190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d1d98ee052beba4d1feae1173be94f77888c165df2e97fd0d82e4cd88e37ad`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 2.9 KB (2933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php7.0`

```console
$ docker pull wordpress@sha256:6d90588c24a1f520152320ebb959efd89d80e01bc97052497df4edef85bfabe1
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167765283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8072588ee8ce0997c30f764049508707d60a8647b25291782d5f5e363747d4dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:25:09 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 17 Jan 2017 19:25:09 GMT
ENV PHP_VERSION=7.0.14
# Tue, 17 Jan 2017 19:25:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:25:10 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Tue, 17 Jan 2017 19:25:17 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:25:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:27:34 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:27:35 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:27:35 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:27:35 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:27:36 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:09:42 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:09:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:09:44 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:09:44 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:09:45 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:09:45 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:09:47 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:09:47 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:09:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:09:48 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:b72344288bf9a0487fd075d281d582138d80cf65b398f4b7d25544fc030254d6`  
		Last Modified: Wed, 18 Jan 2017 03:19:58 GMT  
		Size: 12.7 MB (12664371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f61fae28adbd7791c12a18ec74256d2a6d881b3250ffff7350300d0d405772`  
		Last Modified: Wed, 18 Jan 2017 03:19:56 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8276fc7e09c7628657f6f9004433e978d603a3c4eb4e54d7b7c38c2d4fc6f6a9`  
		Last Modified: Wed, 18 Jan 2017 03:20:01 GMT  
		Size: 13.3 MB (13300000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe439284a916d8f929eca92b60f5f976996bfb414a285916ed7237d55fdd9f76`  
		Last Modified: Wed, 18 Jan 2017 03:19:53 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a88bc584bb02781e16122bfc95ff5ad0b80a1231fe002995ba851634beaa01`  
		Last Modified: Wed, 18 Jan 2017 03:19:53 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fd0e2873dcf430986eb3489317fd85b5716ffc4961f6c316bd324429f1ed23`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 2.1 MB (2148283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c67e88a125ea5d4d32caff17943a6aaa3dc3a41fb6f162fe3dabf58ffb8523`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7ec07f70554002bcf40b8f839e82f90a91c7e7453077111199903a349109dd`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98944e777d384b02ed360db5a52c3cf06184be9fd5aebad5598df046f6239776`  
		Last Modified: Wed, 18 Jan 2017 08:07:22 GMT  
		Size: 7.8 MB (7826190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d1d98ee052beba4d1feae1173be94f77888c165df2e97fd0d82e4cd88e37ad`  
		Last Modified: Wed, 18 Jan 2017 08:07:19 GMT  
		Size: 2.9 KB (2933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.1-php7.0-fpm`

```console
$ docker pull wordpress@sha256:d60b64c69d0c5bee1cc8f907b579e1f8a00d618efab925c5fbeebc0bb6ef6903
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.1-php7.0-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164414668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcf57b21f768b4d83e386354b42e2323e9bd64281fda2d9ac4bdaf71ce58cc88`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:27:36 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 17 Jan 2017 19:27:37 GMT
ENV PHP_VERSION=7.0.14
# Tue, 17 Jan 2017 19:27:37 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:27:37 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Tue, 17 Jan 2017 19:27:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:27:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:31:09 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:31:10 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:31:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:31:11 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:31:11 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 17 Jan 2017 19:31:12 GMT
EXPOSE 9000/tcp
# Tue, 17 Jan 2017 19:31:12 GMT
CMD ["php-fpm"]
# Tue, 17 Jan 2017 21:10:23 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:10:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:10:24 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:10:24 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:10:24 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:10:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:10:27 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:10:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:10:28 GMT
CMD ["php-fpm"]
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
	-	`sha256:c9263b8d62a52e6a5d98777b37aaabdb8aec368ef1ddec98016d6703f76c99a3`  
		Last Modified: Wed, 18 Jan 2017 03:21:28 GMT  
		Size: 12.6 MB (12645321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6225adafd6552c420ed85369da948704bd796dd579f22da02d9aa694a2b52148`  
		Last Modified: Wed, 18 Jan 2017 03:21:23 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e38a0fae3697582bc03c1cc9829f2f364e03f5be4743bd55b608e0532edd19`  
		Last Modified: Wed, 18 Jan 2017 03:21:28 GMT  
		Size: 12.8 MB (12835132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6c5537e496e0e5a03effa6834d0a5c4a33ad2aeb4dcf6c32a132f871d9670a`  
		Last Modified: Wed, 18 Jan 2017 03:21:20 GMT  
		Size: 2.0 KB (2011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88a98d6549bb6502cc3f521035d133b8f33cd9b67b286d99629cb5b1409f7a4`  
		Last Modified: Wed, 18 Jan 2017 03:21:20 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02a0155904d14666e077db51e878de55350d946c2eb929e8c86b655fab82e71`  
		Last Modified: Wed, 18 Jan 2017 03:21:20 GMT  
		Size: 7.7 KB (7690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dece26b3b9ca83f646e57e3dd1258de68fd814232eb5fbffe2fb94831b4cf223`  
		Last Modified: Wed, 18 Jan 2017 08:09:28 GMT  
		Size: 2.1 MB (2126244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6113a710a83838e837962243fdbae17b725e5d0aa0beaad138991d5911e8b9c8`  
		Last Modified: Wed, 18 Jan 2017 08:09:27 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463b2e48ce699fd5ed80cd14f1e85e37e354efe29f7ab81e3368b39b9bb52ad4`  
		Last Modified: Wed, 18 Jan 2017 08:09:30 GMT  
		Size: 7.8 MB (7826190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9765a248a2898a6753a742ce2e6d53d5759a8d35cc8ad2d9bd47d2e68ae345`  
		Last Modified: Wed, 18 Jan 2017 08:09:27 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php7.0-fpm`

```console
$ docker pull wordpress@sha256:d60b64c69d0c5bee1cc8f907b579e1f8a00d618efab925c5fbeebc0bb6ef6903
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php7.0-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164414668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcf57b21f768b4d83e386354b42e2323e9bd64281fda2d9ac4bdaf71ce58cc88`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:27:36 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 17 Jan 2017 19:27:37 GMT
ENV PHP_VERSION=7.0.14
# Tue, 17 Jan 2017 19:27:37 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:27:37 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Tue, 17 Jan 2017 19:27:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:27:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:31:09 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:31:10 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:31:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:31:11 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:31:11 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 17 Jan 2017 19:31:12 GMT
EXPOSE 9000/tcp
# Tue, 17 Jan 2017 19:31:12 GMT
CMD ["php-fpm"]
# Tue, 17 Jan 2017 21:10:23 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:10:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:10:24 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:10:24 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:10:24 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:10:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:10:27 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:10:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:10:28 GMT
CMD ["php-fpm"]
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
	-	`sha256:c9263b8d62a52e6a5d98777b37aaabdb8aec368ef1ddec98016d6703f76c99a3`  
		Last Modified: Wed, 18 Jan 2017 03:21:28 GMT  
		Size: 12.6 MB (12645321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6225adafd6552c420ed85369da948704bd796dd579f22da02d9aa694a2b52148`  
		Last Modified: Wed, 18 Jan 2017 03:21:23 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e38a0fae3697582bc03c1cc9829f2f364e03f5be4743bd55b608e0532edd19`  
		Last Modified: Wed, 18 Jan 2017 03:21:28 GMT  
		Size: 12.8 MB (12835132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6c5537e496e0e5a03effa6834d0a5c4a33ad2aeb4dcf6c32a132f871d9670a`  
		Last Modified: Wed, 18 Jan 2017 03:21:20 GMT  
		Size: 2.0 KB (2011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88a98d6549bb6502cc3f521035d133b8f33cd9b67b286d99629cb5b1409f7a4`  
		Last Modified: Wed, 18 Jan 2017 03:21:20 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02a0155904d14666e077db51e878de55350d946c2eb929e8c86b655fab82e71`  
		Last Modified: Wed, 18 Jan 2017 03:21:20 GMT  
		Size: 7.7 KB (7690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dece26b3b9ca83f646e57e3dd1258de68fd814232eb5fbffe2fb94831b4cf223`  
		Last Modified: Wed, 18 Jan 2017 08:09:28 GMT  
		Size: 2.1 MB (2126244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6113a710a83838e837962243fdbae17b725e5d0aa0beaad138991d5911e8b9c8`  
		Last Modified: Wed, 18 Jan 2017 08:09:27 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463b2e48ce699fd5ed80cd14f1e85e37e354efe29f7ab81e3368b39b9bb52ad4`  
		Last Modified: Wed, 18 Jan 2017 08:09:30 GMT  
		Size: 7.8 MB (7826190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9765a248a2898a6753a742ce2e6d53d5759a8d35cc8ad2d9bd47d2e68ae345`  
		Last Modified: Wed, 18 Jan 2017 08:09:27 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php7.0-fpm`

```console
$ docker pull wordpress@sha256:d60b64c69d0c5bee1cc8f907b579e1f8a00d618efab925c5fbeebc0bb6ef6903
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.0-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164414668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcf57b21f768b4d83e386354b42e2323e9bd64281fda2d9ac4bdaf71ce58cc88`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:27:36 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 17 Jan 2017 19:27:37 GMT
ENV PHP_VERSION=7.0.14
# Tue, 17 Jan 2017 19:27:37 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:27:37 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Tue, 17 Jan 2017 19:27:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:27:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:31:09 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:31:10 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:31:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:31:11 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:31:11 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 17 Jan 2017 19:31:12 GMT
EXPOSE 9000/tcp
# Tue, 17 Jan 2017 19:31:12 GMT
CMD ["php-fpm"]
# Tue, 17 Jan 2017 21:10:23 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:10:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:10:24 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:10:24 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:10:24 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:10:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:10:27 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:10:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:10:28 GMT
CMD ["php-fpm"]
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
	-	`sha256:c9263b8d62a52e6a5d98777b37aaabdb8aec368ef1ddec98016d6703f76c99a3`  
		Last Modified: Wed, 18 Jan 2017 03:21:28 GMT  
		Size: 12.6 MB (12645321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6225adafd6552c420ed85369da948704bd796dd579f22da02d9aa694a2b52148`  
		Last Modified: Wed, 18 Jan 2017 03:21:23 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e38a0fae3697582bc03c1cc9829f2f364e03f5be4743bd55b608e0532edd19`  
		Last Modified: Wed, 18 Jan 2017 03:21:28 GMT  
		Size: 12.8 MB (12835132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6c5537e496e0e5a03effa6834d0a5c4a33ad2aeb4dcf6c32a132f871d9670a`  
		Last Modified: Wed, 18 Jan 2017 03:21:20 GMT  
		Size: 2.0 KB (2011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88a98d6549bb6502cc3f521035d133b8f33cd9b67b286d99629cb5b1409f7a4`  
		Last Modified: Wed, 18 Jan 2017 03:21:20 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02a0155904d14666e077db51e878de55350d946c2eb929e8c86b655fab82e71`  
		Last Modified: Wed, 18 Jan 2017 03:21:20 GMT  
		Size: 7.7 KB (7690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dece26b3b9ca83f646e57e3dd1258de68fd814232eb5fbffe2fb94831b4cf223`  
		Last Modified: Wed, 18 Jan 2017 08:09:28 GMT  
		Size: 2.1 MB (2126244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6113a710a83838e837962243fdbae17b725e5d0aa0beaad138991d5911e8b9c8`  
		Last Modified: Wed, 18 Jan 2017 08:09:27 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463b2e48ce699fd5ed80cd14f1e85e37e354efe29f7ab81e3368b39b9bb52ad4`  
		Last Modified: Wed, 18 Jan 2017 08:09:30 GMT  
		Size: 7.8 MB (7826190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9765a248a2898a6753a742ce2e6d53d5759a8d35cc8ad2d9bd47d2e68ae345`  
		Last Modified: Wed, 18 Jan 2017 08:09:27 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php7.0-fpm`

```console
$ docker pull wordpress@sha256:d60b64c69d0c5bee1cc8f907b579e1f8a00d618efab925c5fbeebc0bb6ef6903
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.0-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164414668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcf57b21f768b4d83e386354b42e2323e9bd64281fda2d9ac4bdaf71ce58cc88`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:27:36 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 17 Jan 2017 19:27:37 GMT
ENV PHP_VERSION=7.0.14
# Tue, 17 Jan 2017 19:27:37 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:27:37 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Tue, 17 Jan 2017 19:27:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:27:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:31:09 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:31:10 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:31:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:31:11 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:31:11 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 17 Jan 2017 19:31:12 GMT
EXPOSE 9000/tcp
# Tue, 17 Jan 2017 19:31:12 GMT
CMD ["php-fpm"]
# Tue, 17 Jan 2017 21:10:23 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:10:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:10:24 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:10:24 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:10:24 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:10:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:10:27 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:10:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:10:28 GMT
CMD ["php-fpm"]
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
	-	`sha256:c9263b8d62a52e6a5d98777b37aaabdb8aec368ef1ddec98016d6703f76c99a3`  
		Last Modified: Wed, 18 Jan 2017 03:21:28 GMT  
		Size: 12.6 MB (12645321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6225adafd6552c420ed85369da948704bd796dd579f22da02d9aa694a2b52148`  
		Last Modified: Wed, 18 Jan 2017 03:21:23 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e38a0fae3697582bc03c1cc9829f2f364e03f5be4743bd55b608e0532edd19`  
		Last Modified: Wed, 18 Jan 2017 03:21:28 GMT  
		Size: 12.8 MB (12835132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6c5537e496e0e5a03effa6834d0a5c4a33ad2aeb4dcf6c32a132f871d9670a`  
		Last Modified: Wed, 18 Jan 2017 03:21:20 GMT  
		Size: 2.0 KB (2011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88a98d6549bb6502cc3f521035d133b8f33cd9b67b286d99629cb5b1409f7a4`  
		Last Modified: Wed, 18 Jan 2017 03:21:20 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02a0155904d14666e077db51e878de55350d946c2eb929e8c86b655fab82e71`  
		Last Modified: Wed, 18 Jan 2017 03:21:20 GMT  
		Size: 7.7 KB (7690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dece26b3b9ca83f646e57e3dd1258de68fd814232eb5fbffe2fb94831b4cf223`  
		Last Modified: Wed, 18 Jan 2017 08:09:28 GMT  
		Size: 2.1 MB (2126244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6113a710a83838e837962243fdbae17b725e5d0aa0beaad138991d5911e8b9c8`  
		Last Modified: Wed, 18 Jan 2017 08:09:27 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463b2e48ce699fd5ed80cd14f1e85e37e354efe29f7ab81e3368b39b9bb52ad4`  
		Last Modified: Wed, 18 Jan 2017 08:09:30 GMT  
		Size: 7.8 MB (7826190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9765a248a2898a6753a742ce2e6d53d5759a8d35cc8ad2d9bd47d2e68ae345`  
		Last Modified: Wed, 18 Jan 2017 08:09:27 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.1-php7.0-fpm-alpine`

```console
$ docker pull wordpress@sha256:ed8b42b7cf4f3e00666ee81142bbe60d70c6d7aa6392707693bfea7e44cb6f8b
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.1-php7.0-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39251889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67164762a42e5799d084673bcaab310e6acb8d91c413bdac40b2628b9c682b49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 27 Dec 2016 20:06:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 27 Dec 2016 20:06:51 GMT
ENV PHP_VERSION=7.0.14
# Tue, 27 Dec 2016 20:06:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Tue, 27 Dec 2016 20:06:51 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Tue, 27 Dec 2016 20:06:58 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 27 Dec 2016 20:06:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:17:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 27 Dec 2016 20:17:53 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:17:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 27 Dec 2016 20:17:54 GMT
WORKDIR /var/www/html
# Tue, 27 Dec 2016 20:17:56 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 27 Dec 2016 20:17:56 GMT
EXPOSE 9000/tcp
# Tue, 27 Dec 2016 20:17:57 GMT
CMD ["php-fpm"]
# Tue, 27 Dec 2016 22:11:15 GMT
RUN apk add --no-cache 		bash 		sed
# Tue, 27 Dec 2016 22:11:50 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 27 Dec 2016 22:12:00 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 27 Dec 2016 22:12:01 GMT
VOLUME [/var/www/html]
# Fri, 13 Jan 2017 19:38:03 GMT
ENV WORDPRESS_VERSION=4.7.1
# Fri, 13 Jan 2017 19:38:04 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Fri, 13 Jan 2017 19:38:06 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 13 Jan 2017 19:38:07 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Fri, 13 Jan 2017 19:38:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jan 2017 19:38:08 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c932d51f8969f8927aca95461ea7f2464ce48f64a11a1809041731e9cfe7991`  
		Last Modified: Tue, 27 Dec 2016 21:23:09 GMT  
		Size: 12.7 MB (12707446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b3641112dacbf6c12175ac7a7767c3e4c48252371f4cd30733a1966d4e9847`  
		Last Modified: Tue, 27 Dec 2016 21:23:05 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a662e9e65f9a2f281d57882377e629d2017753c744f8237c84465b154d6991`  
		Last Modified: Tue, 27 Dec 2016 21:23:13 GMT  
		Size: 14.0 MB (14029671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed19f787696118272d5df6f0c38eb5e6655de17d9bad6a58aef35a2b0c52104`  
		Last Modified: Tue, 27 Dec 2016 21:23:05 GMT  
		Size: 2.0 KB (2006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f4a3aefe522db6e4a1d97e81a22a6e8ffdc3da40c2a874bdb601e3212961fe`  
		Last Modified: Tue, 27 Dec 2016 21:23:05 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2c2bfd87757f1aee2dfe86b0bd85a026164268af8d5d1974b310eb2b6c0463`  
		Last Modified: Tue, 27 Dec 2016 21:23:05 GMT  
		Size: 7.7 KB (7677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288aae37db2ac5c46516bffe111837e8fdc7e77c6efbbf9d1f727a8ca3280de4`  
		Last Modified: Tue, 27 Dec 2016 22:37:57 GMT  
		Size: 590.0 KB (589979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82d562e22c3d31233e283e3822166147023325ba64d90a152f3fdc4740c1b84`  
		Last Modified: Tue, 27 Dec 2016 22:37:58 GMT  
		Size: 721.9 KB (721910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9bedbd8fd6095b1c8d45369425aaa45862c1377cfc610a6e2bcfaebdd62e81`  
		Last Modified: Tue, 27 Dec 2016 22:37:57 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052c0f63bb3a028fbbe24797a8fac3a1107df8b9db5cfaaf360584474d60a27f`  
		Last Modified: Fri, 13 Jan 2017 19:49:57 GMT  
		Size: 7.8 MB (7826285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01a651e638636a164b28007a57e5301ede28f6fb029b4aebe86e3f258b87ff2`  
		Last Modified: Fri, 13 Jan 2017 19:49:55 GMT  
		Size: 2.9 KB (2929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php7.0-fpm-alpine`

```console
$ docker pull wordpress@sha256:ed8b42b7cf4f3e00666ee81142bbe60d70c6d7aa6392707693bfea7e44cb6f8b
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php7.0-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39251889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67164762a42e5799d084673bcaab310e6acb8d91c413bdac40b2628b9c682b49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 27 Dec 2016 20:06:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 27 Dec 2016 20:06:51 GMT
ENV PHP_VERSION=7.0.14
# Tue, 27 Dec 2016 20:06:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Tue, 27 Dec 2016 20:06:51 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Tue, 27 Dec 2016 20:06:58 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 27 Dec 2016 20:06:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:17:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 27 Dec 2016 20:17:53 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:17:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 27 Dec 2016 20:17:54 GMT
WORKDIR /var/www/html
# Tue, 27 Dec 2016 20:17:56 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 27 Dec 2016 20:17:56 GMT
EXPOSE 9000/tcp
# Tue, 27 Dec 2016 20:17:57 GMT
CMD ["php-fpm"]
# Tue, 27 Dec 2016 22:11:15 GMT
RUN apk add --no-cache 		bash 		sed
# Tue, 27 Dec 2016 22:11:50 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 27 Dec 2016 22:12:00 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 27 Dec 2016 22:12:01 GMT
VOLUME [/var/www/html]
# Fri, 13 Jan 2017 19:38:03 GMT
ENV WORDPRESS_VERSION=4.7.1
# Fri, 13 Jan 2017 19:38:04 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Fri, 13 Jan 2017 19:38:06 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 13 Jan 2017 19:38:07 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Fri, 13 Jan 2017 19:38:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jan 2017 19:38:08 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c932d51f8969f8927aca95461ea7f2464ce48f64a11a1809041731e9cfe7991`  
		Last Modified: Tue, 27 Dec 2016 21:23:09 GMT  
		Size: 12.7 MB (12707446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b3641112dacbf6c12175ac7a7767c3e4c48252371f4cd30733a1966d4e9847`  
		Last Modified: Tue, 27 Dec 2016 21:23:05 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a662e9e65f9a2f281d57882377e629d2017753c744f8237c84465b154d6991`  
		Last Modified: Tue, 27 Dec 2016 21:23:13 GMT  
		Size: 14.0 MB (14029671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed19f787696118272d5df6f0c38eb5e6655de17d9bad6a58aef35a2b0c52104`  
		Last Modified: Tue, 27 Dec 2016 21:23:05 GMT  
		Size: 2.0 KB (2006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f4a3aefe522db6e4a1d97e81a22a6e8ffdc3da40c2a874bdb601e3212961fe`  
		Last Modified: Tue, 27 Dec 2016 21:23:05 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2c2bfd87757f1aee2dfe86b0bd85a026164268af8d5d1974b310eb2b6c0463`  
		Last Modified: Tue, 27 Dec 2016 21:23:05 GMT  
		Size: 7.7 KB (7677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288aae37db2ac5c46516bffe111837e8fdc7e77c6efbbf9d1f727a8ca3280de4`  
		Last Modified: Tue, 27 Dec 2016 22:37:57 GMT  
		Size: 590.0 KB (589979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82d562e22c3d31233e283e3822166147023325ba64d90a152f3fdc4740c1b84`  
		Last Modified: Tue, 27 Dec 2016 22:37:58 GMT  
		Size: 721.9 KB (721910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9bedbd8fd6095b1c8d45369425aaa45862c1377cfc610a6e2bcfaebdd62e81`  
		Last Modified: Tue, 27 Dec 2016 22:37:57 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052c0f63bb3a028fbbe24797a8fac3a1107df8b9db5cfaaf360584474d60a27f`  
		Last Modified: Fri, 13 Jan 2017 19:49:57 GMT  
		Size: 7.8 MB (7826285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01a651e638636a164b28007a57e5301ede28f6fb029b4aebe86e3f258b87ff2`  
		Last Modified: Fri, 13 Jan 2017 19:49:55 GMT  
		Size: 2.9 KB (2929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php7.0-fpm-alpine`

```console
$ docker pull wordpress@sha256:ed8b42b7cf4f3e00666ee81142bbe60d70c6d7aa6392707693bfea7e44cb6f8b
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.0-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39251889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67164762a42e5799d084673bcaab310e6acb8d91c413bdac40b2628b9c682b49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 27 Dec 2016 20:06:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 27 Dec 2016 20:06:51 GMT
ENV PHP_VERSION=7.0.14
# Tue, 27 Dec 2016 20:06:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Tue, 27 Dec 2016 20:06:51 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Tue, 27 Dec 2016 20:06:58 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 27 Dec 2016 20:06:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:17:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 27 Dec 2016 20:17:53 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:17:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 27 Dec 2016 20:17:54 GMT
WORKDIR /var/www/html
# Tue, 27 Dec 2016 20:17:56 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 27 Dec 2016 20:17:56 GMT
EXPOSE 9000/tcp
# Tue, 27 Dec 2016 20:17:57 GMT
CMD ["php-fpm"]
# Tue, 27 Dec 2016 22:11:15 GMT
RUN apk add --no-cache 		bash 		sed
# Tue, 27 Dec 2016 22:11:50 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 27 Dec 2016 22:12:00 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 27 Dec 2016 22:12:01 GMT
VOLUME [/var/www/html]
# Fri, 13 Jan 2017 19:38:03 GMT
ENV WORDPRESS_VERSION=4.7.1
# Fri, 13 Jan 2017 19:38:04 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Fri, 13 Jan 2017 19:38:06 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 13 Jan 2017 19:38:07 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Fri, 13 Jan 2017 19:38:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jan 2017 19:38:08 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c932d51f8969f8927aca95461ea7f2464ce48f64a11a1809041731e9cfe7991`  
		Last Modified: Tue, 27 Dec 2016 21:23:09 GMT  
		Size: 12.7 MB (12707446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b3641112dacbf6c12175ac7a7767c3e4c48252371f4cd30733a1966d4e9847`  
		Last Modified: Tue, 27 Dec 2016 21:23:05 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a662e9e65f9a2f281d57882377e629d2017753c744f8237c84465b154d6991`  
		Last Modified: Tue, 27 Dec 2016 21:23:13 GMT  
		Size: 14.0 MB (14029671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed19f787696118272d5df6f0c38eb5e6655de17d9bad6a58aef35a2b0c52104`  
		Last Modified: Tue, 27 Dec 2016 21:23:05 GMT  
		Size: 2.0 KB (2006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f4a3aefe522db6e4a1d97e81a22a6e8ffdc3da40c2a874bdb601e3212961fe`  
		Last Modified: Tue, 27 Dec 2016 21:23:05 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2c2bfd87757f1aee2dfe86b0bd85a026164268af8d5d1974b310eb2b6c0463`  
		Last Modified: Tue, 27 Dec 2016 21:23:05 GMT  
		Size: 7.7 KB (7677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288aae37db2ac5c46516bffe111837e8fdc7e77c6efbbf9d1f727a8ca3280de4`  
		Last Modified: Tue, 27 Dec 2016 22:37:57 GMT  
		Size: 590.0 KB (589979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82d562e22c3d31233e283e3822166147023325ba64d90a152f3fdc4740c1b84`  
		Last Modified: Tue, 27 Dec 2016 22:37:58 GMT  
		Size: 721.9 KB (721910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9bedbd8fd6095b1c8d45369425aaa45862c1377cfc610a6e2bcfaebdd62e81`  
		Last Modified: Tue, 27 Dec 2016 22:37:57 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052c0f63bb3a028fbbe24797a8fac3a1107df8b9db5cfaaf360584474d60a27f`  
		Last Modified: Fri, 13 Jan 2017 19:49:57 GMT  
		Size: 7.8 MB (7826285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01a651e638636a164b28007a57e5301ede28f6fb029b4aebe86e3f258b87ff2`  
		Last Modified: Fri, 13 Jan 2017 19:49:55 GMT  
		Size: 2.9 KB (2929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php7.0-fpm-alpine`

```console
$ docker pull wordpress@sha256:ed8b42b7cf4f3e00666ee81142bbe60d70c6d7aa6392707693bfea7e44cb6f8b
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.0-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39251889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67164762a42e5799d084673bcaab310e6acb8d91c413bdac40b2628b9c682b49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 27 Dec 2016 20:06:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 27 Dec 2016 20:06:51 GMT
ENV PHP_VERSION=7.0.14
# Tue, 27 Dec 2016 20:06:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Tue, 27 Dec 2016 20:06:51 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Tue, 27 Dec 2016 20:06:58 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 27 Dec 2016 20:06:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:17:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 27 Dec 2016 20:17:53 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 27 Dec 2016 20:17:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 27 Dec 2016 20:17:54 GMT
WORKDIR /var/www/html
# Tue, 27 Dec 2016 20:17:56 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 27 Dec 2016 20:17:56 GMT
EXPOSE 9000/tcp
# Tue, 27 Dec 2016 20:17:57 GMT
CMD ["php-fpm"]
# Tue, 27 Dec 2016 22:11:15 GMT
RUN apk add --no-cache 		bash 		sed
# Tue, 27 Dec 2016 22:11:50 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 27 Dec 2016 22:12:00 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 27 Dec 2016 22:12:01 GMT
VOLUME [/var/www/html]
# Fri, 13 Jan 2017 19:38:03 GMT
ENV WORDPRESS_VERSION=4.7.1
# Fri, 13 Jan 2017 19:38:04 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Fri, 13 Jan 2017 19:38:06 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 13 Jan 2017 19:38:07 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Fri, 13 Jan 2017 19:38:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jan 2017 19:38:08 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c932d51f8969f8927aca95461ea7f2464ce48f64a11a1809041731e9cfe7991`  
		Last Modified: Tue, 27 Dec 2016 21:23:09 GMT  
		Size: 12.7 MB (12707446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b3641112dacbf6c12175ac7a7767c3e4c48252371f4cd30733a1966d4e9847`  
		Last Modified: Tue, 27 Dec 2016 21:23:05 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a662e9e65f9a2f281d57882377e629d2017753c744f8237c84465b154d6991`  
		Last Modified: Tue, 27 Dec 2016 21:23:13 GMT  
		Size: 14.0 MB (14029671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed19f787696118272d5df6f0c38eb5e6655de17d9bad6a58aef35a2b0c52104`  
		Last Modified: Tue, 27 Dec 2016 21:23:05 GMT  
		Size: 2.0 KB (2006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f4a3aefe522db6e4a1d97e81a22a6e8ffdc3da40c2a874bdb601e3212961fe`  
		Last Modified: Tue, 27 Dec 2016 21:23:05 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2c2bfd87757f1aee2dfe86b0bd85a026164268af8d5d1974b310eb2b6c0463`  
		Last Modified: Tue, 27 Dec 2016 21:23:05 GMT  
		Size: 7.7 KB (7677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288aae37db2ac5c46516bffe111837e8fdc7e77c6efbbf9d1f727a8ca3280de4`  
		Last Modified: Tue, 27 Dec 2016 22:37:57 GMT  
		Size: 590.0 KB (589979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82d562e22c3d31233e283e3822166147023325ba64d90a152f3fdc4740c1b84`  
		Last Modified: Tue, 27 Dec 2016 22:37:58 GMT  
		Size: 721.9 KB (721910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9bedbd8fd6095b1c8d45369425aaa45862c1377cfc610a6e2bcfaebdd62e81`  
		Last Modified: Tue, 27 Dec 2016 22:37:57 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052c0f63bb3a028fbbe24797a8fac3a1107df8b9db5cfaaf360584474d60a27f`  
		Last Modified: Fri, 13 Jan 2017 19:49:57 GMT  
		Size: 7.8 MB (7826285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01a651e638636a164b28007a57e5301ede28f6fb029b4aebe86e3f258b87ff2`  
		Last Modified: Fri, 13 Jan 2017 19:49:55 GMT  
		Size: 2.9 KB (2929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.1-php7.1-apache`

```console
$ docker pull wordpress@sha256:4676f913ed0607bc7fbc754f5fb6053ca4c38767a82a3d654ad6934fe4d1132a
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.1-php7.1-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168404933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4189987afb178bfe0279c0ab56810df172040abc18636e1e9a11f085b0d0bed`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:11:17 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0
# Tue, 17 Jan 2017 19:11:17 GMT
ENV PHP_VERSION=7.1.0
# Tue, 17 Jan 2017 19:11:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.0.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:11:18 GMT
ENV PHP_SHA256=a810b3f29c21407c24caa88f50649320d20ba6892ae1923132598b8a0ca145b6 PHP_MD5=cf36039303c47f493100afea522a8f53
# Tue, 17 Jan 2017 19:11:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:11:28 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:13:47 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:13:48 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:48 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:13:49 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:13:49 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:11:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:11:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:11:12 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:11:12 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:11:12 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:11:13 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:11:15 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:11:15 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:11:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:11:16 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:b7c226eacd1abcf2eeda1ce39b6a10c0a4297ed11d091ab78a3c163b3710b841`  
		Last Modified: Wed, 18 Jan 2017 06:01:56 GMT  
		Size: 12.9 MB (12924238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0735407921f069cc2bff0cb91629059f04b6f07e8330400ff5f6be36b8b792`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721853a6f0bd3f539408afad2f530808ac8d5a4651a01ef98dd83db936a93b86`  
		Last Modified: Wed, 18 Jan 2017 06:02:00 GMT  
		Size: 13.6 MB (13596685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76b237593ae4d12fd12533256a35b7b2d4cf939b745149cad1c825a2d3d8e6`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 2.0 KB (2020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900386fecfb6a236882608175f4cf497216d87cc7fb749e8bb9fcda4c075d1cb`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b870ab4c92eba2ae0e85e4c59bc80e85958bc48940a552a0abf9fc3546ec89`  
		Last Modified: Wed, 18 Jan 2017 08:10:35 GMT  
		Size: 2.2 MB (2231390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777377a5eb66936a537497c0ed6e1d2035f7e0868d88e8f26dca64b0bb106e9b`  
		Last Modified: Wed, 18 Jan 2017 08:10:34 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f8ee8325ea253e5d0f585d70a692952ee3ea93151ab27cd73b45b0a04af6c2`  
		Last Modified: Wed, 18 Jan 2017 08:10:34 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bcc1fb2249a5323c5e19864781ff8e22e3320e0298faa50dd6ea401c23016f`  
		Last Modified: Wed, 18 Jan 2017 08:10:38 GMT  
		Size: 7.8 MB (7826189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1670cbe4c395c48d827be1e039c6a705171256fc526fcb25ee15d3877bf99afe`  
		Last Modified: Wed, 18 Jan 2017 08:10:33 GMT  
		Size: 2.9 KB (2934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php7.1-apache`

```console
$ docker pull wordpress@sha256:4676f913ed0607bc7fbc754f5fb6053ca4c38767a82a3d654ad6934fe4d1132a
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php7.1-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168404933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4189987afb178bfe0279c0ab56810df172040abc18636e1e9a11f085b0d0bed`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:11:17 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0
# Tue, 17 Jan 2017 19:11:17 GMT
ENV PHP_VERSION=7.1.0
# Tue, 17 Jan 2017 19:11:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.0.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:11:18 GMT
ENV PHP_SHA256=a810b3f29c21407c24caa88f50649320d20ba6892ae1923132598b8a0ca145b6 PHP_MD5=cf36039303c47f493100afea522a8f53
# Tue, 17 Jan 2017 19:11:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:11:28 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:13:47 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:13:48 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:48 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:13:49 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:13:49 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:11:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:11:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:11:12 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:11:12 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:11:12 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:11:13 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:11:15 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:11:15 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:11:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:11:16 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:b7c226eacd1abcf2eeda1ce39b6a10c0a4297ed11d091ab78a3c163b3710b841`  
		Last Modified: Wed, 18 Jan 2017 06:01:56 GMT  
		Size: 12.9 MB (12924238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0735407921f069cc2bff0cb91629059f04b6f07e8330400ff5f6be36b8b792`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721853a6f0bd3f539408afad2f530808ac8d5a4651a01ef98dd83db936a93b86`  
		Last Modified: Wed, 18 Jan 2017 06:02:00 GMT  
		Size: 13.6 MB (13596685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76b237593ae4d12fd12533256a35b7b2d4cf939b745149cad1c825a2d3d8e6`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 2.0 KB (2020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900386fecfb6a236882608175f4cf497216d87cc7fb749e8bb9fcda4c075d1cb`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b870ab4c92eba2ae0e85e4c59bc80e85958bc48940a552a0abf9fc3546ec89`  
		Last Modified: Wed, 18 Jan 2017 08:10:35 GMT  
		Size: 2.2 MB (2231390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777377a5eb66936a537497c0ed6e1d2035f7e0868d88e8f26dca64b0bb106e9b`  
		Last Modified: Wed, 18 Jan 2017 08:10:34 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f8ee8325ea253e5d0f585d70a692952ee3ea93151ab27cd73b45b0a04af6c2`  
		Last Modified: Wed, 18 Jan 2017 08:10:34 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bcc1fb2249a5323c5e19864781ff8e22e3320e0298faa50dd6ea401c23016f`  
		Last Modified: Wed, 18 Jan 2017 08:10:38 GMT  
		Size: 7.8 MB (7826189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1670cbe4c395c48d827be1e039c6a705171256fc526fcb25ee15d3877bf99afe`  
		Last Modified: Wed, 18 Jan 2017 08:10:33 GMT  
		Size: 2.9 KB (2934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php7.1-apache`

```console
$ docker pull wordpress@sha256:4676f913ed0607bc7fbc754f5fb6053ca4c38767a82a3d654ad6934fe4d1132a
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.1-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168404933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4189987afb178bfe0279c0ab56810df172040abc18636e1e9a11f085b0d0bed`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:11:17 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0
# Tue, 17 Jan 2017 19:11:17 GMT
ENV PHP_VERSION=7.1.0
# Tue, 17 Jan 2017 19:11:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.0.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:11:18 GMT
ENV PHP_SHA256=a810b3f29c21407c24caa88f50649320d20ba6892ae1923132598b8a0ca145b6 PHP_MD5=cf36039303c47f493100afea522a8f53
# Tue, 17 Jan 2017 19:11:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:11:28 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:13:47 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:13:48 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:48 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:13:49 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:13:49 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:11:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:11:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:11:12 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:11:12 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:11:12 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:11:13 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:11:15 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:11:15 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:11:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:11:16 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:b7c226eacd1abcf2eeda1ce39b6a10c0a4297ed11d091ab78a3c163b3710b841`  
		Last Modified: Wed, 18 Jan 2017 06:01:56 GMT  
		Size: 12.9 MB (12924238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0735407921f069cc2bff0cb91629059f04b6f07e8330400ff5f6be36b8b792`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721853a6f0bd3f539408afad2f530808ac8d5a4651a01ef98dd83db936a93b86`  
		Last Modified: Wed, 18 Jan 2017 06:02:00 GMT  
		Size: 13.6 MB (13596685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76b237593ae4d12fd12533256a35b7b2d4cf939b745149cad1c825a2d3d8e6`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 2.0 KB (2020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900386fecfb6a236882608175f4cf497216d87cc7fb749e8bb9fcda4c075d1cb`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b870ab4c92eba2ae0e85e4c59bc80e85958bc48940a552a0abf9fc3546ec89`  
		Last Modified: Wed, 18 Jan 2017 08:10:35 GMT  
		Size: 2.2 MB (2231390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777377a5eb66936a537497c0ed6e1d2035f7e0868d88e8f26dca64b0bb106e9b`  
		Last Modified: Wed, 18 Jan 2017 08:10:34 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f8ee8325ea253e5d0f585d70a692952ee3ea93151ab27cd73b45b0a04af6c2`  
		Last Modified: Wed, 18 Jan 2017 08:10:34 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bcc1fb2249a5323c5e19864781ff8e22e3320e0298faa50dd6ea401c23016f`  
		Last Modified: Wed, 18 Jan 2017 08:10:38 GMT  
		Size: 7.8 MB (7826189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1670cbe4c395c48d827be1e039c6a705171256fc526fcb25ee15d3877bf99afe`  
		Last Modified: Wed, 18 Jan 2017 08:10:33 GMT  
		Size: 2.9 KB (2934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php7.1-apache`

```console
$ docker pull wordpress@sha256:4676f913ed0607bc7fbc754f5fb6053ca4c38767a82a3d654ad6934fe4d1132a
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.1-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168404933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4189987afb178bfe0279c0ab56810df172040abc18636e1e9a11f085b0d0bed`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:11:17 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0
# Tue, 17 Jan 2017 19:11:17 GMT
ENV PHP_VERSION=7.1.0
# Tue, 17 Jan 2017 19:11:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.0.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:11:18 GMT
ENV PHP_SHA256=a810b3f29c21407c24caa88f50649320d20ba6892ae1923132598b8a0ca145b6 PHP_MD5=cf36039303c47f493100afea522a8f53
# Tue, 17 Jan 2017 19:11:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:11:28 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:13:47 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:13:48 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:48 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:13:49 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:13:49 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:11:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:11:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:11:12 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:11:12 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:11:12 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:11:13 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:11:15 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:11:15 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:11:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:11:16 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:b7c226eacd1abcf2eeda1ce39b6a10c0a4297ed11d091ab78a3c163b3710b841`  
		Last Modified: Wed, 18 Jan 2017 06:01:56 GMT  
		Size: 12.9 MB (12924238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0735407921f069cc2bff0cb91629059f04b6f07e8330400ff5f6be36b8b792`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721853a6f0bd3f539408afad2f530808ac8d5a4651a01ef98dd83db936a93b86`  
		Last Modified: Wed, 18 Jan 2017 06:02:00 GMT  
		Size: 13.6 MB (13596685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76b237593ae4d12fd12533256a35b7b2d4cf939b745149cad1c825a2d3d8e6`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 2.0 KB (2020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900386fecfb6a236882608175f4cf497216d87cc7fb749e8bb9fcda4c075d1cb`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b870ab4c92eba2ae0e85e4c59bc80e85958bc48940a552a0abf9fc3546ec89`  
		Last Modified: Wed, 18 Jan 2017 08:10:35 GMT  
		Size: 2.2 MB (2231390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777377a5eb66936a537497c0ed6e1d2035f7e0868d88e8f26dca64b0bb106e9b`  
		Last Modified: Wed, 18 Jan 2017 08:10:34 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f8ee8325ea253e5d0f585d70a692952ee3ea93151ab27cd73b45b0a04af6c2`  
		Last Modified: Wed, 18 Jan 2017 08:10:34 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bcc1fb2249a5323c5e19864781ff8e22e3320e0298faa50dd6ea401c23016f`  
		Last Modified: Wed, 18 Jan 2017 08:10:38 GMT  
		Size: 7.8 MB (7826189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1670cbe4c395c48d827be1e039c6a705171256fc526fcb25ee15d3877bf99afe`  
		Last Modified: Wed, 18 Jan 2017 08:10:33 GMT  
		Size: 2.9 KB (2934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.1-php7.1`

```console
$ docker pull wordpress@sha256:4676f913ed0607bc7fbc754f5fb6053ca4c38767a82a3d654ad6934fe4d1132a
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.1-php7.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168404933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4189987afb178bfe0279c0ab56810df172040abc18636e1e9a11f085b0d0bed`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:11:17 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0
# Tue, 17 Jan 2017 19:11:17 GMT
ENV PHP_VERSION=7.1.0
# Tue, 17 Jan 2017 19:11:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.0.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:11:18 GMT
ENV PHP_SHA256=a810b3f29c21407c24caa88f50649320d20ba6892ae1923132598b8a0ca145b6 PHP_MD5=cf36039303c47f493100afea522a8f53
# Tue, 17 Jan 2017 19:11:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:11:28 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:13:47 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:13:48 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:48 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:13:49 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:13:49 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:11:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:11:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:11:12 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:11:12 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:11:12 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:11:13 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:11:15 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:11:15 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:11:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:11:16 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:b7c226eacd1abcf2eeda1ce39b6a10c0a4297ed11d091ab78a3c163b3710b841`  
		Last Modified: Wed, 18 Jan 2017 06:01:56 GMT  
		Size: 12.9 MB (12924238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0735407921f069cc2bff0cb91629059f04b6f07e8330400ff5f6be36b8b792`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721853a6f0bd3f539408afad2f530808ac8d5a4651a01ef98dd83db936a93b86`  
		Last Modified: Wed, 18 Jan 2017 06:02:00 GMT  
		Size: 13.6 MB (13596685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76b237593ae4d12fd12533256a35b7b2d4cf939b745149cad1c825a2d3d8e6`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 2.0 KB (2020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900386fecfb6a236882608175f4cf497216d87cc7fb749e8bb9fcda4c075d1cb`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b870ab4c92eba2ae0e85e4c59bc80e85958bc48940a552a0abf9fc3546ec89`  
		Last Modified: Wed, 18 Jan 2017 08:10:35 GMT  
		Size: 2.2 MB (2231390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777377a5eb66936a537497c0ed6e1d2035f7e0868d88e8f26dca64b0bb106e9b`  
		Last Modified: Wed, 18 Jan 2017 08:10:34 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f8ee8325ea253e5d0f585d70a692952ee3ea93151ab27cd73b45b0a04af6c2`  
		Last Modified: Wed, 18 Jan 2017 08:10:34 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bcc1fb2249a5323c5e19864781ff8e22e3320e0298faa50dd6ea401c23016f`  
		Last Modified: Wed, 18 Jan 2017 08:10:38 GMT  
		Size: 7.8 MB (7826189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1670cbe4c395c48d827be1e039c6a705171256fc526fcb25ee15d3877bf99afe`  
		Last Modified: Wed, 18 Jan 2017 08:10:33 GMT  
		Size: 2.9 KB (2934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php7.1`

```console
$ docker pull wordpress@sha256:4676f913ed0607bc7fbc754f5fb6053ca4c38767a82a3d654ad6934fe4d1132a
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php7.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168404933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4189987afb178bfe0279c0ab56810df172040abc18636e1e9a11f085b0d0bed`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:11:17 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0
# Tue, 17 Jan 2017 19:11:17 GMT
ENV PHP_VERSION=7.1.0
# Tue, 17 Jan 2017 19:11:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.0.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:11:18 GMT
ENV PHP_SHA256=a810b3f29c21407c24caa88f50649320d20ba6892ae1923132598b8a0ca145b6 PHP_MD5=cf36039303c47f493100afea522a8f53
# Tue, 17 Jan 2017 19:11:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:11:28 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:13:47 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:13:48 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:48 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:13:49 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:13:49 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:11:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:11:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:11:12 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:11:12 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:11:12 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:11:13 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:11:15 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:11:15 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:11:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:11:16 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:b7c226eacd1abcf2eeda1ce39b6a10c0a4297ed11d091ab78a3c163b3710b841`  
		Last Modified: Wed, 18 Jan 2017 06:01:56 GMT  
		Size: 12.9 MB (12924238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0735407921f069cc2bff0cb91629059f04b6f07e8330400ff5f6be36b8b792`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721853a6f0bd3f539408afad2f530808ac8d5a4651a01ef98dd83db936a93b86`  
		Last Modified: Wed, 18 Jan 2017 06:02:00 GMT  
		Size: 13.6 MB (13596685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76b237593ae4d12fd12533256a35b7b2d4cf939b745149cad1c825a2d3d8e6`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 2.0 KB (2020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900386fecfb6a236882608175f4cf497216d87cc7fb749e8bb9fcda4c075d1cb`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b870ab4c92eba2ae0e85e4c59bc80e85958bc48940a552a0abf9fc3546ec89`  
		Last Modified: Wed, 18 Jan 2017 08:10:35 GMT  
		Size: 2.2 MB (2231390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777377a5eb66936a537497c0ed6e1d2035f7e0868d88e8f26dca64b0bb106e9b`  
		Last Modified: Wed, 18 Jan 2017 08:10:34 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f8ee8325ea253e5d0f585d70a692952ee3ea93151ab27cd73b45b0a04af6c2`  
		Last Modified: Wed, 18 Jan 2017 08:10:34 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bcc1fb2249a5323c5e19864781ff8e22e3320e0298faa50dd6ea401c23016f`  
		Last Modified: Wed, 18 Jan 2017 08:10:38 GMT  
		Size: 7.8 MB (7826189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1670cbe4c395c48d827be1e039c6a705171256fc526fcb25ee15d3877bf99afe`  
		Last Modified: Wed, 18 Jan 2017 08:10:33 GMT  
		Size: 2.9 KB (2934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php7.1`

```console
$ docker pull wordpress@sha256:4676f913ed0607bc7fbc754f5fb6053ca4c38767a82a3d654ad6934fe4d1132a
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168404933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4189987afb178bfe0279c0ab56810df172040abc18636e1e9a11f085b0d0bed`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:11:17 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0
# Tue, 17 Jan 2017 19:11:17 GMT
ENV PHP_VERSION=7.1.0
# Tue, 17 Jan 2017 19:11:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.0.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:11:18 GMT
ENV PHP_SHA256=a810b3f29c21407c24caa88f50649320d20ba6892ae1923132598b8a0ca145b6 PHP_MD5=cf36039303c47f493100afea522a8f53
# Tue, 17 Jan 2017 19:11:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:11:28 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:13:47 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:13:48 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:48 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:13:49 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:13:49 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:11:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:11:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:11:12 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:11:12 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:11:12 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:11:13 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:11:15 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:11:15 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:11:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:11:16 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:b7c226eacd1abcf2eeda1ce39b6a10c0a4297ed11d091ab78a3c163b3710b841`  
		Last Modified: Wed, 18 Jan 2017 06:01:56 GMT  
		Size: 12.9 MB (12924238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0735407921f069cc2bff0cb91629059f04b6f07e8330400ff5f6be36b8b792`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721853a6f0bd3f539408afad2f530808ac8d5a4651a01ef98dd83db936a93b86`  
		Last Modified: Wed, 18 Jan 2017 06:02:00 GMT  
		Size: 13.6 MB (13596685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76b237593ae4d12fd12533256a35b7b2d4cf939b745149cad1c825a2d3d8e6`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 2.0 KB (2020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900386fecfb6a236882608175f4cf497216d87cc7fb749e8bb9fcda4c075d1cb`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b870ab4c92eba2ae0e85e4c59bc80e85958bc48940a552a0abf9fc3546ec89`  
		Last Modified: Wed, 18 Jan 2017 08:10:35 GMT  
		Size: 2.2 MB (2231390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777377a5eb66936a537497c0ed6e1d2035f7e0868d88e8f26dca64b0bb106e9b`  
		Last Modified: Wed, 18 Jan 2017 08:10:34 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f8ee8325ea253e5d0f585d70a692952ee3ea93151ab27cd73b45b0a04af6c2`  
		Last Modified: Wed, 18 Jan 2017 08:10:34 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bcc1fb2249a5323c5e19864781ff8e22e3320e0298faa50dd6ea401c23016f`  
		Last Modified: Wed, 18 Jan 2017 08:10:38 GMT  
		Size: 7.8 MB (7826189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1670cbe4c395c48d827be1e039c6a705171256fc526fcb25ee15d3877bf99afe`  
		Last Modified: Wed, 18 Jan 2017 08:10:33 GMT  
		Size: 2.9 KB (2934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php7.1`

```console
$ docker pull wordpress@sha256:4676f913ed0607bc7fbc754f5fb6053ca4c38767a82a3d654ad6934fe4d1132a
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168404933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4189987afb178bfe0279c0ab56810df172040abc18636e1e9a11f085b0d0bed`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:11:17 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0
# Tue, 17 Jan 2017 19:11:17 GMT
ENV PHP_VERSION=7.1.0
# Tue, 17 Jan 2017 19:11:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.0.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:11:18 GMT
ENV PHP_SHA256=a810b3f29c21407c24caa88f50649320d20ba6892ae1923132598b8a0ca145b6 PHP_MD5=cf36039303c47f493100afea522a8f53
# Tue, 17 Jan 2017 19:11:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:11:28 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:13:47 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:13:48 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:13:48 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:13:49 GMT
EXPOSE 80/tcp
# Tue, 17 Jan 2017 19:13:49 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jan 2017 21:11:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:11:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:11:12 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jan 2017 21:11:12 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:11:12 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:11:13 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:11:15 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:11:15 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:11:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:11:16 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:b7c226eacd1abcf2eeda1ce39b6a10c0a4297ed11d091ab78a3c163b3710b841`  
		Last Modified: Wed, 18 Jan 2017 06:01:56 GMT  
		Size: 12.9 MB (12924238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0735407921f069cc2bff0cb91629059f04b6f07e8330400ff5f6be36b8b792`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721853a6f0bd3f539408afad2f530808ac8d5a4651a01ef98dd83db936a93b86`  
		Last Modified: Wed, 18 Jan 2017 06:02:00 GMT  
		Size: 13.6 MB (13596685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76b237593ae4d12fd12533256a35b7b2d4cf939b745149cad1c825a2d3d8e6`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 2.0 KB (2020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900386fecfb6a236882608175f4cf497216d87cc7fb749e8bb9fcda4c075d1cb`  
		Last Modified: Wed, 18 Jan 2017 06:01:51 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b870ab4c92eba2ae0e85e4c59bc80e85958bc48940a552a0abf9fc3546ec89`  
		Last Modified: Wed, 18 Jan 2017 08:10:35 GMT  
		Size: 2.2 MB (2231390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777377a5eb66936a537497c0ed6e1d2035f7e0868d88e8f26dca64b0bb106e9b`  
		Last Modified: Wed, 18 Jan 2017 08:10:34 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f8ee8325ea253e5d0f585d70a692952ee3ea93151ab27cd73b45b0a04af6c2`  
		Last Modified: Wed, 18 Jan 2017 08:10:34 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bcc1fb2249a5323c5e19864781ff8e22e3320e0298faa50dd6ea401c23016f`  
		Last Modified: Wed, 18 Jan 2017 08:10:38 GMT  
		Size: 7.8 MB (7826189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1670cbe4c395c48d827be1e039c6a705171256fc526fcb25ee15d3877bf99afe`  
		Last Modified: Wed, 18 Jan 2017 08:10:33 GMT  
		Size: 2.9 KB (2934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.1-php7.1-fpm`

```console
$ docker pull wordpress@sha256:3772188328ca08815aba0c3cacd93409bbb86184defebf46cdeb6a43db41ff84
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.1-php7.1-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.1 MB (165137457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e9c84e9a78758b3e8d02b4120457a1eaccf36e535b3902006f1ec5ff2fe80bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:13:50 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0
# Tue, 17 Jan 2017 19:13:50 GMT
ENV PHP_VERSION=7.1.0
# Tue, 17 Jan 2017 19:13:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.0.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:13:50 GMT
ENV PHP_SHA256=a810b3f29c21407c24caa88f50649320d20ba6892ae1923132598b8a0ca145b6 PHP_MD5=cf36039303c47f493100afea522a8f53
# Tue, 17 Jan 2017 19:13:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:13:58 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:17:35 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:17:36 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:17:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:17:37 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:17:38 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 17 Jan 2017 19:17:38 GMT
EXPOSE 9000/tcp
# Tue, 17 Jan 2017 19:17:38 GMT
CMD ["php-fpm"]
# Tue, 17 Jan 2017 21:11:58 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:11:59 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:11:59 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:12:00 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:12:00 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:12:02 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:12:02 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:12:03 GMT
CMD ["php-fpm"]
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
	-	`sha256:c3300aac0007bb1e444e0916de798d4f416f7c5960714a31ecfacf212b7046cb`  
		Last Modified: Wed, 18 Jan 2017 06:03:28 GMT  
		Size: 12.9 MB (12904577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3d537a7fbb8f037e9fa641fd4c3c01dae5c3c7bcbf8f671b99fd8edb77acdc`  
		Last Modified: Wed, 18 Jan 2017 06:03:18 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2486286812351d000d3392cdf4e7b6751e89d095110bbb098c1213a26796a9da`  
		Last Modified: Wed, 18 Jan 2017 06:03:35 GMT  
		Size: 13.2 MB (13215768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c69fc28ae2cc73211f872c21c930eae496ec793754d5b4ad9b0ee8a1a36f28`  
		Last Modified: Wed, 18 Jan 2017 06:03:16 GMT  
		Size: 2.0 KB (2012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214901489c7f28ccde78d55e5f431303aa87c3be05da4bb08f722d83a8daaa70`  
		Last Modified: Wed, 18 Jan 2017 06:03:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5d85c64dddf56949d603a1b92fe39a2993124e691b38c7a603f44fea498585`  
		Last Modified: Wed, 18 Jan 2017 06:03:17 GMT  
		Size: 7.7 KB (7697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95fd51f523b32e68a5d18870ab7fac765522e65c42cec9e348911bd84bd599a`  
		Last Modified: Wed, 18 Jan 2017 08:12:42 GMT  
		Size: 2.2 MB (2209125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0155f279fd84107d6843380af7534d06e46c46a616a2e056fb8555a7edd0bcf1`  
		Last Modified: Wed, 18 Jan 2017 08:12:40 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f20c90f50db7ab5d918f9f30d3c1a6f61c0bba177bade0674af5f9d0216bf2d`  
		Last Modified: Wed, 18 Jan 2017 08:12:45 GMT  
		Size: 7.8 MB (7826190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5cd989f6c37761f91ccdd317e58590662b8bfa802563375339a1c1887214d17`  
		Last Modified: Wed, 18 Jan 2017 08:12:41 GMT  
		Size: 2.9 KB (2938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php7.1-fpm`

```console
$ docker pull wordpress@sha256:3772188328ca08815aba0c3cacd93409bbb86184defebf46cdeb6a43db41ff84
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php7.1-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.1 MB (165137457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e9c84e9a78758b3e8d02b4120457a1eaccf36e535b3902006f1ec5ff2fe80bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:13:50 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0
# Tue, 17 Jan 2017 19:13:50 GMT
ENV PHP_VERSION=7.1.0
# Tue, 17 Jan 2017 19:13:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.0.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:13:50 GMT
ENV PHP_SHA256=a810b3f29c21407c24caa88f50649320d20ba6892ae1923132598b8a0ca145b6 PHP_MD5=cf36039303c47f493100afea522a8f53
# Tue, 17 Jan 2017 19:13:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:13:58 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:17:35 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:17:36 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:17:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:17:37 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:17:38 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 17 Jan 2017 19:17:38 GMT
EXPOSE 9000/tcp
# Tue, 17 Jan 2017 19:17:38 GMT
CMD ["php-fpm"]
# Tue, 17 Jan 2017 21:11:58 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:11:59 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:11:59 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:12:00 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:12:00 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:12:02 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:12:02 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:12:03 GMT
CMD ["php-fpm"]
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
	-	`sha256:c3300aac0007bb1e444e0916de798d4f416f7c5960714a31ecfacf212b7046cb`  
		Last Modified: Wed, 18 Jan 2017 06:03:28 GMT  
		Size: 12.9 MB (12904577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3d537a7fbb8f037e9fa641fd4c3c01dae5c3c7bcbf8f671b99fd8edb77acdc`  
		Last Modified: Wed, 18 Jan 2017 06:03:18 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2486286812351d000d3392cdf4e7b6751e89d095110bbb098c1213a26796a9da`  
		Last Modified: Wed, 18 Jan 2017 06:03:35 GMT  
		Size: 13.2 MB (13215768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c69fc28ae2cc73211f872c21c930eae496ec793754d5b4ad9b0ee8a1a36f28`  
		Last Modified: Wed, 18 Jan 2017 06:03:16 GMT  
		Size: 2.0 KB (2012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214901489c7f28ccde78d55e5f431303aa87c3be05da4bb08f722d83a8daaa70`  
		Last Modified: Wed, 18 Jan 2017 06:03:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5d85c64dddf56949d603a1b92fe39a2993124e691b38c7a603f44fea498585`  
		Last Modified: Wed, 18 Jan 2017 06:03:17 GMT  
		Size: 7.7 KB (7697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95fd51f523b32e68a5d18870ab7fac765522e65c42cec9e348911bd84bd599a`  
		Last Modified: Wed, 18 Jan 2017 08:12:42 GMT  
		Size: 2.2 MB (2209125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0155f279fd84107d6843380af7534d06e46c46a616a2e056fb8555a7edd0bcf1`  
		Last Modified: Wed, 18 Jan 2017 08:12:40 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f20c90f50db7ab5d918f9f30d3c1a6f61c0bba177bade0674af5f9d0216bf2d`  
		Last Modified: Wed, 18 Jan 2017 08:12:45 GMT  
		Size: 7.8 MB (7826190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5cd989f6c37761f91ccdd317e58590662b8bfa802563375339a1c1887214d17`  
		Last Modified: Wed, 18 Jan 2017 08:12:41 GMT  
		Size: 2.9 KB (2938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php7.1-fpm`

```console
$ docker pull wordpress@sha256:3772188328ca08815aba0c3cacd93409bbb86184defebf46cdeb6a43db41ff84
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.1-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.1 MB (165137457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e9c84e9a78758b3e8d02b4120457a1eaccf36e535b3902006f1ec5ff2fe80bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:13:50 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0
# Tue, 17 Jan 2017 19:13:50 GMT
ENV PHP_VERSION=7.1.0
# Tue, 17 Jan 2017 19:13:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.0.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:13:50 GMT
ENV PHP_SHA256=a810b3f29c21407c24caa88f50649320d20ba6892ae1923132598b8a0ca145b6 PHP_MD5=cf36039303c47f493100afea522a8f53
# Tue, 17 Jan 2017 19:13:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:13:58 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:17:35 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:17:36 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:17:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:17:37 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:17:38 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 17 Jan 2017 19:17:38 GMT
EXPOSE 9000/tcp
# Tue, 17 Jan 2017 19:17:38 GMT
CMD ["php-fpm"]
# Tue, 17 Jan 2017 21:11:58 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:11:59 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:11:59 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:12:00 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:12:00 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:12:02 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:12:02 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:12:03 GMT
CMD ["php-fpm"]
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
	-	`sha256:c3300aac0007bb1e444e0916de798d4f416f7c5960714a31ecfacf212b7046cb`  
		Last Modified: Wed, 18 Jan 2017 06:03:28 GMT  
		Size: 12.9 MB (12904577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3d537a7fbb8f037e9fa641fd4c3c01dae5c3c7bcbf8f671b99fd8edb77acdc`  
		Last Modified: Wed, 18 Jan 2017 06:03:18 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2486286812351d000d3392cdf4e7b6751e89d095110bbb098c1213a26796a9da`  
		Last Modified: Wed, 18 Jan 2017 06:03:35 GMT  
		Size: 13.2 MB (13215768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c69fc28ae2cc73211f872c21c930eae496ec793754d5b4ad9b0ee8a1a36f28`  
		Last Modified: Wed, 18 Jan 2017 06:03:16 GMT  
		Size: 2.0 KB (2012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214901489c7f28ccde78d55e5f431303aa87c3be05da4bb08f722d83a8daaa70`  
		Last Modified: Wed, 18 Jan 2017 06:03:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5d85c64dddf56949d603a1b92fe39a2993124e691b38c7a603f44fea498585`  
		Last Modified: Wed, 18 Jan 2017 06:03:17 GMT  
		Size: 7.7 KB (7697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95fd51f523b32e68a5d18870ab7fac765522e65c42cec9e348911bd84bd599a`  
		Last Modified: Wed, 18 Jan 2017 08:12:42 GMT  
		Size: 2.2 MB (2209125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0155f279fd84107d6843380af7534d06e46c46a616a2e056fb8555a7edd0bcf1`  
		Last Modified: Wed, 18 Jan 2017 08:12:40 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f20c90f50db7ab5d918f9f30d3c1a6f61c0bba177bade0674af5f9d0216bf2d`  
		Last Modified: Wed, 18 Jan 2017 08:12:45 GMT  
		Size: 7.8 MB (7826190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5cd989f6c37761f91ccdd317e58590662b8bfa802563375339a1c1887214d17`  
		Last Modified: Wed, 18 Jan 2017 08:12:41 GMT  
		Size: 2.9 KB (2938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php7.1-fpm`

```console
$ docker pull wordpress@sha256:3772188328ca08815aba0c3cacd93409bbb86184defebf46cdeb6a43db41ff84
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.1-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.1 MB (165137457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e9c84e9a78758b3e8d02b4120457a1eaccf36e535b3902006f1ec5ff2fe80bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 17 Jan 2017 19:13:50 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0
# Tue, 17 Jan 2017 19:13:50 GMT
ENV PHP_VERSION=7.1.0
# Tue, 17 Jan 2017 19:13:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.0.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:13:50 GMT
ENV PHP_SHA256=a810b3f29c21407c24caa88f50649320d20ba6892ae1923132598b8a0ca145b6 PHP_MD5=cf36039303c47f493100afea522a8f53
# Tue, 17 Jan 2017 19:13:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:13:58 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:17:35 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:17:36 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:17:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:17:37 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:17:38 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 17 Jan 2017 19:17:38 GMT
EXPOSE 9000/tcp
# Tue, 17 Jan 2017 19:17:38 GMT
CMD ["php-fpm"]
# Tue, 17 Jan 2017 21:11:58 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:11:59 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:11:59 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:12:00 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:12:00 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:12:02 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:12:02 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:12:03 GMT
CMD ["php-fpm"]
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
	-	`sha256:c3300aac0007bb1e444e0916de798d4f416f7c5960714a31ecfacf212b7046cb`  
		Last Modified: Wed, 18 Jan 2017 06:03:28 GMT  
		Size: 12.9 MB (12904577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3d537a7fbb8f037e9fa641fd4c3c01dae5c3c7bcbf8f671b99fd8edb77acdc`  
		Last Modified: Wed, 18 Jan 2017 06:03:18 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2486286812351d000d3392cdf4e7b6751e89d095110bbb098c1213a26796a9da`  
		Last Modified: Wed, 18 Jan 2017 06:03:35 GMT  
		Size: 13.2 MB (13215768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c69fc28ae2cc73211f872c21c930eae496ec793754d5b4ad9b0ee8a1a36f28`  
		Last Modified: Wed, 18 Jan 2017 06:03:16 GMT  
		Size: 2.0 KB (2012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214901489c7f28ccde78d55e5f431303aa87c3be05da4bb08f722d83a8daaa70`  
		Last Modified: Wed, 18 Jan 2017 06:03:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5d85c64dddf56949d603a1b92fe39a2993124e691b38c7a603f44fea498585`  
		Last Modified: Wed, 18 Jan 2017 06:03:17 GMT  
		Size: 7.7 KB (7697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95fd51f523b32e68a5d18870ab7fac765522e65c42cec9e348911bd84bd599a`  
		Last Modified: Wed, 18 Jan 2017 08:12:42 GMT  
		Size: 2.2 MB (2209125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0155f279fd84107d6843380af7534d06e46c46a616a2e056fb8555a7edd0bcf1`  
		Last Modified: Wed, 18 Jan 2017 08:12:40 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f20c90f50db7ab5d918f9f30d3c1a6f61c0bba177bade0674af5f9d0216bf2d`  
		Last Modified: Wed, 18 Jan 2017 08:12:45 GMT  
		Size: 7.8 MB (7826190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5cd989f6c37761f91ccdd317e58590662b8bfa802563375339a1c1887214d17`  
		Last Modified: Wed, 18 Jan 2017 08:12:41 GMT  
		Size: 2.9 KB (2938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.1-php7.1-fpm-alpine`

```console
$ docker pull wordpress@sha256:c9a82dbe826d90141cdc58f352b1700af20295cc65aa4fb4e8e22060b890758f
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.1-php7.1-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 MB (39975707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52110e4030e3f3bf373dba41d37ed646cf4508cc4c9d78a44a628b13eb4f4394`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 27 Dec 2016 19:31:22 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0
# Tue, 27 Dec 2016 19:31:23 GMT
ENV PHP_VERSION=7.1.0
# Tue, 27 Dec 2016 19:31:24 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.0.tar.xz.asc/from/this/mirror
# Tue, 27 Dec 2016 19:31:24 GMT
ENV PHP_SHA256=a810b3f29c21407c24caa88f50649320d20ba6892ae1923132598b8a0ca145b6 PHP_MD5=cf36039303c47f493100afea522a8f53
# Tue, 27 Dec 2016 19:31:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 27 Dec 2016 19:31:33 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 27 Dec 2016 19:43:18 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 27 Dec 2016 19:43:19 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 27 Dec 2016 19:43:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 27 Dec 2016 19:43:20 GMT
WORKDIR /var/www/html
# Tue, 27 Dec 2016 19:43:21 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 27 Dec 2016 19:43:21 GMT
EXPOSE 9000/tcp
# Tue, 27 Dec 2016 19:43:22 GMT
CMD ["php-fpm"]
# Fri, 06 Jan 2017 23:59:41 GMT
RUN apk add --no-cache 		bash 		sed
# Sat, 07 Jan 2017 00:00:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 07 Jan 2017 00:00:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 07 Jan 2017 00:00:25 GMT
VOLUME [/var/www/html]
# Fri, 13 Jan 2017 19:38:20 GMT
ENV WORDPRESS_VERSION=4.7.1
# Fri, 13 Jan 2017 19:38:21 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Fri, 13 Jan 2017 19:38:23 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 13 Jan 2017 19:38:24 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Fri, 13 Jan 2017 19:38:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jan 2017 19:38:25 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6956a7b2abf1a50876a52967908aafd913c40ad7dc845ce563ec7cc569da483`  
		Last Modified: Tue, 27 Dec 2016 21:13:42 GMT  
		Size: 13.0 MB (12966713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bffb57e68841aeb139e518363940f0c96bb1625088782c0e7b4a681a82832a7`  
		Last Modified: Tue, 27 Dec 2016 21:13:37 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b5f9da4710ab74b585931f8cbc013c86e843dfde1f3d3093489874e1053842`  
		Last Modified: Tue, 27 Dec 2016 21:13:43 GMT  
		Size: 14.4 MB (14409719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d318698f1394bdda6688eacead181b708c6d5a232cac1e018415fddd0014b9`  
		Last Modified: Tue, 27 Dec 2016 21:13:37 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235a8e34c240ea9b983efdfea10342b0e73eea4c433620dbb65b9f4d8dac7e26`  
		Last Modified: Tue, 27 Dec 2016 21:13:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c1c986ead2b391ea306fe8c76ab5e97cdf35d74d053bdcca07a0ff6b572a51`  
		Last Modified: Tue, 27 Dec 2016 21:13:36 GMT  
		Size: 7.7 KB (7684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8f5af12e299a3d73e898d86945c552ee6bcdfe9be70169c4f98c5cb389fc7d`  
		Last Modified: Sat, 07 Jan 2017 00:15:19 GMT  
		Size: 590.0 KB (589973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a1f2adebd143cfe97a4080465bdbd1f3601d7a0da1c8b288dc91b403c73e3f`  
		Last Modified: Sat, 07 Jan 2017 00:15:20 GMT  
		Size: 806.4 KB (806419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827a9e28e39dcd6ef99a8a00c50909bdd3730d8f37ccdd40ee3455ffd62c5bb6`  
		Last Modified: Sat, 07 Jan 2017 00:15:20 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2835bfddc444fa27714bcf707c05a64ee3634c1554d590134746adaa202dcfec`  
		Last Modified: Fri, 13 Jan 2017 19:54:13 GMT  
		Size: 7.8 MB (7826285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97cefb40a8baba32b5cb5dbeca264fa06f32b95455c5930a5e7a529638b014ac`  
		Last Modified: Fri, 13 Jan 2017 19:54:10 GMT  
		Size: 2.9 KB (2926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php7.1-fpm-alpine`

```console
$ docker pull wordpress@sha256:c9a82dbe826d90141cdc58f352b1700af20295cc65aa4fb4e8e22060b890758f
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php7.1-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 MB (39975707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52110e4030e3f3bf373dba41d37ed646cf4508cc4c9d78a44a628b13eb4f4394`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 27 Dec 2016 19:31:22 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0
# Tue, 27 Dec 2016 19:31:23 GMT
ENV PHP_VERSION=7.1.0
# Tue, 27 Dec 2016 19:31:24 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.0.tar.xz.asc/from/this/mirror
# Tue, 27 Dec 2016 19:31:24 GMT
ENV PHP_SHA256=a810b3f29c21407c24caa88f50649320d20ba6892ae1923132598b8a0ca145b6 PHP_MD5=cf36039303c47f493100afea522a8f53
# Tue, 27 Dec 2016 19:31:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 27 Dec 2016 19:31:33 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 27 Dec 2016 19:43:18 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 27 Dec 2016 19:43:19 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 27 Dec 2016 19:43:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 27 Dec 2016 19:43:20 GMT
WORKDIR /var/www/html
# Tue, 27 Dec 2016 19:43:21 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 27 Dec 2016 19:43:21 GMT
EXPOSE 9000/tcp
# Tue, 27 Dec 2016 19:43:22 GMT
CMD ["php-fpm"]
# Fri, 06 Jan 2017 23:59:41 GMT
RUN apk add --no-cache 		bash 		sed
# Sat, 07 Jan 2017 00:00:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 07 Jan 2017 00:00:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 07 Jan 2017 00:00:25 GMT
VOLUME [/var/www/html]
# Fri, 13 Jan 2017 19:38:20 GMT
ENV WORDPRESS_VERSION=4.7.1
# Fri, 13 Jan 2017 19:38:21 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Fri, 13 Jan 2017 19:38:23 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 13 Jan 2017 19:38:24 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Fri, 13 Jan 2017 19:38:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jan 2017 19:38:25 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6956a7b2abf1a50876a52967908aafd913c40ad7dc845ce563ec7cc569da483`  
		Last Modified: Tue, 27 Dec 2016 21:13:42 GMT  
		Size: 13.0 MB (12966713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bffb57e68841aeb139e518363940f0c96bb1625088782c0e7b4a681a82832a7`  
		Last Modified: Tue, 27 Dec 2016 21:13:37 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b5f9da4710ab74b585931f8cbc013c86e843dfde1f3d3093489874e1053842`  
		Last Modified: Tue, 27 Dec 2016 21:13:43 GMT  
		Size: 14.4 MB (14409719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d318698f1394bdda6688eacead181b708c6d5a232cac1e018415fddd0014b9`  
		Last Modified: Tue, 27 Dec 2016 21:13:37 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235a8e34c240ea9b983efdfea10342b0e73eea4c433620dbb65b9f4d8dac7e26`  
		Last Modified: Tue, 27 Dec 2016 21:13:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c1c986ead2b391ea306fe8c76ab5e97cdf35d74d053bdcca07a0ff6b572a51`  
		Last Modified: Tue, 27 Dec 2016 21:13:36 GMT  
		Size: 7.7 KB (7684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8f5af12e299a3d73e898d86945c552ee6bcdfe9be70169c4f98c5cb389fc7d`  
		Last Modified: Sat, 07 Jan 2017 00:15:19 GMT  
		Size: 590.0 KB (589973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a1f2adebd143cfe97a4080465bdbd1f3601d7a0da1c8b288dc91b403c73e3f`  
		Last Modified: Sat, 07 Jan 2017 00:15:20 GMT  
		Size: 806.4 KB (806419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827a9e28e39dcd6ef99a8a00c50909bdd3730d8f37ccdd40ee3455ffd62c5bb6`  
		Last Modified: Sat, 07 Jan 2017 00:15:20 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2835bfddc444fa27714bcf707c05a64ee3634c1554d590134746adaa202dcfec`  
		Last Modified: Fri, 13 Jan 2017 19:54:13 GMT  
		Size: 7.8 MB (7826285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97cefb40a8baba32b5cb5dbeca264fa06f32b95455c5930a5e7a529638b014ac`  
		Last Modified: Fri, 13 Jan 2017 19:54:10 GMT  
		Size: 2.9 KB (2926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php7.1-fpm-alpine`

```console
$ docker pull wordpress@sha256:c9a82dbe826d90141cdc58f352b1700af20295cc65aa4fb4e8e22060b890758f
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.1-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 MB (39975707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52110e4030e3f3bf373dba41d37ed646cf4508cc4c9d78a44a628b13eb4f4394`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 27 Dec 2016 19:31:22 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0
# Tue, 27 Dec 2016 19:31:23 GMT
ENV PHP_VERSION=7.1.0
# Tue, 27 Dec 2016 19:31:24 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.0.tar.xz.asc/from/this/mirror
# Tue, 27 Dec 2016 19:31:24 GMT
ENV PHP_SHA256=a810b3f29c21407c24caa88f50649320d20ba6892ae1923132598b8a0ca145b6 PHP_MD5=cf36039303c47f493100afea522a8f53
# Tue, 27 Dec 2016 19:31:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 27 Dec 2016 19:31:33 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 27 Dec 2016 19:43:18 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 27 Dec 2016 19:43:19 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 27 Dec 2016 19:43:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 27 Dec 2016 19:43:20 GMT
WORKDIR /var/www/html
# Tue, 27 Dec 2016 19:43:21 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 27 Dec 2016 19:43:21 GMT
EXPOSE 9000/tcp
# Tue, 27 Dec 2016 19:43:22 GMT
CMD ["php-fpm"]
# Fri, 06 Jan 2017 23:59:41 GMT
RUN apk add --no-cache 		bash 		sed
# Sat, 07 Jan 2017 00:00:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 07 Jan 2017 00:00:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 07 Jan 2017 00:00:25 GMT
VOLUME [/var/www/html]
# Fri, 13 Jan 2017 19:38:20 GMT
ENV WORDPRESS_VERSION=4.7.1
# Fri, 13 Jan 2017 19:38:21 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Fri, 13 Jan 2017 19:38:23 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 13 Jan 2017 19:38:24 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Fri, 13 Jan 2017 19:38:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jan 2017 19:38:25 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6956a7b2abf1a50876a52967908aafd913c40ad7dc845ce563ec7cc569da483`  
		Last Modified: Tue, 27 Dec 2016 21:13:42 GMT  
		Size: 13.0 MB (12966713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bffb57e68841aeb139e518363940f0c96bb1625088782c0e7b4a681a82832a7`  
		Last Modified: Tue, 27 Dec 2016 21:13:37 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b5f9da4710ab74b585931f8cbc013c86e843dfde1f3d3093489874e1053842`  
		Last Modified: Tue, 27 Dec 2016 21:13:43 GMT  
		Size: 14.4 MB (14409719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d318698f1394bdda6688eacead181b708c6d5a232cac1e018415fddd0014b9`  
		Last Modified: Tue, 27 Dec 2016 21:13:37 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235a8e34c240ea9b983efdfea10342b0e73eea4c433620dbb65b9f4d8dac7e26`  
		Last Modified: Tue, 27 Dec 2016 21:13:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c1c986ead2b391ea306fe8c76ab5e97cdf35d74d053bdcca07a0ff6b572a51`  
		Last Modified: Tue, 27 Dec 2016 21:13:36 GMT  
		Size: 7.7 KB (7684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8f5af12e299a3d73e898d86945c552ee6bcdfe9be70169c4f98c5cb389fc7d`  
		Last Modified: Sat, 07 Jan 2017 00:15:19 GMT  
		Size: 590.0 KB (589973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a1f2adebd143cfe97a4080465bdbd1f3601d7a0da1c8b288dc91b403c73e3f`  
		Last Modified: Sat, 07 Jan 2017 00:15:20 GMT  
		Size: 806.4 KB (806419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827a9e28e39dcd6ef99a8a00c50909bdd3730d8f37ccdd40ee3455ffd62c5bb6`  
		Last Modified: Sat, 07 Jan 2017 00:15:20 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2835bfddc444fa27714bcf707c05a64ee3634c1554d590134746adaa202dcfec`  
		Last Modified: Fri, 13 Jan 2017 19:54:13 GMT  
		Size: 7.8 MB (7826285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97cefb40a8baba32b5cb5dbeca264fa06f32b95455c5930a5e7a529638b014ac`  
		Last Modified: Fri, 13 Jan 2017 19:54:10 GMT  
		Size: 2.9 KB (2926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php7.1-fpm-alpine`

```console
$ docker pull wordpress@sha256:c9a82dbe826d90141cdc58f352b1700af20295cc65aa4fb4e8e22060b890758f
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.1-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 MB (39975707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52110e4030e3f3bf373dba41d37ed646cf4508cc4c9d78a44a628b13eb4f4394`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 27 Dec 2016 19:31:22 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0
# Tue, 27 Dec 2016 19:31:23 GMT
ENV PHP_VERSION=7.1.0
# Tue, 27 Dec 2016 19:31:24 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.0.tar.xz.asc/from/this/mirror
# Tue, 27 Dec 2016 19:31:24 GMT
ENV PHP_SHA256=a810b3f29c21407c24caa88f50649320d20ba6892ae1923132598b8a0ca145b6 PHP_MD5=cf36039303c47f493100afea522a8f53
# Tue, 27 Dec 2016 19:31:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 27 Dec 2016 19:31:33 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 27 Dec 2016 19:43:18 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 27 Dec 2016 19:43:19 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 27 Dec 2016 19:43:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 27 Dec 2016 19:43:20 GMT
WORKDIR /var/www/html
# Tue, 27 Dec 2016 19:43:21 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 27 Dec 2016 19:43:21 GMT
EXPOSE 9000/tcp
# Tue, 27 Dec 2016 19:43:22 GMT
CMD ["php-fpm"]
# Fri, 06 Jan 2017 23:59:41 GMT
RUN apk add --no-cache 		bash 		sed
# Sat, 07 Jan 2017 00:00:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 07 Jan 2017 00:00:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 07 Jan 2017 00:00:25 GMT
VOLUME [/var/www/html]
# Fri, 13 Jan 2017 19:38:20 GMT
ENV WORDPRESS_VERSION=4.7.1
# Fri, 13 Jan 2017 19:38:21 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Fri, 13 Jan 2017 19:38:23 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 13 Jan 2017 19:38:24 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Fri, 13 Jan 2017 19:38:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jan 2017 19:38:25 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6956a7b2abf1a50876a52967908aafd913c40ad7dc845ce563ec7cc569da483`  
		Last Modified: Tue, 27 Dec 2016 21:13:42 GMT  
		Size: 13.0 MB (12966713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bffb57e68841aeb139e518363940f0c96bb1625088782c0e7b4a681a82832a7`  
		Last Modified: Tue, 27 Dec 2016 21:13:37 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b5f9da4710ab74b585931f8cbc013c86e843dfde1f3d3093489874e1053842`  
		Last Modified: Tue, 27 Dec 2016 21:13:43 GMT  
		Size: 14.4 MB (14409719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d318698f1394bdda6688eacead181b708c6d5a232cac1e018415fddd0014b9`  
		Last Modified: Tue, 27 Dec 2016 21:13:37 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235a8e34c240ea9b983efdfea10342b0e73eea4c433620dbb65b9f4d8dac7e26`  
		Last Modified: Tue, 27 Dec 2016 21:13:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c1c986ead2b391ea306fe8c76ab5e97cdf35d74d053bdcca07a0ff6b572a51`  
		Last Modified: Tue, 27 Dec 2016 21:13:36 GMT  
		Size: 7.7 KB (7684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8f5af12e299a3d73e898d86945c552ee6bcdfe9be70169c4f98c5cb389fc7d`  
		Last Modified: Sat, 07 Jan 2017 00:15:19 GMT  
		Size: 590.0 KB (589973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a1f2adebd143cfe97a4080465bdbd1f3601d7a0da1c8b288dc91b403c73e3f`  
		Last Modified: Sat, 07 Jan 2017 00:15:20 GMT  
		Size: 806.4 KB (806419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827a9e28e39dcd6ef99a8a00c50909bdd3730d8f37ccdd40ee3455ffd62c5bb6`  
		Last Modified: Sat, 07 Jan 2017 00:15:20 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2835bfddc444fa27714bcf707c05a64ee3634c1554d590134746adaa202dcfec`  
		Last Modified: Fri, 13 Jan 2017 19:54:13 GMT  
		Size: 7.8 MB (7826285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97cefb40a8baba32b5cb5dbeca264fa06f32b95455c5930a5e7a529638b014ac`  
		Last Modified: Fri, 13 Jan 2017 19:54:10 GMT  
		Size: 2.9 KB (2926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
