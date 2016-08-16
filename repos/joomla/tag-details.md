<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `joomla`

-	[`joomla:3.6.2-apache`](#joomla362-apache)
-	[`joomla:3.6-apache`](#joomla36-apache)
-	[`joomla:3-apache`](#joomla3-apache)
-	[`joomla:apache`](#joomlaapache)
-	[`joomla:3.6.2`](#joomla362)
-	[`joomla:3.6`](#joomla36)
-	[`joomla:3`](#joomla3)
-	[`joomla:latest`](#joomlalatest)
-	[`joomla:3.6.2-apache-php7`](#joomla362-apache-php7)
-	[`joomla:3.6-apache-php7`](#joomla36-apache-php7)
-	[`joomla:3-apache-php7`](#joomla3-apache-php7)
-	[`joomla:apache-php7`](#joomlaapache-php7)
-	[`joomla:3.6.2-fpm`](#joomla362-fpm)
-	[`joomla:3.6-fpm`](#joomla36-fpm)
-	[`joomla:3-fpm`](#joomla3-fpm)
-	[`joomla:fpm`](#joomlafpm)
-	[`joomla:3.6.2-fpm-php7`](#joomla362-fpm-php7)
-	[`joomla:3.6-fpm-php7`](#joomla36-fpm-php7)
-	[`joomla:3-fpm-php7`](#joomla3-fpm-php7)
-	[`joomla:fpm-php7`](#joomlafpm-php7)

## `joomla:3.6.2-apache`

**does not exist** (yet?)

## `joomla:3.6-apache`

```console
$ docker pull joomla@sha256:4eb7c1694397968cbe2ec98128ea18f9c623eb681263a6d244f7761b0b2c9f89
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172043009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2d70eacfb514f094e2b7e9ef1c669c8e9369b6afcb71af883c0f275fe25ca50`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 17:45:34 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Thu, 11 Aug 2016 17:45:36 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:47:16 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Thu, 11 Aug 2016 17:47:33 GMT
RUN docker-php-ext-install mysqli
# Thu, 11 Aug 2016 17:47:40 GMT
VOLUME [/var/www/html]
# Tue, 16 Aug 2016 16:44:58 GMT
ENV JOOMLA_VERSION=3.6.2
# Tue, 16 Aug 2016 16:44:59 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Tue, 16 Aug 2016 16:45:10 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 16 Aug 2016 16:45:12 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Tue, 16 Aug 2016 16:45:13 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Tue, 16 Aug 2016 16:45:14 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 16 Aug 2016 16:45:16 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:ef33b8b081b704370ce11a461aba458934d3e7ad38ce7d8d5d3d31349ebe9bf5`  
		Last Modified: Thu, 11 Aug 2016 17:48:15 GMT  
		Size: 294.0 B
	-	`sha256:6ff65e0631a88db704c90ea735612fa771c3277c08312b676d97de30d7eee52a`  
		Last Modified: Thu, 11 Aug 2016 17:48:15 GMT  
		Size: 2.8 MB (2840941 bytes)
	-	`sha256:71c289aa4f291d508b46ee651309851119973b85dc468a4d2350a3d3d21f3b5d`  
		Last Modified: Thu, 11 Aug 2016 17:48:11 GMT  
		Size: 265.1 KB (265067 bytes)
	-	`sha256:a63a810207c43a9335b7753b9c57ecd24793cadcd75ff7141809362790124b67`  
		Last Modified: Tue, 16 Aug 2016 16:46:31 GMT  
		Size: 8.4 MB (8351887 bytes)
	-	`sha256:e1b0f53a70430abdc9e725dbf1bfde10838f17dd06b26349bdce36fbbe9f41c1`  
		Last Modified: Tue, 16 Aug 2016 16:46:26 GMT  
		Size: 1.2 KB (1165 bytes)
	-	`sha256:1807ba8d6271bc1694bce7707081cd7971ad9e71405503488e1c075d29b9ba31`  
		Last Modified: Tue, 16 Aug 2016 16:46:26 GMT  
		Size: 606.0 B

## `joomla:3-apache`

```console
$ docker pull joomla@sha256:4eb7c1694397968cbe2ec98128ea18f9c623eb681263a6d244f7761b0b2c9f89
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172043009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2d70eacfb514f094e2b7e9ef1c669c8e9369b6afcb71af883c0f275fe25ca50`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 17:45:34 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Thu, 11 Aug 2016 17:45:36 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:47:16 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Thu, 11 Aug 2016 17:47:33 GMT
RUN docker-php-ext-install mysqli
# Thu, 11 Aug 2016 17:47:40 GMT
VOLUME [/var/www/html]
# Tue, 16 Aug 2016 16:44:58 GMT
ENV JOOMLA_VERSION=3.6.2
# Tue, 16 Aug 2016 16:44:59 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Tue, 16 Aug 2016 16:45:10 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 16 Aug 2016 16:45:12 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Tue, 16 Aug 2016 16:45:13 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Tue, 16 Aug 2016 16:45:14 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 16 Aug 2016 16:45:16 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:ef33b8b081b704370ce11a461aba458934d3e7ad38ce7d8d5d3d31349ebe9bf5`  
		Last Modified: Thu, 11 Aug 2016 17:48:15 GMT  
		Size: 294.0 B
	-	`sha256:6ff65e0631a88db704c90ea735612fa771c3277c08312b676d97de30d7eee52a`  
		Last Modified: Thu, 11 Aug 2016 17:48:15 GMT  
		Size: 2.8 MB (2840941 bytes)
	-	`sha256:71c289aa4f291d508b46ee651309851119973b85dc468a4d2350a3d3d21f3b5d`  
		Last Modified: Thu, 11 Aug 2016 17:48:11 GMT  
		Size: 265.1 KB (265067 bytes)
	-	`sha256:a63a810207c43a9335b7753b9c57ecd24793cadcd75ff7141809362790124b67`  
		Last Modified: Tue, 16 Aug 2016 16:46:31 GMT  
		Size: 8.4 MB (8351887 bytes)
	-	`sha256:e1b0f53a70430abdc9e725dbf1bfde10838f17dd06b26349bdce36fbbe9f41c1`  
		Last Modified: Tue, 16 Aug 2016 16:46:26 GMT  
		Size: 1.2 KB (1165 bytes)
	-	`sha256:1807ba8d6271bc1694bce7707081cd7971ad9e71405503488e1c075d29b9ba31`  
		Last Modified: Tue, 16 Aug 2016 16:46:26 GMT  
		Size: 606.0 B

## `joomla:apache`

```console
$ docker pull joomla@sha256:f03b46adf14007472bcb8e58a49b019caebd2ce213b4b97d5541bd8c4de96c7e
```

-	Platforms:
	-	linux; amd64

### `joomla:apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.2 MB (172169695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9847b9b85d8e81f36cc59a900e12c010c254d7e52f597d890aeb54f8ce45f627`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 17:45:34 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Thu, 11 Aug 2016 17:45:36 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:47:16 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Thu, 11 Aug 2016 17:47:33 GMT
RUN docker-php-ext-install mysqli
# Thu, 11 Aug 2016 17:47:40 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 17:47:41 GMT
ENV JOOMLA_VERSION=3.6.0
# Thu, 11 Aug 2016 17:47:42 GMT
ENV JOOMLA_SHA1=9e71357f689218705b15e653b7cdd57b498d4fa4
# Thu, 11 Aug 2016 17:47:51 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Thu, 11 Aug 2016 17:47:55 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Thu, 11 Aug 2016 17:47:57 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Thu, 11 Aug 2016 17:47:58 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 17:47:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:ef33b8b081b704370ce11a461aba458934d3e7ad38ce7d8d5d3d31349ebe9bf5`  
		Last Modified: Thu, 11 Aug 2016 17:48:15 GMT  
		Size: 294.0 B
	-	`sha256:6ff65e0631a88db704c90ea735612fa771c3277c08312b676d97de30d7eee52a`  
		Last Modified: Thu, 11 Aug 2016 17:48:15 GMT  
		Size: 2.8 MB (2840941 bytes)
	-	`sha256:71c289aa4f291d508b46ee651309851119973b85dc468a4d2350a3d3d21f3b5d`  
		Last Modified: Thu, 11 Aug 2016 17:48:11 GMT  
		Size: 265.1 KB (265067 bytes)
	-	`sha256:c873dfd634013f5d2730212eafab41ee14e1892c285c5e56cb4f7ab076c852a9`  
		Last Modified: Thu, 11 Aug 2016 17:48:15 GMT  
		Size: 8.5 MB (8478575 bytes)
	-	`sha256:a75ca69af62c4bb3de5f642528f56bf6cfe537bab4826f02430d0c81612c04cc`  
		Last Modified: Thu, 11 Aug 2016 17:48:11 GMT  
		Size: 1.2 KB (1164 bytes)
	-	`sha256:51922e67c90279597ce14c43b45b179aeba5ee0f6c685052c994db7877da530e`  
		Last Modified: Thu, 11 Aug 2016 17:48:11 GMT  
		Size: 605.0 B

## `joomla:3.6.2`

```console
$ docker pull joomla@sha256:4eb7c1694397968cbe2ec98128ea18f9c623eb681263a6d244f7761b0b2c9f89
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172043009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2d70eacfb514f094e2b7e9ef1c669c8e9369b6afcb71af883c0f275fe25ca50`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 17:45:34 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Thu, 11 Aug 2016 17:45:36 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:47:16 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Thu, 11 Aug 2016 17:47:33 GMT
RUN docker-php-ext-install mysqli
# Thu, 11 Aug 2016 17:47:40 GMT
VOLUME [/var/www/html]
# Tue, 16 Aug 2016 16:44:58 GMT
ENV JOOMLA_VERSION=3.6.2
# Tue, 16 Aug 2016 16:44:59 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Tue, 16 Aug 2016 16:45:10 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 16 Aug 2016 16:45:12 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Tue, 16 Aug 2016 16:45:13 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Tue, 16 Aug 2016 16:45:14 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 16 Aug 2016 16:45:16 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:ef33b8b081b704370ce11a461aba458934d3e7ad38ce7d8d5d3d31349ebe9bf5`  
		Last Modified: Thu, 11 Aug 2016 17:48:15 GMT  
		Size: 294.0 B
	-	`sha256:6ff65e0631a88db704c90ea735612fa771c3277c08312b676d97de30d7eee52a`  
		Last Modified: Thu, 11 Aug 2016 17:48:15 GMT  
		Size: 2.8 MB (2840941 bytes)
	-	`sha256:71c289aa4f291d508b46ee651309851119973b85dc468a4d2350a3d3d21f3b5d`  
		Last Modified: Thu, 11 Aug 2016 17:48:11 GMT  
		Size: 265.1 KB (265067 bytes)
	-	`sha256:a63a810207c43a9335b7753b9c57ecd24793cadcd75ff7141809362790124b67`  
		Last Modified: Tue, 16 Aug 2016 16:46:31 GMT  
		Size: 8.4 MB (8351887 bytes)
	-	`sha256:e1b0f53a70430abdc9e725dbf1bfde10838f17dd06b26349bdce36fbbe9f41c1`  
		Last Modified: Tue, 16 Aug 2016 16:46:26 GMT  
		Size: 1.2 KB (1165 bytes)
	-	`sha256:1807ba8d6271bc1694bce7707081cd7971ad9e71405503488e1c075d29b9ba31`  
		Last Modified: Tue, 16 Aug 2016 16:46:26 GMT  
		Size: 606.0 B

## `joomla:3.6`

```console
$ docker pull joomla@sha256:f03b46adf14007472bcb8e58a49b019caebd2ce213b4b97d5541bd8c4de96c7e
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.2 MB (172169695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9847b9b85d8e81f36cc59a900e12c010c254d7e52f597d890aeb54f8ce45f627`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 17:45:34 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Thu, 11 Aug 2016 17:45:36 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:47:16 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Thu, 11 Aug 2016 17:47:33 GMT
RUN docker-php-ext-install mysqli
# Thu, 11 Aug 2016 17:47:40 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 17:47:41 GMT
ENV JOOMLA_VERSION=3.6.0
# Thu, 11 Aug 2016 17:47:42 GMT
ENV JOOMLA_SHA1=9e71357f689218705b15e653b7cdd57b498d4fa4
# Thu, 11 Aug 2016 17:47:51 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Thu, 11 Aug 2016 17:47:55 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Thu, 11 Aug 2016 17:47:57 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Thu, 11 Aug 2016 17:47:58 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 17:47:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:ef33b8b081b704370ce11a461aba458934d3e7ad38ce7d8d5d3d31349ebe9bf5`  
		Last Modified: Thu, 11 Aug 2016 17:48:15 GMT  
		Size: 294.0 B
	-	`sha256:6ff65e0631a88db704c90ea735612fa771c3277c08312b676d97de30d7eee52a`  
		Last Modified: Thu, 11 Aug 2016 17:48:15 GMT  
		Size: 2.8 MB (2840941 bytes)
	-	`sha256:71c289aa4f291d508b46ee651309851119973b85dc468a4d2350a3d3d21f3b5d`  
		Last Modified: Thu, 11 Aug 2016 17:48:11 GMT  
		Size: 265.1 KB (265067 bytes)
	-	`sha256:c873dfd634013f5d2730212eafab41ee14e1892c285c5e56cb4f7ab076c852a9`  
		Last Modified: Thu, 11 Aug 2016 17:48:15 GMT  
		Size: 8.5 MB (8478575 bytes)
	-	`sha256:a75ca69af62c4bb3de5f642528f56bf6cfe537bab4826f02430d0c81612c04cc`  
		Last Modified: Thu, 11 Aug 2016 17:48:11 GMT  
		Size: 1.2 KB (1164 bytes)
	-	`sha256:51922e67c90279597ce14c43b45b179aeba5ee0f6c685052c994db7877da530e`  
		Last Modified: Thu, 11 Aug 2016 17:48:11 GMT  
		Size: 605.0 B

## `joomla:3`

```console
$ docker pull joomla@sha256:4eb7c1694397968cbe2ec98128ea18f9c623eb681263a6d244f7761b0b2c9f89
```

-	Platforms:
	-	linux; amd64

### `joomla:3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172043009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2d70eacfb514f094e2b7e9ef1c669c8e9369b6afcb71af883c0f275fe25ca50`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 17:45:34 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Thu, 11 Aug 2016 17:45:36 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:47:16 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Thu, 11 Aug 2016 17:47:33 GMT
RUN docker-php-ext-install mysqli
# Thu, 11 Aug 2016 17:47:40 GMT
VOLUME [/var/www/html]
# Tue, 16 Aug 2016 16:44:58 GMT
ENV JOOMLA_VERSION=3.6.2
# Tue, 16 Aug 2016 16:44:59 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Tue, 16 Aug 2016 16:45:10 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 16 Aug 2016 16:45:12 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Tue, 16 Aug 2016 16:45:13 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Tue, 16 Aug 2016 16:45:14 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 16 Aug 2016 16:45:16 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:ef33b8b081b704370ce11a461aba458934d3e7ad38ce7d8d5d3d31349ebe9bf5`  
		Last Modified: Thu, 11 Aug 2016 17:48:15 GMT  
		Size: 294.0 B
	-	`sha256:6ff65e0631a88db704c90ea735612fa771c3277c08312b676d97de30d7eee52a`  
		Last Modified: Thu, 11 Aug 2016 17:48:15 GMT  
		Size: 2.8 MB (2840941 bytes)
	-	`sha256:71c289aa4f291d508b46ee651309851119973b85dc468a4d2350a3d3d21f3b5d`  
		Last Modified: Thu, 11 Aug 2016 17:48:11 GMT  
		Size: 265.1 KB (265067 bytes)
	-	`sha256:a63a810207c43a9335b7753b9c57ecd24793cadcd75ff7141809362790124b67`  
		Last Modified: Tue, 16 Aug 2016 16:46:31 GMT  
		Size: 8.4 MB (8351887 bytes)
	-	`sha256:e1b0f53a70430abdc9e725dbf1bfde10838f17dd06b26349bdce36fbbe9f41c1`  
		Last Modified: Tue, 16 Aug 2016 16:46:26 GMT  
		Size: 1.2 KB (1165 bytes)
	-	`sha256:1807ba8d6271bc1694bce7707081cd7971ad9e71405503488e1c075d29b9ba31`  
		Last Modified: Tue, 16 Aug 2016 16:46:26 GMT  
		Size: 606.0 B

## `joomla:latest`

```console
$ docker pull joomla@sha256:4eb7c1694397968cbe2ec98128ea18f9c623eb681263a6d244f7761b0b2c9f89
```

-	Platforms:
	-	linux; amd64

### `joomla:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172043009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2d70eacfb514f094e2b7e9ef1c669c8e9369b6afcb71af883c0f275fe25ca50`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 17:45:34 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Thu, 11 Aug 2016 17:45:36 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:47:16 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Thu, 11 Aug 2016 17:47:33 GMT
RUN docker-php-ext-install mysqli
# Thu, 11 Aug 2016 17:47:40 GMT
VOLUME [/var/www/html]
# Tue, 16 Aug 2016 16:44:58 GMT
ENV JOOMLA_VERSION=3.6.2
# Tue, 16 Aug 2016 16:44:59 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Tue, 16 Aug 2016 16:45:10 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 16 Aug 2016 16:45:12 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Tue, 16 Aug 2016 16:45:13 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Tue, 16 Aug 2016 16:45:14 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 16 Aug 2016 16:45:16 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:ef33b8b081b704370ce11a461aba458934d3e7ad38ce7d8d5d3d31349ebe9bf5`  
		Last Modified: Thu, 11 Aug 2016 17:48:15 GMT  
		Size: 294.0 B
	-	`sha256:6ff65e0631a88db704c90ea735612fa771c3277c08312b676d97de30d7eee52a`  
		Last Modified: Thu, 11 Aug 2016 17:48:15 GMT  
		Size: 2.8 MB (2840941 bytes)
	-	`sha256:71c289aa4f291d508b46ee651309851119973b85dc468a4d2350a3d3d21f3b5d`  
		Last Modified: Thu, 11 Aug 2016 17:48:11 GMT  
		Size: 265.1 KB (265067 bytes)
	-	`sha256:a63a810207c43a9335b7753b9c57ecd24793cadcd75ff7141809362790124b67`  
		Last Modified: Tue, 16 Aug 2016 16:46:31 GMT  
		Size: 8.4 MB (8351887 bytes)
	-	`sha256:e1b0f53a70430abdc9e725dbf1bfde10838f17dd06b26349bdce36fbbe9f41c1`  
		Last Modified: Tue, 16 Aug 2016 16:46:26 GMT  
		Size: 1.2 KB (1165 bytes)
	-	`sha256:1807ba8d6271bc1694bce7707081cd7971ad9e71405503488e1c075d29b9ba31`  
		Last Modified: Tue, 16 Aug 2016 16:46:26 GMT  
		Size: 606.0 B

## `joomla:3.6.2-apache-php7`

```console
$ docker pull joomla@sha256:6c8e8458ce8e03b285e31f7a4ab16148d84637dc1952b004a1e4f30ea23046e8
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.2-apache-php7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175647497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80e8f779478f1600909e8f0b3fab2fd9f28a67b514ba26c9838f565fe17130d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 19:34:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_VERSION=7.0.9
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Wed, 10 Aug 2016 19:34:57 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:34:59 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:34:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:40:17 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:40:19 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 19:40:19 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 17:56:22 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Thu, 11 Aug 2016 17:56:24 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:57:50 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Thu, 11 Aug 2016 17:58:07 GMT
RUN docker-php-ext-install mysqli
# Thu, 11 Aug 2016 17:58:08 GMT
VOLUME [/var/www/html]
# Tue, 16 Aug 2016 16:45:18 GMT
ENV JOOMLA_VERSION=3.6.2
# Tue, 16 Aug 2016 16:45:19 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Tue, 16 Aug 2016 16:45:29 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 16 Aug 2016 16:45:31 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Tue, 16 Aug 2016 16:45:32 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Tue, 16 Aug 2016 16:45:33 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 16 Aug 2016 16:45:34 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:2a087b15ae9141b4fa5f420ec8e70def40a208486af2bebf6da4df61e57fbf85`  
		Last Modified: Wed, 10 Aug 2016 21:31:27 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5569e4a9586075be8d4cfc27dc08f324d057c5b210852a5d3c0f0fef9dc08d71`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 489.0 B
	-	`sha256:0920e679c7681863aa1694770549038a54e674945f243a2a72f233f20525813e`  
		Last Modified: Wed, 10 Aug 2016 21:31:33 GMT  
		Size: 20.2 MB (20175580 bytes)
	-	`sha256:a59fc2a253f2624b2149a9cc2a7d4e5752a96f55f91eeef86c079459a92244d1`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 1.8 KB (1833 bytes)
	-	`sha256:859330c5aa7cd540469c8f8d8d8d3f9937f03d9726c0b1d8a238cdc3ec7c7312`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 584.0 B
	-	`sha256:84c4bd625ce3d3dc48c439182d6c21611d9491d92eb45f6dec39de73e6e66061`  
		Last Modified: Thu, 11 Aug 2016 17:58:37 GMT  
		Size: 294.0 B
	-	`sha256:37fb1541a020d704b8f20e78ad675b95419adc502cd0478f62cc26cbeaf5f268`  
		Last Modified: Thu, 11 Aug 2016 17:58:35 GMT  
		Size: 2.8 MB (2817504 bytes)
	-	`sha256:7f048f891ba506378a205e11f441ed361802d13a62fcc42a19e2adb4ef717088`  
		Last Modified: Thu, 11 Aug 2016 17:58:35 GMT  
		Size: 257.3 KB (257344 bytes)
	-	`sha256:9031de90f1b519dce4469089278b5352b36c680583c7e9f7518b886c294ee866`  
		Last Modified: Tue, 16 Aug 2016 16:48:55 GMT  
		Size: 8.4 MB (8351908 bytes)
	-	`sha256:3c41d327ffb8646a48f3e39b00808772e696b81887c56a17a4b9f1d57d5588a8`  
		Last Modified: Tue, 16 Aug 2016 16:48:52 GMT  
		Size: 1.2 KB (1165 bytes)
	-	`sha256:b87129ed92eba13d61ac4e6578a1b45c30661ee8830881298ff26b0f8a4dafad`  
		Last Modified: Tue, 16 Aug 2016 16:48:52 GMT  
		Size: 605.0 B

## `joomla:3.6-apache-php7`

```console
$ docker pull joomla@sha256:5770d862cbf24a8279325f87d5eeccfc797271a17bec69ab6490884509743fca
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-apache-php7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.8 MB (175774166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51e85bbf65a0be554be62705a2b595fb5a9dbd0c3972047b10038a385e2e9910`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 19:34:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_VERSION=7.0.9
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Wed, 10 Aug 2016 19:34:57 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:34:59 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:34:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:40:17 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:40:19 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 19:40:19 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 17:56:22 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Thu, 11 Aug 2016 17:56:24 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:57:50 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Thu, 11 Aug 2016 17:58:07 GMT
RUN docker-php-ext-install mysqli
# Thu, 11 Aug 2016 17:58:08 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 17:58:09 GMT
ENV JOOMLA_VERSION=3.6.0
# Thu, 11 Aug 2016 17:58:10 GMT
ENV JOOMLA_SHA1=9e71357f689218705b15e653b7cdd57b498d4fa4
# Thu, 11 Aug 2016 17:58:19 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Thu, 11 Aug 2016 17:58:20 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Thu, 11 Aug 2016 17:58:22 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Thu, 11 Aug 2016 17:58:23 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 17:58:23 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:2a087b15ae9141b4fa5f420ec8e70def40a208486af2bebf6da4df61e57fbf85`  
		Last Modified: Wed, 10 Aug 2016 21:31:27 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5569e4a9586075be8d4cfc27dc08f324d057c5b210852a5d3c0f0fef9dc08d71`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 489.0 B
	-	`sha256:0920e679c7681863aa1694770549038a54e674945f243a2a72f233f20525813e`  
		Last Modified: Wed, 10 Aug 2016 21:31:33 GMT  
		Size: 20.2 MB (20175580 bytes)
	-	`sha256:a59fc2a253f2624b2149a9cc2a7d4e5752a96f55f91eeef86c079459a92244d1`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 1.8 KB (1833 bytes)
	-	`sha256:859330c5aa7cd540469c8f8d8d8d3f9937f03d9726c0b1d8a238cdc3ec7c7312`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 584.0 B
	-	`sha256:84c4bd625ce3d3dc48c439182d6c21611d9491d92eb45f6dec39de73e6e66061`  
		Last Modified: Thu, 11 Aug 2016 17:58:37 GMT  
		Size: 294.0 B
	-	`sha256:37fb1541a020d704b8f20e78ad675b95419adc502cd0478f62cc26cbeaf5f268`  
		Last Modified: Thu, 11 Aug 2016 17:58:35 GMT  
		Size: 2.8 MB (2817504 bytes)
	-	`sha256:7f048f891ba506378a205e11f441ed361802d13a62fcc42a19e2adb4ef717088`  
		Last Modified: Thu, 11 Aug 2016 17:58:35 GMT  
		Size: 257.3 KB (257344 bytes)
	-	`sha256:e66c440f7ba2b5b25e273ca2258304e775fb96ce8d82235a2bda86f389764065`  
		Last Modified: Thu, 11 Aug 2016 17:58:38 GMT  
		Size: 8.5 MB (8478580 bytes)
	-	`sha256:c010258de8d4b96a60a647dc1f06b09dfc3872839ab00c57556e580dae92aebb`  
		Last Modified: Thu, 11 Aug 2016 17:58:34 GMT  
		Size: 1.2 KB (1164 bytes)
	-	`sha256:d5f542ec2c47ee8d18e5764a94bae70f46f3ca94a4579260d6df0bb375088142`  
		Last Modified: Thu, 11 Aug 2016 17:58:34 GMT  
		Size: 603.0 B

## `joomla:3-apache-php7`

```console
$ docker pull joomla@sha256:6c8e8458ce8e03b285e31f7a4ab16148d84637dc1952b004a1e4f30ea23046e8
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache-php7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175647497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80e8f779478f1600909e8f0b3fab2fd9f28a67b514ba26c9838f565fe17130d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 19:34:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_VERSION=7.0.9
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Wed, 10 Aug 2016 19:34:57 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:34:59 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:34:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:40:17 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:40:19 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 19:40:19 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 17:56:22 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Thu, 11 Aug 2016 17:56:24 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:57:50 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Thu, 11 Aug 2016 17:58:07 GMT
RUN docker-php-ext-install mysqli
# Thu, 11 Aug 2016 17:58:08 GMT
VOLUME [/var/www/html]
# Tue, 16 Aug 2016 16:45:18 GMT
ENV JOOMLA_VERSION=3.6.2
# Tue, 16 Aug 2016 16:45:19 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Tue, 16 Aug 2016 16:45:29 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 16 Aug 2016 16:45:31 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Tue, 16 Aug 2016 16:45:32 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Tue, 16 Aug 2016 16:45:33 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 16 Aug 2016 16:45:34 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:2a087b15ae9141b4fa5f420ec8e70def40a208486af2bebf6da4df61e57fbf85`  
		Last Modified: Wed, 10 Aug 2016 21:31:27 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5569e4a9586075be8d4cfc27dc08f324d057c5b210852a5d3c0f0fef9dc08d71`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 489.0 B
	-	`sha256:0920e679c7681863aa1694770549038a54e674945f243a2a72f233f20525813e`  
		Last Modified: Wed, 10 Aug 2016 21:31:33 GMT  
		Size: 20.2 MB (20175580 bytes)
	-	`sha256:a59fc2a253f2624b2149a9cc2a7d4e5752a96f55f91eeef86c079459a92244d1`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 1.8 KB (1833 bytes)
	-	`sha256:859330c5aa7cd540469c8f8d8d8d3f9937f03d9726c0b1d8a238cdc3ec7c7312`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 584.0 B
	-	`sha256:84c4bd625ce3d3dc48c439182d6c21611d9491d92eb45f6dec39de73e6e66061`  
		Last Modified: Thu, 11 Aug 2016 17:58:37 GMT  
		Size: 294.0 B
	-	`sha256:37fb1541a020d704b8f20e78ad675b95419adc502cd0478f62cc26cbeaf5f268`  
		Last Modified: Thu, 11 Aug 2016 17:58:35 GMT  
		Size: 2.8 MB (2817504 bytes)
	-	`sha256:7f048f891ba506378a205e11f441ed361802d13a62fcc42a19e2adb4ef717088`  
		Last Modified: Thu, 11 Aug 2016 17:58:35 GMT  
		Size: 257.3 KB (257344 bytes)
	-	`sha256:9031de90f1b519dce4469089278b5352b36c680583c7e9f7518b886c294ee866`  
		Last Modified: Tue, 16 Aug 2016 16:48:55 GMT  
		Size: 8.4 MB (8351908 bytes)
	-	`sha256:3c41d327ffb8646a48f3e39b00808772e696b81887c56a17a4b9f1d57d5588a8`  
		Last Modified: Tue, 16 Aug 2016 16:48:52 GMT  
		Size: 1.2 KB (1165 bytes)
	-	`sha256:b87129ed92eba13d61ac4e6578a1b45c30661ee8830881298ff26b0f8a4dafad`  
		Last Modified: Tue, 16 Aug 2016 16:48:52 GMT  
		Size: 605.0 B

## `joomla:apache-php7`

```console
$ docker pull joomla@sha256:5770d862cbf24a8279325f87d5eeccfc797271a17bec69ab6490884509743fca
```

-	Platforms:
	-	linux; amd64

### `joomla:apache-php7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.8 MB (175774166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51e85bbf65a0be554be62705a2b595fb5a9dbd0c3972047b10038a385e2e9910`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 19:34:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_VERSION=7.0.9
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Wed, 10 Aug 2016 19:34:57 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:34:59 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:34:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:40:17 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:40:19 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 19:40:19 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 17:56:22 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Thu, 11 Aug 2016 17:56:24 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:57:50 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Thu, 11 Aug 2016 17:58:07 GMT
RUN docker-php-ext-install mysqli
# Thu, 11 Aug 2016 17:58:08 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 17:58:09 GMT
ENV JOOMLA_VERSION=3.6.0
# Thu, 11 Aug 2016 17:58:10 GMT
ENV JOOMLA_SHA1=9e71357f689218705b15e653b7cdd57b498d4fa4
# Thu, 11 Aug 2016 17:58:19 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Thu, 11 Aug 2016 17:58:20 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Thu, 11 Aug 2016 17:58:22 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Thu, 11 Aug 2016 17:58:23 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 17:58:23 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:2a087b15ae9141b4fa5f420ec8e70def40a208486af2bebf6da4df61e57fbf85`  
		Last Modified: Wed, 10 Aug 2016 21:31:27 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5569e4a9586075be8d4cfc27dc08f324d057c5b210852a5d3c0f0fef9dc08d71`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 489.0 B
	-	`sha256:0920e679c7681863aa1694770549038a54e674945f243a2a72f233f20525813e`  
		Last Modified: Wed, 10 Aug 2016 21:31:33 GMT  
		Size: 20.2 MB (20175580 bytes)
	-	`sha256:a59fc2a253f2624b2149a9cc2a7d4e5752a96f55f91eeef86c079459a92244d1`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 1.8 KB (1833 bytes)
	-	`sha256:859330c5aa7cd540469c8f8d8d8d3f9937f03d9726c0b1d8a238cdc3ec7c7312`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 584.0 B
	-	`sha256:84c4bd625ce3d3dc48c439182d6c21611d9491d92eb45f6dec39de73e6e66061`  
		Last Modified: Thu, 11 Aug 2016 17:58:37 GMT  
		Size: 294.0 B
	-	`sha256:37fb1541a020d704b8f20e78ad675b95419adc502cd0478f62cc26cbeaf5f268`  
		Last Modified: Thu, 11 Aug 2016 17:58:35 GMT  
		Size: 2.8 MB (2817504 bytes)
	-	`sha256:7f048f891ba506378a205e11f441ed361802d13a62fcc42a19e2adb4ef717088`  
		Last Modified: Thu, 11 Aug 2016 17:58:35 GMT  
		Size: 257.3 KB (257344 bytes)
	-	`sha256:e66c440f7ba2b5b25e273ca2258304e775fb96ce8d82235a2bda86f389764065`  
		Last Modified: Thu, 11 Aug 2016 17:58:38 GMT  
		Size: 8.5 MB (8478580 bytes)
	-	`sha256:c010258de8d4b96a60a647dc1f06b09dfc3872839ab00c57556e580dae92aebb`  
		Last Modified: Thu, 11 Aug 2016 17:58:34 GMT  
		Size: 1.2 KB (1164 bytes)
	-	`sha256:d5f542ec2c47ee8d18e5764a94bae70f46f3ca94a4579260d6df0bb375088142`  
		Last Modified: Thu, 11 Aug 2016 17:58:34 GMT  
		Size: 603.0 B

## `joomla:3.6.2-fpm`

**does not exist** (yet?)

## `joomla:3.6-fpm`

```console
$ docker pull joomla@sha256:d1e24acbaf38c434a53ff94f53c1677a0235f5ca33416bcdc61ce471092e8b81
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162252882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3bf2fd9df85e24e31c23190bad226e26ba29e564c998594430bfa25c986d4b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 21:39:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_VERSION=5.6.24
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:23:19 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:23:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:29:50 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:50 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:29:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 20:29:52 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 20:29:52 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 17:49:49 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Thu, 11 Aug 2016 17:51:18 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Thu, 11 Aug 2016 17:51:35 GMT
RUN docker-php-ext-install mysqli
# Thu, 11 Aug 2016 17:51:36 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 17:51:37 GMT
ENV JOOMLA_VERSION=3.6.0
# Thu, 11 Aug 2016 17:51:39 GMT
ENV JOOMLA_SHA1=9e71357f689218705b15e653b7cdd57b498d4fa4
# Thu, 11 Aug 2016 17:51:52 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Thu, 11 Aug 2016 17:51:55 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Thu, 11 Aug 2016 17:51:57 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Thu, 11 Aug 2016 17:51:58 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 17:52:00 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:1a0ed20d7752971350ab581861731d7d71a6eb560b93d48382b5cc2aa07fed8b`  
		Last Modified: Wed, 10 Aug 2016 21:38:50 GMT  
		Size: 12.4 MB (12399120 bytes)
	-	`sha256:d17456fd86bcf1eb916ff4c4b4909dd6ad98736369cff4e5ee9c79e02782fc67`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 490.0 B
	-	`sha256:c8bd75b8802c8ce64c4a28486fbfb4bde4247b27f5f8363dd8a8469ac89b1e85`  
		Last Modified: Wed, 10 Aug 2016 21:38:48 GMT  
		Size: 9.3 MB (9333467 bytes)
	-	`sha256:0054f99dc6ca14454002cd76f78264c84cdfd9c57cea265ea0a6f601dab80158`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:1c8ec71281514f1d63f59000b5fd9082baa8a6d34e7e591d7cd22928879a5d18`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 129.0 B
	-	`sha256:fa513925a4eb93b436ccdb48c9b0edca88237b4abdebea3245da69a6b37deaf9`  
		Last Modified: Wed, 10 Aug 2016 21:38:46 GMT  
		Size: 7.6 KB (7629 bytes)
	-	`sha256:e821128dd53e9174efa3cbe4d8a43ecfe3f7a39093cda4a2a1954e6cbc6fedb6`  
		Last Modified: Thu, 11 Aug 2016 17:52:14 GMT  
		Size: 2.8 MB (2817703 bytes)
	-	`sha256:43bdbaf8023248506ae15267264d651baec2ed2161e5065ce83c885315a2fdbb`  
		Last Modified: Thu, 11 Aug 2016 17:52:13 GMT  
		Size: 265.1 KB (265068 bytes)
	-	`sha256:b7870cf41b58ced240b809d5ea32ee36c554e67b8cea80e808934625fcb5be12`  
		Last Modified: Thu, 11 Aug 2016 17:52:16 GMT  
		Size: 8.5 MB (8478579 bytes)
	-	`sha256:23fdbeb79524156e5d13eee19661eda1fcac813fe17a84a1926077741024c070`  
		Last Modified: Thu, 11 Aug 2016 17:52:13 GMT  
		Size: 1.2 KB (1165 bytes)
	-	`sha256:8b7b96cdf0bef797cad3c416d39aecad105700130a08feaedee7ade093c2e18f`  
		Last Modified: Thu, 11 Aug 2016 17:52:12 GMT  
		Size: 605.0 B

## `joomla:3-fpm`

```console
$ docker pull joomla@sha256:d1e24acbaf38c434a53ff94f53c1677a0235f5ca33416bcdc61ce471092e8b81
```

-	Platforms:
	-	linux; amd64

### `joomla:3-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162252882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3bf2fd9df85e24e31c23190bad226e26ba29e564c998594430bfa25c986d4b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 21:39:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_VERSION=5.6.24
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:23:19 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:23:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:29:50 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:50 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:29:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 20:29:52 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 20:29:52 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 17:49:49 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Thu, 11 Aug 2016 17:51:18 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Thu, 11 Aug 2016 17:51:35 GMT
RUN docker-php-ext-install mysqli
# Thu, 11 Aug 2016 17:51:36 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 17:51:37 GMT
ENV JOOMLA_VERSION=3.6.0
# Thu, 11 Aug 2016 17:51:39 GMT
ENV JOOMLA_SHA1=9e71357f689218705b15e653b7cdd57b498d4fa4
# Thu, 11 Aug 2016 17:51:52 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Thu, 11 Aug 2016 17:51:55 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Thu, 11 Aug 2016 17:51:57 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Thu, 11 Aug 2016 17:51:58 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 17:52:00 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:1a0ed20d7752971350ab581861731d7d71a6eb560b93d48382b5cc2aa07fed8b`  
		Last Modified: Wed, 10 Aug 2016 21:38:50 GMT  
		Size: 12.4 MB (12399120 bytes)
	-	`sha256:d17456fd86bcf1eb916ff4c4b4909dd6ad98736369cff4e5ee9c79e02782fc67`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 490.0 B
	-	`sha256:c8bd75b8802c8ce64c4a28486fbfb4bde4247b27f5f8363dd8a8469ac89b1e85`  
		Last Modified: Wed, 10 Aug 2016 21:38:48 GMT  
		Size: 9.3 MB (9333467 bytes)
	-	`sha256:0054f99dc6ca14454002cd76f78264c84cdfd9c57cea265ea0a6f601dab80158`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:1c8ec71281514f1d63f59000b5fd9082baa8a6d34e7e591d7cd22928879a5d18`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 129.0 B
	-	`sha256:fa513925a4eb93b436ccdb48c9b0edca88237b4abdebea3245da69a6b37deaf9`  
		Last Modified: Wed, 10 Aug 2016 21:38:46 GMT  
		Size: 7.6 KB (7629 bytes)
	-	`sha256:e821128dd53e9174efa3cbe4d8a43ecfe3f7a39093cda4a2a1954e6cbc6fedb6`  
		Last Modified: Thu, 11 Aug 2016 17:52:14 GMT  
		Size: 2.8 MB (2817703 bytes)
	-	`sha256:43bdbaf8023248506ae15267264d651baec2ed2161e5065ce83c885315a2fdbb`  
		Last Modified: Thu, 11 Aug 2016 17:52:13 GMT  
		Size: 265.1 KB (265068 bytes)
	-	`sha256:b7870cf41b58ced240b809d5ea32ee36c554e67b8cea80e808934625fcb5be12`  
		Last Modified: Thu, 11 Aug 2016 17:52:16 GMT  
		Size: 8.5 MB (8478579 bytes)
	-	`sha256:23fdbeb79524156e5d13eee19661eda1fcac813fe17a84a1926077741024c070`  
		Last Modified: Thu, 11 Aug 2016 17:52:13 GMT  
		Size: 1.2 KB (1165 bytes)
	-	`sha256:8b7b96cdf0bef797cad3c416d39aecad105700130a08feaedee7ade093c2e18f`  
		Last Modified: Thu, 11 Aug 2016 17:52:12 GMT  
		Size: 605.0 B

## `joomla:fpm`

```console
$ docker pull joomla@sha256:2ca207701c5bd82732ca23935c79d627f84e16476323b69790da89cd7ea7a02d
```

-	Platforms:
	-	linux; amd64

### `joomla:fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.1 MB (162126189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d7792422adc5f244356938cbcd819ecc33c6d40c67d45f80a6ccacff6b12755`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 21:39:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_VERSION=5.6.24
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:23:19 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:23:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:29:50 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:50 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:29:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 20:29:52 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 20:29:52 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 17:49:49 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Thu, 11 Aug 2016 17:51:18 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Thu, 11 Aug 2016 17:51:35 GMT
RUN docker-php-ext-install mysqli
# Thu, 11 Aug 2016 17:51:36 GMT
VOLUME [/var/www/html]
# Tue, 16 Aug 2016 16:45:36 GMT
ENV JOOMLA_VERSION=3.6.2
# Tue, 16 Aug 2016 16:45:38 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Tue, 16 Aug 2016 16:45:48 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 16 Aug 2016 16:45:50 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Tue, 16 Aug 2016 16:45:51 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Tue, 16 Aug 2016 16:45:52 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 16 Aug 2016 16:45:54 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:1a0ed20d7752971350ab581861731d7d71a6eb560b93d48382b5cc2aa07fed8b`  
		Last Modified: Wed, 10 Aug 2016 21:38:50 GMT  
		Size: 12.4 MB (12399120 bytes)
	-	`sha256:d17456fd86bcf1eb916ff4c4b4909dd6ad98736369cff4e5ee9c79e02782fc67`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 490.0 B
	-	`sha256:c8bd75b8802c8ce64c4a28486fbfb4bde4247b27f5f8363dd8a8469ac89b1e85`  
		Last Modified: Wed, 10 Aug 2016 21:38:48 GMT  
		Size: 9.3 MB (9333467 bytes)
	-	`sha256:0054f99dc6ca14454002cd76f78264c84cdfd9c57cea265ea0a6f601dab80158`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:1c8ec71281514f1d63f59000b5fd9082baa8a6d34e7e591d7cd22928879a5d18`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 129.0 B
	-	`sha256:fa513925a4eb93b436ccdb48c9b0edca88237b4abdebea3245da69a6b37deaf9`  
		Last Modified: Wed, 10 Aug 2016 21:38:46 GMT  
		Size: 7.6 KB (7629 bytes)
	-	`sha256:e821128dd53e9174efa3cbe4d8a43ecfe3f7a39093cda4a2a1954e6cbc6fedb6`  
		Last Modified: Thu, 11 Aug 2016 17:52:14 GMT  
		Size: 2.8 MB (2817703 bytes)
	-	`sha256:43bdbaf8023248506ae15267264d651baec2ed2161e5065ce83c885315a2fdbb`  
		Last Modified: Thu, 11 Aug 2016 17:52:13 GMT  
		Size: 265.1 KB (265068 bytes)
	-	`sha256:c8a294d7e6bd07594b1557b517aaf4e3582e7b20cd09a8f13695b6faaa669c9f`  
		Last Modified: Tue, 16 Aug 2016 16:50:07 GMT  
		Size: 8.4 MB (8351888 bytes)
	-	`sha256:98bd8bbb71e45b2524b8b36097381b347f9d309d0d04f64158434d95ff8c6e70`  
		Last Modified: Tue, 16 Aug 2016 16:50:03 GMT  
		Size: 1.2 KB (1163 bytes)
	-	`sha256:e10a305c66d2bb0d0302e779be51df6065d32ab76e4adb49145e7c3f53cfedb1`  
		Last Modified: Tue, 16 Aug 2016 16:50:03 GMT  
		Size: 605.0 B

## `joomla:3.6.2-fpm-php7`

**does not exist** (yet?)

## `joomla:3.6-fpm-php7`

```console
$ docker pull joomla@sha256:0c4998bb0c221584993ccc7e136faa48bec898be6f3ed665a4bc1aa7b061161b
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-fpm-php7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165766241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28f57178ee203d90d8411bb97076f819364feef4450b2dccc03c1322a886fff9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 20:55:36 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:55:38 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:40:23 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:40:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:07 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:47:08 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:08 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:47:10 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 19:47:10 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 19:47:10 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 17:53:00 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Thu, 11 Aug 2016 17:54:28 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Thu, 11 Aug 2016 17:54:45 GMT
RUN docker-php-ext-install mysqli
# Thu, 11 Aug 2016 17:54:46 GMT
VOLUME [/var/www/html]
# Tue, 16 Aug 2016 16:45:56 GMT
ENV JOOMLA_VERSION=3.6.2
# Tue, 16 Aug 2016 16:45:57 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Tue, 16 Aug 2016 16:46:07 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 16 Aug 2016 16:46:09 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Tue, 16 Aug 2016 16:46:10 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Tue, 16 Aug 2016 16:46:11 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 16 Aug 2016 16:46:13 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:2c7f1896201042f5a56e69f0ad43dbf2a03bba37f1d363b86b084419bda9a36f`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 12.2 MB (12245152 bytes)
	-	`sha256:a6b6840b656be6f94a7dbc8b7118a4a1f006c5ffecfef31fca357e00207decde`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 490.0 B
	-	`sha256:1b9c85a7aa1b85a314324be3bf6491098cf6695b42d5ee3f08e0284b435b2808`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 13.2 MB (13158390 bytes)
	-	`sha256:96b5ad85eeda5d3c12c1dd135d2fffd44cf10de2a52cb37a3e6330e1384e95ca`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 1.8 KB (1837 bytes)
	-	`sha256:46f8c9ac406d307281a7e69f2d846905d3c5479912a1f18c79ed4b2faa4d8663`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 129.0 B
	-	`sha256:6b6079c882568d0a40d0266404f28416ae4cdb2e97a579d9d470ec6b768482f2`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 7.7 KB (7689 bytes)
	-	`sha256:260d1646f9a7785fae5881a96826d5c3736357e5878b3058c1c43dfac991af6d`  
		Last Modified: Thu, 11 Aug 2016 17:55:18 GMT  
		Size: 2.8 MB (2794460 bytes)
	-	`sha256:18afb9da0f6daf341e41848507496570df48e88c1c047f4c8d1cc832fc24beea`  
		Last Modified: Thu, 11 Aug 2016 17:55:33 GMT  
		Size: 257.3 KB (257346 bytes)
	-	`sha256:4707ceda2c4ccf176ad87477c9ff360e1854c2fd446631e169d7a7ad162ecc9f`  
		Last Modified: Tue, 16 Aug 2016 16:51:34 GMT  
		Size: 8.4 MB (8351882 bytes)
	-	`sha256:5588d7dfce10ac403c2cd3366dc123f8a2689919e06d010b8745761bda27de7f`  
		Last Modified: Tue, 16 Aug 2016 16:51:30 GMT  
		Size: 1.2 KB (1165 bytes)
	-	`sha256:b02501054eb96cc9400033ed6467121d7d915e52ae3558bc09e0f15ec4409393`  
		Last Modified: Tue, 16 Aug 2016 16:51:30 GMT  
		Size: 603.0 B

## `joomla:3-fpm-php7`

```console
$ docker pull joomla@sha256:0c4998bb0c221584993ccc7e136faa48bec898be6f3ed665a4bc1aa7b061161b
```

-	Platforms:
	-	linux; amd64

### `joomla:3-fpm-php7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165766241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28f57178ee203d90d8411bb97076f819364feef4450b2dccc03c1322a886fff9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 20:55:36 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:55:38 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:40:23 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:40:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:07 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:47:08 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:08 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:47:10 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 19:47:10 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 19:47:10 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 17:53:00 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Thu, 11 Aug 2016 17:54:28 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Thu, 11 Aug 2016 17:54:45 GMT
RUN docker-php-ext-install mysqli
# Thu, 11 Aug 2016 17:54:46 GMT
VOLUME [/var/www/html]
# Tue, 16 Aug 2016 16:45:56 GMT
ENV JOOMLA_VERSION=3.6.2
# Tue, 16 Aug 2016 16:45:57 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Tue, 16 Aug 2016 16:46:07 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 16 Aug 2016 16:46:09 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Tue, 16 Aug 2016 16:46:10 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Tue, 16 Aug 2016 16:46:11 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 16 Aug 2016 16:46:13 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:2c7f1896201042f5a56e69f0ad43dbf2a03bba37f1d363b86b084419bda9a36f`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 12.2 MB (12245152 bytes)
	-	`sha256:a6b6840b656be6f94a7dbc8b7118a4a1f006c5ffecfef31fca357e00207decde`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 490.0 B
	-	`sha256:1b9c85a7aa1b85a314324be3bf6491098cf6695b42d5ee3f08e0284b435b2808`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 13.2 MB (13158390 bytes)
	-	`sha256:96b5ad85eeda5d3c12c1dd135d2fffd44cf10de2a52cb37a3e6330e1384e95ca`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 1.8 KB (1837 bytes)
	-	`sha256:46f8c9ac406d307281a7e69f2d846905d3c5479912a1f18c79ed4b2faa4d8663`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 129.0 B
	-	`sha256:6b6079c882568d0a40d0266404f28416ae4cdb2e97a579d9d470ec6b768482f2`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 7.7 KB (7689 bytes)
	-	`sha256:260d1646f9a7785fae5881a96826d5c3736357e5878b3058c1c43dfac991af6d`  
		Last Modified: Thu, 11 Aug 2016 17:55:18 GMT  
		Size: 2.8 MB (2794460 bytes)
	-	`sha256:18afb9da0f6daf341e41848507496570df48e88c1c047f4c8d1cc832fc24beea`  
		Last Modified: Thu, 11 Aug 2016 17:55:33 GMT  
		Size: 257.3 KB (257346 bytes)
	-	`sha256:4707ceda2c4ccf176ad87477c9ff360e1854c2fd446631e169d7a7ad162ecc9f`  
		Last Modified: Tue, 16 Aug 2016 16:51:34 GMT  
		Size: 8.4 MB (8351882 bytes)
	-	`sha256:5588d7dfce10ac403c2cd3366dc123f8a2689919e06d010b8745761bda27de7f`  
		Last Modified: Tue, 16 Aug 2016 16:51:30 GMT  
		Size: 1.2 KB (1165 bytes)
	-	`sha256:b02501054eb96cc9400033ed6467121d7d915e52ae3558bc09e0f15ec4409393`  
		Last Modified: Tue, 16 Aug 2016 16:51:30 GMT  
		Size: 603.0 B

## `joomla:fpm-php7`

```console
$ docker pull joomla@sha256:0c4998bb0c221584993ccc7e136faa48bec898be6f3ed665a4bc1aa7b061161b
```

-	Platforms:
	-	linux; amd64

### `joomla:fpm-php7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165766241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28f57178ee203d90d8411bb97076f819364feef4450b2dccc03c1322a886fff9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 20:55:36 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:55:38 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:40:23 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:40:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:07 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:47:08 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:08 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:47:10 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 19:47:10 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 19:47:10 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 17:53:00 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Thu, 11 Aug 2016 17:54:28 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Thu, 11 Aug 2016 17:54:45 GMT
RUN docker-php-ext-install mysqli
# Thu, 11 Aug 2016 17:54:46 GMT
VOLUME [/var/www/html]
# Tue, 16 Aug 2016 16:45:56 GMT
ENV JOOMLA_VERSION=3.6.2
# Tue, 16 Aug 2016 16:45:57 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Tue, 16 Aug 2016 16:46:07 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 16 Aug 2016 16:46:09 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Tue, 16 Aug 2016 16:46:10 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Tue, 16 Aug 2016 16:46:11 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 16 Aug 2016 16:46:13 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:2c7f1896201042f5a56e69f0ad43dbf2a03bba37f1d363b86b084419bda9a36f`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 12.2 MB (12245152 bytes)
	-	`sha256:a6b6840b656be6f94a7dbc8b7118a4a1f006c5ffecfef31fca357e00207decde`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 490.0 B
	-	`sha256:1b9c85a7aa1b85a314324be3bf6491098cf6695b42d5ee3f08e0284b435b2808`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 13.2 MB (13158390 bytes)
	-	`sha256:96b5ad85eeda5d3c12c1dd135d2fffd44cf10de2a52cb37a3e6330e1384e95ca`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 1.8 KB (1837 bytes)
	-	`sha256:46f8c9ac406d307281a7e69f2d846905d3c5479912a1f18c79ed4b2faa4d8663`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 129.0 B
	-	`sha256:6b6079c882568d0a40d0266404f28416ae4cdb2e97a579d9d470ec6b768482f2`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 7.7 KB (7689 bytes)
	-	`sha256:260d1646f9a7785fae5881a96826d5c3736357e5878b3058c1c43dfac991af6d`  
		Last Modified: Thu, 11 Aug 2016 17:55:18 GMT  
		Size: 2.8 MB (2794460 bytes)
	-	`sha256:18afb9da0f6daf341e41848507496570df48e88c1c047f4c8d1cc832fc24beea`  
		Last Modified: Thu, 11 Aug 2016 17:55:33 GMT  
		Size: 257.3 KB (257346 bytes)
	-	`sha256:4707ceda2c4ccf176ad87477c9ff360e1854c2fd446631e169d7a7ad162ecc9f`  
		Last Modified: Tue, 16 Aug 2016 16:51:34 GMT  
		Size: 8.4 MB (8351882 bytes)
	-	`sha256:5588d7dfce10ac403c2cd3366dc123f8a2689919e06d010b8745761bda27de7f`  
		Last Modified: Tue, 16 Aug 2016 16:51:30 GMT  
		Size: 1.2 KB (1165 bytes)
	-	`sha256:b02501054eb96cc9400033ed6467121d7d915e52ae3558bc09e0f15ec4409393`  
		Last Modified: Tue, 16 Aug 2016 16:51:30 GMT  
		Size: 603.0 B
