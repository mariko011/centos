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
-	[`wordpress:4.7.0-fpm-alpine`](#wordpress470-fpm-alpine)
-	[`wordpress:4.7-fpm-alpine`](#wordpress47-fpm-alpine)
-	[`wordpress:4-fpm-alpine`](#wordpress4-fpm-alpine)
-	[`wordpress:fpm-alpine`](#wordpressfpm-alpine)
-	[`wordpress:4.7.0-php5.6-fpm-alpine`](#wordpress470-php56-fpm-alpine)
-	[`wordpress:4.7-php5.6-fpm-alpine`](#wordpress47-php56-fpm-alpine)
-	[`wordpress:4-php5.6-fpm-alpine`](#wordpress4-php56-fpm-alpine)
-	[`wordpress:php5.6-fpm-alpine`](#wordpressphp56-fpm-alpine)
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
-	[`wordpress:4.7.0-php7.0-fpm-alpine`](#wordpress470-php70-fpm-alpine)
-	[`wordpress:4.7-php7.0-fpm-alpine`](#wordpress47-php70-fpm-alpine)
-	[`wordpress:4-php7.0-fpm-alpine`](#wordpress4-php70-fpm-alpine)
-	[`wordpress:php7.0-fpm-alpine`](#wordpressphp70-fpm-alpine)

## `wordpress:4.7.0-apache`

```console
$ docker pull wordpress@sha256:0bb659eafa22cdb9f14bc05d17be97132842eb122eb8ff346ecafe7553f48f22
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.0-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163593964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed69ee3e546add385c972cd4d7d5de7b67adce3cd01888b1e98a7f0b2f7a60ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:55:06 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:55:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:55:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:57:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:15 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:16 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:16 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:16 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:26:17 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:42:05 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:07 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:42:07 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b43451e2e604c08df71fd389262caff274c48bf0f12eaf06732b97fdc40ae48`  
		Last Modified: Wed, 14 Dec 2016 16:36:09 GMT  
		Size: 12.6 MB (12575861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4dc6da381e653aafc02f010810f1a032ae083e27f7e86cb160830670e469c23`  
		Last Modified: Wed, 14 Dec 2016 16:36:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771a9ee2bb6a5a30611043db8fd2c2451190249a19dfd814d3f7b4f32a00719c`  
		Last Modified: Wed, 14 Dec 2016 16:36:10 GMT  
		Size: 9.2 MB (9247430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3862c25af8ee18e83d8ab105eb352320b70d9fdec4345b0d3b1b5c2839a3907b`  
		Last Modified: Mon, 19 Dec 2016 19:49:31 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3bf90f1df745f0e40b7fa02c94749d0836df51f9f4116eb97bbc970438f1b35`  
		Last Modified: Mon, 19 Dec 2016 19:49:32 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4564f4870a3e675a4997da2bd007e39c4d82e6aa099195c0dc91ceb79816554e`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.1 MB (2135251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9c03f980751c96505c2a416788e22170e4bf589722771df1be75ff02c71b39`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4dfa2bfbb43af8f9bd8dac65175a7557c12161598c2e4f952c3817daa922ec`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69feb6fb40db4e2bdd4f22f23384797308e44c0cdd5d1cd46dd92438dd39962a`  
		Last Modified: Wed, 21 Dec 2016 20:44:32 GMT  
		Size: 7.8 MB (7821784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f129a65fac711ab3afdb5479babd9756393a3506f26920f9d729ae509f9b504`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-apache`

```console
$ docker pull wordpress@sha256:0bb659eafa22cdb9f14bc05d17be97132842eb122eb8ff346ecafe7553f48f22
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163593964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed69ee3e546add385c972cd4d7d5de7b67adce3cd01888b1e98a7f0b2f7a60ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:55:06 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:55:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:55:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:57:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:15 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:16 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:16 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:16 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:26:17 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:42:05 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:07 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:42:07 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b43451e2e604c08df71fd389262caff274c48bf0f12eaf06732b97fdc40ae48`  
		Last Modified: Wed, 14 Dec 2016 16:36:09 GMT  
		Size: 12.6 MB (12575861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4dc6da381e653aafc02f010810f1a032ae083e27f7e86cb160830670e469c23`  
		Last Modified: Wed, 14 Dec 2016 16:36:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771a9ee2bb6a5a30611043db8fd2c2451190249a19dfd814d3f7b4f32a00719c`  
		Last Modified: Wed, 14 Dec 2016 16:36:10 GMT  
		Size: 9.2 MB (9247430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3862c25af8ee18e83d8ab105eb352320b70d9fdec4345b0d3b1b5c2839a3907b`  
		Last Modified: Mon, 19 Dec 2016 19:49:31 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3bf90f1df745f0e40b7fa02c94749d0836df51f9f4116eb97bbc970438f1b35`  
		Last Modified: Mon, 19 Dec 2016 19:49:32 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4564f4870a3e675a4997da2bd007e39c4d82e6aa099195c0dc91ceb79816554e`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.1 MB (2135251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9c03f980751c96505c2a416788e22170e4bf589722771df1be75ff02c71b39`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4dfa2bfbb43af8f9bd8dac65175a7557c12161598c2e4f952c3817daa922ec`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69feb6fb40db4e2bdd4f22f23384797308e44c0cdd5d1cd46dd92438dd39962a`  
		Last Modified: Wed, 21 Dec 2016 20:44:32 GMT  
		Size: 7.8 MB (7821784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f129a65fac711ab3afdb5479babd9756393a3506f26920f9d729ae509f9b504`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-apache`

```console
$ docker pull wordpress@sha256:0bb659eafa22cdb9f14bc05d17be97132842eb122eb8ff346ecafe7553f48f22
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163593964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed69ee3e546add385c972cd4d7d5de7b67adce3cd01888b1e98a7f0b2f7a60ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:55:06 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:55:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:55:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:57:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:15 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:16 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:16 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:16 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:26:17 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:42:05 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:07 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:42:07 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b43451e2e604c08df71fd389262caff274c48bf0f12eaf06732b97fdc40ae48`  
		Last Modified: Wed, 14 Dec 2016 16:36:09 GMT  
		Size: 12.6 MB (12575861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4dc6da381e653aafc02f010810f1a032ae083e27f7e86cb160830670e469c23`  
		Last Modified: Wed, 14 Dec 2016 16:36:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771a9ee2bb6a5a30611043db8fd2c2451190249a19dfd814d3f7b4f32a00719c`  
		Last Modified: Wed, 14 Dec 2016 16:36:10 GMT  
		Size: 9.2 MB (9247430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3862c25af8ee18e83d8ab105eb352320b70d9fdec4345b0d3b1b5c2839a3907b`  
		Last Modified: Mon, 19 Dec 2016 19:49:31 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3bf90f1df745f0e40b7fa02c94749d0836df51f9f4116eb97bbc970438f1b35`  
		Last Modified: Mon, 19 Dec 2016 19:49:32 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4564f4870a3e675a4997da2bd007e39c4d82e6aa099195c0dc91ceb79816554e`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.1 MB (2135251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9c03f980751c96505c2a416788e22170e4bf589722771df1be75ff02c71b39`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4dfa2bfbb43af8f9bd8dac65175a7557c12161598c2e4f952c3817daa922ec`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69feb6fb40db4e2bdd4f22f23384797308e44c0cdd5d1cd46dd92438dd39962a`  
		Last Modified: Wed, 21 Dec 2016 20:44:32 GMT  
		Size: 7.8 MB (7821784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f129a65fac711ab3afdb5479babd9756393a3506f26920f9d729ae509f9b504`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:apache`

```console
$ docker pull wordpress@sha256:0bb659eafa22cdb9f14bc05d17be97132842eb122eb8ff346ecafe7553f48f22
```

-	Platforms:
	-	linux; amd64

### `wordpress:apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163593964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed69ee3e546add385c972cd4d7d5de7b67adce3cd01888b1e98a7f0b2f7a60ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:55:06 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:55:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:55:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:57:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:15 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:16 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:16 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:16 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:26:17 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:42:05 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:07 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:42:07 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b43451e2e604c08df71fd389262caff274c48bf0f12eaf06732b97fdc40ae48`  
		Last Modified: Wed, 14 Dec 2016 16:36:09 GMT  
		Size: 12.6 MB (12575861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4dc6da381e653aafc02f010810f1a032ae083e27f7e86cb160830670e469c23`  
		Last Modified: Wed, 14 Dec 2016 16:36:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771a9ee2bb6a5a30611043db8fd2c2451190249a19dfd814d3f7b4f32a00719c`  
		Last Modified: Wed, 14 Dec 2016 16:36:10 GMT  
		Size: 9.2 MB (9247430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3862c25af8ee18e83d8ab105eb352320b70d9fdec4345b0d3b1b5c2839a3907b`  
		Last Modified: Mon, 19 Dec 2016 19:49:31 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3bf90f1df745f0e40b7fa02c94749d0836df51f9f4116eb97bbc970438f1b35`  
		Last Modified: Mon, 19 Dec 2016 19:49:32 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4564f4870a3e675a4997da2bd007e39c4d82e6aa099195c0dc91ceb79816554e`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.1 MB (2135251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9c03f980751c96505c2a416788e22170e4bf589722771df1be75ff02c71b39`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4dfa2bfbb43af8f9bd8dac65175a7557c12161598c2e4f952c3817daa922ec`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69feb6fb40db4e2bdd4f22f23384797308e44c0cdd5d1cd46dd92438dd39962a`  
		Last Modified: Wed, 21 Dec 2016 20:44:32 GMT  
		Size: 7.8 MB (7821784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f129a65fac711ab3afdb5479babd9756393a3506f26920f9d729ae509f9b504`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.0`

```console
$ docker pull wordpress@sha256:0bb659eafa22cdb9f14bc05d17be97132842eb122eb8ff346ecafe7553f48f22
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163593964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed69ee3e546add385c972cd4d7d5de7b67adce3cd01888b1e98a7f0b2f7a60ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:55:06 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:55:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:55:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:57:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:15 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:16 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:16 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:16 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:26:17 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:42:05 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:07 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:42:07 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b43451e2e604c08df71fd389262caff274c48bf0f12eaf06732b97fdc40ae48`  
		Last Modified: Wed, 14 Dec 2016 16:36:09 GMT  
		Size: 12.6 MB (12575861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4dc6da381e653aafc02f010810f1a032ae083e27f7e86cb160830670e469c23`  
		Last Modified: Wed, 14 Dec 2016 16:36:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771a9ee2bb6a5a30611043db8fd2c2451190249a19dfd814d3f7b4f32a00719c`  
		Last Modified: Wed, 14 Dec 2016 16:36:10 GMT  
		Size: 9.2 MB (9247430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3862c25af8ee18e83d8ab105eb352320b70d9fdec4345b0d3b1b5c2839a3907b`  
		Last Modified: Mon, 19 Dec 2016 19:49:31 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3bf90f1df745f0e40b7fa02c94749d0836df51f9f4116eb97bbc970438f1b35`  
		Last Modified: Mon, 19 Dec 2016 19:49:32 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4564f4870a3e675a4997da2bd007e39c4d82e6aa099195c0dc91ceb79816554e`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.1 MB (2135251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9c03f980751c96505c2a416788e22170e4bf589722771df1be75ff02c71b39`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4dfa2bfbb43af8f9bd8dac65175a7557c12161598c2e4f952c3817daa922ec`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69feb6fb40db4e2bdd4f22f23384797308e44c0cdd5d1cd46dd92438dd39962a`  
		Last Modified: Wed, 21 Dec 2016 20:44:32 GMT  
		Size: 7.8 MB (7821784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f129a65fac711ab3afdb5479babd9756393a3506f26920f9d729ae509f9b504`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7`

```console
$ docker pull wordpress@sha256:0bb659eafa22cdb9f14bc05d17be97132842eb122eb8ff346ecafe7553f48f22
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163593964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed69ee3e546add385c972cd4d7d5de7b67adce3cd01888b1e98a7f0b2f7a60ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:55:06 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:55:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:55:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:57:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:15 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:16 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:16 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:16 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:26:17 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:42:05 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:07 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:42:07 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b43451e2e604c08df71fd389262caff274c48bf0f12eaf06732b97fdc40ae48`  
		Last Modified: Wed, 14 Dec 2016 16:36:09 GMT  
		Size: 12.6 MB (12575861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4dc6da381e653aafc02f010810f1a032ae083e27f7e86cb160830670e469c23`  
		Last Modified: Wed, 14 Dec 2016 16:36:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771a9ee2bb6a5a30611043db8fd2c2451190249a19dfd814d3f7b4f32a00719c`  
		Last Modified: Wed, 14 Dec 2016 16:36:10 GMT  
		Size: 9.2 MB (9247430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3862c25af8ee18e83d8ab105eb352320b70d9fdec4345b0d3b1b5c2839a3907b`  
		Last Modified: Mon, 19 Dec 2016 19:49:31 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3bf90f1df745f0e40b7fa02c94749d0836df51f9f4116eb97bbc970438f1b35`  
		Last Modified: Mon, 19 Dec 2016 19:49:32 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4564f4870a3e675a4997da2bd007e39c4d82e6aa099195c0dc91ceb79816554e`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.1 MB (2135251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9c03f980751c96505c2a416788e22170e4bf589722771df1be75ff02c71b39`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4dfa2bfbb43af8f9bd8dac65175a7557c12161598c2e4f952c3817daa922ec`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69feb6fb40db4e2bdd4f22f23384797308e44c0cdd5d1cd46dd92438dd39962a`  
		Last Modified: Wed, 21 Dec 2016 20:44:32 GMT  
		Size: 7.8 MB (7821784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f129a65fac711ab3afdb5479babd9756393a3506f26920f9d729ae509f9b504`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4`

```console
$ docker pull wordpress@sha256:0bb659eafa22cdb9f14bc05d17be97132842eb122eb8ff346ecafe7553f48f22
```

-	Platforms:
	-	linux; amd64

### `wordpress:4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163593964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed69ee3e546add385c972cd4d7d5de7b67adce3cd01888b1e98a7f0b2f7a60ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:55:06 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:55:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:55:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:57:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:15 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:16 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:16 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:16 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:26:17 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:42:05 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:07 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:42:07 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b43451e2e604c08df71fd389262caff274c48bf0f12eaf06732b97fdc40ae48`  
		Last Modified: Wed, 14 Dec 2016 16:36:09 GMT  
		Size: 12.6 MB (12575861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4dc6da381e653aafc02f010810f1a032ae083e27f7e86cb160830670e469c23`  
		Last Modified: Wed, 14 Dec 2016 16:36:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771a9ee2bb6a5a30611043db8fd2c2451190249a19dfd814d3f7b4f32a00719c`  
		Last Modified: Wed, 14 Dec 2016 16:36:10 GMT  
		Size: 9.2 MB (9247430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3862c25af8ee18e83d8ab105eb352320b70d9fdec4345b0d3b1b5c2839a3907b`  
		Last Modified: Mon, 19 Dec 2016 19:49:31 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3bf90f1df745f0e40b7fa02c94749d0836df51f9f4116eb97bbc970438f1b35`  
		Last Modified: Mon, 19 Dec 2016 19:49:32 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4564f4870a3e675a4997da2bd007e39c4d82e6aa099195c0dc91ceb79816554e`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.1 MB (2135251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9c03f980751c96505c2a416788e22170e4bf589722771df1be75ff02c71b39`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4dfa2bfbb43af8f9bd8dac65175a7557c12161598c2e4f952c3817daa922ec`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69feb6fb40db4e2bdd4f22f23384797308e44c0cdd5d1cd46dd92438dd39962a`  
		Last Modified: Wed, 21 Dec 2016 20:44:32 GMT  
		Size: 7.8 MB (7821784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f129a65fac711ab3afdb5479babd9756393a3506f26920f9d729ae509f9b504`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:latest`

```console
$ docker pull wordpress@sha256:0bb659eafa22cdb9f14bc05d17be97132842eb122eb8ff346ecafe7553f48f22
```

-	Platforms:
	-	linux; amd64

### `wordpress:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163593964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed69ee3e546add385c972cd4d7d5de7b67adce3cd01888b1e98a7f0b2f7a60ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:55:06 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:55:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:55:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:57:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:15 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:16 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:16 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:16 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:26:17 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:42:05 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:07 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:42:07 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b43451e2e604c08df71fd389262caff274c48bf0f12eaf06732b97fdc40ae48`  
		Last Modified: Wed, 14 Dec 2016 16:36:09 GMT  
		Size: 12.6 MB (12575861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4dc6da381e653aafc02f010810f1a032ae083e27f7e86cb160830670e469c23`  
		Last Modified: Wed, 14 Dec 2016 16:36:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771a9ee2bb6a5a30611043db8fd2c2451190249a19dfd814d3f7b4f32a00719c`  
		Last Modified: Wed, 14 Dec 2016 16:36:10 GMT  
		Size: 9.2 MB (9247430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3862c25af8ee18e83d8ab105eb352320b70d9fdec4345b0d3b1b5c2839a3907b`  
		Last Modified: Mon, 19 Dec 2016 19:49:31 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3bf90f1df745f0e40b7fa02c94749d0836df51f9f4116eb97bbc970438f1b35`  
		Last Modified: Mon, 19 Dec 2016 19:49:32 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4564f4870a3e675a4997da2bd007e39c4d82e6aa099195c0dc91ceb79816554e`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.1 MB (2135251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9c03f980751c96505c2a416788e22170e4bf589722771df1be75ff02c71b39`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4dfa2bfbb43af8f9bd8dac65175a7557c12161598c2e4f952c3817daa922ec`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69feb6fb40db4e2bdd4f22f23384797308e44c0cdd5d1cd46dd92438dd39962a`  
		Last Modified: Wed, 21 Dec 2016 20:44:32 GMT  
		Size: 7.8 MB (7821784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f129a65fac711ab3afdb5479babd9756393a3506f26920f9d729ae509f9b504`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.0-php5.6-apache`

```console
$ docker pull wordpress@sha256:0bb659eafa22cdb9f14bc05d17be97132842eb122eb8ff346ecafe7553f48f22
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.0-php5.6-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163593964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed69ee3e546add385c972cd4d7d5de7b67adce3cd01888b1e98a7f0b2f7a60ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:55:06 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:55:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:55:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:57:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:15 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:16 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:16 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:16 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:26:17 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:42:05 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:07 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:42:07 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b43451e2e604c08df71fd389262caff274c48bf0f12eaf06732b97fdc40ae48`  
		Last Modified: Wed, 14 Dec 2016 16:36:09 GMT  
		Size: 12.6 MB (12575861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4dc6da381e653aafc02f010810f1a032ae083e27f7e86cb160830670e469c23`  
		Last Modified: Wed, 14 Dec 2016 16:36:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771a9ee2bb6a5a30611043db8fd2c2451190249a19dfd814d3f7b4f32a00719c`  
		Last Modified: Wed, 14 Dec 2016 16:36:10 GMT  
		Size: 9.2 MB (9247430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3862c25af8ee18e83d8ab105eb352320b70d9fdec4345b0d3b1b5c2839a3907b`  
		Last Modified: Mon, 19 Dec 2016 19:49:31 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3bf90f1df745f0e40b7fa02c94749d0836df51f9f4116eb97bbc970438f1b35`  
		Last Modified: Mon, 19 Dec 2016 19:49:32 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4564f4870a3e675a4997da2bd007e39c4d82e6aa099195c0dc91ceb79816554e`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.1 MB (2135251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9c03f980751c96505c2a416788e22170e4bf589722771df1be75ff02c71b39`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4dfa2bfbb43af8f9bd8dac65175a7557c12161598c2e4f952c3817daa922ec`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69feb6fb40db4e2bdd4f22f23384797308e44c0cdd5d1cd46dd92438dd39962a`  
		Last Modified: Wed, 21 Dec 2016 20:44:32 GMT  
		Size: 7.8 MB (7821784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f129a65fac711ab3afdb5479babd9756393a3506f26920f9d729ae509f9b504`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php5.6-apache`

```console
$ docker pull wordpress@sha256:0bb659eafa22cdb9f14bc05d17be97132842eb122eb8ff346ecafe7553f48f22
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php5.6-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163593964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed69ee3e546add385c972cd4d7d5de7b67adce3cd01888b1e98a7f0b2f7a60ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:55:06 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:55:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:55:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:57:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:15 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:16 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:16 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:16 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:26:17 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:42:05 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:07 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:42:07 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b43451e2e604c08df71fd389262caff274c48bf0f12eaf06732b97fdc40ae48`  
		Last Modified: Wed, 14 Dec 2016 16:36:09 GMT  
		Size: 12.6 MB (12575861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4dc6da381e653aafc02f010810f1a032ae083e27f7e86cb160830670e469c23`  
		Last Modified: Wed, 14 Dec 2016 16:36:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771a9ee2bb6a5a30611043db8fd2c2451190249a19dfd814d3f7b4f32a00719c`  
		Last Modified: Wed, 14 Dec 2016 16:36:10 GMT  
		Size: 9.2 MB (9247430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3862c25af8ee18e83d8ab105eb352320b70d9fdec4345b0d3b1b5c2839a3907b`  
		Last Modified: Mon, 19 Dec 2016 19:49:31 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3bf90f1df745f0e40b7fa02c94749d0836df51f9f4116eb97bbc970438f1b35`  
		Last Modified: Mon, 19 Dec 2016 19:49:32 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4564f4870a3e675a4997da2bd007e39c4d82e6aa099195c0dc91ceb79816554e`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.1 MB (2135251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9c03f980751c96505c2a416788e22170e4bf589722771df1be75ff02c71b39`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4dfa2bfbb43af8f9bd8dac65175a7557c12161598c2e4f952c3817daa922ec`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69feb6fb40db4e2bdd4f22f23384797308e44c0cdd5d1cd46dd92438dd39962a`  
		Last Modified: Wed, 21 Dec 2016 20:44:32 GMT  
		Size: 7.8 MB (7821784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f129a65fac711ab3afdb5479babd9756393a3506f26920f9d729ae509f9b504`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php5.6-apache`

```console
$ docker pull wordpress@sha256:0bb659eafa22cdb9f14bc05d17be97132842eb122eb8ff346ecafe7553f48f22
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php5.6-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163593964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed69ee3e546add385c972cd4d7d5de7b67adce3cd01888b1e98a7f0b2f7a60ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:55:06 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:55:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:55:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:57:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:15 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:16 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:16 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:16 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:26:17 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:42:05 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:07 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:42:07 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b43451e2e604c08df71fd389262caff274c48bf0f12eaf06732b97fdc40ae48`  
		Last Modified: Wed, 14 Dec 2016 16:36:09 GMT  
		Size: 12.6 MB (12575861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4dc6da381e653aafc02f010810f1a032ae083e27f7e86cb160830670e469c23`  
		Last Modified: Wed, 14 Dec 2016 16:36:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771a9ee2bb6a5a30611043db8fd2c2451190249a19dfd814d3f7b4f32a00719c`  
		Last Modified: Wed, 14 Dec 2016 16:36:10 GMT  
		Size: 9.2 MB (9247430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3862c25af8ee18e83d8ab105eb352320b70d9fdec4345b0d3b1b5c2839a3907b`  
		Last Modified: Mon, 19 Dec 2016 19:49:31 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3bf90f1df745f0e40b7fa02c94749d0836df51f9f4116eb97bbc970438f1b35`  
		Last Modified: Mon, 19 Dec 2016 19:49:32 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4564f4870a3e675a4997da2bd007e39c4d82e6aa099195c0dc91ceb79816554e`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.1 MB (2135251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9c03f980751c96505c2a416788e22170e4bf589722771df1be75ff02c71b39`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4dfa2bfbb43af8f9bd8dac65175a7557c12161598c2e4f952c3817daa922ec`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69feb6fb40db4e2bdd4f22f23384797308e44c0cdd5d1cd46dd92438dd39962a`  
		Last Modified: Wed, 21 Dec 2016 20:44:32 GMT  
		Size: 7.8 MB (7821784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f129a65fac711ab3afdb5479babd9756393a3506f26920f9d729ae509f9b504`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php5.6-apache`

```console
$ docker pull wordpress@sha256:0bb659eafa22cdb9f14bc05d17be97132842eb122eb8ff346ecafe7553f48f22
```

-	Platforms:
	-	linux; amd64

### `wordpress:php5.6-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163593964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed69ee3e546add385c972cd4d7d5de7b67adce3cd01888b1e98a7f0b2f7a60ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:55:06 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:55:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:55:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:57:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:15 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:16 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:16 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:16 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:26:17 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:42:05 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:07 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:42:07 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b43451e2e604c08df71fd389262caff274c48bf0f12eaf06732b97fdc40ae48`  
		Last Modified: Wed, 14 Dec 2016 16:36:09 GMT  
		Size: 12.6 MB (12575861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4dc6da381e653aafc02f010810f1a032ae083e27f7e86cb160830670e469c23`  
		Last Modified: Wed, 14 Dec 2016 16:36:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771a9ee2bb6a5a30611043db8fd2c2451190249a19dfd814d3f7b4f32a00719c`  
		Last Modified: Wed, 14 Dec 2016 16:36:10 GMT  
		Size: 9.2 MB (9247430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3862c25af8ee18e83d8ab105eb352320b70d9fdec4345b0d3b1b5c2839a3907b`  
		Last Modified: Mon, 19 Dec 2016 19:49:31 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3bf90f1df745f0e40b7fa02c94749d0836df51f9f4116eb97bbc970438f1b35`  
		Last Modified: Mon, 19 Dec 2016 19:49:32 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4564f4870a3e675a4997da2bd007e39c4d82e6aa099195c0dc91ceb79816554e`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.1 MB (2135251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9c03f980751c96505c2a416788e22170e4bf589722771df1be75ff02c71b39`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4dfa2bfbb43af8f9bd8dac65175a7557c12161598c2e4f952c3817daa922ec`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69feb6fb40db4e2bdd4f22f23384797308e44c0cdd5d1cd46dd92438dd39962a`  
		Last Modified: Wed, 21 Dec 2016 20:44:32 GMT  
		Size: 7.8 MB (7821784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f129a65fac711ab3afdb5479babd9756393a3506f26920f9d729ae509f9b504`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.0-php5.6`

```console
$ docker pull wordpress@sha256:0bb659eafa22cdb9f14bc05d17be97132842eb122eb8ff346ecafe7553f48f22
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.0-php5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163593964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed69ee3e546add385c972cd4d7d5de7b67adce3cd01888b1e98a7f0b2f7a60ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:55:06 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:55:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:55:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:57:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:15 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:16 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:16 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:16 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:26:17 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:42:05 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:07 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:42:07 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b43451e2e604c08df71fd389262caff274c48bf0f12eaf06732b97fdc40ae48`  
		Last Modified: Wed, 14 Dec 2016 16:36:09 GMT  
		Size: 12.6 MB (12575861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4dc6da381e653aafc02f010810f1a032ae083e27f7e86cb160830670e469c23`  
		Last Modified: Wed, 14 Dec 2016 16:36:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771a9ee2bb6a5a30611043db8fd2c2451190249a19dfd814d3f7b4f32a00719c`  
		Last Modified: Wed, 14 Dec 2016 16:36:10 GMT  
		Size: 9.2 MB (9247430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3862c25af8ee18e83d8ab105eb352320b70d9fdec4345b0d3b1b5c2839a3907b`  
		Last Modified: Mon, 19 Dec 2016 19:49:31 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3bf90f1df745f0e40b7fa02c94749d0836df51f9f4116eb97bbc970438f1b35`  
		Last Modified: Mon, 19 Dec 2016 19:49:32 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4564f4870a3e675a4997da2bd007e39c4d82e6aa099195c0dc91ceb79816554e`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.1 MB (2135251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9c03f980751c96505c2a416788e22170e4bf589722771df1be75ff02c71b39`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4dfa2bfbb43af8f9bd8dac65175a7557c12161598c2e4f952c3817daa922ec`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69feb6fb40db4e2bdd4f22f23384797308e44c0cdd5d1cd46dd92438dd39962a`  
		Last Modified: Wed, 21 Dec 2016 20:44:32 GMT  
		Size: 7.8 MB (7821784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f129a65fac711ab3afdb5479babd9756393a3506f26920f9d729ae509f9b504`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php5.6`

```console
$ docker pull wordpress@sha256:0bb659eafa22cdb9f14bc05d17be97132842eb122eb8ff346ecafe7553f48f22
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163593964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed69ee3e546add385c972cd4d7d5de7b67adce3cd01888b1e98a7f0b2f7a60ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:55:06 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:55:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:55:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:57:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:15 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:16 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:16 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:16 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:26:17 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:42:05 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:07 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:42:07 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b43451e2e604c08df71fd389262caff274c48bf0f12eaf06732b97fdc40ae48`  
		Last Modified: Wed, 14 Dec 2016 16:36:09 GMT  
		Size: 12.6 MB (12575861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4dc6da381e653aafc02f010810f1a032ae083e27f7e86cb160830670e469c23`  
		Last Modified: Wed, 14 Dec 2016 16:36:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771a9ee2bb6a5a30611043db8fd2c2451190249a19dfd814d3f7b4f32a00719c`  
		Last Modified: Wed, 14 Dec 2016 16:36:10 GMT  
		Size: 9.2 MB (9247430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3862c25af8ee18e83d8ab105eb352320b70d9fdec4345b0d3b1b5c2839a3907b`  
		Last Modified: Mon, 19 Dec 2016 19:49:31 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3bf90f1df745f0e40b7fa02c94749d0836df51f9f4116eb97bbc970438f1b35`  
		Last Modified: Mon, 19 Dec 2016 19:49:32 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4564f4870a3e675a4997da2bd007e39c4d82e6aa099195c0dc91ceb79816554e`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.1 MB (2135251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9c03f980751c96505c2a416788e22170e4bf589722771df1be75ff02c71b39`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4dfa2bfbb43af8f9bd8dac65175a7557c12161598c2e4f952c3817daa922ec`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69feb6fb40db4e2bdd4f22f23384797308e44c0cdd5d1cd46dd92438dd39962a`  
		Last Modified: Wed, 21 Dec 2016 20:44:32 GMT  
		Size: 7.8 MB (7821784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f129a65fac711ab3afdb5479babd9756393a3506f26920f9d729ae509f9b504`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php5.6`

```console
$ docker pull wordpress@sha256:0bb659eafa22cdb9f14bc05d17be97132842eb122eb8ff346ecafe7553f48f22
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163593964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed69ee3e546add385c972cd4d7d5de7b67adce3cd01888b1e98a7f0b2f7a60ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:55:06 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:55:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:55:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:57:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:15 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:16 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:16 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:16 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:26:17 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:42:05 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:07 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:42:07 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b43451e2e604c08df71fd389262caff274c48bf0f12eaf06732b97fdc40ae48`  
		Last Modified: Wed, 14 Dec 2016 16:36:09 GMT  
		Size: 12.6 MB (12575861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4dc6da381e653aafc02f010810f1a032ae083e27f7e86cb160830670e469c23`  
		Last Modified: Wed, 14 Dec 2016 16:36:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771a9ee2bb6a5a30611043db8fd2c2451190249a19dfd814d3f7b4f32a00719c`  
		Last Modified: Wed, 14 Dec 2016 16:36:10 GMT  
		Size: 9.2 MB (9247430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3862c25af8ee18e83d8ab105eb352320b70d9fdec4345b0d3b1b5c2839a3907b`  
		Last Modified: Mon, 19 Dec 2016 19:49:31 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3bf90f1df745f0e40b7fa02c94749d0836df51f9f4116eb97bbc970438f1b35`  
		Last Modified: Mon, 19 Dec 2016 19:49:32 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4564f4870a3e675a4997da2bd007e39c4d82e6aa099195c0dc91ceb79816554e`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.1 MB (2135251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9c03f980751c96505c2a416788e22170e4bf589722771df1be75ff02c71b39`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4dfa2bfbb43af8f9bd8dac65175a7557c12161598c2e4f952c3817daa922ec`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69feb6fb40db4e2bdd4f22f23384797308e44c0cdd5d1cd46dd92438dd39962a`  
		Last Modified: Wed, 21 Dec 2016 20:44:32 GMT  
		Size: 7.8 MB (7821784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f129a65fac711ab3afdb5479babd9756393a3506f26920f9d729ae509f9b504`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php5.6`

```console
$ docker pull wordpress@sha256:0bb659eafa22cdb9f14bc05d17be97132842eb122eb8ff346ecafe7553f48f22
```

-	Platforms:
	-	linux; amd64

### `wordpress:php5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163593964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed69ee3e546add385c972cd4d7d5de7b67adce3cd01888b1e98a7f0b2f7a60ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:55:06 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:55:07 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:55:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:55:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:57:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:15 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:16 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:16 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:16 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:26:17 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:42:05 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:07 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:42:07 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b43451e2e604c08df71fd389262caff274c48bf0f12eaf06732b97fdc40ae48`  
		Last Modified: Wed, 14 Dec 2016 16:36:09 GMT  
		Size: 12.6 MB (12575861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4dc6da381e653aafc02f010810f1a032ae083e27f7e86cb160830670e469c23`  
		Last Modified: Wed, 14 Dec 2016 16:36:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771a9ee2bb6a5a30611043db8fd2c2451190249a19dfd814d3f7b4f32a00719c`  
		Last Modified: Wed, 14 Dec 2016 16:36:10 GMT  
		Size: 9.2 MB (9247430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3862c25af8ee18e83d8ab105eb352320b70d9fdec4345b0d3b1b5c2839a3907b`  
		Last Modified: Mon, 19 Dec 2016 19:49:31 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3bf90f1df745f0e40b7fa02c94749d0836df51f9f4116eb97bbc970438f1b35`  
		Last Modified: Mon, 19 Dec 2016 19:49:32 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4564f4870a3e675a4997da2bd007e39c4d82e6aa099195c0dc91ceb79816554e`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.1 MB (2135251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9c03f980751c96505c2a416788e22170e4bf589722771df1be75ff02c71b39`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4dfa2bfbb43af8f9bd8dac65175a7557c12161598c2e4f952c3817daa922ec`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69feb6fb40db4e2bdd4f22f23384797308e44c0cdd5d1cd46dd92438dd39962a`  
		Last Modified: Wed, 21 Dec 2016 20:44:32 GMT  
		Size: 7.8 MB (7821784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f129a65fac711ab3afdb5479babd9756393a3506f26920f9d729ae509f9b504`  
		Last Modified: Wed, 21 Dec 2016 20:44:30 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.0-fpm`

```console
$ docker pull wordpress@sha256:ec3914a6a2ad36714aaad74db4946ff7a53ca9c50accef0122448cbc55c4fdf4
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.0-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160223569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05f8dddd6bd2f4f9cc38172f6b625375658eac8fbb07b73c7db1706f47bdb901`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:57:37 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:57:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:57:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 16:01:04 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:18 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:19 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:20 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Dec 2016 19:26:20 GMT
EXPOSE 9000/tcp
# Mon, 19 Dec 2016 19:26:21 GMT
CMD ["php-fpm"]
# Wed, 21 Dec 2016 20:42:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:46 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:46 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:47 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:48 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:49 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54283fea14a4c4ba021ba260178aa1c3c7c26b2254d3a93b94a0b04392b71ba0`  
		Last Modified: Wed, 14 Dec 2016 16:37:09 GMT  
		Size: 12.6 MB (12556563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b82ddb6e57bfc8c4e5b31f6d835fda3dc99089f197d316edb0e5ee83c01b35`  
		Last Modified: Wed, 14 Dec 2016 16:37:04 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe532c7957188a214e0af6de42e16e31e94f0851067862fe771b6ed13068ca56`  
		Last Modified: Wed, 14 Dec 2016 16:37:07 GMT  
		Size: 8.8 MB (8763779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02389f3f13e01ffc75bfc899cfc486f335d9f947b24416d94166bba809930c8`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 2.0 KB (2009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5777f6cf03c51cbb0ddabad4f1a51770b3f9c216f3da58eddc960b602a60a0c0`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b45111f193e3f3fa5d7e118b2eb42b950bb1252313bf30b7f5b8268782d43b`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf49c3785e79ce34b22cbf3944b8ecc69fdbadafc4ac3de0ac93a438943fa15`  
		Last Modified: Wed, 21 Dec 2016 20:48:59 GMT  
		Size: 2.1 MB (2112832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12e87c2e5fe4961724044ba4aca88d107713c44d8c92615f1b3927f9588ba97`  
		Last Modified: Wed, 21 Dec 2016 20:48:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b268f5e65389a978c4fd000cc3b7316c8d808f2151bdde61bddf18bfeb83e2b`  
		Last Modified: Wed, 21 Dec 2016 20:49:11 GMT  
		Size: 7.8 MB (7821776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a215c99a79e189faf8e0048fe6015239131ddf7e1b76d10c2f124c1cfe985b0`  
		Last Modified: Wed, 21 Dec 2016 20:48:58 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-fpm`

```console
$ docker pull wordpress@sha256:ec3914a6a2ad36714aaad74db4946ff7a53ca9c50accef0122448cbc55c4fdf4
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160223569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05f8dddd6bd2f4f9cc38172f6b625375658eac8fbb07b73c7db1706f47bdb901`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:57:37 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:57:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:57:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 16:01:04 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:18 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:19 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:20 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Dec 2016 19:26:20 GMT
EXPOSE 9000/tcp
# Mon, 19 Dec 2016 19:26:21 GMT
CMD ["php-fpm"]
# Wed, 21 Dec 2016 20:42:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:46 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:46 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:47 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:48 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:49 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54283fea14a4c4ba021ba260178aa1c3c7c26b2254d3a93b94a0b04392b71ba0`  
		Last Modified: Wed, 14 Dec 2016 16:37:09 GMT  
		Size: 12.6 MB (12556563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b82ddb6e57bfc8c4e5b31f6d835fda3dc99089f197d316edb0e5ee83c01b35`  
		Last Modified: Wed, 14 Dec 2016 16:37:04 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe532c7957188a214e0af6de42e16e31e94f0851067862fe771b6ed13068ca56`  
		Last Modified: Wed, 14 Dec 2016 16:37:07 GMT  
		Size: 8.8 MB (8763779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02389f3f13e01ffc75bfc899cfc486f335d9f947b24416d94166bba809930c8`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 2.0 KB (2009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5777f6cf03c51cbb0ddabad4f1a51770b3f9c216f3da58eddc960b602a60a0c0`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b45111f193e3f3fa5d7e118b2eb42b950bb1252313bf30b7f5b8268782d43b`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf49c3785e79ce34b22cbf3944b8ecc69fdbadafc4ac3de0ac93a438943fa15`  
		Last Modified: Wed, 21 Dec 2016 20:48:59 GMT  
		Size: 2.1 MB (2112832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12e87c2e5fe4961724044ba4aca88d107713c44d8c92615f1b3927f9588ba97`  
		Last Modified: Wed, 21 Dec 2016 20:48:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b268f5e65389a978c4fd000cc3b7316c8d808f2151bdde61bddf18bfeb83e2b`  
		Last Modified: Wed, 21 Dec 2016 20:49:11 GMT  
		Size: 7.8 MB (7821776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a215c99a79e189faf8e0048fe6015239131ddf7e1b76d10c2f124c1cfe985b0`  
		Last Modified: Wed, 21 Dec 2016 20:48:58 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-fpm`

```console
$ docker pull wordpress@sha256:ec3914a6a2ad36714aaad74db4946ff7a53ca9c50accef0122448cbc55c4fdf4
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160223569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05f8dddd6bd2f4f9cc38172f6b625375658eac8fbb07b73c7db1706f47bdb901`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:57:37 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:57:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:57:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 16:01:04 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:18 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:19 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:20 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Dec 2016 19:26:20 GMT
EXPOSE 9000/tcp
# Mon, 19 Dec 2016 19:26:21 GMT
CMD ["php-fpm"]
# Wed, 21 Dec 2016 20:42:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:46 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:46 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:47 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:48 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:49 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54283fea14a4c4ba021ba260178aa1c3c7c26b2254d3a93b94a0b04392b71ba0`  
		Last Modified: Wed, 14 Dec 2016 16:37:09 GMT  
		Size: 12.6 MB (12556563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b82ddb6e57bfc8c4e5b31f6d835fda3dc99089f197d316edb0e5ee83c01b35`  
		Last Modified: Wed, 14 Dec 2016 16:37:04 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe532c7957188a214e0af6de42e16e31e94f0851067862fe771b6ed13068ca56`  
		Last Modified: Wed, 14 Dec 2016 16:37:07 GMT  
		Size: 8.8 MB (8763779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02389f3f13e01ffc75bfc899cfc486f335d9f947b24416d94166bba809930c8`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 2.0 KB (2009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5777f6cf03c51cbb0ddabad4f1a51770b3f9c216f3da58eddc960b602a60a0c0`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b45111f193e3f3fa5d7e118b2eb42b950bb1252313bf30b7f5b8268782d43b`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf49c3785e79ce34b22cbf3944b8ecc69fdbadafc4ac3de0ac93a438943fa15`  
		Last Modified: Wed, 21 Dec 2016 20:48:59 GMT  
		Size: 2.1 MB (2112832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12e87c2e5fe4961724044ba4aca88d107713c44d8c92615f1b3927f9588ba97`  
		Last Modified: Wed, 21 Dec 2016 20:48:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b268f5e65389a978c4fd000cc3b7316c8d808f2151bdde61bddf18bfeb83e2b`  
		Last Modified: Wed, 21 Dec 2016 20:49:11 GMT  
		Size: 7.8 MB (7821776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a215c99a79e189faf8e0048fe6015239131ddf7e1b76d10c2f124c1cfe985b0`  
		Last Modified: Wed, 21 Dec 2016 20:48:58 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:fpm`

```console
$ docker pull wordpress@sha256:ec3914a6a2ad36714aaad74db4946ff7a53ca9c50accef0122448cbc55c4fdf4
```

-	Platforms:
	-	linux; amd64

### `wordpress:fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160223569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05f8dddd6bd2f4f9cc38172f6b625375658eac8fbb07b73c7db1706f47bdb901`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:57:37 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:57:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:57:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 16:01:04 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:18 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:19 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:20 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Dec 2016 19:26:20 GMT
EXPOSE 9000/tcp
# Mon, 19 Dec 2016 19:26:21 GMT
CMD ["php-fpm"]
# Wed, 21 Dec 2016 20:42:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:46 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:46 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:47 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:48 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:49 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54283fea14a4c4ba021ba260178aa1c3c7c26b2254d3a93b94a0b04392b71ba0`  
		Last Modified: Wed, 14 Dec 2016 16:37:09 GMT  
		Size: 12.6 MB (12556563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b82ddb6e57bfc8c4e5b31f6d835fda3dc99089f197d316edb0e5ee83c01b35`  
		Last Modified: Wed, 14 Dec 2016 16:37:04 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe532c7957188a214e0af6de42e16e31e94f0851067862fe771b6ed13068ca56`  
		Last Modified: Wed, 14 Dec 2016 16:37:07 GMT  
		Size: 8.8 MB (8763779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02389f3f13e01ffc75bfc899cfc486f335d9f947b24416d94166bba809930c8`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 2.0 KB (2009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5777f6cf03c51cbb0ddabad4f1a51770b3f9c216f3da58eddc960b602a60a0c0`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b45111f193e3f3fa5d7e118b2eb42b950bb1252313bf30b7f5b8268782d43b`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf49c3785e79ce34b22cbf3944b8ecc69fdbadafc4ac3de0ac93a438943fa15`  
		Last Modified: Wed, 21 Dec 2016 20:48:59 GMT  
		Size: 2.1 MB (2112832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12e87c2e5fe4961724044ba4aca88d107713c44d8c92615f1b3927f9588ba97`  
		Last Modified: Wed, 21 Dec 2016 20:48:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b268f5e65389a978c4fd000cc3b7316c8d808f2151bdde61bddf18bfeb83e2b`  
		Last Modified: Wed, 21 Dec 2016 20:49:11 GMT  
		Size: 7.8 MB (7821776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a215c99a79e189faf8e0048fe6015239131ddf7e1b76d10c2f124c1cfe985b0`  
		Last Modified: Wed, 21 Dec 2016 20:48:58 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.0-php5.6-fpm`

```console
$ docker pull wordpress@sha256:ec3914a6a2ad36714aaad74db4946ff7a53ca9c50accef0122448cbc55c4fdf4
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.0-php5.6-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160223569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05f8dddd6bd2f4f9cc38172f6b625375658eac8fbb07b73c7db1706f47bdb901`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:57:37 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:57:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:57:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 16:01:04 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:18 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:19 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:20 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Dec 2016 19:26:20 GMT
EXPOSE 9000/tcp
# Mon, 19 Dec 2016 19:26:21 GMT
CMD ["php-fpm"]
# Wed, 21 Dec 2016 20:42:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:46 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:46 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:47 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:48 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:49 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54283fea14a4c4ba021ba260178aa1c3c7c26b2254d3a93b94a0b04392b71ba0`  
		Last Modified: Wed, 14 Dec 2016 16:37:09 GMT  
		Size: 12.6 MB (12556563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b82ddb6e57bfc8c4e5b31f6d835fda3dc99089f197d316edb0e5ee83c01b35`  
		Last Modified: Wed, 14 Dec 2016 16:37:04 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe532c7957188a214e0af6de42e16e31e94f0851067862fe771b6ed13068ca56`  
		Last Modified: Wed, 14 Dec 2016 16:37:07 GMT  
		Size: 8.8 MB (8763779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02389f3f13e01ffc75bfc899cfc486f335d9f947b24416d94166bba809930c8`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 2.0 KB (2009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5777f6cf03c51cbb0ddabad4f1a51770b3f9c216f3da58eddc960b602a60a0c0`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b45111f193e3f3fa5d7e118b2eb42b950bb1252313bf30b7f5b8268782d43b`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf49c3785e79ce34b22cbf3944b8ecc69fdbadafc4ac3de0ac93a438943fa15`  
		Last Modified: Wed, 21 Dec 2016 20:48:59 GMT  
		Size: 2.1 MB (2112832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12e87c2e5fe4961724044ba4aca88d107713c44d8c92615f1b3927f9588ba97`  
		Last Modified: Wed, 21 Dec 2016 20:48:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b268f5e65389a978c4fd000cc3b7316c8d808f2151bdde61bddf18bfeb83e2b`  
		Last Modified: Wed, 21 Dec 2016 20:49:11 GMT  
		Size: 7.8 MB (7821776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a215c99a79e189faf8e0048fe6015239131ddf7e1b76d10c2f124c1cfe985b0`  
		Last Modified: Wed, 21 Dec 2016 20:48:58 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php5.6-fpm`

```console
$ docker pull wordpress@sha256:ec3914a6a2ad36714aaad74db4946ff7a53ca9c50accef0122448cbc55c4fdf4
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php5.6-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160223569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05f8dddd6bd2f4f9cc38172f6b625375658eac8fbb07b73c7db1706f47bdb901`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:57:37 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:57:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:57:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 16:01:04 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:18 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:19 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:20 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Dec 2016 19:26:20 GMT
EXPOSE 9000/tcp
# Mon, 19 Dec 2016 19:26:21 GMT
CMD ["php-fpm"]
# Wed, 21 Dec 2016 20:42:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:46 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:46 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:47 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:48 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:49 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54283fea14a4c4ba021ba260178aa1c3c7c26b2254d3a93b94a0b04392b71ba0`  
		Last Modified: Wed, 14 Dec 2016 16:37:09 GMT  
		Size: 12.6 MB (12556563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b82ddb6e57bfc8c4e5b31f6d835fda3dc99089f197d316edb0e5ee83c01b35`  
		Last Modified: Wed, 14 Dec 2016 16:37:04 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe532c7957188a214e0af6de42e16e31e94f0851067862fe771b6ed13068ca56`  
		Last Modified: Wed, 14 Dec 2016 16:37:07 GMT  
		Size: 8.8 MB (8763779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02389f3f13e01ffc75bfc899cfc486f335d9f947b24416d94166bba809930c8`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 2.0 KB (2009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5777f6cf03c51cbb0ddabad4f1a51770b3f9c216f3da58eddc960b602a60a0c0`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b45111f193e3f3fa5d7e118b2eb42b950bb1252313bf30b7f5b8268782d43b`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf49c3785e79ce34b22cbf3944b8ecc69fdbadafc4ac3de0ac93a438943fa15`  
		Last Modified: Wed, 21 Dec 2016 20:48:59 GMT  
		Size: 2.1 MB (2112832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12e87c2e5fe4961724044ba4aca88d107713c44d8c92615f1b3927f9588ba97`  
		Last Modified: Wed, 21 Dec 2016 20:48:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b268f5e65389a978c4fd000cc3b7316c8d808f2151bdde61bddf18bfeb83e2b`  
		Last Modified: Wed, 21 Dec 2016 20:49:11 GMT  
		Size: 7.8 MB (7821776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a215c99a79e189faf8e0048fe6015239131ddf7e1b76d10c2f124c1cfe985b0`  
		Last Modified: Wed, 21 Dec 2016 20:48:58 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php5.6-fpm`

```console
$ docker pull wordpress@sha256:ec3914a6a2ad36714aaad74db4946ff7a53ca9c50accef0122448cbc55c4fdf4
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php5.6-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160223569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05f8dddd6bd2f4f9cc38172f6b625375658eac8fbb07b73c7db1706f47bdb901`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:57:37 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:57:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:57:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 16:01:04 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:18 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:19 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:20 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Dec 2016 19:26:20 GMT
EXPOSE 9000/tcp
# Mon, 19 Dec 2016 19:26:21 GMT
CMD ["php-fpm"]
# Wed, 21 Dec 2016 20:42:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:46 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:46 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:47 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:48 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:49 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54283fea14a4c4ba021ba260178aa1c3c7c26b2254d3a93b94a0b04392b71ba0`  
		Last Modified: Wed, 14 Dec 2016 16:37:09 GMT  
		Size: 12.6 MB (12556563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b82ddb6e57bfc8c4e5b31f6d835fda3dc99089f197d316edb0e5ee83c01b35`  
		Last Modified: Wed, 14 Dec 2016 16:37:04 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe532c7957188a214e0af6de42e16e31e94f0851067862fe771b6ed13068ca56`  
		Last Modified: Wed, 14 Dec 2016 16:37:07 GMT  
		Size: 8.8 MB (8763779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02389f3f13e01ffc75bfc899cfc486f335d9f947b24416d94166bba809930c8`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 2.0 KB (2009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5777f6cf03c51cbb0ddabad4f1a51770b3f9c216f3da58eddc960b602a60a0c0`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b45111f193e3f3fa5d7e118b2eb42b950bb1252313bf30b7f5b8268782d43b`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf49c3785e79ce34b22cbf3944b8ecc69fdbadafc4ac3de0ac93a438943fa15`  
		Last Modified: Wed, 21 Dec 2016 20:48:59 GMT  
		Size: 2.1 MB (2112832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12e87c2e5fe4961724044ba4aca88d107713c44d8c92615f1b3927f9588ba97`  
		Last Modified: Wed, 21 Dec 2016 20:48:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b268f5e65389a978c4fd000cc3b7316c8d808f2151bdde61bddf18bfeb83e2b`  
		Last Modified: Wed, 21 Dec 2016 20:49:11 GMT  
		Size: 7.8 MB (7821776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a215c99a79e189faf8e0048fe6015239131ddf7e1b76d10c2f124c1cfe985b0`  
		Last Modified: Wed, 21 Dec 2016 20:48:58 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php5.6-fpm`

```console
$ docker pull wordpress@sha256:ec3914a6a2ad36714aaad74db4946ff7a53ca9c50accef0122448cbc55c4fdf4
```

-	Platforms:
	-	linux; amd64

### `wordpress:php5.6-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160223569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05f8dddd6bd2f4f9cc38172f6b625375658eac8fbb07b73c7db1706f47bdb901`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:57:37 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:57:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:57:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 16:01:04 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:18 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:19 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:20 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Dec 2016 19:26:20 GMT
EXPOSE 9000/tcp
# Mon, 19 Dec 2016 19:26:21 GMT
CMD ["php-fpm"]
# Wed, 21 Dec 2016 20:42:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:42:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:42:46 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:42:46 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:42:47 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:42:48 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:42:49 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:42:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:42:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54283fea14a4c4ba021ba260178aa1c3c7c26b2254d3a93b94a0b04392b71ba0`  
		Last Modified: Wed, 14 Dec 2016 16:37:09 GMT  
		Size: 12.6 MB (12556563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b82ddb6e57bfc8c4e5b31f6d835fda3dc99089f197d316edb0e5ee83c01b35`  
		Last Modified: Wed, 14 Dec 2016 16:37:04 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe532c7957188a214e0af6de42e16e31e94f0851067862fe771b6ed13068ca56`  
		Last Modified: Wed, 14 Dec 2016 16:37:07 GMT  
		Size: 8.8 MB (8763779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02389f3f13e01ffc75bfc899cfc486f335d9f947b24416d94166bba809930c8`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 2.0 KB (2009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5777f6cf03c51cbb0ddabad4f1a51770b3f9c216f3da58eddc960b602a60a0c0`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b45111f193e3f3fa5d7e118b2eb42b950bb1252313bf30b7f5b8268782d43b`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf49c3785e79ce34b22cbf3944b8ecc69fdbadafc4ac3de0ac93a438943fa15`  
		Last Modified: Wed, 21 Dec 2016 20:48:59 GMT  
		Size: 2.1 MB (2112832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12e87c2e5fe4961724044ba4aca88d107713c44d8c92615f1b3927f9588ba97`  
		Last Modified: Wed, 21 Dec 2016 20:48:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b268f5e65389a978c4fd000cc3b7316c8d808f2151bdde61bddf18bfeb83e2b`  
		Last Modified: Wed, 21 Dec 2016 20:49:11 GMT  
		Size: 7.8 MB (7821776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a215c99a79e189faf8e0048fe6015239131ddf7e1b76d10c2f124c1cfe985b0`  
		Last Modified: Wed, 21 Dec 2016 20:48:58 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.0-fpm-alpine`

```console
$ docker pull wordpress@sha256:fd0b53a6aec1317ff1a15902617b76f3f64843ffe51aacd10344c0d86095bf94
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.0-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35075674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719a3a082d31f5c0cb0499254a8ce8f23718bae529e4d6c03ac199c8b4d1342c`
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
# Tue, 27 Dec 2016 22:11:07 GMT
ENV WORDPRESS_VERSION=4.7
# Tue, 27 Dec 2016 22:11:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Tue, 27 Dec 2016 22:11:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 27 Dec 2016 22:11:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Tue, 27 Dec 2016 22:11:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:11:12 GMT
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
	-	`sha256:177b28ec292e66e655693b27f60e0a81591eb7869b54253901a3d67f27a41344`  
		Last Modified: Tue, 27 Dec 2016 22:36:02 GMT  
		Size: 7.8 MB (7821948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35823e63f18757c566b9820ba5fbe6ed86493064f6a4ca67c6968db5b6e3fe0e`  
		Last Modified: Tue, 27 Dec 2016 22:35:58 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-fpm-alpine`

```console
$ docker pull wordpress@sha256:fd0b53a6aec1317ff1a15902617b76f3f64843ffe51aacd10344c0d86095bf94
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35075674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719a3a082d31f5c0cb0499254a8ce8f23718bae529e4d6c03ac199c8b4d1342c`
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
# Tue, 27 Dec 2016 22:11:07 GMT
ENV WORDPRESS_VERSION=4.7
# Tue, 27 Dec 2016 22:11:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Tue, 27 Dec 2016 22:11:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 27 Dec 2016 22:11:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Tue, 27 Dec 2016 22:11:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:11:12 GMT
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
	-	`sha256:177b28ec292e66e655693b27f60e0a81591eb7869b54253901a3d67f27a41344`  
		Last Modified: Tue, 27 Dec 2016 22:36:02 GMT  
		Size: 7.8 MB (7821948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35823e63f18757c566b9820ba5fbe6ed86493064f6a4ca67c6968db5b6e3fe0e`  
		Last Modified: Tue, 27 Dec 2016 22:35:58 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-fpm-alpine`

```console
$ docker pull wordpress@sha256:fd0b53a6aec1317ff1a15902617b76f3f64843ffe51aacd10344c0d86095bf94
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35075674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719a3a082d31f5c0cb0499254a8ce8f23718bae529e4d6c03ac199c8b4d1342c`
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
# Tue, 27 Dec 2016 22:11:07 GMT
ENV WORDPRESS_VERSION=4.7
# Tue, 27 Dec 2016 22:11:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Tue, 27 Dec 2016 22:11:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 27 Dec 2016 22:11:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Tue, 27 Dec 2016 22:11:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:11:12 GMT
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
	-	`sha256:177b28ec292e66e655693b27f60e0a81591eb7869b54253901a3d67f27a41344`  
		Last Modified: Tue, 27 Dec 2016 22:36:02 GMT  
		Size: 7.8 MB (7821948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35823e63f18757c566b9820ba5fbe6ed86493064f6a4ca67c6968db5b6e3fe0e`  
		Last Modified: Tue, 27 Dec 2016 22:35:58 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:fpm-alpine`

```console
$ docker pull wordpress@sha256:fd0b53a6aec1317ff1a15902617b76f3f64843ffe51aacd10344c0d86095bf94
```

-	Platforms:
	-	linux; amd64

### `wordpress:fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35075674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719a3a082d31f5c0cb0499254a8ce8f23718bae529e4d6c03ac199c8b4d1342c`
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
# Tue, 27 Dec 2016 22:11:07 GMT
ENV WORDPRESS_VERSION=4.7
# Tue, 27 Dec 2016 22:11:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Tue, 27 Dec 2016 22:11:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 27 Dec 2016 22:11:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Tue, 27 Dec 2016 22:11:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:11:12 GMT
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
	-	`sha256:177b28ec292e66e655693b27f60e0a81591eb7869b54253901a3d67f27a41344`  
		Last Modified: Tue, 27 Dec 2016 22:36:02 GMT  
		Size: 7.8 MB (7821948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35823e63f18757c566b9820ba5fbe6ed86493064f6a4ca67c6968db5b6e3fe0e`  
		Last Modified: Tue, 27 Dec 2016 22:35:58 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.0-php5.6-fpm-alpine`

```console
$ docker pull wordpress@sha256:fd0b53a6aec1317ff1a15902617b76f3f64843ffe51aacd10344c0d86095bf94
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.0-php5.6-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35075674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719a3a082d31f5c0cb0499254a8ce8f23718bae529e4d6c03ac199c8b4d1342c`
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
# Tue, 27 Dec 2016 22:11:07 GMT
ENV WORDPRESS_VERSION=4.7
# Tue, 27 Dec 2016 22:11:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Tue, 27 Dec 2016 22:11:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 27 Dec 2016 22:11:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Tue, 27 Dec 2016 22:11:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:11:12 GMT
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
	-	`sha256:177b28ec292e66e655693b27f60e0a81591eb7869b54253901a3d67f27a41344`  
		Last Modified: Tue, 27 Dec 2016 22:36:02 GMT  
		Size: 7.8 MB (7821948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35823e63f18757c566b9820ba5fbe6ed86493064f6a4ca67c6968db5b6e3fe0e`  
		Last Modified: Tue, 27 Dec 2016 22:35:58 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php5.6-fpm-alpine`

```console
$ docker pull wordpress@sha256:fd0b53a6aec1317ff1a15902617b76f3f64843ffe51aacd10344c0d86095bf94
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php5.6-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35075674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719a3a082d31f5c0cb0499254a8ce8f23718bae529e4d6c03ac199c8b4d1342c`
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
# Tue, 27 Dec 2016 22:11:07 GMT
ENV WORDPRESS_VERSION=4.7
# Tue, 27 Dec 2016 22:11:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Tue, 27 Dec 2016 22:11:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 27 Dec 2016 22:11:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Tue, 27 Dec 2016 22:11:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:11:12 GMT
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
	-	`sha256:177b28ec292e66e655693b27f60e0a81591eb7869b54253901a3d67f27a41344`  
		Last Modified: Tue, 27 Dec 2016 22:36:02 GMT  
		Size: 7.8 MB (7821948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35823e63f18757c566b9820ba5fbe6ed86493064f6a4ca67c6968db5b6e3fe0e`  
		Last Modified: Tue, 27 Dec 2016 22:35:58 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php5.6-fpm-alpine`

```console
$ docker pull wordpress@sha256:fd0b53a6aec1317ff1a15902617b76f3f64843ffe51aacd10344c0d86095bf94
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php5.6-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35075674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719a3a082d31f5c0cb0499254a8ce8f23718bae529e4d6c03ac199c8b4d1342c`
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
# Tue, 27 Dec 2016 22:11:07 GMT
ENV WORDPRESS_VERSION=4.7
# Tue, 27 Dec 2016 22:11:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Tue, 27 Dec 2016 22:11:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 27 Dec 2016 22:11:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Tue, 27 Dec 2016 22:11:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:11:12 GMT
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
	-	`sha256:177b28ec292e66e655693b27f60e0a81591eb7869b54253901a3d67f27a41344`  
		Last Modified: Tue, 27 Dec 2016 22:36:02 GMT  
		Size: 7.8 MB (7821948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35823e63f18757c566b9820ba5fbe6ed86493064f6a4ca67c6968db5b6e3fe0e`  
		Last Modified: Tue, 27 Dec 2016 22:35:58 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php5.6-fpm-alpine`

```console
$ docker pull wordpress@sha256:fd0b53a6aec1317ff1a15902617b76f3f64843ffe51aacd10344c0d86095bf94
```

-	Platforms:
	-	linux; amd64

### `wordpress:php5.6-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35075674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719a3a082d31f5c0cb0499254a8ce8f23718bae529e4d6c03ac199c8b4d1342c`
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
# Tue, 27 Dec 2016 22:11:07 GMT
ENV WORDPRESS_VERSION=4.7
# Tue, 27 Dec 2016 22:11:08 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Tue, 27 Dec 2016 22:11:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 27 Dec 2016 22:11:11 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Tue, 27 Dec 2016 22:11:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:11:12 GMT
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
	-	`sha256:177b28ec292e66e655693b27f60e0a81591eb7869b54253901a3d67f27a41344`  
		Last Modified: Tue, 27 Dec 2016 22:36:02 GMT  
		Size: 7.8 MB (7821948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35823e63f18757c566b9820ba5fbe6ed86493064f6a4ca67c6968db5b6e3fe0e`  
		Last Modified: Tue, 27 Dec 2016 22:35:58 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.0-php7.0-apache`

```console
$ docker pull wordpress@sha256:30cdb630559d8ce0b558ab7cf8e8ee440de754612fb29d20a810a6d59ac65795
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.0-php7.0-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167748839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0be33df20b472f7b51501db1a017a044998dd281ef46bc82dde22e973df4576c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:28:10 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_VERSION=7.0.14
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Wed, 14 Dec 2016 15:28:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:28:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:30:54 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:25:53 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:25:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:25:54 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:25:55 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:25:55 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:25:56 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:43:26 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:43:27 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:43:28 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:43:28 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:43:29 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:43:29 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:43:31 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:43:32 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:43:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:43:32 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31e25283764f334c884e7768f0476c227e5c3e12668081e8dd32855b2564652`  
		Last Modified: Wed, 14 Dec 2016 16:30:14 GMT  
		Size: 12.7 MB (12664670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bc4176799d919d3c88316739f3db7d7a2bd5832807eba3a311713ec71d06db`  
		Last Modified: Wed, 14 Dec 2016 16:30:13 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c958da07c22ea187a31f7e36106619d56a59abc035341a6a6f7fa4d61f908632`  
		Last Modified: Wed, 14 Dec 2016 16:30:18 GMT  
		Size: 13.3 MB (13300304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ed76332d75a3585964e1b7a910d896ae3dcfedc34304ede9d658f1181881de`  
		Last Modified: Mon, 19 Dec 2016 19:43:39 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f674b02795e767dfd099ff19e4f99a7ba8345df8dd09554d2907423bcdab1bea`  
		Last Modified: Mon, 19 Dec 2016 19:43:41 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510a62632c4994027c5f2f2735524e5657e76d29b95eee1bc5d654c0d126c530`  
		Last Modified: Wed, 21 Dec 2016 20:51:23 GMT  
		Size: 2.1 MB (2148456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc14b68dcf9d21265e0d2c668618424dfb5bdd10e4284ead1cfecb4c78eba2c`  
		Last Modified: Wed, 21 Dec 2016 20:51:22 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe371037e0469b2854ab7cfe4b37a55449b91a829ec8aadfba4dceef461dc8de`  
		Last Modified: Wed, 21 Dec 2016 20:51:22 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b55a4fe137a394f3c2b8d25bb7e885a7f854ab79d147308278246597ef997cf`  
		Last Modified: Wed, 21 Dec 2016 20:51:25 GMT  
		Size: 7.8 MB (7821776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d1c0eef782324c86b4637e2b18932c57efcfa62030608096fd3be815fb8be9`  
		Last Modified: Wed, 21 Dec 2016 20:51:23 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php7.0-apache`

```console
$ docker pull wordpress@sha256:30cdb630559d8ce0b558ab7cf8e8ee440de754612fb29d20a810a6d59ac65795
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php7.0-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167748839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0be33df20b472f7b51501db1a017a044998dd281ef46bc82dde22e973df4576c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:28:10 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_VERSION=7.0.14
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Wed, 14 Dec 2016 15:28:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:28:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:30:54 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:25:53 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:25:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:25:54 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:25:55 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:25:55 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:25:56 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:43:26 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:43:27 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:43:28 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:43:28 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:43:29 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:43:29 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:43:31 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:43:32 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:43:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:43:32 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31e25283764f334c884e7768f0476c227e5c3e12668081e8dd32855b2564652`  
		Last Modified: Wed, 14 Dec 2016 16:30:14 GMT  
		Size: 12.7 MB (12664670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bc4176799d919d3c88316739f3db7d7a2bd5832807eba3a311713ec71d06db`  
		Last Modified: Wed, 14 Dec 2016 16:30:13 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c958da07c22ea187a31f7e36106619d56a59abc035341a6a6f7fa4d61f908632`  
		Last Modified: Wed, 14 Dec 2016 16:30:18 GMT  
		Size: 13.3 MB (13300304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ed76332d75a3585964e1b7a910d896ae3dcfedc34304ede9d658f1181881de`  
		Last Modified: Mon, 19 Dec 2016 19:43:39 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f674b02795e767dfd099ff19e4f99a7ba8345df8dd09554d2907423bcdab1bea`  
		Last Modified: Mon, 19 Dec 2016 19:43:41 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510a62632c4994027c5f2f2735524e5657e76d29b95eee1bc5d654c0d126c530`  
		Last Modified: Wed, 21 Dec 2016 20:51:23 GMT  
		Size: 2.1 MB (2148456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc14b68dcf9d21265e0d2c668618424dfb5bdd10e4284ead1cfecb4c78eba2c`  
		Last Modified: Wed, 21 Dec 2016 20:51:22 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe371037e0469b2854ab7cfe4b37a55449b91a829ec8aadfba4dceef461dc8de`  
		Last Modified: Wed, 21 Dec 2016 20:51:22 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b55a4fe137a394f3c2b8d25bb7e885a7f854ab79d147308278246597ef997cf`  
		Last Modified: Wed, 21 Dec 2016 20:51:25 GMT  
		Size: 7.8 MB (7821776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d1c0eef782324c86b4637e2b18932c57efcfa62030608096fd3be815fb8be9`  
		Last Modified: Wed, 21 Dec 2016 20:51:23 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php7.0-apache`

```console
$ docker pull wordpress@sha256:30cdb630559d8ce0b558ab7cf8e8ee440de754612fb29d20a810a6d59ac65795
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.0-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167748839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0be33df20b472f7b51501db1a017a044998dd281ef46bc82dde22e973df4576c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:28:10 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_VERSION=7.0.14
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Wed, 14 Dec 2016 15:28:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:28:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:30:54 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:25:53 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:25:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:25:54 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:25:55 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:25:55 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:25:56 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:43:26 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:43:27 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:43:28 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:43:28 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:43:29 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:43:29 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:43:31 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:43:32 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:43:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:43:32 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31e25283764f334c884e7768f0476c227e5c3e12668081e8dd32855b2564652`  
		Last Modified: Wed, 14 Dec 2016 16:30:14 GMT  
		Size: 12.7 MB (12664670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bc4176799d919d3c88316739f3db7d7a2bd5832807eba3a311713ec71d06db`  
		Last Modified: Wed, 14 Dec 2016 16:30:13 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c958da07c22ea187a31f7e36106619d56a59abc035341a6a6f7fa4d61f908632`  
		Last Modified: Wed, 14 Dec 2016 16:30:18 GMT  
		Size: 13.3 MB (13300304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ed76332d75a3585964e1b7a910d896ae3dcfedc34304ede9d658f1181881de`  
		Last Modified: Mon, 19 Dec 2016 19:43:39 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f674b02795e767dfd099ff19e4f99a7ba8345df8dd09554d2907423bcdab1bea`  
		Last Modified: Mon, 19 Dec 2016 19:43:41 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510a62632c4994027c5f2f2735524e5657e76d29b95eee1bc5d654c0d126c530`  
		Last Modified: Wed, 21 Dec 2016 20:51:23 GMT  
		Size: 2.1 MB (2148456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc14b68dcf9d21265e0d2c668618424dfb5bdd10e4284ead1cfecb4c78eba2c`  
		Last Modified: Wed, 21 Dec 2016 20:51:22 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe371037e0469b2854ab7cfe4b37a55449b91a829ec8aadfba4dceef461dc8de`  
		Last Modified: Wed, 21 Dec 2016 20:51:22 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b55a4fe137a394f3c2b8d25bb7e885a7f854ab79d147308278246597ef997cf`  
		Last Modified: Wed, 21 Dec 2016 20:51:25 GMT  
		Size: 7.8 MB (7821776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d1c0eef782324c86b4637e2b18932c57efcfa62030608096fd3be815fb8be9`  
		Last Modified: Wed, 21 Dec 2016 20:51:23 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php7.0-apache`

```console
$ docker pull wordpress@sha256:30cdb630559d8ce0b558ab7cf8e8ee440de754612fb29d20a810a6d59ac65795
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.0-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167748839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0be33df20b472f7b51501db1a017a044998dd281ef46bc82dde22e973df4576c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:28:10 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_VERSION=7.0.14
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Wed, 14 Dec 2016 15:28:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:28:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:30:54 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:25:53 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:25:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:25:54 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:25:55 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:25:55 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:25:56 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:43:26 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:43:27 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:43:28 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:43:28 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:43:29 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:43:29 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:43:31 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:43:32 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:43:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:43:32 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31e25283764f334c884e7768f0476c227e5c3e12668081e8dd32855b2564652`  
		Last Modified: Wed, 14 Dec 2016 16:30:14 GMT  
		Size: 12.7 MB (12664670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bc4176799d919d3c88316739f3db7d7a2bd5832807eba3a311713ec71d06db`  
		Last Modified: Wed, 14 Dec 2016 16:30:13 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c958da07c22ea187a31f7e36106619d56a59abc035341a6a6f7fa4d61f908632`  
		Last Modified: Wed, 14 Dec 2016 16:30:18 GMT  
		Size: 13.3 MB (13300304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ed76332d75a3585964e1b7a910d896ae3dcfedc34304ede9d658f1181881de`  
		Last Modified: Mon, 19 Dec 2016 19:43:39 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f674b02795e767dfd099ff19e4f99a7ba8345df8dd09554d2907423bcdab1bea`  
		Last Modified: Mon, 19 Dec 2016 19:43:41 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510a62632c4994027c5f2f2735524e5657e76d29b95eee1bc5d654c0d126c530`  
		Last Modified: Wed, 21 Dec 2016 20:51:23 GMT  
		Size: 2.1 MB (2148456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc14b68dcf9d21265e0d2c668618424dfb5bdd10e4284ead1cfecb4c78eba2c`  
		Last Modified: Wed, 21 Dec 2016 20:51:22 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe371037e0469b2854ab7cfe4b37a55449b91a829ec8aadfba4dceef461dc8de`  
		Last Modified: Wed, 21 Dec 2016 20:51:22 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b55a4fe137a394f3c2b8d25bb7e885a7f854ab79d147308278246597ef997cf`  
		Last Modified: Wed, 21 Dec 2016 20:51:25 GMT  
		Size: 7.8 MB (7821776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d1c0eef782324c86b4637e2b18932c57efcfa62030608096fd3be815fb8be9`  
		Last Modified: Wed, 21 Dec 2016 20:51:23 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.0-php7.0`

```console
$ docker pull wordpress@sha256:30cdb630559d8ce0b558ab7cf8e8ee440de754612fb29d20a810a6d59ac65795
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.0-php7.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167748839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0be33df20b472f7b51501db1a017a044998dd281ef46bc82dde22e973df4576c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:28:10 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_VERSION=7.0.14
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Wed, 14 Dec 2016 15:28:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:28:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:30:54 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:25:53 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:25:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:25:54 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:25:55 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:25:55 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:25:56 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:43:26 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:43:27 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:43:28 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:43:28 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:43:29 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:43:29 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:43:31 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:43:32 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:43:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:43:32 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31e25283764f334c884e7768f0476c227e5c3e12668081e8dd32855b2564652`  
		Last Modified: Wed, 14 Dec 2016 16:30:14 GMT  
		Size: 12.7 MB (12664670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bc4176799d919d3c88316739f3db7d7a2bd5832807eba3a311713ec71d06db`  
		Last Modified: Wed, 14 Dec 2016 16:30:13 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c958da07c22ea187a31f7e36106619d56a59abc035341a6a6f7fa4d61f908632`  
		Last Modified: Wed, 14 Dec 2016 16:30:18 GMT  
		Size: 13.3 MB (13300304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ed76332d75a3585964e1b7a910d896ae3dcfedc34304ede9d658f1181881de`  
		Last Modified: Mon, 19 Dec 2016 19:43:39 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f674b02795e767dfd099ff19e4f99a7ba8345df8dd09554d2907423bcdab1bea`  
		Last Modified: Mon, 19 Dec 2016 19:43:41 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510a62632c4994027c5f2f2735524e5657e76d29b95eee1bc5d654c0d126c530`  
		Last Modified: Wed, 21 Dec 2016 20:51:23 GMT  
		Size: 2.1 MB (2148456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc14b68dcf9d21265e0d2c668618424dfb5bdd10e4284ead1cfecb4c78eba2c`  
		Last Modified: Wed, 21 Dec 2016 20:51:22 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe371037e0469b2854ab7cfe4b37a55449b91a829ec8aadfba4dceef461dc8de`  
		Last Modified: Wed, 21 Dec 2016 20:51:22 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b55a4fe137a394f3c2b8d25bb7e885a7f854ab79d147308278246597ef997cf`  
		Last Modified: Wed, 21 Dec 2016 20:51:25 GMT  
		Size: 7.8 MB (7821776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d1c0eef782324c86b4637e2b18932c57efcfa62030608096fd3be815fb8be9`  
		Last Modified: Wed, 21 Dec 2016 20:51:23 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php7.0`

```console
$ docker pull wordpress@sha256:30cdb630559d8ce0b558ab7cf8e8ee440de754612fb29d20a810a6d59ac65795
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php7.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167748839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0be33df20b472f7b51501db1a017a044998dd281ef46bc82dde22e973df4576c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:28:10 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_VERSION=7.0.14
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Wed, 14 Dec 2016 15:28:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:28:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:30:54 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:25:53 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:25:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:25:54 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:25:55 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:25:55 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:25:56 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:43:26 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:43:27 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:43:28 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:43:28 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:43:29 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:43:29 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:43:31 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:43:32 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:43:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:43:32 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31e25283764f334c884e7768f0476c227e5c3e12668081e8dd32855b2564652`  
		Last Modified: Wed, 14 Dec 2016 16:30:14 GMT  
		Size: 12.7 MB (12664670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bc4176799d919d3c88316739f3db7d7a2bd5832807eba3a311713ec71d06db`  
		Last Modified: Wed, 14 Dec 2016 16:30:13 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c958da07c22ea187a31f7e36106619d56a59abc035341a6a6f7fa4d61f908632`  
		Last Modified: Wed, 14 Dec 2016 16:30:18 GMT  
		Size: 13.3 MB (13300304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ed76332d75a3585964e1b7a910d896ae3dcfedc34304ede9d658f1181881de`  
		Last Modified: Mon, 19 Dec 2016 19:43:39 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f674b02795e767dfd099ff19e4f99a7ba8345df8dd09554d2907423bcdab1bea`  
		Last Modified: Mon, 19 Dec 2016 19:43:41 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510a62632c4994027c5f2f2735524e5657e76d29b95eee1bc5d654c0d126c530`  
		Last Modified: Wed, 21 Dec 2016 20:51:23 GMT  
		Size: 2.1 MB (2148456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc14b68dcf9d21265e0d2c668618424dfb5bdd10e4284ead1cfecb4c78eba2c`  
		Last Modified: Wed, 21 Dec 2016 20:51:22 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe371037e0469b2854ab7cfe4b37a55449b91a829ec8aadfba4dceef461dc8de`  
		Last Modified: Wed, 21 Dec 2016 20:51:22 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b55a4fe137a394f3c2b8d25bb7e885a7f854ab79d147308278246597ef997cf`  
		Last Modified: Wed, 21 Dec 2016 20:51:25 GMT  
		Size: 7.8 MB (7821776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d1c0eef782324c86b4637e2b18932c57efcfa62030608096fd3be815fb8be9`  
		Last Modified: Wed, 21 Dec 2016 20:51:23 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php7.0`

```console
$ docker pull wordpress@sha256:30cdb630559d8ce0b558ab7cf8e8ee440de754612fb29d20a810a6d59ac65795
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167748839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0be33df20b472f7b51501db1a017a044998dd281ef46bc82dde22e973df4576c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:28:10 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_VERSION=7.0.14
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Wed, 14 Dec 2016 15:28:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:28:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:30:54 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:25:53 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:25:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:25:54 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:25:55 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:25:55 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:25:56 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:43:26 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:43:27 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:43:28 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:43:28 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:43:29 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:43:29 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:43:31 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:43:32 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:43:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:43:32 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31e25283764f334c884e7768f0476c227e5c3e12668081e8dd32855b2564652`  
		Last Modified: Wed, 14 Dec 2016 16:30:14 GMT  
		Size: 12.7 MB (12664670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bc4176799d919d3c88316739f3db7d7a2bd5832807eba3a311713ec71d06db`  
		Last Modified: Wed, 14 Dec 2016 16:30:13 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c958da07c22ea187a31f7e36106619d56a59abc035341a6a6f7fa4d61f908632`  
		Last Modified: Wed, 14 Dec 2016 16:30:18 GMT  
		Size: 13.3 MB (13300304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ed76332d75a3585964e1b7a910d896ae3dcfedc34304ede9d658f1181881de`  
		Last Modified: Mon, 19 Dec 2016 19:43:39 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f674b02795e767dfd099ff19e4f99a7ba8345df8dd09554d2907423bcdab1bea`  
		Last Modified: Mon, 19 Dec 2016 19:43:41 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510a62632c4994027c5f2f2735524e5657e76d29b95eee1bc5d654c0d126c530`  
		Last Modified: Wed, 21 Dec 2016 20:51:23 GMT  
		Size: 2.1 MB (2148456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc14b68dcf9d21265e0d2c668618424dfb5bdd10e4284ead1cfecb4c78eba2c`  
		Last Modified: Wed, 21 Dec 2016 20:51:22 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe371037e0469b2854ab7cfe4b37a55449b91a829ec8aadfba4dceef461dc8de`  
		Last Modified: Wed, 21 Dec 2016 20:51:22 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b55a4fe137a394f3c2b8d25bb7e885a7f854ab79d147308278246597ef997cf`  
		Last Modified: Wed, 21 Dec 2016 20:51:25 GMT  
		Size: 7.8 MB (7821776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d1c0eef782324c86b4637e2b18932c57efcfa62030608096fd3be815fb8be9`  
		Last Modified: Wed, 21 Dec 2016 20:51:23 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php7.0`

```console
$ docker pull wordpress@sha256:30cdb630559d8ce0b558ab7cf8e8ee440de754612fb29d20a810a6d59ac65795
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167748839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0be33df20b472f7b51501db1a017a044998dd281ef46bc82dde22e973df4576c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:55:33 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:55:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Dec 2016 14:55:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Dec 2016 14:55:35 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Dec 2016 14:55:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Dec 2016 14:55:37 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Dec 2016 14:55:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Dec 2016 14:55:38 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:55:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:28:10 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_VERSION=7.0.14
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:28:11 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Wed, 14 Dec 2016 15:28:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:28:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:30:54 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:25:53 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:25:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:25:54 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:25:55 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:25:55 GMT
EXPOSE 80/tcp
# Mon, 19 Dec 2016 19:25:56 GMT
CMD ["apache2-foreground"]
# Wed, 21 Dec 2016 20:43:26 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:43:27 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:43:28 GMT
RUN a2enmod rewrite expires
# Wed, 21 Dec 2016 20:43:28 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:43:29 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:43:29 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:43:31 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:43:32 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:43:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:43:32 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3d7c702e3016084af8e44630e2f706a34f4491d2e92334de6ce72590de967`  
		Last Modified: Wed, 14 Dec 2016 16:22:16 GMT  
		Size: 2.8 MB (2849496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7d2c4c9cc51259b13fa250aab59702bf26bf6d04e64c6bc71e18c5be30067`  
		Last Modified: Wed, 14 Dec 2016 16:22:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fbbff60a9ec3f682af9f3502f05707866a9230290b870994b27676e57d5eb`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c38203cc25a4cc35e2de549a1787a6e27142a023da0e0238e10c290fe6665`  
		Last Modified: Wed, 14 Dec 2016 16:22:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628c443fd26f8db61077f442d38b3726ecf6c6138fc7b36a0a8c9e041cda27be`  
		Last Modified: Wed, 14 Dec 2016 16:22:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31e25283764f334c884e7768f0476c227e5c3e12668081e8dd32855b2564652`  
		Last Modified: Wed, 14 Dec 2016 16:30:14 GMT  
		Size: 12.7 MB (12664670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bc4176799d919d3c88316739f3db7d7a2bd5832807eba3a311713ec71d06db`  
		Last Modified: Wed, 14 Dec 2016 16:30:13 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c958da07c22ea187a31f7e36106619d56a59abc035341a6a6f7fa4d61f908632`  
		Last Modified: Wed, 14 Dec 2016 16:30:18 GMT  
		Size: 13.3 MB (13300304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ed76332d75a3585964e1b7a910d896ae3dcfedc34304ede9d658f1181881de`  
		Last Modified: Mon, 19 Dec 2016 19:43:39 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f674b02795e767dfd099ff19e4f99a7ba8345df8dd09554d2907423bcdab1bea`  
		Last Modified: Mon, 19 Dec 2016 19:43:41 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510a62632c4994027c5f2f2735524e5657e76d29b95eee1bc5d654c0d126c530`  
		Last Modified: Wed, 21 Dec 2016 20:51:23 GMT  
		Size: 2.1 MB (2148456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc14b68dcf9d21265e0d2c668618424dfb5bdd10e4284ead1cfecb4c78eba2c`  
		Last Modified: Wed, 21 Dec 2016 20:51:22 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe371037e0469b2854ab7cfe4b37a55449b91a829ec8aadfba4dceef461dc8de`  
		Last Modified: Wed, 21 Dec 2016 20:51:22 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b55a4fe137a394f3c2b8d25bb7e885a7f854ab79d147308278246597ef997cf`  
		Last Modified: Wed, 21 Dec 2016 20:51:25 GMT  
		Size: 7.8 MB (7821776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d1c0eef782324c86b4637e2b18932c57efcfa62030608096fd3be815fb8be9`  
		Last Modified: Wed, 21 Dec 2016 20:51:23 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.0-php7.0-fpm`

```console
$ docker pull wordpress@sha256:253fc51c748e08e1b3da6765f7d9ee26b70bcbb396faef75b213119823aacf99
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.0-php7.0-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164397935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27f07be83dc1601be6bca889eeffa59bbe8ef6f9f70f3de04ab8fa17e837750`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:30:57 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 14 Dec 2016 15:30:58 GMT
ENV PHP_VERSION=7.0.14
# Wed, 14 Dec 2016 15:30:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:30:58 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Wed, 14 Dec 2016 15:31:12 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:31:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:34:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:25:57 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:25:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:25:58 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:25:59 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Dec 2016 19:25:59 GMT
EXPOSE 9000/tcp
# Mon, 19 Dec 2016 19:26:00 GMT
CMD ["php-fpm"]
# Wed, 21 Dec 2016 20:44:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:44:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:44:09 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:44:09 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:44:10 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:44:12 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:44:13 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:44:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:44:14 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56da5951c6dd5395fd0459f2f39d16fc3a5bdbc553bf689e98cd4703b3fbf8f7`  
		Last Modified: Wed, 14 Dec 2016 16:30:59 GMT  
		Size: 12.6 MB (12645620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e2e133211c8ad01fb8cc32d104b068c0b0a500c71f06cb4697e906b016fe81`  
		Last Modified: Wed, 14 Dec 2016 16:30:55 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80bd3027ec0242dc94657e7aad92008a167856cc7e9d0ec9518aeed696d08933`  
		Last Modified: Wed, 14 Dec 2016 16:30:58 GMT  
		Size: 12.8 MB (12835450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643ac79e86d7b4dd6cfe1585d2114c25032d2020bc293640171daace143eec76`  
		Last Modified: Mon, 19 Dec 2016 19:44:19 GMT  
		Size: 2.0 KB (2007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f6206070dd8c07a13c93b19c8d95ed6d7a0a399fe0bd594cac9020eb8f858c`  
		Last Modified: Mon, 19 Dec 2016 19:44:23 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc237f3a560a457c1c972e37bee2f9bdf9ca93a9b4cd1eeda5812c7ebec5342e`  
		Last Modified: Mon, 19 Dec 2016 19:44:19 GMT  
		Size: 7.7 KB (7691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d435a14e9eb11098057dfec0f12619ca64518fbd37724db1759b49f1d98503b5`  
		Last Modified: Wed, 21 Dec 2016 20:53:39 GMT  
		Size: 2.1 MB (2126413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed5961587702873f11d0f43cfbcc5cab704ded1c94cc73cd64ae69d5f545a01`  
		Last Modified: Wed, 21 Dec 2016 20:53:38 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f273b1677a37d1251c3c5ba2d5c72f352c5cb5fafdbe6fcd8f06f1db82de7ae5`  
		Last Modified: Wed, 21 Dec 2016 20:53:41 GMT  
		Size: 7.8 MB (7821778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6871fb9ba17086ce3b258e2cac480a96b669fbd5e56eb18f569af59c226b6a98`  
		Last Modified: Wed, 21 Dec 2016 20:53:38 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php7.0-fpm`

```console
$ docker pull wordpress@sha256:253fc51c748e08e1b3da6765f7d9ee26b70bcbb396faef75b213119823aacf99
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php7.0-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164397935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27f07be83dc1601be6bca889eeffa59bbe8ef6f9f70f3de04ab8fa17e837750`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:30:57 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 14 Dec 2016 15:30:58 GMT
ENV PHP_VERSION=7.0.14
# Wed, 14 Dec 2016 15:30:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:30:58 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Wed, 14 Dec 2016 15:31:12 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:31:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:34:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:25:57 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:25:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:25:58 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:25:59 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Dec 2016 19:25:59 GMT
EXPOSE 9000/tcp
# Mon, 19 Dec 2016 19:26:00 GMT
CMD ["php-fpm"]
# Wed, 21 Dec 2016 20:44:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:44:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:44:09 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:44:09 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:44:10 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:44:12 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:44:13 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:44:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:44:14 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56da5951c6dd5395fd0459f2f39d16fc3a5bdbc553bf689e98cd4703b3fbf8f7`  
		Last Modified: Wed, 14 Dec 2016 16:30:59 GMT  
		Size: 12.6 MB (12645620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e2e133211c8ad01fb8cc32d104b068c0b0a500c71f06cb4697e906b016fe81`  
		Last Modified: Wed, 14 Dec 2016 16:30:55 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80bd3027ec0242dc94657e7aad92008a167856cc7e9d0ec9518aeed696d08933`  
		Last Modified: Wed, 14 Dec 2016 16:30:58 GMT  
		Size: 12.8 MB (12835450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643ac79e86d7b4dd6cfe1585d2114c25032d2020bc293640171daace143eec76`  
		Last Modified: Mon, 19 Dec 2016 19:44:19 GMT  
		Size: 2.0 KB (2007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f6206070dd8c07a13c93b19c8d95ed6d7a0a399fe0bd594cac9020eb8f858c`  
		Last Modified: Mon, 19 Dec 2016 19:44:23 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc237f3a560a457c1c972e37bee2f9bdf9ca93a9b4cd1eeda5812c7ebec5342e`  
		Last Modified: Mon, 19 Dec 2016 19:44:19 GMT  
		Size: 7.7 KB (7691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d435a14e9eb11098057dfec0f12619ca64518fbd37724db1759b49f1d98503b5`  
		Last Modified: Wed, 21 Dec 2016 20:53:39 GMT  
		Size: 2.1 MB (2126413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed5961587702873f11d0f43cfbcc5cab704ded1c94cc73cd64ae69d5f545a01`  
		Last Modified: Wed, 21 Dec 2016 20:53:38 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f273b1677a37d1251c3c5ba2d5c72f352c5cb5fafdbe6fcd8f06f1db82de7ae5`  
		Last Modified: Wed, 21 Dec 2016 20:53:41 GMT  
		Size: 7.8 MB (7821778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6871fb9ba17086ce3b258e2cac480a96b669fbd5e56eb18f569af59c226b6a98`  
		Last Modified: Wed, 21 Dec 2016 20:53:38 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php7.0-fpm`

```console
$ docker pull wordpress@sha256:253fc51c748e08e1b3da6765f7d9ee26b70bcbb396faef75b213119823aacf99
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.0-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164397935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27f07be83dc1601be6bca889eeffa59bbe8ef6f9f70f3de04ab8fa17e837750`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:30:57 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 14 Dec 2016 15:30:58 GMT
ENV PHP_VERSION=7.0.14
# Wed, 14 Dec 2016 15:30:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:30:58 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Wed, 14 Dec 2016 15:31:12 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:31:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:34:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:25:57 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:25:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:25:58 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:25:59 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Dec 2016 19:25:59 GMT
EXPOSE 9000/tcp
# Mon, 19 Dec 2016 19:26:00 GMT
CMD ["php-fpm"]
# Wed, 21 Dec 2016 20:44:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:44:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:44:09 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:44:09 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:44:10 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:44:12 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:44:13 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:44:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:44:14 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56da5951c6dd5395fd0459f2f39d16fc3a5bdbc553bf689e98cd4703b3fbf8f7`  
		Last Modified: Wed, 14 Dec 2016 16:30:59 GMT  
		Size: 12.6 MB (12645620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e2e133211c8ad01fb8cc32d104b068c0b0a500c71f06cb4697e906b016fe81`  
		Last Modified: Wed, 14 Dec 2016 16:30:55 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80bd3027ec0242dc94657e7aad92008a167856cc7e9d0ec9518aeed696d08933`  
		Last Modified: Wed, 14 Dec 2016 16:30:58 GMT  
		Size: 12.8 MB (12835450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643ac79e86d7b4dd6cfe1585d2114c25032d2020bc293640171daace143eec76`  
		Last Modified: Mon, 19 Dec 2016 19:44:19 GMT  
		Size: 2.0 KB (2007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f6206070dd8c07a13c93b19c8d95ed6d7a0a399fe0bd594cac9020eb8f858c`  
		Last Modified: Mon, 19 Dec 2016 19:44:23 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc237f3a560a457c1c972e37bee2f9bdf9ca93a9b4cd1eeda5812c7ebec5342e`  
		Last Modified: Mon, 19 Dec 2016 19:44:19 GMT  
		Size: 7.7 KB (7691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d435a14e9eb11098057dfec0f12619ca64518fbd37724db1759b49f1d98503b5`  
		Last Modified: Wed, 21 Dec 2016 20:53:39 GMT  
		Size: 2.1 MB (2126413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed5961587702873f11d0f43cfbcc5cab704ded1c94cc73cd64ae69d5f545a01`  
		Last Modified: Wed, 21 Dec 2016 20:53:38 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f273b1677a37d1251c3c5ba2d5c72f352c5cb5fafdbe6fcd8f06f1db82de7ae5`  
		Last Modified: Wed, 21 Dec 2016 20:53:41 GMT  
		Size: 7.8 MB (7821778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6871fb9ba17086ce3b258e2cac480a96b669fbd5e56eb18f569af59c226b6a98`  
		Last Modified: Wed, 21 Dec 2016 20:53:38 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php7.0-fpm`

```console
$ docker pull wordpress@sha256:253fc51c748e08e1b3da6765f7d9ee26b70bcbb396faef75b213119823aacf99
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.0-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164397935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27f07be83dc1601be6bca889eeffa59bbe8ef6f9f70f3de04ab8fa17e837750`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:30:57 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 14 Dec 2016 15:30:58 GMT
ENV PHP_VERSION=7.0.14
# Wed, 14 Dec 2016 15:30:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:30:58 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Wed, 14 Dec 2016 15:31:12 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:31:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:34:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:25:57 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:25:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:25:58 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:25:59 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Dec 2016 19:25:59 GMT
EXPOSE 9000/tcp
# Mon, 19 Dec 2016 19:26:00 GMT
CMD ["php-fpm"]
# Wed, 21 Dec 2016 20:44:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:44:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:44:09 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:44:09 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:44:10 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:44:12 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:44:13 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:44:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:44:14 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56da5951c6dd5395fd0459f2f39d16fc3a5bdbc553bf689e98cd4703b3fbf8f7`  
		Last Modified: Wed, 14 Dec 2016 16:30:59 GMT  
		Size: 12.6 MB (12645620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e2e133211c8ad01fb8cc32d104b068c0b0a500c71f06cb4697e906b016fe81`  
		Last Modified: Wed, 14 Dec 2016 16:30:55 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80bd3027ec0242dc94657e7aad92008a167856cc7e9d0ec9518aeed696d08933`  
		Last Modified: Wed, 14 Dec 2016 16:30:58 GMT  
		Size: 12.8 MB (12835450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643ac79e86d7b4dd6cfe1585d2114c25032d2020bc293640171daace143eec76`  
		Last Modified: Mon, 19 Dec 2016 19:44:19 GMT  
		Size: 2.0 KB (2007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f6206070dd8c07a13c93b19c8d95ed6d7a0a399fe0bd594cac9020eb8f858c`  
		Last Modified: Mon, 19 Dec 2016 19:44:23 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc237f3a560a457c1c972e37bee2f9bdf9ca93a9b4cd1eeda5812c7ebec5342e`  
		Last Modified: Mon, 19 Dec 2016 19:44:19 GMT  
		Size: 7.7 KB (7691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d435a14e9eb11098057dfec0f12619ca64518fbd37724db1759b49f1d98503b5`  
		Last Modified: Wed, 21 Dec 2016 20:53:39 GMT  
		Size: 2.1 MB (2126413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed5961587702873f11d0f43cfbcc5cab704ded1c94cc73cd64ae69d5f545a01`  
		Last Modified: Wed, 21 Dec 2016 20:53:38 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f273b1677a37d1251c3c5ba2d5c72f352c5cb5fafdbe6fcd8f06f1db82de7ae5`  
		Last Modified: Wed, 21 Dec 2016 20:53:41 GMT  
		Size: 7.8 MB (7821778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6871fb9ba17086ce3b258e2cac480a96b669fbd5e56eb18f569af59c226b6a98`  
		Last Modified: Wed, 21 Dec 2016 20:53:38 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.0-php7.0-fpm-alpine`

```console
$ docker pull wordpress@sha256:9457a29f13a7865793b023294e7fb65bda2cb6be69d41bec92fe5434a5c2e563
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.0-php7.0-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39247558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7498ca838ec143d2c291912a3877e2e3d6b6b46fcf056b251d29a43e165c545`
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
# Tue, 27 Dec 2016 22:12:01 GMT
ENV WORDPRESS_VERSION=4.7
# Tue, 27 Dec 2016 22:12:13 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Tue, 27 Dec 2016 22:12:15 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 27 Dec 2016 22:12:16 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Tue, 27 Dec 2016 22:12:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:12:17 GMT
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
	-	`sha256:9c663e6f29d9f6088243ef775a801d3acefc0abafb7e510ea3774157ac280a96`  
		Last Modified: Tue, 27 Dec 2016 22:38:00 GMT  
		Size: 7.8 MB (7821951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66101ba6487af3b640b1ec63a9c4d94a556fc47c19e2b3c7a8a4d86768270fda`  
		Last Modified: Tue, 27 Dec 2016 22:37:57 GMT  
		Size: 2.9 KB (2932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php7.0-fpm-alpine`

```console
$ docker pull wordpress@sha256:9457a29f13a7865793b023294e7fb65bda2cb6be69d41bec92fe5434a5c2e563
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php7.0-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39247558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7498ca838ec143d2c291912a3877e2e3d6b6b46fcf056b251d29a43e165c545`
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
# Tue, 27 Dec 2016 22:12:01 GMT
ENV WORDPRESS_VERSION=4.7
# Tue, 27 Dec 2016 22:12:13 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Tue, 27 Dec 2016 22:12:15 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 27 Dec 2016 22:12:16 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Tue, 27 Dec 2016 22:12:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:12:17 GMT
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
	-	`sha256:9c663e6f29d9f6088243ef775a801d3acefc0abafb7e510ea3774157ac280a96`  
		Last Modified: Tue, 27 Dec 2016 22:38:00 GMT  
		Size: 7.8 MB (7821951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66101ba6487af3b640b1ec63a9c4d94a556fc47c19e2b3c7a8a4d86768270fda`  
		Last Modified: Tue, 27 Dec 2016 22:37:57 GMT  
		Size: 2.9 KB (2932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php7.0-fpm-alpine`

```console
$ docker pull wordpress@sha256:9457a29f13a7865793b023294e7fb65bda2cb6be69d41bec92fe5434a5c2e563
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.0-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39247558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7498ca838ec143d2c291912a3877e2e3d6b6b46fcf056b251d29a43e165c545`
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
# Tue, 27 Dec 2016 22:12:01 GMT
ENV WORDPRESS_VERSION=4.7
# Tue, 27 Dec 2016 22:12:13 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Tue, 27 Dec 2016 22:12:15 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 27 Dec 2016 22:12:16 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Tue, 27 Dec 2016 22:12:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:12:17 GMT
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
	-	`sha256:9c663e6f29d9f6088243ef775a801d3acefc0abafb7e510ea3774157ac280a96`  
		Last Modified: Tue, 27 Dec 2016 22:38:00 GMT  
		Size: 7.8 MB (7821951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66101ba6487af3b640b1ec63a9c4d94a556fc47c19e2b3c7a8a4d86768270fda`  
		Last Modified: Tue, 27 Dec 2016 22:37:57 GMT  
		Size: 2.9 KB (2932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php7.0-fpm-alpine`

```console
$ docker pull wordpress@sha256:9457a29f13a7865793b023294e7fb65bda2cb6be69d41bec92fe5434a5c2e563
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.0-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39247558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7498ca838ec143d2c291912a3877e2e3d6b6b46fcf056b251d29a43e165c545`
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
# Tue, 27 Dec 2016 22:12:01 GMT
ENV WORDPRESS_VERSION=4.7
# Tue, 27 Dec 2016 22:12:13 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Tue, 27 Dec 2016 22:12:15 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 27 Dec 2016 22:12:16 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Tue, 27 Dec 2016 22:12:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:12:17 GMT
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
	-	`sha256:9c663e6f29d9f6088243ef775a801d3acefc0abafb7e510ea3774157ac280a96`  
		Last Modified: Tue, 27 Dec 2016 22:38:00 GMT  
		Size: 7.8 MB (7821951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66101ba6487af3b640b1ec63a9c4d94a556fc47c19e2b3c7a8a4d86768270fda`  
		Last Modified: Tue, 27 Dec 2016 22:37:57 GMT  
		Size: 2.9 KB (2932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
