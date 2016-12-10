<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `joomla`

-	[`joomla:3.6.4-apache`](#joomla364-apache)
-	[`joomla:3.6-apache`](#joomla36-apache)
-	[`joomla:3-apache`](#joomla3-apache)
-	[`joomla:apache`](#joomlaapache)
-	[`joomla:3.6.4`](#joomla364)
-	[`joomla:3.6`](#joomla36)
-	[`joomla:3`](#joomla3)
-	[`joomla:latest`](#joomlalatest)
-	[`joomla:3.6.4-apache-php7`](#joomla364-apache-php7)
-	[`joomla:3.6-apache-php7`](#joomla36-apache-php7)
-	[`joomla:3-apache-php7`](#joomla3-apache-php7)
-	[`joomla:apache-php7`](#joomlaapache-php7)
-	[`joomla:3.6.4-fpm`](#joomla364-fpm)
-	[`joomla:3.6-fpm`](#joomla36-fpm)
-	[`joomla:3-fpm`](#joomla3-fpm)
-	[`joomla:fpm`](#joomlafpm)
-	[`joomla:3.6.4-fpm-php7`](#joomla364-fpm-php7)
-	[`joomla:3.6-fpm-php7`](#joomla36-fpm-php7)
-	[`joomla:3-fpm-php7`](#joomla3-fpm-php7)
-	[`joomla:fpm-php7`](#joomlafpm-php7)

## `joomla:3.6.4-apache`

```console
$ docker pull joomla@sha256:7378ea1022385a14846fca621f25f5db4739274fd2a897e3059bdca83eac8ed2
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.4-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164971729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b352c1a8df93b193eb0768f34be0d5bd5f3ba1a45f79fb5a103223e58672e08`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 07 Dec 2016 21:42:33 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 07 Dec 2016 21:42:34 GMT
RUN a2enmod rewrite
# Wed, 07 Dec 2016 21:42:56 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 07 Dec 2016 21:43:03 GMT
RUN docker-php-ext-install mysqli
# Wed, 07 Dec 2016 21:43:09 GMT
RUN docker-php-ext-install mcrypt
# Wed, 07 Dec 2016 21:43:09 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 21:43:10 GMT
ENV JOOMLA_VERSION=3.6.4
# Wed, 07 Dec 2016 21:43:10 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Wed, 07 Dec 2016 21:43:17 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 07 Dec 2016 21:43:18 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 07 Dec 2016 21:43:19 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 07 Dec 2016 21:43:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Dec 2016 21:43:19 GMT
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
	-	`sha256:4a02109b61a8abba5ec26f55951cdf4b37116d792ca83da4848d4c857d5f05e8`  
		Last Modified: Wed, 07 Dec 2016 21:46:00 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3897df669fd9061fe6f8decb8f087c72707021fdf7a884a98c95bc7119588e`  
		Last Modified: Wed, 07 Dec 2016 21:46:02 GMT  
		Size: 2.7 MB (2741331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5327d06c3b999c11074169848249eb0c3fa71a1ba93022a7df237ba99a8bfc94`  
		Last Modified: Wed, 07 Dec 2016 21:45:58 GMT  
		Size: 56.9 KB (56915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de67d7947a46043786578172a31e2bec1f7852060618b6fb0c7e19cb7781924a`  
		Last Modified: Wed, 07 Dec 2016 21:45:57 GMT  
		Size: 19.3 KB (19286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c6bd135dadd81f3fd8d784c86910f9648b9fbdba4bdee4c6505dadc2de2ec7`  
		Last Modified: Wed, 07 Dec 2016 21:46:01 GMT  
		Size: 8.7 MB (8674916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bd1d1f38314aa7589dd49b2902badac98ca7ca33e5e30a771306310c78d986`  
		Last Modified: Wed, 07 Dec 2016 21:45:58 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987f5aa5a0367213c83312ff890eb12676aeb12225737b6686e290b16ce9fbba`  
		Last Modified: Wed, 07 Dec 2016 21:45:57 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-apache`

```console
$ docker pull joomla@sha256:7378ea1022385a14846fca621f25f5db4739274fd2a897e3059bdca83eac8ed2
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164971729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b352c1a8df93b193eb0768f34be0d5bd5f3ba1a45f79fb5a103223e58672e08`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 07 Dec 2016 21:42:33 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 07 Dec 2016 21:42:34 GMT
RUN a2enmod rewrite
# Wed, 07 Dec 2016 21:42:56 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 07 Dec 2016 21:43:03 GMT
RUN docker-php-ext-install mysqli
# Wed, 07 Dec 2016 21:43:09 GMT
RUN docker-php-ext-install mcrypt
# Wed, 07 Dec 2016 21:43:09 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 21:43:10 GMT
ENV JOOMLA_VERSION=3.6.4
# Wed, 07 Dec 2016 21:43:10 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Wed, 07 Dec 2016 21:43:17 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 07 Dec 2016 21:43:18 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 07 Dec 2016 21:43:19 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 07 Dec 2016 21:43:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Dec 2016 21:43:19 GMT
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
	-	`sha256:4a02109b61a8abba5ec26f55951cdf4b37116d792ca83da4848d4c857d5f05e8`  
		Last Modified: Wed, 07 Dec 2016 21:46:00 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3897df669fd9061fe6f8decb8f087c72707021fdf7a884a98c95bc7119588e`  
		Last Modified: Wed, 07 Dec 2016 21:46:02 GMT  
		Size: 2.7 MB (2741331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5327d06c3b999c11074169848249eb0c3fa71a1ba93022a7df237ba99a8bfc94`  
		Last Modified: Wed, 07 Dec 2016 21:45:58 GMT  
		Size: 56.9 KB (56915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de67d7947a46043786578172a31e2bec1f7852060618b6fb0c7e19cb7781924a`  
		Last Modified: Wed, 07 Dec 2016 21:45:57 GMT  
		Size: 19.3 KB (19286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c6bd135dadd81f3fd8d784c86910f9648b9fbdba4bdee4c6505dadc2de2ec7`  
		Last Modified: Wed, 07 Dec 2016 21:46:01 GMT  
		Size: 8.7 MB (8674916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bd1d1f38314aa7589dd49b2902badac98ca7ca33e5e30a771306310c78d986`  
		Last Modified: Wed, 07 Dec 2016 21:45:58 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987f5aa5a0367213c83312ff890eb12676aeb12225737b6686e290b16ce9fbba`  
		Last Modified: Wed, 07 Dec 2016 21:45:57 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache`

```console
$ docker pull joomla@sha256:7378ea1022385a14846fca621f25f5db4739274fd2a897e3059bdca83eac8ed2
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164971729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b352c1a8df93b193eb0768f34be0d5bd5f3ba1a45f79fb5a103223e58672e08`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 07 Dec 2016 21:42:33 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 07 Dec 2016 21:42:34 GMT
RUN a2enmod rewrite
# Wed, 07 Dec 2016 21:42:56 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 07 Dec 2016 21:43:03 GMT
RUN docker-php-ext-install mysqli
# Wed, 07 Dec 2016 21:43:09 GMT
RUN docker-php-ext-install mcrypt
# Wed, 07 Dec 2016 21:43:09 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 21:43:10 GMT
ENV JOOMLA_VERSION=3.6.4
# Wed, 07 Dec 2016 21:43:10 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Wed, 07 Dec 2016 21:43:17 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 07 Dec 2016 21:43:18 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 07 Dec 2016 21:43:19 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 07 Dec 2016 21:43:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Dec 2016 21:43:19 GMT
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
	-	`sha256:4a02109b61a8abba5ec26f55951cdf4b37116d792ca83da4848d4c857d5f05e8`  
		Last Modified: Wed, 07 Dec 2016 21:46:00 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3897df669fd9061fe6f8decb8f087c72707021fdf7a884a98c95bc7119588e`  
		Last Modified: Wed, 07 Dec 2016 21:46:02 GMT  
		Size: 2.7 MB (2741331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5327d06c3b999c11074169848249eb0c3fa71a1ba93022a7df237ba99a8bfc94`  
		Last Modified: Wed, 07 Dec 2016 21:45:58 GMT  
		Size: 56.9 KB (56915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de67d7947a46043786578172a31e2bec1f7852060618b6fb0c7e19cb7781924a`  
		Last Modified: Wed, 07 Dec 2016 21:45:57 GMT  
		Size: 19.3 KB (19286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c6bd135dadd81f3fd8d784c86910f9648b9fbdba4bdee4c6505dadc2de2ec7`  
		Last Modified: Wed, 07 Dec 2016 21:46:01 GMT  
		Size: 8.7 MB (8674916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bd1d1f38314aa7589dd49b2902badac98ca7ca33e5e30a771306310c78d986`  
		Last Modified: Wed, 07 Dec 2016 21:45:58 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987f5aa5a0367213c83312ff890eb12676aeb12225737b6686e290b16ce9fbba`  
		Last Modified: Wed, 07 Dec 2016 21:45:57 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:apache`

```console
$ docker pull joomla@sha256:7378ea1022385a14846fca621f25f5db4739274fd2a897e3059bdca83eac8ed2
```

-	Platforms:
	-	linux; amd64

### `joomla:apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164971729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b352c1a8df93b193eb0768f34be0d5bd5f3ba1a45f79fb5a103223e58672e08`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 07 Dec 2016 21:42:33 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 07 Dec 2016 21:42:34 GMT
RUN a2enmod rewrite
# Wed, 07 Dec 2016 21:42:56 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 07 Dec 2016 21:43:03 GMT
RUN docker-php-ext-install mysqli
# Wed, 07 Dec 2016 21:43:09 GMT
RUN docker-php-ext-install mcrypt
# Wed, 07 Dec 2016 21:43:09 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 21:43:10 GMT
ENV JOOMLA_VERSION=3.6.4
# Wed, 07 Dec 2016 21:43:10 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Wed, 07 Dec 2016 21:43:17 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 07 Dec 2016 21:43:18 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 07 Dec 2016 21:43:19 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 07 Dec 2016 21:43:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Dec 2016 21:43:19 GMT
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
	-	`sha256:4a02109b61a8abba5ec26f55951cdf4b37116d792ca83da4848d4c857d5f05e8`  
		Last Modified: Wed, 07 Dec 2016 21:46:00 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3897df669fd9061fe6f8decb8f087c72707021fdf7a884a98c95bc7119588e`  
		Last Modified: Wed, 07 Dec 2016 21:46:02 GMT  
		Size: 2.7 MB (2741331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5327d06c3b999c11074169848249eb0c3fa71a1ba93022a7df237ba99a8bfc94`  
		Last Modified: Wed, 07 Dec 2016 21:45:58 GMT  
		Size: 56.9 KB (56915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de67d7947a46043786578172a31e2bec1f7852060618b6fb0c7e19cb7781924a`  
		Last Modified: Wed, 07 Dec 2016 21:45:57 GMT  
		Size: 19.3 KB (19286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c6bd135dadd81f3fd8d784c86910f9648b9fbdba4bdee4c6505dadc2de2ec7`  
		Last Modified: Wed, 07 Dec 2016 21:46:01 GMT  
		Size: 8.7 MB (8674916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bd1d1f38314aa7589dd49b2902badac98ca7ca33e5e30a771306310c78d986`  
		Last Modified: Wed, 07 Dec 2016 21:45:58 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987f5aa5a0367213c83312ff890eb12676aeb12225737b6686e290b16ce9fbba`  
		Last Modified: Wed, 07 Dec 2016 21:45:57 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.4`

```console
$ docker pull joomla@sha256:7378ea1022385a14846fca621f25f5db4739274fd2a897e3059bdca83eac8ed2
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164971729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b352c1a8df93b193eb0768f34be0d5bd5f3ba1a45f79fb5a103223e58672e08`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 07 Dec 2016 21:42:33 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 07 Dec 2016 21:42:34 GMT
RUN a2enmod rewrite
# Wed, 07 Dec 2016 21:42:56 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 07 Dec 2016 21:43:03 GMT
RUN docker-php-ext-install mysqli
# Wed, 07 Dec 2016 21:43:09 GMT
RUN docker-php-ext-install mcrypt
# Wed, 07 Dec 2016 21:43:09 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 21:43:10 GMT
ENV JOOMLA_VERSION=3.6.4
# Wed, 07 Dec 2016 21:43:10 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Wed, 07 Dec 2016 21:43:17 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 07 Dec 2016 21:43:18 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 07 Dec 2016 21:43:19 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 07 Dec 2016 21:43:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Dec 2016 21:43:19 GMT
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
	-	`sha256:4a02109b61a8abba5ec26f55951cdf4b37116d792ca83da4848d4c857d5f05e8`  
		Last Modified: Wed, 07 Dec 2016 21:46:00 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3897df669fd9061fe6f8decb8f087c72707021fdf7a884a98c95bc7119588e`  
		Last Modified: Wed, 07 Dec 2016 21:46:02 GMT  
		Size: 2.7 MB (2741331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5327d06c3b999c11074169848249eb0c3fa71a1ba93022a7df237ba99a8bfc94`  
		Last Modified: Wed, 07 Dec 2016 21:45:58 GMT  
		Size: 56.9 KB (56915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de67d7947a46043786578172a31e2bec1f7852060618b6fb0c7e19cb7781924a`  
		Last Modified: Wed, 07 Dec 2016 21:45:57 GMT  
		Size: 19.3 KB (19286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c6bd135dadd81f3fd8d784c86910f9648b9fbdba4bdee4c6505dadc2de2ec7`  
		Last Modified: Wed, 07 Dec 2016 21:46:01 GMT  
		Size: 8.7 MB (8674916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bd1d1f38314aa7589dd49b2902badac98ca7ca33e5e30a771306310c78d986`  
		Last Modified: Wed, 07 Dec 2016 21:45:58 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987f5aa5a0367213c83312ff890eb12676aeb12225737b6686e290b16ce9fbba`  
		Last Modified: Wed, 07 Dec 2016 21:45:57 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6`

```console
$ docker pull joomla@sha256:7378ea1022385a14846fca621f25f5db4739274fd2a897e3059bdca83eac8ed2
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164971729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b352c1a8df93b193eb0768f34be0d5bd5f3ba1a45f79fb5a103223e58672e08`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 07 Dec 2016 21:42:33 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 07 Dec 2016 21:42:34 GMT
RUN a2enmod rewrite
# Wed, 07 Dec 2016 21:42:56 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 07 Dec 2016 21:43:03 GMT
RUN docker-php-ext-install mysqli
# Wed, 07 Dec 2016 21:43:09 GMT
RUN docker-php-ext-install mcrypt
# Wed, 07 Dec 2016 21:43:09 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 21:43:10 GMT
ENV JOOMLA_VERSION=3.6.4
# Wed, 07 Dec 2016 21:43:10 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Wed, 07 Dec 2016 21:43:17 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 07 Dec 2016 21:43:18 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 07 Dec 2016 21:43:19 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 07 Dec 2016 21:43:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Dec 2016 21:43:19 GMT
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
	-	`sha256:4a02109b61a8abba5ec26f55951cdf4b37116d792ca83da4848d4c857d5f05e8`  
		Last Modified: Wed, 07 Dec 2016 21:46:00 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3897df669fd9061fe6f8decb8f087c72707021fdf7a884a98c95bc7119588e`  
		Last Modified: Wed, 07 Dec 2016 21:46:02 GMT  
		Size: 2.7 MB (2741331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5327d06c3b999c11074169848249eb0c3fa71a1ba93022a7df237ba99a8bfc94`  
		Last Modified: Wed, 07 Dec 2016 21:45:58 GMT  
		Size: 56.9 KB (56915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de67d7947a46043786578172a31e2bec1f7852060618b6fb0c7e19cb7781924a`  
		Last Modified: Wed, 07 Dec 2016 21:45:57 GMT  
		Size: 19.3 KB (19286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c6bd135dadd81f3fd8d784c86910f9648b9fbdba4bdee4c6505dadc2de2ec7`  
		Last Modified: Wed, 07 Dec 2016 21:46:01 GMT  
		Size: 8.7 MB (8674916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bd1d1f38314aa7589dd49b2902badac98ca7ca33e5e30a771306310c78d986`  
		Last Modified: Wed, 07 Dec 2016 21:45:58 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987f5aa5a0367213c83312ff890eb12676aeb12225737b6686e290b16ce9fbba`  
		Last Modified: Wed, 07 Dec 2016 21:45:57 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3`

```console
$ docker pull joomla@sha256:7378ea1022385a14846fca621f25f5db4739274fd2a897e3059bdca83eac8ed2
```

-	Platforms:
	-	linux; amd64

### `joomla:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164971729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b352c1a8df93b193eb0768f34be0d5bd5f3ba1a45f79fb5a103223e58672e08`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 07 Dec 2016 21:42:33 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 07 Dec 2016 21:42:34 GMT
RUN a2enmod rewrite
# Wed, 07 Dec 2016 21:42:56 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 07 Dec 2016 21:43:03 GMT
RUN docker-php-ext-install mysqli
# Wed, 07 Dec 2016 21:43:09 GMT
RUN docker-php-ext-install mcrypt
# Wed, 07 Dec 2016 21:43:09 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 21:43:10 GMT
ENV JOOMLA_VERSION=3.6.4
# Wed, 07 Dec 2016 21:43:10 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Wed, 07 Dec 2016 21:43:17 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 07 Dec 2016 21:43:18 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 07 Dec 2016 21:43:19 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 07 Dec 2016 21:43:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Dec 2016 21:43:19 GMT
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
	-	`sha256:4a02109b61a8abba5ec26f55951cdf4b37116d792ca83da4848d4c857d5f05e8`  
		Last Modified: Wed, 07 Dec 2016 21:46:00 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3897df669fd9061fe6f8decb8f087c72707021fdf7a884a98c95bc7119588e`  
		Last Modified: Wed, 07 Dec 2016 21:46:02 GMT  
		Size: 2.7 MB (2741331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5327d06c3b999c11074169848249eb0c3fa71a1ba93022a7df237ba99a8bfc94`  
		Last Modified: Wed, 07 Dec 2016 21:45:58 GMT  
		Size: 56.9 KB (56915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de67d7947a46043786578172a31e2bec1f7852060618b6fb0c7e19cb7781924a`  
		Last Modified: Wed, 07 Dec 2016 21:45:57 GMT  
		Size: 19.3 KB (19286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c6bd135dadd81f3fd8d784c86910f9648b9fbdba4bdee4c6505dadc2de2ec7`  
		Last Modified: Wed, 07 Dec 2016 21:46:01 GMT  
		Size: 8.7 MB (8674916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bd1d1f38314aa7589dd49b2902badac98ca7ca33e5e30a771306310c78d986`  
		Last Modified: Wed, 07 Dec 2016 21:45:58 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987f5aa5a0367213c83312ff890eb12676aeb12225737b6686e290b16ce9fbba`  
		Last Modified: Wed, 07 Dec 2016 21:45:57 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:latest`

```console
$ docker pull joomla@sha256:7378ea1022385a14846fca621f25f5db4739274fd2a897e3059bdca83eac8ed2
```

-	Platforms:
	-	linux; amd64

### `joomla:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164971729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b352c1a8df93b193eb0768f34be0d5bd5f3ba1a45f79fb5a103223e58672e08`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 07 Dec 2016 21:42:33 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 07 Dec 2016 21:42:34 GMT
RUN a2enmod rewrite
# Wed, 07 Dec 2016 21:42:56 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 07 Dec 2016 21:43:03 GMT
RUN docker-php-ext-install mysqli
# Wed, 07 Dec 2016 21:43:09 GMT
RUN docker-php-ext-install mcrypt
# Wed, 07 Dec 2016 21:43:09 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 21:43:10 GMT
ENV JOOMLA_VERSION=3.6.4
# Wed, 07 Dec 2016 21:43:10 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Wed, 07 Dec 2016 21:43:17 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 07 Dec 2016 21:43:18 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 07 Dec 2016 21:43:19 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 07 Dec 2016 21:43:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Dec 2016 21:43:19 GMT
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
	-	`sha256:4a02109b61a8abba5ec26f55951cdf4b37116d792ca83da4848d4c857d5f05e8`  
		Last Modified: Wed, 07 Dec 2016 21:46:00 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3897df669fd9061fe6f8decb8f087c72707021fdf7a884a98c95bc7119588e`  
		Last Modified: Wed, 07 Dec 2016 21:46:02 GMT  
		Size: 2.7 MB (2741331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5327d06c3b999c11074169848249eb0c3fa71a1ba93022a7df237ba99a8bfc94`  
		Last Modified: Wed, 07 Dec 2016 21:45:58 GMT  
		Size: 56.9 KB (56915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de67d7947a46043786578172a31e2bec1f7852060618b6fb0c7e19cb7781924a`  
		Last Modified: Wed, 07 Dec 2016 21:45:57 GMT  
		Size: 19.3 KB (19286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c6bd135dadd81f3fd8d784c86910f9648b9fbdba4bdee4c6505dadc2de2ec7`  
		Last Modified: Wed, 07 Dec 2016 21:46:01 GMT  
		Size: 8.7 MB (8674916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bd1d1f38314aa7589dd49b2902badac98ca7ca33e5e30a771306310c78d986`  
		Last Modified: Wed, 07 Dec 2016 21:45:58 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987f5aa5a0367213c83312ff890eb12676aeb12225737b6686e290b16ce9fbba`  
		Last Modified: Wed, 07 Dec 2016 21:45:57 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.4-apache-php7`

```console
$ docker pull joomla@sha256:f496264024613879e15237238574751669f0a66f53de32c9634150f960d718fe
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.4-apache-php7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.0 MB (168967844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:def50ec3eeb4c0845497b5a6547b99d88ddb25451ddb38fd4cd4f8a226efebd7`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Fri, 09 Dec 2016 18:10:36 GMT
ENV PHP_VERSION=7.0.14
# Fri, 09 Dec 2016 18:10:37 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Fri, 09 Dec 2016 18:10:37 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Fri, 09 Dec 2016 18:10:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Dec 2016 18:10:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:13:17 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 09 Dec 2016 18:13:18 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:13:19 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:13:19 GMT
WORKDIR /var/www/html
# Fri, 09 Dec 2016 18:13:20 GMT
EXPOSE 80/tcp
# Fri, 09 Dec 2016 18:13:20 GMT
CMD ["apache2-foreground"]
# Sat, 10 Dec 2016 16:53:15 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 10 Dec 2016 16:53:16 GMT
RUN a2enmod rewrite
# Sat, 10 Dec 2016 16:53:37 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 10 Dec 2016 16:53:45 GMT
RUN docker-php-ext-install mysqli
# Sat, 10 Dec 2016 16:53:50 GMT
RUN docker-php-ext-install mcrypt
# Sat, 10 Dec 2016 16:53:51 GMT
VOLUME [/var/www/html]
# Sat, 10 Dec 2016 16:53:51 GMT
ENV JOOMLA_VERSION=3.6.4
# Sat, 10 Dec 2016 16:53:52 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Sat, 10 Dec 2016 16:53:59 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 10 Dec 2016 16:54:00 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Sat, 10 Dec 2016 16:54:01 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 10 Dec 2016 16:54:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Dec 2016 16:54:01 GMT
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
	-	`sha256:af3b8f99329bb9c088984e00ea01d4f2f32c8b2cbcde6f6484334a92967d96af`  
		Last Modified: Fri, 09 Dec 2016 18:38:39 GMT  
		Size: 12.7 MB (12664612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d164dd2f74e9f006e157928b04e1d7b4b67038f38a3287ef2cd05c8ce78d3e6a`  
		Last Modified: Fri, 09 Dec 2016 18:38:37 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35125ac3ca7e4aeb68d73273fa92805f27c6d11e15d56a7886292310fded4604`  
		Last Modified: Fri, 09 Dec 2016 18:38:41 GMT  
		Size: 13.0 MB (13012694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734d7da6250e160bc159b95ca5db579ce7465d4ff05a7a3105585abc37cfe7bc`  
		Last Modified: Fri, 09 Dec 2016 18:38:38 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a48cde0e7c2c64bfc5a47c2765fd2b85165e25329d16ebd8148bee88e49b857`  
		Last Modified: Fri, 09 Dec 2016 18:38:38 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd145677f083ddf50b4bb8884394963ecba867fd8c983312e0a3726f6f73c8`  
		Last Modified: Sat, 10 Dec 2016 16:57:10 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621ee44b62e7fc2a591c1fbfec0c56cef5a66dcc9c573700508beb6b73425766`  
		Last Modified: Sat, 10 Dec 2016 16:57:10 GMT  
		Size: 2.7 MB (2737340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e65b0f5e8a9c5aba97e4e3a8f59310614c55aadf9f3824a2f0a80839419edcd8`  
		Last Modified: Sat, 10 Dec 2016 16:57:07 GMT  
		Size: 55.2 KB (55248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e4d4a9e8a2d336a5f744cb77c3192a60ea56f879f8edeb486756f90803fbc8`  
		Last Modified: Sat, 10 Dec 2016 16:57:07 GMT  
		Size: 17.9 KB (17873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069f1fd585a5efb39b472e41b54a72c4d73e5c04957b8d6fe539d22d1bef2d96`  
		Last Modified: Sat, 10 Dec 2016 16:57:09 GMT  
		Size: 8.7 MB (8674931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e44916069a13afda04ef8c7805e94a03ac3a5726b44c778f17586493d5f244`  
		Last Modified: Sat, 10 Dec 2016 16:57:06 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d71a4970ad4a788a05f0d64b4c76042b211d06ce241eb5fceb8c3b865ff74b`  
		Last Modified: Sat, 10 Dec 2016 16:57:07 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-apache-php7`

```console
$ docker pull joomla@sha256:f496264024613879e15237238574751669f0a66f53de32c9634150f960d718fe
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-apache-php7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.0 MB (168967844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:def50ec3eeb4c0845497b5a6547b99d88ddb25451ddb38fd4cd4f8a226efebd7`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Fri, 09 Dec 2016 18:10:36 GMT
ENV PHP_VERSION=7.0.14
# Fri, 09 Dec 2016 18:10:37 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Fri, 09 Dec 2016 18:10:37 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Fri, 09 Dec 2016 18:10:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Dec 2016 18:10:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:13:17 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 09 Dec 2016 18:13:18 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:13:19 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:13:19 GMT
WORKDIR /var/www/html
# Fri, 09 Dec 2016 18:13:20 GMT
EXPOSE 80/tcp
# Fri, 09 Dec 2016 18:13:20 GMT
CMD ["apache2-foreground"]
# Sat, 10 Dec 2016 16:53:15 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 10 Dec 2016 16:53:16 GMT
RUN a2enmod rewrite
# Sat, 10 Dec 2016 16:53:37 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 10 Dec 2016 16:53:45 GMT
RUN docker-php-ext-install mysqli
# Sat, 10 Dec 2016 16:53:50 GMT
RUN docker-php-ext-install mcrypt
# Sat, 10 Dec 2016 16:53:51 GMT
VOLUME [/var/www/html]
# Sat, 10 Dec 2016 16:53:51 GMT
ENV JOOMLA_VERSION=3.6.4
# Sat, 10 Dec 2016 16:53:52 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Sat, 10 Dec 2016 16:53:59 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 10 Dec 2016 16:54:00 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Sat, 10 Dec 2016 16:54:01 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 10 Dec 2016 16:54:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Dec 2016 16:54:01 GMT
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
	-	`sha256:af3b8f99329bb9c088984e00ea01d4f2f32c8b2cbcde6f6484334a92967d96af`  
		Last Modified: Fri, 09 Dec 2016 18:38:39 GMT  
		Size: 12.7 MB (12664612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d164dd2f74e9f006e157928b04e1d7b4b67038f38a3287ef2cd05c8ce78d3e6a`  
		Last Modified: Fri, 09 Dec 2016 18:38:37 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35125ac3ca7e4aeb68d73273fa92805f27c6d11e15d56a7886292310fded4604`  
		Last Modified: Fri, 09 Dec 2016 18:38:41 GMT  
		Size: 13.0 MB (13012694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734d7da6250e160bc159b95ca5db579ce7465d4ff05a7a3105585abc37cfe7bc`  
		Last Modified: Fri, 09 Dec 2016 18:38:38 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a48cde0e7c2c64bfc5a47c2765fd2b85165e25329d16ebd8148bee88e49b857`  
		Last Modified: Fri, 09 Dec 2016 18:38:38 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd145677f083ddf50b4bb8884394963ecba867fd8c983312e0a3726f6f73c8`  
		Last Modified: Sat, 10 Dec 2016 16:57:10 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621ee44b62e7fc2a591c1fbfec0c56cef5a66dcc9c573700508beb6b73425766`  
		Last Modified: Sat, 10 Dec 2016 16:57:10 GMT  
		Size: 2.7 MB (2737340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e65b0f5e8a9c5aba97e4e3a8f59310614c55aadf9f3824a2f0a80839419edcd8`  
		Last Modified: Sat, 10 Dec 2016 16:57:07 GMT  
		Size: 55.2 KB (55248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e4d4a9e8a2d336a5f744cb77c3192a60ea56f879f8edeb486756f90803fbc8`  
		Last Modified: Sat, 10 Dec 2016 16:57:07 GMT  
		Size: 17.9 KB (17873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069f1fd585a5efb39b472e41b54a72c4d73e5c04957b8d6fe539d22d1bef2d96`  
		Last Modified: Sat, 10 Dec 2016 16:57:09 GMT  
		Size: 8.7 MB (8674931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e44916069a13afda04ef8c7805e94a03ac3a5726b44c778f17586493d5f244`  
		Last Modified: Sat, 10 Dec 2016 16:57:06 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d71a4970ad4a788a05f0d64b4c76042b211d06ce241eb5fceb8c3b865ff74b`  
		Last Modified: Sat, 10 Dec 2016 16:57:07 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache-php7`

```console
$ docker pull joomla@sha256:f496264024613879e15237238574751669f0a66f53de32c9634150f960d718fe
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache-php7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.0 MB (168967844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:def50ec3eeb4c0845497b5a6547b99d88ddb25451ddb38fd4cd4f8a226efebd7`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Fri, 09 Dec 2016 18:10:36 GMT
ENV PHP_VERSION=7.0.14
# Fri, 09 Dec 2016 18:10:37 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Fri, 09 Dec 2016 18:10:37 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Fri, 09 Dec 2016 18:10:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Dec 2016 18:10:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:13:17 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 09 Dec 2016 18:13:18 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:13:19 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:13:19 GMT
WORKDIR /var/www/html
# Fri, 09 Dec 2016 18:13:20 GMT
EXPOSE 80/tcp
# Fri, 09 Dec 2016 18:13:20 GMT
CMD ["apache2-foreground"]
# Sat, 10 Dec 2016 16:53:15 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 10 Dec 2016 16:53:16 GMT
RUN a2enmod rewrite
# Sat, 10 Dec 2016 16:53:37 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 10 Dec 2016 16:53:45 GMT
RUN docker-php-ext-install mysqli
# Sat, 10 Dec 2016 16:53:50 GMT
RUN docker-php-ext-install mcrypt
# Sat, 10 Dec 2016 16:53:51 GMT
VOLUME [/var/www/html]
# Sat, 10 Dec 2016 16:53:51 GMT
ENV JOOMLA_VERSION=3.6.4
# Sat, 10 Dec 2016 16:53:52 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Sat, 10 Dec 2016 16:53:59 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 10 Dec 2016 16:54:00 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Sat, 10 Dec 2016 16:54:01 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 10 Dec 2016 16:54:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Dec 2016 16:54:01 GMT
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
	-	`sha256:af3b8f99329bb9c088984e00ea01d4f2f32c8b2cbcde6f6484334a92967d96af`  
		Last Modified: Fri, 09 Dec 2016 18:38:39 GMT  
		Size: 12.7 MB (12664612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d164dd2f74e9f006e157928b04e1d7b4b67038f38a3287ef2cd05c8ce78d3e6a`  
		Last Modified: Fri, 09 Dec 2016 18:38:37 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35125ac3ca7e4aeb68d73273fa92805f27c6d11e15d56a7886292310fded4604`  
		Last Modified: Fri, 09 Dec 2016 18:38:41 GMT  
		Size: 13.0 MB (13012694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734d7da6250e160bc159b95ca5db579ce7465d4ff05a7a3105585abc37cfe7bc`  
		Last Modified: Fri, 09 Dec 2016 18:38:38 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a48cde0e7c2c64bfc5a47c2765fd2b85165e25329d16ebd8148bee88e49b857`  
		Last Modified: Fri, 09 Dec 2016 18:38:38 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd145677f083ddf50b4bb8884394963ecba867fd8c983312e0a3726f6f73c8`  
		Last Modified: Sat, 10 Dec 2016 16:57:10 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621ee44b62e7fc2a591c1fbfec0c56cef5a66dcc9c573700508beb6b73425766`  
		Last Modified: Sat, 10 Dec 2016 16:57:10 GMT  
		Size: 2.7 MB (2737340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e65b0f5e8a9c5aba97e4e3a8f59310614c55aadf9f3824a2f0a80839419edcd8`  
		Last Modified: Sat, 10 Dec 2016 16:57:07 GMT  
		Size: 55.2 KB (55248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e4d4a9e8a2d336a5f744cb77c3192a60ea56f879f8edeb486756f90803fbc8`  
		Last Modified: Sat, 10 Dec 2016 16:57:07 GMT  
		Size: 17.9 KB (17873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069f1fd585a5efb39b472e41b54a72c4d73e5c04957b8d6fe539d22d1bef2d96`  
		Last Modified: Sat, 10 Dec 2016 16:57:09 GMT  
		Size: 8.7 MB (8674931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e44916069a13afda04ef8c7805e94a03ac3a5726b44c778f17586493d5f244`  
		Last Modified: Sat, 10 Dec 2016 16:57:06 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d71a4970ad4a788a05f0d64b4c76042b211d06ce241eb5fceb8c3b865ff74b`  
		Last Modified: Sat, 10 Dec 2016 16:57:07 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:apache-php7`

```console
$ docker pull joomla@sha256:f496264024613879e15237238574751669f0a66f53de32c9634150f960d718fe
```

-	Platforms:
	-	linux; amd64

### `joomla:apache-php7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.0 MB (168967844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:def50ec3eeb4c0845497b5a6547b99d88ddb25451ddb38fd4cd4f8a226efebd7`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Fri, 09 Dec 2016 18:10:36 GMT
ENV PHP_VERSION=7.0.14
# Fri, 09 Dec 2016 18:10:37 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Fri, 09 Dec 2016 18:10:37 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Fri, 09 Dec 2016 18:10:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Dec 2016 18:10:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:13:17 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 09 Dec 2016 18:13:18 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:13:19 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:13:19 GMT
WORKDIR /var/www/html
# Fri, 09 Dec 2016 18:13:20 GMT
EXPOSE 80/tcp
# Fri, 09 Dec 2016 18:13:20 GMT
CMD ["apache2-foreground"]
# Sat, 10 Dec 2016 16:53:15 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 10 Dec 2016 16:53:16 GMT
RUN a2enmod rewrite
# Sat, 10 Dec 2016 16:53:37 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 10 Dec 2016 16:53:45 GMT
RUN docker-php-ext-install mysqli
# Sat, 10 Dec 2016 16:53:50 GMT
RUN docker-php-ext-install mcrypt
# Sat, 10 Dec 2016 16:53:51 GMT
VOLUME [/var/www/html]
# Sat, 10 Dec 2016 16:53:51 GMT
ENV JOOMLA_VERSION=3.6.4
# Sat, 10 Dec 2016 16:53:52 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Sat, 10 Dec 2016 16:53:59 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 10 Dec 2016 16:54:00 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Sat, 10 Dec 2016 16:54:01 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 10 Dec 2016 16:54:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Dec 2016 16:54:01 GMT
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
	-	`sha256:af3b8f99329bb9c088984e00ea01d4f2f32c8b2cbcde6f6484334a92967d96af`  
		Last Modified: Fri, 09 Dec 2016 18:38:39 GMT  
		Size: 12.7 MB (12664612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d164dd2f74e9f006e157928b04e1d7b4b67038f38a3287ef2cd05c8ce78d3e6a`  
		Last Modified: Fri, 09 Dec 2016 18:38:37 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35125ac3ca7e4aeb68d73273fa92805f27c6d11e15d56a7886292310fded4604`  
		Last Modified: Fri, 09 Dec 2016 18:38:41 GMT  
		Size: 13.0 MB (13012694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734d7da6250e160bc159b95ca5db579ce7465d4ff05a7a3105585abc37cfe7bc`  
		Last Modified: Fri, 09 Dec 2016 18:38:38 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a48cde0e7c2c64bfc5a47c2765fd2b85165e25329d16ebd8148bee88e49b857`  
		Last Modified: Fri, 09 Dec 2016 18:38:38 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd145677f083ddf50b4bb8884394963ecba867fd8c983312e0a3726f6f73c8`  
		Last Modified: Sat, 10 Dec 2016 16:57:10 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621ee44b62e7fc2a591c1fbfec0c56cef5a66dcc9c573700508beb6b73425766`  
		Last Modified: Sat, 10 Dec 2016 16:57:10 GMT  
		Size: 2.7 MB (2737340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e65b0f5e8a9c5aba97e4e3a8f59310614c55aadf9f3824a2f0a80839419edcd8`  
		Last Modified: Sat, 10 Dec 2016 16:57:07 GMT  
		Size: 55.2 KB (55248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e4d4a9e8a2d336a5f744cb77c3192a60ea56f879f8edeb486756f90803fbc8`  
		Last Modified: Sat, 10 Dec 2016 16:57:07 GMT  
		Size: 17.9 KB (17873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069f1fd585a5efb39b472e41b54a72c4d73e5c04957b8d6fe539d22d1bef2d96`  
		Last Modified: Sat, 10 Dec 2016 16:57:09 GMT  
		Size: 8.7 MB (8674931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e44916069a13afda04ef8c7805e94a03ac3a5726b44c778f17586493d5f244`  
		Last Modified: Sat, 10 Dec 2016 16:57:06 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d71a4970ad4a788a05f0d64b4c76042b211d06ce241eb5fceb8c3b865ff74b`  
		Last Modified: Sat, 10 Dec 2016 16:57:07 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.4-fpm`

```console
$ docker pull joomla@sha256:89c2b35039dac6f79807f4ba511105d9fbf332835d51f5b794c3b417b91c60ca
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.4-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161470149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aabfdfa229424e0957f7ddc2547b91831f144d83e7dec3c2a4b0fe1aaeab4f82`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 07 Dec 2016 21:44:09 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 07 Dec 2016 21:44:31 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 07 Dec 2016 21:44:38 GMT
RUN docker-php-ext-install mysqli
# Wed, 07 Dec 2016 21:44:44 GMT
RUN docker-php-ext-install mcrypt
# Wed, 07 Dec 2016 21:44:44 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 21:44:44 GMT
ENV JOOMLA_VERSION=3.6.4
# Wed, 07 Dec 2016 21:44:45 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Wed, 07 Dec 2016 21:44:52 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 07 Dec 2016 21:44:53 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 07 Dec 2016 21:44:54 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 07 Dec 2016 21:44:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Dec 2016 21:44:55 GMT
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
	-	`sha256:afe6a261682eb9985be9ed2b8f57314f64fc273a6bd0179c4126d3c7e239e8cd`  
		Last Modified: Wed, 07 Dec 2016 21:49:26 GMT  
		Size: 2.7 MB (2717901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7668ef6c27d0fbd0fa930c559a134c5d0d8ef8ba36e3ef8b4c264231245a0594`  
		Last Modified: Wed, 07 Dec 2016 21:49:23 GMT  
		Size: 56.9 KB (56909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b92d9a0fa364a7d7d2a2ccd16ff6a5102f5b4d11d1e38b9aada1a547e8a1db1`  
		Last Modified: Wed, 07 Dec 2016 21:49:23 GMT  
		Size: 19.3 KB (19290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb8fa89eb072e0d68074371b84289dbd7d1d0f16262bde470a372eafcb11918`  
		Last Modified: Wed, 07 Dec 2016 21:49:26 GMT  
		Size: 8.7 MB (8674929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8c7155cb70566da374355ada6c419b33c606bac687a44701c80c3d37892b9d`  
		Last Modified: Wed, 07 Dec 2016 21:49:23 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45ce0e2c65d8522ee8114172776cc72da73796bde5838b19328705708408ad8`  
		Last Modified: Wed, 07 Dec 2016 21:49:23 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-fpm`

```console
$ docker pull joomla@sha256:89c2b35039dac6f79807f4ba511105d9fbf332835d51f5b794c3b417b91c60ca
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161470149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aabfdfa229424e0957f7ddc2547b91831f144d83e7dec3c2a4b0fe1aaeab4f82`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 07 Dec 2016 21:44:09 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 07 Dec 2016 21:44:31 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 07 Dec 2016 21:44:38 GMT
RUN docker-php-ext-install mysqli
# Wed, 07 Dec 2016 21:44:44 GMT
RUN docker-php-ext-install mcrypt
# Wed, 07 Dec 2016 21:44:44 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 21:44:44 GMT
ENV JOOMLA_VERSION=3.6.4
# Wed, 07 Dec 2016 21:44:45 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Wed, 07 Dec 2016 21:44:52 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 07 Dec 2016 21:44:53 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 07 Dec 2016 21:44:54 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 07 Dec 2016 21:44:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Dec 2016 21:44:55 GMT
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
	-	`sha256:afe6a261682eb9985be9ed2b8f57314f64fc273a6bd0179c4126d3c7e239e8cd`  
		Last Modified: Wed, 07 Dec 2016 21:49:26 GMT  
		Size: 2.7 MB (2717901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7668ef6c27d0fbd0fa930c559a134c5d0d8ef8ba36e3ef8b4c264231245a0594`  
		Last Modified: Wed, 07 Dec 2016 21:49:23 GMT  
		Size: 56.9 KB (56909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b92d9a0fa364a7d7d2a2ccd16ff6a5102f5b4d11d1e38b9aada1a547e8a1db1`  
		Last Modified: Wed, 07 Dec 2016 21:49:23 GMT  
		Size: 19.3 KB (19290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb8fa89eb072e0d68074371b84289dbd7d1d0f16262bde470a372eafcb11918`  
		Last Modified: Wed, 07 Dec 2016 21:49:26 GMT  
		Size: 8.7 MB (8674929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8c7155cb70566da374355ada6c419b33c606bac687a44701c80c3d37892b9d`  
		Last Modified: Wed, 07 Dec 2016 21:49:23 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45ce0e2c65d8522ee8114172776cc72da73796bde5838b19328705708408ad8`  
		Last Modified: Wed, 07 Dec 2016 21:49:23 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-fpm`

```console
$ docker pull joomla@sha256:89c2b35039dac6f79807f4ba511105d9fbf332835d51f5b794c3b417b91c60ca
```

-	Platforms:
	-	linux; amd64

### `joomla:3-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161470149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aabfdfa229424e0957f7ddc2547b91831f144d83e7dec3c2a4b0fe1aaeab4f82`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 07 Dec 2016 21:44:09 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 07 Dec 2016 21:44:31 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 07 Dec 2016 21:44:38 GMT
RUN docker-php-ext-install mysqli
# Wed, 07 Dec 2016 21:44:44 GMT
RUN docker-php-ext-install mcrypt
# Wed, 07 Dec 2016 21:44:44 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 21:44:44 GMT
ENV JOOMLA_VERSION=3.6.4
# Wed, 07 Dec 2016 21:44:45 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Wed, 07 Dec 2016 21:44:52 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 07 Dec 2016 21:44:53 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 07 Dec 2016 21:44:54 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 07 Dec 2016 21:44:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Dec 2016 21:44:55 GMT
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
	-	`sha256:afe6a261682eb9985be9ed2b8f57314f64fc273a6bd0179c4126d3c7e239e8cd`  
		Last Modified: Wed, 07 Dec 2016 21:49:26 GMT  
		Size: 2.7 MB (2717901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7668ef6c27d0fbd0fa930c559a134c5d0d8ef8ba36e3ef8b4c264231245a0594`  
		Last Modified: Wed, 07 Dec 2016 21:49:23 GMT  
		Size: 56.9 KB (56909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b92d9a0fa364a7d7d2a2ccd16ff6a5102f5b4d11d1e38b9aada1a547e8a1db1`  
		Last Modified: Wed, 07 Dec 2016 21:49:23 GMT  
		Size: 19.3 KB (19290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb8fa89eb072e0d68074371b84289dbd7d1d0f16262bde470a372eafcb11918`  
		Last Modified: Wed, 07 Dec 2016 21:49:26 GMT  
		Size: 8.7 MB (8674929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8c7155cb70566da374355ada6c419b33c606bac687a44701c80c3d37892b9d`  
		Last Modified: Wed, 07 Dec 2016 21:49:23 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45ce0e2c65d8522ee8114172776cc72da73796bde5838b19328705708408ad8`  
		Last Modified: Wed, 07 Dec 2016 21:49:23 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:fpm`

```console
$ docker pull joomla@sha256:89c2b35039dac6f79807f4ba511105d9fbf332835d51f5b794c3b417b91c60ca
```

-	Platforms:
	-	linux; amd64

### `joomla:fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161470149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aabfdfa229424e0957f7ddc2547b91831f144d83e7dec3c2a4b0fe1aaeab4f82`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 07 Dec 2016 21:44:09 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 07 Dec 2016 21:44:31 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 07 Dec 2016 21:44:38 GMT
RUN docker-php-ext-install mysqli
# Wed, 07 Dec 2016 21:44:44 GMT
RUN docker-php-ext-install mcrypt
# Wed, 07 Dec 2016 21:44:44 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 21:44:44 GMT
ENV JOOMLA_VERSION=3.6.4
# Wed, 07 Dec 2016 21:44:45 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Wed, 07 Dec 2016 21:44:52 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 07 Dec 2016 21:44:53 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 07 Dec 2016 21:44:54 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 07 Dec 2016 21:44:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Dec 2016 21:44:55 GMT
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
	-	`sha256:afe6a261682eb9985be9ed2b8f57314f64fc273a6bd0179c4126d3c7e239e8cd`  
		Last Modified: Wed, 07 Dec 2016 21:49:26 GMT  
		Size: 2.7 MB (2717901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7668ef6c27d0fbd0fa930c559a134c5d0d8ef8ba36e3ef8b4c264231245a0594`  
		Last Modified: Wed, 07 Dec 2016 21:49:23 GMT  
		Size: 56.9 KB (56909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b92d9a0fa364a7d7d2a2ccd16ff6a5102f5b4d11d1e38b9aada1a547e8a1db1`  
		Last Modified: Wed, 07 Dec 2016 21:49:23 GMT  
		Size: 19.3 KB (19290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb8fa89eb072e0d68074371b84289dbd7d1d0f16262bde470a372eafcb11918`  
		Last Modified: Wed, 07 Dec 2016 21:49:26 GMT  
		Size: 8.7 MB (8674929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8c7155cb70566da374355ada6c419b33c606bac687a44701c80c3d37892b9d`  
		Last Modified: Wed, 07 Dec 2016 21:49:23 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45ce0e2c65d8522ee8114172776cc72da73796bde5838b19328705708408ad8`  
		Last Modified: Wed, 07 Dec 2016 21:49:23 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.4-fpm-php7`

```console
$ docker pull joomla@sha256:a67133c553aef54c03271c75bc85df64a753ce68f9e1dcaee9285fcb232588d9
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.4-fpm-php7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.5 MB (165468421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52bd9e88234fb8362916addb99e4e8ffd03828db028b5b6cb92a788c2fb84550`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Fri, 09 Dec 2016 18:13:21 GMT
ENV PHP_VERSION=7.0.14
# Fri, 09 Dec 2016 18:13:21 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Fri, 09 Dec 2016 18:13:22 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Fri, 09 Dec 2016 18:13:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Dec 2016 18:13:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:16:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 09 Dec 2016 18:17:00 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:17:00 GMT
WORKDIR /var/www/html
# Fri, 09 Dec 2016 18:17:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 09 Dec 2016 18:17:02 GMT
EXPOSE 9000/tcp
# Fri, 09 Dec 2016 18:17:02 GMT
CMD ["php-fpm"]
# Sat, 10 Dec 2016 16:54:02 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 10 Dec 2016 16:54:22 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 10 Dec 2016 16:54:30 GMT
RUN docker-php-ext-install mysqli
# Sat, 10 Dec 2016 16:54:36 GMT
RUN docker-php-ext-install mcrypt
# Sat, 10 Dec 2016 16:54:36 GMT
VOLUME [/var/www/html]
# Sat, 10 Dec 2016 16:54:37 GMT
ENV JOOMLA_VERSION=3.6.4
# Sat, 10 Dec 2016 16:54:37 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Sat, 10 Dec 2016 16:54:44 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 10 Dec 2016 16:54:45 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Sat, 10 Dec 2016 16:54:46 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 10 Dec 2016 16:54:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Dec 2016 16:54:47 GMT
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
	-	`sha256:2f84414029b3baee661f29e53052b4b84475fa26cf305fbbbd3318ddec5be718`  
		Last Modified: Fri, 09 Dec 2016 18:39:20 GMT  
		Size: 12.6 MB (12645542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4e84af1be051ad9c88303176e313b566b7c119c4e539e6b92bfc1c23a2efe6`  
		Last Modified: Fri, 09 Dec 2016 18:39:16 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61f7a0656148d4705956902acc896ccb0081237836dc51ccd8f876283c723b4`  
		Last Modified: Fri, 09 Dec 2016 18:39:20 GMT  
		Size: 12.4 MB (12400511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439ef0e1b0f222c5c45a298ccd0f4a6c45b010b880be2faab5225b42797ee623`  
		Last Modified: Fri, 09 Dec 2016 18:39:16 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a8b2bafdcb4b0fcf1d918639907709b4ffd50916c87099470624dfe8c80e34`  
		Last Modified: Fri, 09 Dec 2016 18:39:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3240b5d2a059568035306c6f7decc9b44e5d14208000f3e83f0f4143e9ff905d`  
		Last Modified: Fri, 09 Dec 2016 18:39:16 GMT  
		Size: 7.7 KB (7688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41347897bde181373a820e08a75a30dbaf3aa8015023996922a4f655a98d375`  
		Last Modified: Sat, 10 Dec 2016 16:59:21 GMT  
		Size: 2.7 MB (2713977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b04f5e94759939d329cfd10ca444574da0d56919c6a2e7de60cc94c9e07439e`  
		Last Modified: Sat, 10 Dec 2016 16:59:17 GMT  
		Size: 55.2 KB (55250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af05ef443ec7aa18c3edb31b65d8f00701ee497e30fb0f9aed52b3f390a00474`  
		Last Modified: Sat, 10 Dec 2016 16:59:16 GMT  
		Size: 17.9 KB (17871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0351ace870d589c748b005203e276a42c07d096fbf31e5da52672a6554fc799a`  
		Last Modified: Sat, 10 Dec 2016 16:59:19 GMT  
		Size: 8.7 MB (8674914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22cebb390c06e9ef2508ecbd489ea3b66e059665405f1caa99cc783fdd115208`  
		Last Modified: Sat, 10 Dec 2016 16:59:16 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdec18726a4aa32401d3ecb4aaeb498fac86fb671239209d3bb3ac1a0f191418`  
		Last Modified: Sat, 10 Dec 2016 16:59:17 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-fpm-php7`

```console
$ docker pull joomla@sha256:a67133c553aef54c03271c75bc85df64a753ce68f9e1dcaee9285fcb232588d9
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-fpm-php7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.5 MB (165468421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52bd9e88234fb8362916addb99e4e8ffd03828db028b5b6cb92a788c2fb84550`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Fri, 09 Dec 2016 18:13:21 GMT
ENV PHP_VERSION=7.0.14
# Fri, 09 Dec 2016 18:13:21 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Fri, 09 Dec 2016 18:13:22 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Fri, 09 Dec 2016 18:13:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Dec 2016 18:13:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:16:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 09 Dec 2016 18:17:00 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:17:00 GMT
WORKDIR /var/www/html
# Fri, 09 Dec 2016 18:17:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 09 Dec 2016 18:17:02 GMT
EXPOSE 9000/tcp
# Fri, 09 Dec 2016 18:17:02 GMT
CMD ["php-fpm"]
# Sat, 10 Dec 2016 16:54:02 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 10 Dec 2016 16:54:22 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 10 Dec 2016 16:54:30 GMT
RUN docker-php-ext-install mysqli
# Sat, 10 Dec 2016 16:54:36 GMT
RUN docker-php-ext-install mcrypt
# Sat, 10 Dec 2016 16:54:36 GMT
VOLUME [/var/www/html]
# Sat, 10 Dec 2016 16:54:37 GMT
ENV JOOMLA_VERSION=3.6.4
# Sat, 10 Dec 2016 16:54:37 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Sat, 10 Dec 2016 16:54:44 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 10 Dec 2016 16:54:45 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Sat, 10 Dec 2016 16:54:46 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 10 Dec 2016 16:54:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Dec 2016 16:54:47 GMT
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
	-	`sha256:2f84414029b3baee661f29e53052b4b84475fa26cf305fbbbd3318ddec5be718`  
		Last Modified: Fri, 09 Dec 2016 18:39:20 GMT  
		Size: 12.6 MB (12645542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4e84af1be051ad9c88303176e313b566b7c119c4e539e6b92bfc1c23a2efe6`  
		Last Modified: Fri, 09 Dec 2016 18:39:16 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61f7a0656148d4705956902acc896ccb0081237836dc51ccd8f876283c723b4`  
		Last Modified: Fri, 09 Dec 2016 18:39:20 GMT  
		Size: 12.4 MB (12400511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439ef0e1b0f222c5c45a298ccd0f4a6c45b010b880be2faab5225b42797ee623`  
		Last Modified: Fri, 09 Dec 2016 18:39:16 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a8b2bafdcb4b0fcf1d918639907709b4ffd50916c87099470624dfe8c80e34`  
		Last Modified: Fri, 09 Dec 2016 18:39:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3240b5d2a059568035306c6f7decc9b44e5d14208000f3e83f0f4143e9ff905d`  
		Last Modified: Fri, 09 Dec 2016 18:39:16 GMT  
		Size: 7.7 KB (7688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41347897bde181373a820e08a75a30dbaf3aa8015023996922a4f655a98d375`  
		Last Modified: Sat, 10 Dec 2016 16:59:21 GMT  
		Size: 2.7 MB (2713977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b04f5e94759939d329cfd10ca444574da0d56919c6a2e7de60cc94c9e07439e`  
		Last Modified: Sat, 10 Dec 2016 16:59:17 GMT  
		Size: 55.2 KB (55250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af05ef443ec7aa18c3edb31b65d8f00701ee497e30fb0f9aed52b3f390a00474`  
		Last Modified: Sat, 10 Dec 2016 16:59:16 GMT  
		Size: 17.9 KB (17871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0351ace870d589c748b005203e276a42c07d096fbf31e5da52672a6554fc799a`  
		Last Modified: Sat, 10 Dec 2016 16:59:19 GMT  
		Size: 8.7 MB (8674914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22cebb390c06e9ef2508ecbd489ea3b66e059665405f1caa99cc783fdd115208`  
		Last Modified: Sat, 10 Dec 2016 16:59:16 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdec18726a4aa32401d3ecb4aaeb498fac86fb671239209d3bb3ac1a0f191418`  
		Last Modified: Sat, 10 Dec 2016 16:59:17 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-fpm-php7`

```console
$ docker pull joomla@sha256:a67133c553aef54c03271c75bc85df64a753ce68f9e1dcaee9285fcb232588d9
```

-	Platforms:
	-	linux; amd64

### `joomla:3-fpm-php7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.5 MB (165468421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52bd9e88234fb8362916addb99e4e8ffd03828db028b5b6cb92a788c2fb84550`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Fri, 09 Dec 2016 18:13:21 GMT
ENV PHP_VERSION=7.0.14
# Fri, 09 Dec 2016 18:13:21 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Fri, 09 Dec 2016 18:13:22 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Fri, 09 Dec 2016 18:13:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Dec 2016 18:13:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:16:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 09 Dec 2016 18:17:00 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:17:00 GMT
WORKDIR /var/www/html
# Fri, 09 Dec 2016 18:17:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 09 Dec 2016 18:17:02 GMT
EXPOSE 9000/tcp
# Fri, 09 Dec 2016 18:17:02 GMT
CMD ["php-fpm"]
# Sat, 10 Dec 2016 16:54:02 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 10 Dec 2016 16:54:22 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 10 Dec 2016 16:54:30 GMT
RUN docker-php-ext-install mysqli
# Sat, 10 Dec 2016 16:54:36 GMT
RUN docker-php-ext-install mcrypt
# Sat, 10 Dec 2016 16:54:36 GMT
VOLUME [/var/www/html]
# Sat, 10 Dec 2016 16:54:37 GMT
ENV JOOMLA_VERSION=3.6.4
# Sat, 10 Dec 2016 16:54:37 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Sat, 10 Dec 2016 16:54:44 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 10 Dec 2016 16:54:45 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Sat, 10 Dec 2016 16:54:46 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 10 Dec 2016 16:54:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Dec 2016 16:54:47 GMT
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
	-	`sha256:2f84414029b3baee661f29e53052b4b84475fa26cf305fbbbd3318ddec5be718`  
		Last Modified: Fri, 09 Dec 2016 18:39:20 GMT  
		Size: 12.6 MB (12645542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4e84af1be051ad9c88303176e313b566b7c119c4e539e6b92bfc1c23a2efe6`  
		Last Modified: Fri, 09 Dec 2016 18:39:16 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61f7a0656148d4705956902acc896ccb0081237836dc51ccd8f876283c723b4`  
		Last Modified: Fri, 09 Dec 2016 18:39:20 GMT  
		Size: 12.4 MB (12400511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439ef0e1b0f222c5c45a298ccd0f4a6c45b010b880be2faab5225b42797ee623`  
		Last Modified: Fri, 09 Dec 2016 18:39:16 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a8b2bafdcb4b0fcf1d918639907709b4ffd50916c87099470624dfe8c80e34`  
		Last Modified: Fri, 09 Dec 2016 18:39:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3240b5d2a059568035306c6f7decc9b44e5d14208000f3e83f0f4143e9ff905d`  
		Last Modified: Fri, 09 Dec 2016 18:39:16 GMT  
		Size: 7.7 KB (7688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41347897bde181373a820e08a75a30dbaf3aa8015023996922a4f655a98d375`  
		Last Modified: Sat, 10 Dec 2016 16:59:21 GMT  
		Size: 2.7 MB (2713977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b04f5e94759939d329cfd10ca444574da0d56919c6a2e7de60cc94c9e07439e`  
		Last Modified: Sat, 10 Dec 2016 16:59:17 GMT  
		Size: 55.2 KB (55250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af05ef443ec7aa18c3edb31b65d8f00701ee497e30fb0f9aed52b3f390a00474`  
		Last Modified: Sat, 10 Dec 2016 16:59:16 GMT  
		Size: 17.9 KB (17871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0351ace870d589c748b005203e276a42c07d096fbf31e5da52672a6554fc799a`  
		Last Modified: Sat, 10 Dec 2016 16:59:19 GMT  
		Size: 8.7 MB (8674914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22cebb390c06e9ef2508ecbd489ea3b66e059665405f1caa99cc783fdd115208`  
		Last Modified: Sat, 10 Dec 2016 16:59:16 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdec18726a4aa32401d3ecb4aaeb498fac86fb671239209d3bb3ac1a0f191418`  
		Last Modified: Sat, 10 Dec 2016 16:59:17 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:fpm-php7`

```console
$ docker pull joomla@sha256:a67133c553aef54c03271c75bc85df64a753ce68f9e1dcaee9285fcb232588d9
```

-	Platforms:
	-	linux; amd64

### `joomla:fpm-php7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.5 MB (165468421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52bd9e88234fb8362916addb99e4e8ffd03828db028b5b6cb92a788c2fb84550`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Fri, 09 Dec 2016 18:13:21 GMT
ENV PHP_VERSION=7.0.14
# Fri, 09 Dec 2016 18:13:21 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Fri, 09 Dec 2016 18:13:22 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Fri, 09 Dec 2016 18:13:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Dec 2016 18:13:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:16:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 09 Dec 2016 18:17:00 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:17:00 GMT
WORKDIR /var/www/html
# Fri, 09 Dec 2016 18:17:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 09 Dec 2016 18:17:02 GMT
EXPOSE 9000/tcp
# Fri, 09 Dec 2016 18:17:02 GMT
CMD ["php-fpm"]
# Sat, 10 Dec 2016 16:54:02 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 10 Dec 2016 16:54:22 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 10 Dec 2016 16:54:30 GMT
RUN docker-php-ext-install mysqli
# Sat, 10 Dec 2016 16:54:36 GMT
RUN docker-php-ext-install mcrypt
# Sat, 10 Dec 2016 16:54:36 GMT
VOLUME [/var/www/html]
# Sat, 10 Dec 2016 16:54:37 GMT
ENV JOOMLA_VERSION=3.6.4
# Sat, 10 Dec 2016 16:54:37 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Sat, 10 Dec 2016 16:54:44 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 10 Dec 2016 16:54:45 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Sat, 10 Dec 2016 16:54:46 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 10 Dec 2016 16:54:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Dec 2016 16:54:47 GMT
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
	-	`sha256:2f84414029b3baee661f29e53052b4b84475fa26cf305fbbbd3318ddec5be718`  
		Last Modified: Fri, 09 Dec 2016 18:39:20 GMT  
		Size: 12.6 MB (12645542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4e84af1be051ad9c88303176e313b566b7c119c4e539e6b92bfc1c23a2efe6`  
		Last Modified: Fri, 09 Dec 2016 18:39:16 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61f7a0656148d4705956902acc896ccb0081237836dc51ccd8f876283c723b4`  
		Last Modified: Fri, 09 Dec 2016 18:39:20 GMT  
		Size: 12.4 MB (12400511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439ef0e1b0f222c5c45a298ccd0f4a6c45b010b880be2faab5225b42797ee623`  
		Last Modified: Fri, 09 Dec 2016 18:39:16 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a8b2bafdcb4b0fcf1d918639907709b4ffd50916c87099470624dfe8c80e34`  
		Last Modified: Fri, 09 Dec 2016 18:39:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3240b5d2a059568035306c6f7decc9b44e5d14208000f3e83f0f4143e9ff905d`  
		Last Modified: Fri, 09 Dec 2016 18:39:16 GMT  
		Size: 7.7 KB (7688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41347897bde181373a820e08a75a30dbaf3aa8015023996922a4f655a98d375`  
		Last Modified: Sat, 10 Dec 2016 16:59:21 GMT  
		Size: 2.7 MB (2713977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b04f5e94759939d329cfd10ca444574da0d56919c6a2e7de60cc94c9e07439e`  
		Last Modified: Sat, 10 Dec 2016 16:59:17 GMT  
		Size: 55.2 KB (55250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af05ef443ec7aa18c3edb31b65d8f00701ee497e30fb0f9aed52b3f390a00474`  
		Last Modified: Sat, 10 Dec 2016 16:59:16 GMT  
		Size: 17.9 KB (17871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0351ace870d589c748b005203e276a42c07d096fbf31e5da52672a6554fc799a`  
		Last Modified: Sat, 10 Dec 2016 16:59:19 GMT  
		Size: 8.7 MB (8674914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22cebb390c06e9ef2508ecbd489ea3b66e059665405f1caa99cc783fdd115208`  
		Last Modified: Sat, 10 Dec 2016 16:59:16 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdec18726a4aa32401d3ecb4aaeb498fac86fb671239209d3bb3ac1a0f191418`  
		Last Modified: Sat, 10 Dec 2016 16:59:17 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
