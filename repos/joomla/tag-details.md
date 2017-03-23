<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `joomla`

-	[`joomla:3.6.5-apache`](#joomla365-apache)
-	[`joomla:3.6-apache`](#joomla36-apache)
-	[`joomla:3-apache`](#joomla3-apache)
-	[`joomla:apache`](#joomlaapache)
-	[`joomla:3.6.5`](#joomla365)
-	[`joomla:3.6`](#joomla36)
-	[`joomla:3`](#joomla3)
-	[`joomla:latest`](#joomlalatest)
-	[`joomla:3.6.5-apache-php7`](#joomla365-apache-php7)
-	[`joomla:3.6-apache-php7`](#joomla36-apache-php7)
-	[`joomla:3-apache-php7`](#joomla3-apache-php7)
-	[`joomla:apache-php7`](#joomlaapache-php7)
-	[`joomla:3.6.5-fpm`](#joomla365-fpm)
-	[`joomla:3.6-fpm`](#joomla36-fpm)
-	[`joomla:3-fpm`](#joomla3-fpm)
-	[`joomla:fpm`](#joomlafpm)
-	[`joomla:3.6.5-fpm-php7`](#joomla365-fpm-php7)
-	[`joomla:3.6-fpm-php7`](#joomla36-fpm-php7)
-	[`joomla:3-fpm-php7`](#joomla3-fpm-php7)
-	[`joomla:fpm-php7`](#joomlafpm-php7)

## `joomla:3.6.5-apache`

```console
$ docker pull joomla@sha256:d6eda7f7a428deef031b0e31987036beea08611eda7b896d26d744a27576cc25
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.5-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165380364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70db70acb3a695f6d00955e9dd599f628979705b999e6030888c64bb9fff9d66`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Tue, 21 Mar 2017 22:59:56 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 22:59:56 GMT
ENV PHP_VERSION=5.6.30
# Tue, 21 Mar 2017 22:59:56 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 22:59:57 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 21 Mar 2017 23:00:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:00:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:19 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:02:20 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:02:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:21 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:02:22 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:02:22 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 21:14:50 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 22 Mar 2017 21:14:51 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 21:15:17 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 22 Mar 2017 21:15:25 GMT
RUN docker-php-ext-install mysqli
# Wed, 22 Mar 2017 21:15:30 GMT
RUN docker-php-ext-install mcrypt
# Wed, 22 Mar 2017 21:15:31 GMT
VOLUME [/var/www/html]
# Wed, 22 Mar 2017 21:15:31 GMT
ENV JOOMLA_VERSION=3.6.5
# Wed, 22 Mar 2017 21:15:31 GMT
ENV JOOMLA_SHA1=3143994bb5520c249961cbb5bc297c149399f4b7
# Wed, 22 Mar 2017 21:15:44 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 22 Mar 2017 21:15:45 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 22 Mar 2017 21:15:45 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 22 Mar 2017 21:15:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 21:15:46 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:65dc0142d59b54728ee511523b70042f0258863107c1595bd1d8ef81855e8165`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 12.6 MB (12580334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95f4fa43ae26d343758eb29661cd2606772540de6f19943cfdb4a11a5d921a4`  
		Last Modified: Wed, 22 Mar 2017 23:53:11 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4edd48c3730334d4e5d1c220ad0f3f3287278857650d52bc9a07b8960aed84d`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 9.3 MB (9319924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58fc629c9d128b913a5db5971208f2509f6fc39c2397247460bf9ca2db61652`  
		Last Modified: Wed, 22 Mar 2017 23:53:09 GMT  
		Size: 2.0 KB (2022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75a71ebb7f406f333ac8c274a818325029eed5103dcbf35bb2e1fbd5dee2799`  
		Last Modified: Wed, 22 Mar 2017 23:53:07 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d329b8bd6dd5545ac079f72101f24a88e615e780cf7dcea78af56978e7790a`  
		Last Modified: Thu, 23 Mar 2017 21:42:17 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928e0ddf6dd5f0e58ea39711f5acc48ed41241b580ab3c5e8097d87ac69e4492`  
		Last Modified: Thu, 23 Mar 2017 21:42:17 GMT  
		Size: 2.7 MB (2741696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d9193efb6f202763f172cb0df5e7f9c20037d24bd78980db9355efdabef72c`  
		Last Modified: Thu, 23 Mar 2017 21:42:15 GMT  
		Size: 56.9 KB (56915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f671147544dd54431d920baa42437804ed33fbe05d08e909dd65680236d3c2`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 19.3 KB (19289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0dff707f151ae4b5f48f152be57e4af137f4b3a1d402d3986592ba337f5c7c`  
		Last Modified: Thu, 23 Mar 2017 21:42:20 GMT  
		Size: 8.7 MB (8674967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b245157bd6f3ead64dc5dee043977dcba1cc02b2207a28c845fe0f7374476606`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8f807b2e74b69895fa099690c12e1f665b9f000bf140d31f8be7d7bc59d210`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-apache`

```console
$ docker pull joomla@sha256:d6eda7f7a428deef031b0e31987036beea08611eda7b896d26d744a27576cc25
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165380364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70db70acb3a695f6d00955e9dd599f628979705b999e6030888c64bb9fff9d66`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Tue, 21 Mar 2017 22:59:56 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 22:59:56 GMT
ENV PHP_VERSION=5.6.30
# Tue, 21 Mar 2017 22:59:56 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 22:59:57 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 21 Mar 2017 23:00:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:00:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:19 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:02:20 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:02:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:21 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:02:22 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:02:22 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 21:14:50 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 22 Mar 2017 21:14:51 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 21:15:17 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 22 Mar 2017 21:15:25 GMT
RUN docker-php-ext-install mysqli
# Wed, 22 Mar 2017 21:15:30 GMT
RUN docker-php-ext-install mcrypt
# Wed, 22 Mar 2017 21:15:31 GMT
VOLUME [/var/www/html]
# Wed, 22 Mar 2017 21:15:31 GMT
ENV JOOMLA_VERSION=3.6.5
# Wed, 22 Mar 2017 21:15:31 GMT
ENV JOOMLA_SHA1=3143994bb5520c249961cbb5bc297c149399f4b7
# Wed, 22 Mar 2017 21:15:44 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 22 Mar 2017 21:15:45 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 22 Mar 2017 21:15:45 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 22 Mar 2017 21:15:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 21:15:46 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:65dc0142d59b54728ee511523b70042f0258863107c1595bd1d8ef81855e8165`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 12.6 MB (12580334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95f4fa43ae26d343758eb29661cd2606772540de6f19943cfdb4a11a5d921a4`  
		Last Modified: Wed, 22 Mar 2017 23:53:11 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4edd48c3730334d4e5d1c220ad0f3f3287278857650d52bc9a07b8960aed84d`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 9.3 MB (9319924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58fc629c9d128b913a5db5971208f2509f6fc39c2397247460bf9ca2db61652`  
		Last Modified: Wed, 22 Mar 2017 23:53:09 GMT  
		Size: 2.0 KB (2022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75a71ebb7f406f333ac8c274a818325029eed5103dcbf35bb2e1fbd5dee2799`  
		Last Modified: Wed, 22 Mar 2017 23:53:07 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d329b8bd6dd5545ac079f72101f24a88e615e780cf7dcea78af56978e7790a`  
		Last Modified: Thu, 23 Mar 2017 21:42:17 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928e0ddf6dd5f0e58ea39711f5acc48ed41241b580ab3c5e8097d87ac69e4492`  
		Last Modified: Thu, 23 Mar 2017 21:42:17 GMT  
		Size: 2.7 MB (2741696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d9193efb6f202763f172cb0df5e7f9c20037d24bd78980db9355efdabef72c`  
		Last Modified: Thu, 23 Mar 2017 21:42:15 GMT  
		Size: 56.9 KB (56915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f671147544dd54431d920baa42437804ed33fbe05d08e909dd65680236d3c2`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 19.3 KB (19289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0dff707f151ae4b5f48f152be57e4af137f4b3a1d402d3986592ba337f5c7c`  
		Last Modified: Thu, 23 Mar 2017 21:42:20 GMT  
		Size: 8.7 MB (8674967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b245157bd6f3ead64dc5dee043977dcba1cc02b2207a28c845fe0f7374476606`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8f807b2e74b69895fa099690c12e1f665b9f000bf140d31f8be7d7bc59d210`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache`

```console
$ docker pull joomla@sha256:d6eda7f7a428deef031b0e31987036beea08611eda7b896d26d744a27576cc25
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165380364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70db70acb3a695f6d00955e9dd599f628979705b999e6030888c64bb9fff9d66`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Tue, 21 Mar 2017 22:59:56 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 22:59:56 GMT
ENV PHP_VERSION=5.6.30
# Tue, 21 Mar 2017 22:59:56 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 22:59:57 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 21 Mar 2017 23:00:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:00:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:19 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:02:20 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:02:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:21 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:02:22 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:02:22 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 21:14:50 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 22 Mar 2017 21:14:51 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 21:15:17 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 22 Mar 2017 21:15:25 GMT
RUN docker-php-ext-install mysqli
# Wed, 22 Mar 2017 21:15:30 GMT
RUN docker-php-ext-install mcrypt
# Wed, 22 Mar 2017 21:15:31 GMT
VOLUME [/var/www/html]
# Wed, 22 Mar 2017 21:15:31 GMT
ENV JOOMLA_VERSION=3.6.5
# Wed, 22 Mar 2017 21:15:31 GMT
ENV JOOMLA_SHA1=3143994bb5520c249961cbb5bc297c149399f4b7
# Wed, 22 Mar 2017 21:15:44 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 22 Mar 2017 21:15:45 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 22 Mar 2017 21:15:45 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 22 Mar 2017 21:15:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 21:15:46 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:65dc0142d59b54728ee511523b70042f0258863107c1595bd1d8ef81855e8165`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 12.6 MB (12580334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95f4fa43ae26d343758eb29661cd2606772540de6f19943cfdb4a11a5d921a4`  
		Last Modified: Wed, 22 Mar 2017 23:53:11 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4edd48c3730334d4e5d1c220ad0f3f3287278857650d52bc9a07b8960aed84d`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 9.3 MB (9319924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58fc629c9d128b913a5db5971208f2509f6fc39c2397247460bf9ca2db61652`  
		Last Modified: Wed, 22 Mar 2017 23:53:09 GMT  
		Size: 2.0 KB (2022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75a71ebb7f406f333ac8c274a818325029eed5103dcbf35bb2e1fbd5dee2799`  
		Last Modified: Wed, 22 Mar 2017 23:53:07 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d329b8bd6dd5545ac079f72101f24a88e615e780cf7dcea78af56978e7790a`  
		Last Modified: Thu, 23 Mar 2017 21:42:17 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928e0ddf6dd5f0e58ea39711f5acc48ed41241b580ab3c5e8097d87ac69e4492`  
		Last Modified: Thu, 23 Mar 2017 21:42:17 GMT  
		Size: 2.7 MB (2741696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d9193efb6f202763f172cb0df5e7f9c20037d24bd78980db9355efdabef72c`  
		Last Modified: Thu, 23 Mar 2017 21:42:15 GMT  
		Size: 56.9 KB (56915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f671147544dd54431d920baa42437804ed33fbe05d08e909dd65680236d3c2`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 19.3 KB (19289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0dff707f151ae4b5f48f152be57e4af137f4b3a1d402d3986592ba337f5c7c`  
		Last Modified: Thu, 23 Mar 2017 21:42:20 GMT  
		Size: 8.7 MB (8674967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b245157bd6f3ead64dc5dee043977dcba1cc02b2207a28c845fe0f7374476606`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8f807b2e74b69895fa099690c12e1f665b9f000bf140d31f8be7d7bc59d210`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:apache`

```console
$ docker pull joomla@sha256:d6eda7f7a428deef031b0e31987036beea08611eda7b896d26d744a27576cc25
```

-	Platforms:
	-	linux; amd64

### `joomla:apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165380364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70db70acb3a695f6d00955e9dd599f628979705b999e6030888c64bb9fff9d66`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Tue, 21 Mar 2017 22:59:56 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 22:59:56 GMT
ENV PHP_VERSION=5.6.30
# Tue, 21 Mar 2017 22:59:56 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 22:59:57 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 21 Mar 2017 23:00:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:00:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:19 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:02:20 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:02:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:21 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:02:22 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:02:22 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 21:14:50 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 22 Mar 2017 21:14:51 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 21:15:17 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 22 Mar 2017 21:15:25 GMT
RUN docker-php-ext-install mysqli
# Wed, 22 Mar 2017 21:15:30 GMT
RUN docker-php-ext-install mcrypt
# Wed, 22 Mar 2017 21:15:31 GMT
VOLUME [/var/www/html]
# Wed, 22 Mar 2017 21:15:31 GMT
ENV JOOMLA_VERSION=3.6.5
# Wed, 22 Mar 2017 21:15:31 GMT
ENV JOOMLA_SHA1=3143994bb5520c249961cbb5bc297c149399f4b7
# Wed, 22 Mar 2017 21:15:44 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 22 Mar 2017 21:15:45 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 22 Mar 2017 21:15:45 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 22 Mar 2017 21:15:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 21:15:46 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:65dc0142d59b54728ee511523b70042f0258863107c1595bd1d8ef81855e8165`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 12.6 MB (12580334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95f4fa43ae26d343758eb29661cd2606772540de6f19943cfdb4a11a5d921a4`  
		Last Modified: Wed, 22 Mar 2017 23:53:11 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4edd48c3730334d4e5d1c220ad0f3f3287278857650d52bc9a07b8960aed84d`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 9.3 MB (9319924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58fc629c9d128b913a5db5971208f2509f6fc39c2397247460bf9ca2db61652`  
		Last Modified: Wed, 22 Mar 2017 23:53:09 GMT  
		Size: 2.0 KB (2022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75a71ebb7f406f333ac8c274a818325029eed5103dcbf35bb2e1fbd5dee2799`  
		Last Modified: Wed, 22 Mar 2017 23:53:07 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d329b8bd6dd5545ac079f72101f24a88e615e780cf7dcea78af56978e7790a`  
		Last Modified: Thu, 23 Mar 2017 21:42:17 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928e0ddf6dd5f0e58ea39711f5acc48ed41241b580ab3c5e8097d87ac69e4492`  
		Last Modified: Thu, 23 Mar 2017 21:42:17 GMT  
		Size: 2.7 MB (2741696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d9193efb6f202763f172cb0df5e7f9c20037d24bd78980db9355efdabef72c`  
		Last Modified: Thu, 23 Mar 2017 21:42:15 GMT  
		Size: 56.9 KB (56915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f671147544dd54431d920baa42437804ed33fbe05d08e909dd65680236d3c2`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 19.3 KB (19289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0dff707f151ae4b5f48f152be57e4af137f4b3a1d402d3986592ba337f5c7c`  
		Last Modified: Thu, 23 Mar 2017 21:42:20 GMT  
		Size: 8.7 MB (8674967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b245157bd6f3ead64dc5dee043977dcba1cc02b2207a28c845fe0f7374476606`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8f807b2e74b69895fa099690c12e1f665b9f000bf140d31f8be7d7bc59d210`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.5`

```console
$ docker pull joomla@sha256:d6eda7f7a428deef031b0e31987036beea08611eda7b896d26d744a27576cc25
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165380364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70db70acb3a695f6d00955e9dd599f628979705b999e6030888c64bb9fff9d66`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Tue, 21 Mar 2017 22:59:56 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 22:59:56 GMT
ENV PHP_VERSION=5.6.30
# Tue, 21 Mar 2017 22:59:56 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 22:59:57 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 21 Mar 2017 23:00:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:00:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:19 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:02:20 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:02:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:21 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:02:22 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:02:22 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 21:14:50 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 22 Mar 2017 21:14:51 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 21:15:17 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 22 Mar 2017 21:15:25 GMT
RUN docker-php-ext-install mysqli
# Wed, 22 Mar 2017 21:15:30 GMT
RUN docker-php-ext-install mcrypt
# Wed, 22 Mar 2017 21:15:31 GMT
VOLUME [/var/www/html]
# Wed, 22 Mar 2017 21:15:31 GMT
ENV JOOMLA_VERSION=3.6.5
# Wed, 22 Mar 2017 21:15:31 GMT
ENV JOOMLA_SHA1=3143994bb5520c249961cbb5bc297c149399f4b7
# Wed, 22 Mar 2017 21:15:44 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 22 Mar 2017 21:15:45 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 22 Mar 2017 21:15:45 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 22 Mar 2017 21:15:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 21:15:46 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:65dc0142d59b54728ee511523b70042f0258863107c1595bd1d8ef81855e8165`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 12.6 MB (12580334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95f4fa43ae26d343758eb29661cd2606772540de6f19943cfdb4a11a5d921a4`  
		Last Modified: Wed, 22 Mar 2017 23:53:11 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4edd48c3730334d4e5d1c220ad0f3f3287278857650d52bc9a07b8960aed84d`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 9.3 MB (9319924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58fc629c9d128b913a5db5971208f2509f6fc39c2397247460bf9ca2db61652`  
		Last Modified: Wed, 22 Mar 2017 23:53:09 GMT  
		Size: 2.0 KB (2022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75a71ebb7f406f333ac8c274a818325029eed5103dcbf35bb2e1fbd5dee2799`  
		Last Modified: Wed, 22 Mar 2017 23:53:07 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d329b8bd6dd5545ac079f72101f24a88e615e780cf7dcea78af56978e7790a`  
		Last Modified: Thu, 23 Mar 2017 21:42:17 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928e0ddf6dd5f0e58ea39711f5acc48ed41241b580ab3c5e8097d87ac69e4492`  
		Last Modified: Thu, 23 Mar 2017 21:42:17 GMT  
		Size: 2.7 MB (2741696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d9193efb6f202763f172cb0df5e7f9c20037d24bd78980db9355efdabef72c`  
		Last Modified: Thu, 23 Mar 2017 21:42:15 GMT  
		Size: 56.9 KB (56915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f671147544dd54431d920baa42437804ed33fbe05d08e909dd65680236d3c2`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 19.3 KB (19289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0dff707f151ae4b5f48f152be57e4af137f4b3a1d402d3986592ba337f5c7c`  
		Last Modified: Thu, 23 Mar 2017 21:42:20 GMT  
		Size: 8.7 MB (8674967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b245157bd6f3ead64dc5dee043977dcba1cc02b2207a28c845fe0f7374476606`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8f807b2e74b69895fa099690c12e1f665b9f000bf140d31f8be7d7bc59d210`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6`

```console
$ docker pull joomla@sha256:d6eda7f7a428deef031b0e31987036beea08611eda7b896d26d744a27576cc25
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165380364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70db70acb3a695f6d00955e9dd599f628979705b999e6030888c64bb9fff9d66`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Tue, 21 Mar 2017 22:59:56 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 22:59:56 GMT
ENV PHP_VERSION=5.6.30
# Tue, 21 Mar 2017 22:59:56 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 22:59:57 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 21 Mar 2017 23:00:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:00:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:19 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:02:20 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:02:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:21 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:02:22 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:02:22 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 21:14:50 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 22 Mar 2017 21:14:51 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 21:15:17 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 22 Mar 2017 21:15:25 GMT
RUN docker-php-ext-install mysqli
# Wed, 22 Mar 2017 21:15:30 GMT
RUN docker-php-ext-install mcrypt
# Wed, 22 Mar 2017 21:15:31 GMT
VOLUME [/var/www/html]
# Wed, 22 Mar 2017 21:15:31 GMT
ENV JOOMLA_VERSION=3.6.5
# Wed, 22 Mar 2017 21:15:31 GMT
ENV JOOMLA_SHA1=3143994bb5520c249961cbb5bc297c149399f4b7
# Wed, 22 Mar 2017 21:15:44 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 22 Mar 2017 21:15:45 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 22 Mar 2017 21:15:45 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 22 Mar 2017 21:15:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 21:15:46 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:65dc0142d59b54728ee511523b70042f0258863107c1595bd1d8ef81855e8165`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 12.6 MB (12580334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95f4fa43ae26d343758eb29661cd2606772540de6f19943cfdb4a11a5d921a4`  
		Last Modified: Wed, 22 Mar 2017 23:53:11 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4edd48c3730334d4e5d1c220ad0f3f3287278857650d52bc9a07b8960aed84d`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 9.3 MB (9319924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58fc629c9d128b913a5db5971208f2509f6fc39c2397247460bf9ca2db61652`  
		Last Modified: Wed, 22 Mar 2017 23:53:09 GMT  
		Size: 2.0 KB (2022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75a71ebb7f406f333ac8c274a818325029eed5103dcbf35bb2e1fbd5dee2799`  
		Last Modified: Wed, 22 Mar 2017 23:53:07 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d329b8bd6dd5545ac079f72101f24a88e615e780cf7dcea78af56978e7790a`  
		Last Modified: Thu, 23 Mar 2017 21:42:17 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928e0ddf6dd5f0e58ea39711f5acc48ed41241b580ab3c5e8097d87ac69e4492`  
		Last Modified: Thu, 23 Mar 2017 21:42:17 GMT  
		Size: 2.7 MB (2741696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d9193efb6f202763f172cb0df5e7f9c20037d24bd78980db9355efdabef72c`  
		Last Modified: Thu, 23 Mar 2017 21:42:15 GMT  
		Size: 56.9 KB (56915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f671147544dd54431d920baa42437804ed33fbe05d08e909dd65680236d3c2`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 19.3 KB (19289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0dff707f151ae4b5f48f152be57e4af137f4b3a1d402d3986592ba337f5c7c`  
		Last Modified: Thu, 23 Mar 2017 21:42:20 GMT  
		Size: 8.7 MB (8674967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b245157bd6f3ead64dc5dee043977dcba1cc02b2207a28c845fe0f7374476606`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8f807b2e74b69895fa099690c12e1f665b9f000bf140d31f8be7d7bc59d210`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3`

```console
$ docker pull joomla@sha256:d6eda7f7a428deef031b0e31987036beea08611eda7b896d26d744a27576cc25
```

-	Platforms:
	-	linux; amd64

### `joomla:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165380364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70db70acb3a695f6d00955e9dd599f628979705b999e6030888c64bb9fff9d66`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Tue, 21 Mar 2017 22:59:56 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 22:59:56 GMT
ENV PHP_VERSION=5.6.30
# Tue, 21 Mar 2017 22:59:56 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 22:59:57 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 21 Mar 2017 23:00:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:00:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:19 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:02:20 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:02:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:21 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:02:22 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:02:22 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 21:14:50 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 22 Mar 2017 21:14:51 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 21:15:17 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 22 Mar 2017 21:15:25 GMT
RUN docker-php-ext-install mysqli
# Wed, 22 Mar 2017 21:15:30 GMT
RUN docker-php-ext-install mcrypt
# Wed, 22 Mar 2017 21:15:31 GMT
VOLUME [/var/www/html]
# Wed, 22 Mar 2017 21:15:31 GMT
ENV JOOMLA_VERSION=3.6.5
# Wed, 22 Mar 2017 21:15:31 GMT
ENV JOOMLA_SHA1=3143994bb5520c249961cbb5bc297c149399f4b7
# Wed, 22 Mar 2017 21:15:44 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 22 Mar 2017 21:15:45 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 22 Mar 2017 21:15:45 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 22 Mar 2017 21:15:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 21:15:46 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:65dc0142d59b54728ee511523b70042f0258863107c1595bd1d8ef81855e8165`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 12.6 MB (12580334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95f4fa43ae26d343758eb29661cd2606772540de6f19943cfdb4a11a5d921a4`  
		Last Modified: Wed, 22 Mar 2017 23:53:11 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4edd48c3730334d4e5d1c220ad0f3f3287278857650d52bc9a07b8960aed84d`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 9.3 MB (9319924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58fc629c9d128b913a5db5971208f2509f6fc39c2397247460bf9ca2db61652`  
		Last Modified: Wed, 22 Mar 2017 23:53:09 GMT  
		Size: 2.0 KB (2022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75a71ebb7f406f333ac8c274a818325029eed5103dcbf35bb2e1fbd5dee2799`  
		Last Modified: Wed, 22 Mar 2017 23:53:07 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d329b8bd6dd5545ac079f72101f24a88e615e780cf7dcea78af56978e7790a`  
		Last Modified: Thu, 23 Mar 2017 21:42:17 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928e0ddf6dd5f0e58ea39711f5acc48ed41241b580ab3c5e8097d87ac69e4492`  
		Last Modified: Thu, 23 Mar 2017 21:42:17 GMT  
		Size: 2.7 MB (2741696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d9193efb6f202763f172cb0df5e7f9c20037d24bd78980db9355efdabef72c`  
		Last Modified: Thu, 23 Mar 2017 21:42:15 GMT  
		Size: 56.9 KB (56915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f671147544dd54431d920baa42437804ed33fbe05d08e909dd65680236d3c2`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 19.3 KB (19289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0dff707f151ae4b5f48f152be57e4af137f4b3a1d402d3986592ba337f5c7c`  
		Last Modified: Thu, 23 Mar 2017 21:42:20 GMT  
		Size: 8.7 MB (8674967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b245157bd6f3ead64dc5dee043977dcba1cc02b2207a28c845fe0f7374476606`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8f807b2e74b69895fa099690c12e1f665b9f000bf140d31f8be7d7bc59d210`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:latest`

```console
$ docker pull joomla@sha256:d6eda7f7a428deef031b0e31987036beea08611eda7b896d26d744a27576cc25
```

-	Platforms:
	-	linux; amd64

### `joomla:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165380364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70db70acb3a695f6d00955e9dd599f628979705b999e6030888c64bb9fff9d66`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Tue, 21 Mar 2017 22:59:56 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 22:59:56 GMT
ENV PHP_VERSION=5.6.30
# Tue, 21 Mar 2017 22:59:56 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 22:59:57 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 21 Mar 2017 23:00:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:00:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:19 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:02:20 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:02:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:02:21 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:02:22 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:02:22 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 21:14:50 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 22 Mar 2017 21:14:51 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 21:15:17 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 22 Mar 2017 21:15:25 GMT
RUN docker-php-ext-install mysqli
# Wed, 22 Mar 2017 21:15:30 GMT
RUN docker-php-ext-install mcrypt
# Wed, 22 Mar 2017 21:15:31 GMT
VOLUME [/var/www/html]
# Wed, 22 Mar 2017 21:15:31 GMT
ENV JOOMLA_VERSION=3.6.5
# Wed, 22 Mar 2017 21:15:31 GMT
ENV JOOMLA_SHA1=3143994bb5520c249961cbb5bc297c149399f4b7
# Wed, 22 Mar 2017 21:15:44 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 22 Mar 2017 21:15:45 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 22 Mar 2017 21:15:45 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 22 Mar 2017 21:15:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 21:15:46 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:65dc0142d59b54728ee511523b70042f0258863107c1595bd1d8ef81855e8165`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 12.6 MB (12580334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95f4fa43ae26d343758eb29661cd2606772540de6f19943cfdb4a11a5d921a4`  
		Last Modified: Wed, 22 Mar 2017 23:53:11 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4edd48c3730334d4e5d1c220ad0f3f3287278857650d52bc9a07b8960aed84d`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 9.3 MB (9319924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58fc629c9d128b913a5db5971208f2509f6fc39c2397247460bf9ca2db61652`  
		Last Modified: Wed, 22 Mar 2017 23:53:09 GMT  
		Size: 2.0 KB (2022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75a71ebb7f406f333ac8c274a818325029eed5103dcbf35bb2e1fbd5dee2799`  
		Last Modified: Wed, 22 Mar 2017 23:53:07 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d329b8bd6dd5545ac079f72101f24a88e615e780cf7dcea78af56978e7790a`  
		Last Modified: Thu, 23 Mar 2017 21:42:17 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928e0ddf6dd5f0e58ea39711f5acc48ed41241b580ab3c5e8097d87ac69e4492`  
		Last Modified: Thu, 23 Mar 2017 21:42:17 GMT  
		Size: 2.7 MB (2741696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d9193efb6f202763f172cb0df5e7f9c20037d24bd78980db9355efdabef72c`  
		Last Modified: Thu, 23 Mar 2017 21:42:15 GMT  
		Size: 56.9 KB (56915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f671147544dd54431d920baa42437804ed33fbe05d08e909dd65680236d3c2`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 19.3 KB (19289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0dff707f151ae4b5f48f152be57e4af137f4b3a1d402d3986592ba337f5c7c`  
		Last Modified: Thu, 23 Mar 2017 21:42:20 GMT  
		Size: 8.7 MB (8674967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b245157bd6f3ead64dc5dee043977dcba1cc02b2207a28c845fe0f7374476606`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8f807b2e74b69895fa099690c12e1f665b9f000bf140d31f8be7d7bc59d210`  
		Last Modified: Thu, 23 Mar 2017 21:42:14 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.5-apache-php7`

```console
$ docker pull joomla@sha256:899f99bd469d0e6f6070a5456246dcb136012ab6c7dd955ac608d34bed6b212e
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.5-apache-php7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.6 MB (169572831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7672de8a668b08f69e0c626eb8dfd9349f3017c6664dccf0ddeecbf229d82ba2`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 22 Mar 2017 21:15:48 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 22 Mar 2017 21:15:49 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 21:16:10 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 22 Mar 2017 21:16:18 GMT
RUN docker-php-ext-install mysqli
# Wed, 22 Mar 2017 21:16:24 GMT
RUN docker-php-ext-install mcrypt
# Wed, 22 Mar 2017 21:16:24 GMT
VOLUME [/var/www/html]
# Wed, 22 Mar 2017 21:16:24 GMT
ENV JOOMLA_VERSION=3.6.5
# Wed, 22 Mar 2017 21:16:25 GMT
ENV JOOMLA_SHA1=3143994bb5520c249961cbb5bc297c149399f4b7
# Wed, 22 Mar 2017 21:16:32 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 22 Mar 2017 21:16:33 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 22 Mar 2017 21:16:33 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 22 Mar 2017 21:16:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 21:16:34 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:7d41ffa6b77bf7f7527b80d17735b51ba476ee1e4a62663e4148f39af53123db`  
		Last Modified: Thu, 23 Mar 2017 21:45:08 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724533c7f9e3c024f841c935fb7c989fc70d1026d35b52853d2a4a9b4f5a3e6b`  
		Last Modified: Thu, 23 Mar 2017 21:45:09 GMT  
		Size: 2.7 MB (2736589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2dd1d3ffd135a36f18f9a47296070565671fea5486f33569726b8f708a93ab5`  
		Last Modified: Thu, 23 Mar 2017 21:45:07 GMT  
		Size: 55.3 KB (55264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42aa19ff1a98f138ffe821e68b0b14128efe678975f31c7cd1a402c567af935f`  
		Last Modified: Thu, 23 Mar 2017 21:45:06 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc1266bc8d2674125830f454294eb58967111547a6d8fa81ac832d92cddee318`  
		Last Modified: Thu, 23 Mar 2017 21:45:12 GMT  
		Size: 8.7 MB (8674967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c420fa5348001165747aaaeef3e268254d9bff26d01cf033c398da1079514b18`  
		Last Modified: Thu, 23 Mar 2017 21:45:06 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13320d72c220cc470b4373a7ba043e55cf51f246403adb484bdb242c58911080`  
		Last Modified: Thu, 23 Mar 2017 21:45:07 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-apache-php7`

```console
$ docker pull joomla@sha256:899f99bd469d0e6f6070a5456246dcb136012ab6c7dd955ac608d34bed6b212e
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-apache-php7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.6 MB (169572831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7672de8a668b08f69e0c626eb8dfd9349f3017c6664dccf0ddeecbf229d82ba2`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 22 Mar 2017 21:15:48 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 22 Mar 2017 21:15:49 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 21:16:10 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 22 Mar 2017 21:16:18 GMT
RUN docker-php-ext-install mysqli
# Wed, 22 Mar 2017 21:16:24 GMT
RUN docker-php-ext-install mcrypt
# Wed, 22 Mar 2017 21:16:24 GMT
VOLUME [/var/www/html]
# Wed, 22 Mar 2017 21:16:24 GMT
ENV JOOMLA_VERSION=3.6.5
# Wed, 22 Mar 2017 21:16:25 GMT
ENV JOOMLA_SHA1=3143994bb5520c249961cbb5bc297c149399f4b7
# Wed, 22 Mar 2017 21:16:32 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 22 Mar 2017 21:16:33 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 22 Mar 2017 21:16:33 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 22 Mar 2017 21:16:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 21:16:34 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:7d41ffa6b77bf7f7527b80d17735b51ba476ee1e4a62663e4148f39af53123db`  
		Last Modified: Thu, 23 Mar 2017 21:45:08 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724533c7f9e3c024f841c935fb7c989fc70d1026d35b52853d2a4a9b4f5a3e6b`  
		Last Modified: Thu, 23 Mar 2017 21:45:09 GMT  
		Size: 2.7 MB (2736589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2dd1d3ffd135a36f18f9a47296070565671fea5486f33569726b8f708a93ab5`  
		Last Modified: Thu, 23 Mar 2017 21:45:07 GMT  
		Size: 55.3 KB (55264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42aa19ff1a98f138ffe821e68b0b14128efe678975f31c7cd1a402c567af935f`  
		Last Modified: Thu, 23 Mar 2017 21:45:06 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc1266bc8d2674125830f454294eb58967111547a6d8fa81ac832d92cddee318`  
		Last Modified: Thu, 23 Mar 2017 21:45:12 GMT  
		Size: 8.7 MB (8674967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c420fa5348001165747aaaeef3e268254d9bff26d01cf033c398da1079514b18`  
		Last Modified: Thu, 23 Mar 2017 21:45:06 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13320d72c220cc470b4373a7ba043e55cf51f246403adb484bdb242c58911080`  
		Last Modified: Thu, 23 Mar 2017 21:45:07 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache-php7`

```console
$ docker pull joomla@sha256:899f99bd469d0e6f6070a5456246dcb136012ab6c7dd955ac608d34bed6b212e
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache-php7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.6 MB (169572831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7672de8a668b08f69e0c626eb8dfd9349f3017c6664dccf0ddeecbf229d82ba2`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 22 Mar 2017 21:15:48 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 22 Mar 2017 21:15:49 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 21:16:10 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 22 Mar 2017 21:16:18 GMT
RUN docker-php-ext-install mysqli
# Wed, 22 Mar 2017 21:16:24 GMT
RUN docker-php-ext-install mcrypt
# Wed, 22 Mar 2017 21:16:24 GMT
VOLUME [/var/www/html]
# Wed, 22 Mar 2017 21:16:24 GMT
ENV JOOMLA_VERSION=3.6.5
# Wed, 22 Mar 2017 21:16:25 GMT
ENV JOOMLA_SHA1=3143994bb5520c249961cbb5bc297c149399f4b7
# Wed, 22 Mar 2017 21:16:32 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 22 Mar 2017 21:16:33 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 22 Mar 2017 21:16:33 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 22 Mar 2017 21:16:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 21:16:34 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:7d41ffa6b77bf7f7527b80d17735b51ba476ee1e4a62663e4148f39af53123db`  
		Last Modified: Thu, 23 Mar 2017 21:45:08 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724533c7f9e3c024f841c935fb7c989fc70d1026d35b52853d2a4a9b4f5a3e6b`  
		Last Modified: Thu, 23 Mar 2017 21:45:09 GMT  
		Size: 2.7 MB (2736589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2dd1d3ffd135a36f18f9a47296070565671fea5486f33569726b8f708a93ab5`  
		Last Modified: Thu, 23 Mar 2017 21:45:07 GMT  
		Size: 55.3 KB (55264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42aa19ff1a98f138ffe821e68b0b14128efe678975f31c7cd1a402c567af935f`  
		Last Modified: Thu, 23 Mar 2017 21:45:06 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc1266bc8d2674125830f454294eb58967111547a6d8fa81ac832d92cddee318`  
		Last Modified: Thu, 23 Mar 2017 21:45:12 GMT  
		Size: 8.7 MB (8674967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c420fa5348001165747aaaeef3e268254d9bff26d01cf033c398da1079514b18`  
		Last Modified: Thu, 23 Mar 2017 21:45:06 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13320d72c220cc470b4373a7ba043e55cf51f246403adb484bdb242c58911080`  
		Last Modified: Thu, 23 Mar 2017 21:45:07 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:apache-php7`

```console
$ docker pull joomla@sha256:899f99bd469d0e6f6070a5456246dcb136012ab6c7dd955ac608d34bed6b212e
```

-	Platforms:
	-	linux; amd64

### `joomla:apache-php7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.6 MB (169572831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7672de8a668b08f69e0c626eb8dfd9349f3017c6664dccf0ddeecbf229d82ba2`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 22 Mar 2017 21:15:48 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 22 Mar 2017 21:15:49 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 21:16:10 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 22 Mar 2017 21:16:18 GMT
RUN docker-php-ext-install mysqli
# Wed, 22 Mar 2017 21:16:24 GMT
RUN docker-php-ext-install mcrypt
# Wed, 22 Mar 2017 21:16:24 GMT
VOLUME [/var/www/html]
# Wed, 22 Mar 2017 21:16:24 GMT
ENV JOOMLA_VERSION=3.6.5
# Wed, 22 Mar 2017 21:16:25 GMT
ENV JOOMLA_SHA1=3143994bb5520c249961cbb5bc297c149399f4b7
# Wed, 22 Mar 2017 21:16:32 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 22 Mar 2017 21:16:33 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 22 Mar 2017 21:16:33 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 22 Mar 2017 21:16:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 21:16:34 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:7d41ffa6b77bf7f7527b80d17735b51ba476ee1e4a62663e4148f39af53123db`  
		Last Modified: Thu, 23 Mar 2017 21:45:08 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724533c7f9e3c024f841c935fb7c989fc70d1026d35b52853d2a4a9b4f5a3e6b`  
		Last Modified: Thu, 23 Mar 2017 21:45:09 GMT  
		Size: 2.7 MB (2736589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2dd1d3ffd135a36f18f9a47296070565671fea5486f33569726b8f708a93ab5`  
		Last Modified: Thu, 23 Mar 2017 21:45:07 GMT  
		Size: 55.3 KB (55264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42aa19ff1a98f138ffe821e68b0b14128efe678975f31c7cd1a402c567af935f`  
		Last Modified: Thu, 23 Mar 2017 21:45:06 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc1266bc8d2674125830f454294eb58967111547a6d8fa81ac832d92cddee318`  
		Last Modified: Thu, 23 Mar 2017 21:45:12 GMT  
		Size: 8.7 MB (8674967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c420fa5348001165747aaaeef3e268254d9bff26d01cf033c398da1079514b18`  
		Last Modified: Thu, 23 Mar 2017 21:45:06 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13320d72c220cc470b4373a7ba043e55cf51f246403adb484bdb242c58911080`  
		Last Modified: Thu, 23 Mar 2017 21:45:07 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.5-fpm`

```console
$ docker pull joomla@sha256:b8a472cfebd7462c51d5e362de7491201fb34aacbfc0f3e2eb9d66ab87ba6683
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.5-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161926304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e894c4aa22ac21c24bd313a4d0f61baea69e692abc92fad33b40ed62a1b358`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Tue, 21 Mar 2017 23:02:24 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:02:25 GMT
ENV PHP_VERSION=5.6.30
# Tue, 21 Mar 2017 23:02:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:02:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 21 Mar 2017 23:02:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:02:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:05:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:05:50 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:05:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:05:51 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:05:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 21 Mar 2017 23:05:52 GMT
EXPOSE 9000/tcp
# Tue, 21 Mar 2017 23:05:52 GMT
CMD ["php-fpm"]
# Wed, 22 Mar 2017 21:16:36 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 22 Mar 2017 21:16:58 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 22 Mar 2017 21:17:06 GMT
RUN docker-php-ext-install mysqli
# Wed, 22 Mar 2017 21:17:11 GMT
RUN docker-php-ext-install mcrypt
# Wed, 22 Mar 2017 21:17:11 GMT
VOLUME [/var/www/html]
# Wed, 22 Mar 2017 21:17:12 GMT
ENV JOOMLA_VERSION=3.6.5
# Wed, 22 Mar 2017 21:17:12 GMT
ENV JOOMLA_SHA1=3143994bb5520c249961cbb5bc297c149399f4b7
# Wed, 22 Mar 2017 21:17:19 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 22 Mar 2017 21:17:20 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 22 Mar 2017 21:17:20 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 22 Mar 2017 21:17:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 21:17:21 GMT
CMD ["php-fpm"]
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
	-	`sha256:f0b07b890a09696dcb9873012fa83f8413991a4cf616e0d02ade7d6cfc5b4403`  
		Last Modified: Wed, 22 Mar 2017 23:58:36 GMT  
		Size: 12.6 MB (12560800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc73de5dc1906c2e37b78ae91d2fe26ee3f9edef357264b7ffb128321f287bb`  
		Last Modified: Wed, 22 Mar 2017 23:58:34 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecce0da8d154d683336b89d3f15e063f5140de74cfc1340982714b439cebbda`  
		Last Modified: Wed, 22 Mar 2017 23:58:38 GMT  
		Size: 8.8 MB (8763472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0534eedb9a8b6e6a53a15de0dc13a37e05c6686b24d1e611cf720b11efd56d`  
		Last Modified: Wed, 22 Mar 2017 23:58:33 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81c7a92e026a5820f46517d3ba63a28aef79be071b862739eacc16d41ad3a7c`  
		Last Modified: Wed, 22 Mar 2017 23:58:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6ccb53ce4133c0b31c443029d377e408394136ab80787c58ee46a3ad6f83df`  
		Last Modified: Wed, 22 Mar 2017 23:58:30 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c554fefacbfc9e74abd6d4e9eed209c9b650a7b20265d82102ce47c21a552fc9`  
		Last Modified: Thu, 23 Mar 2017 21:46:39 GMT  
		Size: 2.7 MB (2718185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5798831dcac74cd0614b1ff6163dc2dffc9f4629e7d29c47ab8ae2f5afa1af4f`  
		Last Modified: Thu, 23 Mar 2017 21:46:35 GMT  
		Size: 56.9 KB (56912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c087f9e5ca523c631fd0b8aa7b05fc41bdeafe4acc8b1ce66f7e95dbc99affe4`  
		Last Modified: Thu, 23 Mar 2017 21:46:35 GMT  
		Size: 19.3 KB (19294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f3f22ea6a89892d02801344aebcf60d7152ae1f3612c7f064b41619195e7e7`  
		Last Modified: Thu, 23 Mar 2017 21:46:41 GMT  
		Size: 8.7 MB (8674972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5176c5f71619b56555b7b361187d194bbb4f888b248b16904c7dd6a84bcbf9`  
		Last Modified: Thu, 23 Mar 2017 21:46:36 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbd3096255c52e8510b1368dadfb3ab4e8ecd25b2c885ad47ce31f8d2329ce8`  
		Last Modified: Thu, 23 Mar 2017 21:46:36 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-fpm`

```console
$ docker pull joomla@sha256:b8a472cfebd7462c51d5e362de7491201fb34aacbfc0f3e2eb9d66ab87ba6683
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161926304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e894c4aa22ac21c24bd313a4d0f61baea69e692abc92fad33b40ed62a1b358`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Tue, 21 Mar 2017 23:02:24 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:02:25 GMT
ENV PHP_VERSION=5.6.30
# Tue, 21 Mar 2017 23:02:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:02:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 21 Mar 2017 23:02:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:02:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:05:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:05:50 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:05:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:05:51 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:05:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 21 Mar 2017 23:05:52 GMT
EXPOSE 9000/tcp
# Tue, 21 Mar 2017 23:05:52 GMT
CMD ["php-fpm"]
# Wed, 22 Mar 2017 21:16:36 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 22 Mar 2017 21:16:58 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 22 Mar 2017 21:17:06 GMT
RUN docker-php-ext-install mysqli
# Wed, 22 Mar 2017 21:17:11 GMT
RUN docker-php-ext-install mcrypt
# Wed, 22 Mar 2017 21:17:11 GMT
VOLUME [/var/www/html]
# Wed, 22 Mar 2017 21:17:12 GMT
ENV JOOMLA_VERSION=3.6.5
# Wed, 22 Mar 2017 21:17:12 GMT
ENV JOOMLA_SHA1=3143994bb5520c249961cbb5bc297c149399f4b7
# Wed, 22 Mar 2017 21:17:19 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 22 Mar 2017 21:17:20 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 22 Mar 2017 21:17:20 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 22 Mar 2017 21:17:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 21:17:21 GMT
CMD ["php-fpm"]
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
	-	`sha256:f0b07b890a09696dcb9873012fa83f8413991a4cf616e0d02ade7d6cfc5b4403`  
		Last Modified: Wed, 22 Mar 2017 23:58:36 GMT  
		Size: 12.6 MB (12560800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc73de5dc1906c2e37b78ae91d2fe26ee3f9edef357264b7ffb128321f287bb`  
		Last Modified: Wed, 22 Mar 2017 23:58:34 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecce0da8d154d683336b89d3f15e063f5140de74cfc1340982714b439cebbda`  
		Last Modified: Wed, 22 Mar 2017 23:58:38 GMT  
		Size: 8.8 MB (8763472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0534eedb9a8b6e6a53a15de0dc13a37e05c6686b24d1e611cf720b11efd56d`  
		Last Modified: Wed, 22 Mar 2017 23:58:33 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81c7a92e026a5820f46517d3ba63a28aef79be071b862739eacc16d41ad3a7c`  
		Last Modified: Wed, 22 Mar 2017 23:58:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6ccb53ce4133c0b31c443029d377e408394136ab80787c58ee46a3ad6f83df`  
		Last Modified: Wed, 22 Mar 2017 23:58:30 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c554fefacbfc9e74abd6d4e9eed209c9b650a7b20265d82102ce47c21a552fc9`  
		Last Modified: Thu, 23 Mar 2017 21:46:39 GMT  
		Size: 2.7 MB (2718185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5798831dcac74cd0614b1ff6163dc2dffc9f4629e7d29c47ab8ae2f5afa1af4f`  
		Last Modified: Thu, 23 Mar 2017 21:46:35 GMT  
		Size: 56.9 KB (56912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c087f9e5ca523c631fd0b8aa7b05fc41bdeafe4acc8b1ce66f7e95dbc99affe4`  
		Last Modified: Thu, 23 Mar 2017 21:46:35 GMT  
		Size: 19.3 KB (19294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f3f22ea6a89892d02801344aebcf60d7152ae1f3612c7f064b41619195e7e7`  
		Last Modified: Thu, 23 Mar 2017 21:46:41 GMT  
		Size: 8.7 MB (8674972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5176c5f71619b56555b7b361187d194bbb4f888b248b16904c7dd6a84bcbf9`  
		Last Modified: Thu, 23 Mar 2017 21:46:36 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbd3096255c52e8510b1368dadfb3ab4e8ecd25b2c885ad47ce31f8d2329ce8`  
		Last Modified: Thu, 23 Mar 2017 21:46:36 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-fpm`

```console
$ docker pull joomla@sha256:b8a472cfebd7462c51d5e362de7491201fb34aacbfc0f3e2eb9d66ab87ba6683
```

-	Platforms:
	-	linux; amd64

### `joomla:3-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161926304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e894c4aa22ac21c24bd313a4d0f61baea69e692abc92fad33b40ed62a1b358`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Tue, 21 Mar 2017 23:02:24 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:02:25 GMT
ENV PHP_VERSION=5.6.30
# Tue, 21 Mar 2017 23:02:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:02:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 21 Mar 2017 23:02:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:02:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:05:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:05:50 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:05:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:05:51 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:05:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 21 Mar 2017 23:05:52 GMT
EXPOSE 9000/tcp
# Tue, 21 Mar 2017 23:05:52 GMT
CMD ["php-fpm"]
# Wed, 22 Mar 2017 21:16:36 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 22 Mar 2017 21:16:58 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 22 Mar 2017 21:17:06 GMT
RUN docker-php-ext-install mysqli
# Wed, 22 Mar 2017 21:17:11 GMT
RUN docker-php-ext-install mcrypt
# Wed, 22 Mar 2017 21:17:11 GMT
VOLUME [/var/www/html]
# Wed, 22 Mar 2017 21:17:12 GMT
ENV JOOMLA_VERSION=3.6.5
# Wed, 22 Mar 2017 21:17:12 GMT
ENV JOOMLA_SHA1=3143994bb5520c249961cbb5bc297c149399f4b7
# Wed, 22 Mar 2017 21:17:19 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 22 Mar 2017 21:17:20 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 22 Mar 2017 21:17:20 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 22 Mar 2017 21:17:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 21:17:21 GMT
CMD ["php-fpm"]
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
	-	`sha256:f0b07b890a09696dcb9873012fa83f8413991a4cf616e0d02ade7d6cfc5b4403`  
		Last Modified: Wed, 22 Mar 2017 23:58:36 GMT  
		Size: 12.6 MB (12560800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc73de5dc1906c2e37b78ae91d2fe26ee3f9edef357264b7ffb128321f287bb`  
		Last Modified: Wed, 22 Mar 2017 23:58:34 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecce0da8d154d683336b89d3f15e063f5140de74cfc1340982714b439cebbda`  
		Last Modified: Wed, 22 Mar 2017 23:58:38 GMT  
		Size: 8.8 MB (8763472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0534eedb9a8b6e6a53a15de0dc13a37e05c6686b24d1e611cf720b11efd56d`  
		Last Modified: Wed, 22 Mar 2017 23:58:33 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81c7a92e026a5820f46517d3ba63a28aef79be071b862739eacc16d41ad3a7c`  
		Last Modified: Wed, 22 Mar 2017 23:58:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6ccb53ce4133c0b31c443029d377e408394136ab80787c58ee46a3ad6f83df`  
		Last Modified: Wed, 22 Mar 2017 23:58:30 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c554fefacbfc9e74abd6d4e9eed209c9b650a7b20265d82102ce47c21a552fc9`  
		Last Modified: Thu, 23 Mar 2017 21:46:39 GMT  
		Size: 2.7 MB (2718185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5798831dcac74cd0614b1ff6163dc2dffc9f4629e7d29c47ab8ae2f5afa1af4f`  
		Last Modified: Thu, 23 Mar 2017 21:46:35 GMT  
		Size: 56.9 KB (56912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c087f9e5ca523c631fd0b8aa7b05fc41bdeafe4acc8b1ce66f7e95dbc99affe4`  
		Last Modified: Thu, 23 Mar 2017 21:46:35 GMT  
		Size: 19.3 KB (19294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f3f22ea6a89892d02801344aebcf60d7152ae1f3612c7f064b41619195e7e7`  
		Last Modified: Thu, 23 Mar 2017 21:46:41 GMT  
		Size: 8.7 MB (8674972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5176c5f71619b56555b7b361187d194bbb4f888b248b16904c7dd6a84bcbf9`  
		Last Modified: Thu, 23 Mar 2017 21:46:36 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbd3096255c52e8510b1368dadfb3ab4e8ecd25b2c885ad47ce31f8d2329ce8`  
		Last Modified: Thu, 23 Mar 2017 21:46:36 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:fpm`

```console
$ docker pull joomla@sha256:b8a472cfebd7462c51d5e362de7491201fb34aacbfc0f3e2eb9d66ab87ba6683
```

-	Platforms:
	-	linux; amd64

### `joomla:fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161926304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e894c4aa22ac21c24bd313a4d0f61baea69e692abc92fad33b40ed62a1b358`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Tue, 21 Mar 2017 23:02:24 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:02:25 GMT
ENV PHP_VERSION=5.6.30
# Tue, 21 Mar 2017 23:02:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:02:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 21 Mar 2017 23:02:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:02:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:05:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:05:50 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:05:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:05:51 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:05:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 21 Mar 2017 23:05:52 GMT
EXPOSE 9000/tcp
# Tue, 21 Mar 2017 23:05:52 GMT
CMD ["php-fpm"]
# Wed, 22 Mar 2017 21:16:36 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 22 Mar 2017 21:16:58 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 22 Mar 2017 21:17:06 GMT
RUN docker-php-ext-install mysqli
# Wed, 22 Mar 2017 21:17:11 GMT
RUN docker-php-ext-install mcrypt
# Wed, 22 Mar 2017 21:17:11 GMT
VOLUME [/var/www/html]
# Wed, 22 Mar 2017 21:17:12 GMT
ENV JOOMLA_VERSION=3.6.5
# Wed, 22 Mar 2017 21:17:12 GMT
ENV JOOMLA_SHA1=3143994bb5520c249961cbb5bc297c149399f4b7
# Wed, 22 Mar 2017 21:17:19 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 22 Mar 2017 21:17:20 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 22 Mar 2017 21:17:20 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 22 Mar 2017 21:17:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 21:17:21 GMT
CMD ["php-fpm"]
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
	-	`sha256:f0b07b890a09696dcb9873012fa83f8413991a4cf616e0d02ade7d6cfc5b4403`  
		Last Modified: Wed, 22 Mar 2017 23:58:36 GMT  
		Size: 12.6 MB (12560800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc73de5dc1906c2e37b78ae91d2fe26ee3f9edef357264b7ffb128321f287bb`  
		Last Modified: Wed, 22 Mar 2017 23:58:34 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecce0da8d154d683336b89d3f15e063f5140de74cfc1340982714b439cebbda`  
		Last Modified: Wed, 22 Mar 2017 23:58:38 GMT  
		Size: 8.8 MB (8763472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0534eedb9a8b6e6a53a15de0dc13a37e05c6686b24d1e611cf720b11efd56d`  
		Last Modified: Wed, 22 Mar 2017 23:58:33 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81c7a92e026a5820f46517d3ba63a28aef79be071b862739eacc16d41ad3a7c`  
		Last Modified: Wed, 22 Mar 2017 23:58:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6ccb53ce4133c0b31c443029d377e408394136ab80787c58ee46a3ad6f83df`  
		Last Modified: Wed, 22 Mar 2017 23:58:30 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c554fefacbfc9e74abd6d4e9eed209c9b650a7b20265d82102ce47c21a552fc9`  
		Last Modified: Thu, 23 Mar 2017 21:46:39 GMT  
		Size: 2.7 MB (2718185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5798831dcac74cd0614b1ff6163dc2dffc9f4629e7d29c47ab8ae2f5afa1af4f`  
		Last Modified: Thu, 23 Mar 2017 21:46:35 GMT  
		Size: 56.9 KB (56912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c087f9e5ca523c631fd0b8aa7b05fc41bdeafe4acc8b1ce66f7e95dbc99affe4`  
		Last Modified: Thu, 23 Mar 2017 21:46:35 GMT  
		Size: 19.3 KB (19294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f3f22ea6a89892d02801344aebcf60d7152ae1f3612c7f064b41619195e7e7`  
		Last Modified: Thu, 23 Mar 2017 21:46:41 GMT  
		Size: 8.7 MB (8674972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5176c5f71619b56555b7b361187d194bbb4f888b248b16904c7dd6a84bcbf9`  
		Last Modified: Thu, 23 Mar 2017 21:46:36 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbd3096255c52e8510b1368dadfb3ab4e8ecd25b2c885ad47ce31f8d2329ce8`  
		Last Modified: Thu, 23 Mar 2017 21:46:36 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.5-fpm-php7`

```console
$ docker pull joomla@sha256:9e5ad37c4cce51a9aa3f496022ce0d27a0be9b0819879d4fe73f669aee35d065
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.5-fpm-php7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166140394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a0da4d2b60aed9f024c0b48981e569e8440d749d40194d227cd1040f8e1e93`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 22 Mar 2017 21:17:22 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 22 Mar 2017 21:17:45 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 22 Mar 2017 21:17:53 GMT
RUN docker-php-ext-install mysqli
# Wed, 22 Mar 2017 21:17:59 GMT
RUN docker-php-ext-install mcrypt
# Wed, 22 Mar 2017 21:17:59 GMT
VOLUME [/var/www/html]
# Wed, 22 Mar 2017 21:18:00 GMT
ENV JOOMLA_VERSION=3.6.5
# Wed, 22 Mar 2017 21:18:00 GMT
ENV JOOMLA_SHA1=3143994bb5520c249961cbb5bc297c149399f4b7
# Wed, 22 Mar 2017 21:18:08 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 22 Mar 2017 21:18:09 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 22 Mar 2017 21:18:10 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 22 Mar 2017 21:18:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 21:18:11 GMT
CMD ["php-fpm"]
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
	-	`sha256:18ce06c2383819e97cc96fc533a4f46e1c4e38cde91c43f3a0b8ea929a3c5522`  
		Last Modified: Thu, 23 Mar 2017 21:48:08 GMT  
		Size: 2.7 MB (2713097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd9c9ec128f00a69108759917d4f2d74c7020f68114da41927baee0a97c99c9`  
		Last Modified: Thu, 23 Mar 2017 21:48:05 GMT  
		Size: 55.3 KB (55257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e99d375e74b29d51823d1331b4c6bc81f7333667dd37d64370f8c9a58680c7`  
		Last Modified: Thu, 23 Mar 2017 21:48:06 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32888330fa635ecc66f6e8a7c20389ea2e17abc56b347e2e2bb03e098ef7086a`  
		Last Modified: Thu, 23 Mar 2017 21:48:13 GMT  
		Size: 8.7 MB (8674985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ca6047499c8623be3af8403718583938482638dd0361d3ce3a8392d6c8bc13`  
		Last Modified: Thu, 23 Mar 2017 21:48:05 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32204d67686467986c92fbfec3fdea5f02d3a9a4fe9884aa40c5485e5346921`  
		Last Modified: Thu, 23 Mar 2017 21:48:05 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-fpm-php7`

```console
$ docker pull joomla@sha256:9e5ad37c4cce51a9aa3f496022ce0d27a0be9b0819879d4fe73f669aee35d065
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-fpm-php7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166140394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a0da4d2b60aed9f024c0b48981e569e8440d749d40194d227cd1040f8e1e93`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 22 Mar 2017 21:17:22 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 22 Mar 2017 21:17:45 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 22 Mar 2017 21:17:53 GMT
RUN docker-php-ext-install mysqli
# Wed, 22 Mar 2017 21:17:59 GMT
RUN docker-php-ext-install mcrypt
# Wed, 22 Mar 2017 21:17:59 GMT
VOLUME [/var/www/html]
# Wed, 22 Mar 2017 21:18:00 GMT
ENV JOOMLA_VERSION=3.6.5
# Wed, 22 Mar 2017 21:18:00 GMT
ENV JOOMLA_SHA1=3143994bb5520c249961cbb5bc297c149399f4b7
# Wed, 22 Mar 2017 21:18:08 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 22 Mar 2017 21:18:09 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 22 Mar 2017 21:18:10 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 22 Mar 2017 21:18:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 21:18:11 GMT
CMD ["php-fpm"]
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
	-	`sha256:18ce06c2383819e97cc96fc533a4f46e1c4e38cde91c43f3a0b8ea929a3c5522`  
		Last Modified: Thu, 23 Mar 2017 21:48:08 GMT  
		Size: 2.7 MB (2713097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd9c9ec128f00a69108759917d4f2d74c7020f68114da41927baee0a97c99c9`  
		Last Modified: Thu, 23 Mar 2017 21:48:05 GMT  
		Size: 55.3 KB (55257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e99d375e74b29d51823d1331b4c6bc81f7333667dd37d64370f8c9a58680c7`  
		Last Modified: Thu, 23 Mar 2017 21:48:06 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32888330fa635ecc66f6e8a7c20389ea2e17abc56b347e2e2bb03e098ef7086a`  
		Last Modified: Thu, 23 Mar 2017 21:48:13 GMT  
		Size: 8.7 MB (8674985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ca6047499c8623be3af8403718583938482638dd0361d3ce3a8392d6c8bc13`  
		Last Modified: Thu, 23 Mar 2017 21:48:05 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32204d67686467986c92fbfec3fdea5f02d3a9a4fe9884aa40c5485e5346921`  
		Last Modified: Thu, 23 Mar 2017 21:48:05 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-fpm-php7`

```console
$ docker pull joomla@sha256:9e5ad37c4cce51a9aa3f496022ce0d27a0be9b0819879d4fe73f669aee35d065
```

-	Platforms:
	-	linux; amd64

### `joomla:3-fpm-php7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166140394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a0da4d2b60aed9f024c0b48981e569e8440d749d40194d227cd1040f8e1e93`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 22 Mar 2017 21:17:22 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 22 Mar 2017 21:17:45 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 22 Mar 2017 21:17:53 GMT
RUN docker-php-ext-install mysqli
# Wed, 22 Mar 2017 21:17:59 GMT
RUN docker-php-ext-install mcrypt
# Wed, 22 Mar 2017 21:17:59 GMT
VOLUME [/var/www/html]
# Wed, 22 Mar 2017 21:18:00 GMT
ENV JOOMLA_VERSION=3.6.5
# Wed, 22 Mar 2017 21:18:00 GMT
ENV JOOMLA_SHA1=3143994bb5520c249961cbb5bc297c149399f4b7
# Wed, 22 Mar 2017 21:18:08 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 22 Mar 2017 21:18:09 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 22 Mar 2017 21:18:10 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 22 Mar 2017 21:18:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 21:18:11 GMT
CMD ["php-fpm"]
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
	-	`sha256:18ce06c2383819e97cc96fc533a4f46e1c4e38cde91c43f3a0b8ea929a3c5522`  
		Last Modified: Thu, 23 Mar 2017 21:48:08 GMT  
		Size: 2.7 MB (2713097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd9c9ec128f00a69108759917d4f2d74c7020f68114da41927baee0a97c99c9`  
		Last Modified: Thu, 23 Mar 2017 21:48:05 GMT  
		Size: 55.3 KB (55257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e99d375e74b29d51823d1331b4c6bc81f7333667dd37d64370f8c9a58680c7`  
		Last Modified: Thu, 23 Mar 2017 21:48:06 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32888330fa635ecc66f6e8a7c20389ea2e17abc56b347e2e2bb03e098ef7086a`  
		Last Modified: Thu, 23 Mar 2017 21:48:13 GMT  
		Size: 8.7 MB (8674985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ca6047499c8623be3af8403718583938482638dd0361d3ce3a8392d6c8bc13`  
		Last Modified: Thu, 23 Mar 2017 21:48:05 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32204d67686467986c92fbfec3fdea5f02d3a9a4fe9884aa40c5485e5346921`  
		Last Modified: Thu, 23 Mar 2017 21:48:05 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:fpm-php7`

```console
$ docker pull joomla@sha256:9e5ad37c4cce51a9aa3f496022ce0d27a0be9b0819879d4fe73f669aee35d065
```

-	Platforms:
	-	linux; amd64

### `joomla:fpm-php7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166140394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a0da4d2b60aed9f024c0b48981e569e8440d749d40194d227cd1040f8e1e93`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 22 Mar 2017 21:17:22 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 22 Mar 2017 21:17:45 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 22 Mar 2017 21:17:53 GMT
RUN docker-php-ext-install mysqli
# Wed, 22 Mar 2017 21:17:59 GMT
RUN docker-php-ext-install mcrypt
# Wed, 22 Mar 2017 21:17:59 GMT
VOLUME [/var/www/html]
# Wed, 22 Mar 2017 21:18:00 GMT
ENV JOOMLA_VERSION=3.6.5
# Wed, 22 Mar 2017 21:18:00 GMT
ENV JOOMLA_SHA1=3143994bb5520c249961cbb5bc297c149399f4b7
# Wed, 22 Mar 2017 21:18:08 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 22 Mar 2017 21:18:09 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 22 Mar 2017 21:18:10 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 22 Mar 2017 21:18:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 21:18:11 GMT
CMD ["php-fpm"]
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
	-	`sha256:18ce06c2383819e97cc96fc533a4f46e1c4e38cde91c43f3a0b8ea929a3c5522`  
		Last Modified: Thu, 23 Mar 2017 21:48:08 GMT  
		Size: 2.7 MB (2713097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd9c9ec128f00a69108759917d4f2d74c7020f68114da41927baee0a97c99c9`  
		Last Modified: Thu, 23 Mar 2017 21:48:05 GMT  
		Size: 55.3 KB (55257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e99d375e74b29d51823d1331b4c6bc81f7333667dd37d64370f8c9a58680c7`  
		Last Modified: Thu, 23 Mar 2017 21:48:06 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32888330fa635ecc66f6e8a7c20389ea2e17abc56b347e2e2bb03e098ef7086a`  
		Last Modified: Thu, 23 Mar 2017 21:48:13 GMT  
		Size: 8.7 MB (8674985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ca6047499c8623be3af8403718583938482638dd0361d3ce3a8392d6c8bc13`  
		Last Modified: Thu, 23 Mar 2017 21:48:05 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32204d67686467986c92fbfec3fdea5f02d3a9a4fe9884aa40c5485e5346921`  
		Last Modified: Thu, 23 Mar 2017 21:48:05 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
