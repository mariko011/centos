<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `joomla`

-	[`joomla:3.6.3-apache`](#joomla363-apache)
-	[`joomla:3.6-apache`](#joomla36-apache)
-	[`joomla:3-apache`](#joomla3-apache)
-	[`joomla:apache`](#joomlaapache)
-	[`joomla:3.6.3`](#joomla363)
-	[`joomla:3.6`](#joomla36)
-	[`joomla:3`](#joomla3)
-	[`joomla:latest`](#joomlalatest)
-	[`joomla:3.6.3-apache-php7`](#joomla363-apache-php7)
-	[`joomla:3.6-apache-php7`](#joomla36-apache-php7)
-	[`joomla:3-apache-php7`](#joomla3-apache-php7)
-	[`joomla:apache-php7`](#joomlaapache-php7)
-	[`joomla:3.6.3-fpm`](#joomla363-fpm)
-	[`joomla:3.6-fpm`](#joomla36-fpm)
-	[`joomla:3-fpm`](#joomla3-fpm)
-	[`joomla:fpm`](#joomlafpm)
-	[`joomla:3.6.3-fpm-php7`](#joomla363-fpm-php7)
-	[`joomla:3.6-fpm-php7`](#joomla36-fpm-php7)
-	[`joomla:3-fpm-php7`](#joomla3-fpm-php7)
-	[`joomla:fpm-php7`](#joomlafpm-php7)

## `joomla:3.6.3-apache`

```console
$ docker pull joomla@sha256:199cd16488def388cf3f839af2cbf4d8e81106751522a458965877f7e6cdceeb
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.3-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172339154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d71786c1f5e13188d3a98e60d0b43bf4d9eb77a221fc76123b42a966766734`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:24:54 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 23 Sep 2016 21:24:55 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 23 Sep 2016 21:24:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 23 Sep 2016 21:24:57 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 23 Sep 2016 21:24:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 23 Sep 2016 21:24:58 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 23 Sep 2016 21:24:59 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_VERSION=5.6.27
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Tue, 18 Oct 2016 22:16:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 22:16:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 22:18:38 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:39 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:39 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 22:18:39 GMT
EXPOSE 80/tcp
# Tue, 18 Oct 2016 22:18:40 GMT
CMD ["apache2-foreground"]
# Tue, 18 Oct 2016 23:26:50 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Oct 2016 23:26:56 GMT
RUN a2enmod rewrite
# Tue, 18 Oct 2016 23:27:22 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 18 Oct 2016 23:27:32 GMT
RUN docker-php-ext-install mysqli
# Tue, 18 Oct 2016 23:27:38 GMT
RUN docker-php-ext-install mcrypt
# Tue, 18 Oct 2016 23:27:38 GMT
VOLUME [/var/www/html]
# Tue, 18 Oct 2016 23:27:39 GMT
ENV JOOMLA_VERSION=3.6.3
# Tue, 18 Oct 2016 23:27:39 GMT
ENV JOOMLA_SHA1=01eb3724e191fcfd034b54f54745703a8a4f288e
# Tue, 18 Oct 2016 23:27:48 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Oct 2016 23:27:49 GMT
COPY file:b25e9b5a462d4b2e75d2eed880fc99f96f68514e36f2b37606804556f62a3752 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:27:49 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 18 Oct 2016 23:27:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:27:50 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05dcf7da5898c6779d2972c35fd7695512c8d3639d4316f6c5fb5c92cf7a587`  
		Last Modified: Fri, 23 Sep 2016 21:27:38 GMT  
		Size: 2.8 MB (2849086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38500c090694a52f13ac803f1786e1b6eaf47d8efa2c5129d5db2ef52ebbf1`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cba9364455184cd78edc0d317497664453686c65153710dfd4e9cce5ead08e`  
		Last Modified: Fri, 23 Sep 2016 21:27:34 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc53f7ef49062cf4ce2d2a03d7d282c1c79cc3de048012605d5e53abe748c83b`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a63a6d9035b4a9307637baf440ceb1cda513c63cee3dbf7f29b406eea9b5b`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa490b7aed8861ecbbe1c255ee85380164b1a9d8eaa1e5b1f1f8ccd8e2f67aa`  
		Last Modified: Tue, 18 Oct 2016 22:50:22 GMT  
		Size: 12.6 MB (12568611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61528b650294f5d073daa77c3e93b5d6356fc8b5e363020fce1eec7116793887`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3008a0fd5e49da089bb904a89c1c80f5e61042d41d2e8c4976be05d81b2373e`  
		Last Modified: Tue, 18 Oct 2016 22:50:25 GMT  
		Size: 15.9 MB (15917192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7356731c09772ede9c24db74c8b5d9e8b1013c08896379f0c4f8de3c7d50e9`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996cde54ee6db0399b6b6fef5da36b1f864cd9a5cc5b346f60d8327f81326ddd`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a755992d52fa637098dc15b2d472508ecae93c988d3936d142ae108b38ef203`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5df6e090be94d5fda04f59f19f851607910a342531db54e020685855f47852`  
		Last Modified: Tue, 18 Oct 2016 23:31:32 GMT  
		Size: 3.0 MB (3048531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf22b00b685a264783346fe05e34d7edec500c7c2d5dc927488ac0051016931f`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 266.1 KB (266117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a953bffc29d9e193d9847bc9918d9a33c0ad0efe73747801cfe74d1f8d32281`  
		Last Modified: Tue, 18 Oct 2016 23:31:28 GMT  
		Size: 61.2 KB (61182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9593d4dc09d848f5658628a1ed99f65aebb2aade4eb669ee748b2b842b2c36d6`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 8.7 MB (8674378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799299443f6b8dcf942965da89c15c84757d2f8a1818e362c32b497512f195c0`  
		Last Modified: Tue, 18 Oct 2016 23:31:28 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf9b288abd671a7843ceb2e813bece7040b923066c09c4b49e1e15ccfc3c05c`  
		Last Modified: Tue, 18 Oct 2016 23:31:27 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-apache`

```console
$ docker pull joomla@sha256:199cd16488def388cf3f839af2cbf4d8e81106751522a458965877f7e6cdceeb
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172339154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d71786c1f5e13188d3a98e60d0b43bf4d9eb77a221fc76123b42a966766734`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:24:54 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 23 Sep 2016 21:24:55 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 23 Sep 2016 21:24:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 23 Sep 2016 21:24:57 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 23 Sep 2016 21:24:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 23 Sep 2016 21:24:58 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 23 Sep 2016 21:24:59 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_VERSION=5.6.27
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Tue, 18 Oct 2016 22:16:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 22:16:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 22:18:38 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:39 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:39 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 22:18:39 GMT
EXPOSE 80/tcp
# Tue, 18 Oct 2016 22:18:40 GMT
CMD ["apache2-foreground"]
# Tue, 18 Oct 2016 23:26:50 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Oct 2016 23:26:56 GMT
RUN a2enmod rewrite
# Tue, 18 Oct 2016 23:27:22 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 18 Oct 2016 23:27:32 GMT
RUN docker-php-ext-install mysqli
# Tue, 18 Oct 2016 23:27:38 GMT
RUN docker-php-ext-install mcrypt
# Tue, 18 Oct 2016 23:27:38 GMT
VOLUME [/var/www/html]
# Tue, 18 Oct 2016 23:27:39 GMT
ENV JOOMLA_VERSION=3.6.3
# Tue, 18 Oct 2016 23:27:39 GMT
ENV JOOMLA_SHA1=01eb3724e191fcfd034b54f54745703a8a4f288e
# Tue, 18 Oct 2016 23:27:48 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Oct 2016 23:27:49 GMT
COPY file:b25e9b5a462d4b2e75d2eed880fc99f96f68514e36f2b37606804556f62a3752 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:27:49 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 18 Oct 2016 23:27:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:27:50 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05dcf7da5898c6779d2972c35fd7695512c8d3639d4316f6c5fb5c92cf7a587`  
		Last Modified: Fri, 23 Sep 2016 21:27:38 GMT  
		Size: 2.8 MB (2849086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38500c090694a52f13ac803f1786e1b6eaf47d8efa2c5129d5db2ef52ebbf1`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cba9364455184cd78edc0d317497664453686c65153710dfd4e9cce5ead08e`  
		Last Modified: Fri, 23 Sep 2016 21:27:34 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc53f7ef49062cf4ce2d2a03d7d282c1c79cc3de048012605d5e53abe748c83b`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a63a6d9035b4a9307637baf440ceb1cda513c63cee3dbf7f29b406eea9b5b`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa490b7aed8861ecbbe1c255ee85380164b1a9d8eaa1e5b1f1f8ccd8e2f67aa`  
		Last Modified: Tue, 18 Oct 2016 22:50:22 GMT  
		Size: 12.6 MB (12568611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61528b650294f5d073daa77c3e93b5d6356fc8b5e363020fce1eec7116793887`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3008a0fd5e49da089bb904a89c1c80f5e61042d41d2e8c4976be05d81b2373e`  
		Last Modified: Tue, 18 Oct 2016 22:50:25 GMT  
		Size: 15.9 MB (15917192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7356731c09772ede9c24db74c8b5d9e8b1013c08896379f0c4f8de3c7d50e9`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996cde54ee6db0399b6b6fef5da36b1f864cd9a5cc5b346f60d8327f81326ddd`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a755992d52fa637098dc15b2d472508ecae93c988d3936d142ae108b38ef203`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5df6e090be94d5fda04f59f19f851607910a342531db54e020685855f47852`  
		Last Modified: Tue, 18 Oct 2016 23:31:32 GMT  
		Size: 3.0 MB (3048531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf22b00b685a264783346fe05e34d7edec500c7c2d5dc927488ac0051016931f`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 266.1 KB (266117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a953bffc29d9e193d9847bc9918d9a33c0ad0efe73747801cfe74d1f8d32281`  
		Last Modified: Tue, 18 Oct 2016 23:31:28 GMT  
		Size: 61.2 KB (61182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9593d4dc09d848f5658628a1ed99f65aebb2aade4eb669ee748b2b842b2c36d6`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 8.7 MB (8674378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799299443f6b8dcf942965da89c15c84757d2f8a1818e362c32b497512f195c0`  
		Last Modified: Tue, 18 Oct 2016 23:31:28 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf9b288abd671a7843ceb2e813bece7040b923066c09c4b49e1e15ccfc3c05c`  
		Last Modified: Tue, 18 Oct 2016 23:31:27 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache`

```console
$ docker pull joomla@sha256:199cd16488def388cf3f839af2cbf4d8e81106751522a458965877f7e6cdceeb
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172339154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d71786c1f5e13188d3a98e60d0b43bf4d9eb77a221fc76123b42a966766734`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:24:54 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 23 Sep 2016 21:24:55 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 23 Sep 2016 21:24:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 23 Sep 2016 21:24:57 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 23 Sep 2016 21:24:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 23 Sep 2016 21:24:58 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 23 Sep 2016 21:24:59 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_VERSION=5.6.27
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Tue, 18 Oct 2016 22:16:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 22:16:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 22:18:38 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:39 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:39 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 22:18:39 GMT
EXPOSE 80/tcp
# Tue, 18 Oct 2016 22:18:40 GMT
CMD ["apache2-foreground"]
# Tue, 18 Oct 2016 23:26:50 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Oct 2016 23:26:56 GMT
RUN a2enmod rewrite
# Tue, 18 Oct 2016 23:27:22 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 18 Oct 2016 23:27:32 GMT
RUN docker-php-ext-install mysqli
# Tue, 18 Oct 2016 23:27:38 GMT
RUN docker-php-ext-install mcrypt
# Tue, 18 Oct 2016 23:27:38 GMT
VOLUME [/var/www/html]
# Tue, 18 Oct 2016 23:27:39 GMT
ENV JOOMLA_VERSION=3.6.3
# Tue, 18 Oct 2016 23:27:39 GMT
ENV JOOMLA_SHA1=01eb3724e191fcfd034b54f54745703a8a4f288e
# Tue, 18 Oct 2016 23:27:48 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Oct 2016 23:27:49 GMT
COPY file:b25e9b5a462d4b2e75d2eed880fc99f96f68514e36f2b37606804556f62a3752 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:27:49 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 18 Oct 2016 23:27:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:27:50 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05dcf7da5898c6779d2972c35fd7695512c8d3639d4316f6c5fb5c92cf7a587`  
		Last Modified: Fri, 23 Sep 2016 21:27:38 GMT  
		Size: 2.8 MB (2849086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38500c090694a52f13ac803f1786e1b6eaf47d8efa2c5129d5db2ef52ebbf1`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cba9364455184cd78edc0d317497664453686c65153710dfd4e9cce5ead08e`  
		Last Modified: Fri, 23 Sep 2016 21:27:34 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc53f7ef49062cf4ce2d2a03d7d282c1c79cc3de048012605d5e53abe748c83b`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a63a6d9035b4a9307637baf440ceb1cda513c63cee3dbf7f29b406eea9b5b`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa490b7aed8861ecbbe1c255ee85380164b1a9d8eaa1e5b1f1f8ccd8e2f67aa`  
		Last Modified: Tue, 18 Oct 2016 22:50:22 GMT  
		Size: 12.6 MB (12568611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61528b650294f5d073daa77c3e93b5d6356fc8b5e363020fce1eec7116793887`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3008a0fd5e49da089bb904a89c1c80f5e61042d41d2e8c4976be05d81b2373e`  
		Last Modified: Tue, 18 Oct 2016 22:50:25 GMT  
		Size: 15.9 MB (15917192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7356731c09772ede9c24db74c8b5d9e8b1013c08896379f0c4f8de3c7d50e9`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996cde54ee6db0399b6b6fef5da36b1f864cd9a5cc5b346f60d8327f81326ddd`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a755992d52fa637098dc15b2d472508ecae93c988d3936d142ae108b38ef203`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5df6e090be94d5fda04f59f19f851607910a342531db54e020685855f47852`  
		Last Modified: Tue, 18 Oct 2016 23:31:32 GMT  
		Size: 3.0 MB (3048531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf22b00b685a264783346fe05e34d7edec500c7c2d5dc927488ac0051016931f`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 266.1 KB (266117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a953bffc29d9e193d9847bc9918d9a33c0ad0efe73747801cfe74d1f8d32281`  
		Last Modified: Tue, 18 Oct 2016 23:31:28 GMT  
		Size: 61.2 KB (61182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9593d4dc09d848f5658628a1ed99f65aebb2aade4eb669ee748b2b842b2c36d6`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 8.7 MB (8674378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799299443f6b8dcf942965da89c15c84757d2f8a1818e362c32b497512f195c0`  
		Last Modified: Tue, 18 Oct 2016 23:31:28 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf9b288abd671a7843ceb2e813bece7040b923066c09c4b49e1e15ccfc3c05c`  
		Last Modified: Tue, 18 Oct 2016 23:31:27 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:apache`

```console
$ docker pull joomla@sha256:199cd16488def388cf3f839af2cbf4d8e81106751522a458965877f7e6cdceeb
```

-	Platforms:
	-	linux; amd64

### `joomla:apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172339154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d71786c1f5e13188d3a98e60d0b43bf4d9eb77a221fc76123b42a966766734`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:24:54 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 23 Sep 2016 21:24:55 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 23 Sep 2016 21:24:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 23 Sep 2016 21:24:57 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 23 Sep 2016 21:24:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 23 Sep 2016 21:24:58 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 23 Sep 2016 21:24:59 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_VERSION=5.6.27
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Tue, 18 Oct 2016 22:16:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 22:16:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 22:18:38 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:39 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:39 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 22:18:39 GMT
EXPOSE 80/tcp
# Tue, 18 Oct 2016 22:18:40 GMT
CMD ["apache2-foreground"]
# Tue, 18 Oct 2016 23:26:50 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Oct 2016 23:26:56 GMT
RUN a2enmod rewrite
# Tue, 18 Oct 2016 23:27:22 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 18 Oct 2016 23:27:32 GMT
RUN docker-php-ext-install mysqli
# Tue, 18 Oct 2016 23:27:38 GMT
RUN docker-php-ext-install mcrypt
# Tue, 18 Oct 2016 23:27:38 GMT
VOLUME [/var/www/html]
# Tue, 18 Oct 2016 23:27:39 GMT
ENV JOOMLA_VERSION=3.6.3
# Tue, 18 Oct 2016 23:27:39 GMT
ENV JOOMLA_SHA1=01eb3724e191fcfd034b54f54745703a8a4f288e
# Tue, 18 Oct 2016 23:27:48 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Oct 2016 23:27:49 GMT
COPY file:b25e9b5a462d4b2e75d2eed880fc99f96f68514e36f2b37606804556f62a3752 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:27:49 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 18 Oct 2016 23:27:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:27:50 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05dcf7da5898c6779d2972c35fd7695512c8d3639d4316f6c5fb5c92cf7a587`  
		Last Modified: Fri, 23 Sep 2016 21:27:38 GMT  
		Size: 2.8 MB (2849086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38500c090694a52f13ac803f1786e1b6eaf47d8efa2c5129d5db2ef52ebbf1`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cba9364455184cd78edc0d317497664453686c65153710dfd4e9cce5ead08e`  
		Last Modified: Fri, 23 Sep 2016 21:27:34 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc53f7ef49062cf4ce2d2a03d7d282c1c79cc3de048012605d5e53abe748c83b`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a63a6d9035b4a9307637baf440ceb1cda513c63cee3dbf7f29b406eea9b5b`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa490b7aed8861ecbbe1c255ee85380164b1a9d8eaa1e5b1f1f8ccd8e2f67aa`  
		Last Modified: Tue, 18 Oct 2016 22:50:22 GMT  
		Size: 12.6 MB (12568611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61528b650294f5d073daa77c3e93b5d6356fc8b5e363020fce1eec7116793887`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3008a0fd5e49da089bb904a89c1c80f5e61042d41d2e8c4976be05d81b2373e`  
		Last Modified: Tue, 18 Oct 2016 22:50:25 GMT  
		Size: 15.9 MB (15917192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7356731c09772ede9c24db74c8b5d9e8b1013c08896379f0c4f8de3c7d50e9`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996cde54ee6db0399b6b6fef5da36b1f864cd9a5cc5b346f60d8327f81326ddd`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a755992d52fa637098dc15b2d472508ecae93c988d3936d142ae108b38ef203`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5df6e090be94d5fda04f59f19f851607910a342531db54e020685855f47852`  
		Last Modified: Tue, 18 Oct 2016 23:31:32 GMT  
		Size: 3.0 MB (3048531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf22b00b685a264783346fe05e34d7edec500c7c2d5dc927488ac0051016931f`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 266.1 KB (266117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a953bffc29d9e193d9847bc9918d9a33c0ad0efe73747801cfe74d1f8d32281`  
		Last Modified: Tue, 18 Oct 2016 23:31:28 GMT  
		Size: 61.2 KB (61182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9593d4dc09d848f5658628a1ed99f65aebb2aade4eb669ee748b2b842b2c36d6`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 8.7 MB (8674378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799299443f6b8dcf942965da89c15c84757d2f8a1818e362c32b497512f195c0`  
		Last Modified: Tue, 18 Oct 2016 23:31:28 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf9b288abd671a7843ceb2e813bece7040b923066c09c4b49e1e15ccfc3c05c`  
		Last Modified: Tue, 18 Oct 2016 23:31:27 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.3`

```console
$ docker pull joomla@sha256:199cd16488def388cf3f839af2cbf4d8e81106751522a458965877f7e6cdceeb
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172339154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d71786c1f5e13188d3a98e60d0b43bf4d9eb77a221fc76123b42a966766734`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:24:54 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 23 Sep 2016 21:24:55 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 23 Sep 2016 21:24:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 23 Sep 2016 21:24:57 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 23 Sep 2016 21:24:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 23 Sep 2016 21:24:58 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 23 Sep 2016 21:24:59 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_VERSION=5.6.27
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Tue, 18 Oct 2016 22:16:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 22:16:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 22:18:38 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:39 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:39 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 22:18:39 GMT
EXPOSE 80/tcp
# Tue, 18 Oct 2016 22:18:40 GMT
CMD ["apache2-foreground"]
# Tue, 18 Oct 2016 23:26:50 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Oct 2016 23:26:56 GMT
RUN a2enmod rewrite
# Tue, 18 Oct 2016 23:27:22 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 18 Oct 2016 23:27:32 GMT
RUN docker-php-ext-install mysqli
# Tue, 18 Oct 2016 23:27:38 GMT
RUN docker-php-ext-install mcrypt
# Tue, 18 Oct 2016 23:27:38 GMT
VOLUME [/var/www/html]
# Tue, 18 Oct 2016 23:27:39 GMT
ENV JOOMLA_VERSION=3.6.3
# Tue, 18 Oct 2016 23:27:39 GMT
ENV JOOMLA_SHA1=01eb3724e191fcfd034b54f54745703a8a4f288e
# Tue, 18 Oct 2016 23:27:48 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Oct 2016 23:27:49 GMT
COPY file:b25e9b5a462d4b2e75d2eed880fc99f96f68514e36f2b37606804556f62a3752 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:27:49 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 18 Oct 2016 23:27:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:27:50 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05dcf7da5898c6779d2972c35fd7695512c8d3639d4316f6c5fb5c92cf7a587`  
		Last Modified: Fri, 23 Sep 2016 21:27:38 GMT  
		Size: 2.8 MB (2849086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38500c090694a52f13ac803f1786e1b6eaf47d8efa2c5129d5db2ef52ebbf1`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cba9364455184cd78edc0d317497664453686c65153710dfd4e9cce5ead08e`  
		Last Modified: Fri, 23 Sep 2016 21:27:34 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc53f7ef49062cf4ce2d2a03d7d282c1c79cc3de048012605d5e53abe748c83b`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a63a6d9035b4a9307637baf440ceb1cda513c63cee3dbf7f29b406eea9b5b`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa490b7aed8861ecbbe1c255ee85380164b1a9d8eaa1e5b1f1f8ccd8e2f67aa`  
		Last Modified: Tue, 18 Oct 2016 22:50:22 GMT  
		Size: 12.6 MB (12568611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61528b650294f5d073daa77c3e93b5d6356fc8b5e363020fce1eec7116793887`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3008a0fd5e49da089bb904a89c1c80f5e61042d41d2e8c4976be05d81b2373e`  
		Last Modified: Tue, 18 Oct 2016 22:50:25 GMT  
		Size: 15.9 MB (15917192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7356731c09772ede9c24db74c8b5d9e8b1013c08896379f0c4f8de3c7d50e9`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996cde54ee6db0399b6b6fef5da36b1f864cd9a5cc5b346f60d8327f81326ddd`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a755992d52fa637098dc15b2d472508ecae93c988d3936d142ae108b38ef203`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5df6e090be94d5fda04f59f19f851607910a342531db54e020685855f47852`  
		Last Modified: Tue, 18 Oct 2016 23:31:32 GMT  
		Size: 3.0 MB (3048531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf22b00b685a264783346fe05e34d7edec500c7c2d5dc927488ac0051016931f`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 266.1 KB (266117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a953bffc29d9e193d9847bc9918d9a33c0ad0efe73747801cfe74d1f8d32281`  
		Last Modified: Tue, 18 Oct 2016 23:31:28 GMT  
		Size: 61.2 KB (61182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9593d4dc09d848f5658628a1ed99f65aebb2aade4eb669ee748b2b842b2c36d6`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 8.7 MB (8674378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799299443f6b8dcf942965da89c15c84757d2f8a1818e362c32b497512f195c0`  
		Last Modified: Tue, 18 Oct 2016 23:31:28 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf9b288abd671a7843ceb2e813bece7040b923066c09c4b49e1e15ccfc3c05c`  
		Last Modified: Tue, 18 Oct 2016 23:31:27 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6`

```console
$ docker pull joomla@sha256:199cd16488def388cf3f839af2cbf4d8e81106751522a458965877f7e6cdceeb
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172339154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d71786c1f5e13188d3a98e60d0b43bf4d9eb77a221fc76123b42a966766734`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:24:54 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 23 Sep 2016 21:24:55 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 23 Sep 2016 21:24:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 23 Sep 2016 21:24:57 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 23 Sep 2016 21:24:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 23 Sep 2016 21:24:58 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 23 Sep 2016 21:24:59 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_VERSION=5.6.27
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Tue, 18 Oct 2016 22:16:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 22:16:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 22:18:38 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:39 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:39 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 22:18:39 GMT
EXPOSE 80/tcp
# Tue, 18 Oct 2016 22:18:40 GMT
CMD ["apache2-foreground"]
# Tue, 18 Oct 2016 23:26:50 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Oct 2016 23:26:56 GMT
RUN a2enmod rewrite
# Tue, 18 Oct 2016 23:27:22 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 18 Oct 2016 23:27:32 GMT
RUN docker-php-ext-install mysqli
# Tue, 18 Oct 2016 23:27:38 GMT
RUN docker-php-ext-install mcrypt
# Tue, 18 Oct 2016 23:27:38 GMT
VOLUME [/var/www/html]
# Tue, 18 Oct 2016 23:27:39 GMT
ENV JOOMLA_VERSION=3.6.3
# Tue, 18 Oct 2016 23:27:39 GMT
ENV JOOMLA_SHA1=01eb3724e191fcfd034b54f54745703a8a4f288e
# Tue, 18 Oct 2016 23:27:48 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Oct 2016 23:27:49 GMT
COPY file:b25e9b5a462d4b2e75d2eed880fc99f96f68514e36f2b37606804556f62a3752 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:27:49 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 18 Oct 2016 23:27:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:27:50 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05dcf7da5898c6779d2972c35fd7695512c8d3639d4316f6c5fb5c92cf7a587`  
		Last Modified: Fri, 23 Sep 2016 21:27:38 GMT  
		Size: 2.8 MB (2849086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38500c090694a52f13ac803f1786e1b6eaf47d8efa2c5129d5db2ef52ebbf1`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cba9364455184cd78edc0d317497664453686c65153710dfd4e9cce5ead08e`  
		Last Modified: Fri, 23 Sep 2016 21:27:34 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc53f7ef49062cf4ce2d2a03d7d282c1c79cc3de048012605d5e53abe748c83b`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a63a6d9035b4a9307637baf440ceb1cda513c63cee3dbf7f29b406eea9b5b`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa490b7aed8861ecbbe1c255ee85380164b1a9d8eaa1e5b1f1f8ccd8e2f67aa`  
		Last Modified: Tue, 18 Oct 2016 22:50:22 GMT  
		Size: 12.6 MB (12568611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61528b650294f5d073daa77c3e93b5d6356fc8b5e363020fce1eec7116793887`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3008a0fd5e49da089bb904a89c1c80f5e61042d41d2e8c4976be05d81b2373e`  
		Last Modified: Tue, 18 Oct 2016 22:50:25 GMT  
		Size: 15.9 MB (15917192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7356731c09772ede9c24db74c8b5d9e8b1013c08896379f0c4f8de3c7d50e9`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996cde54ee6db0399b6b6fef5da36b1f864cd9a5cc5b346f60d8327f81326ddd`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a755992d52fa637098dc15b2d472508ecae93c988d3936d142ae108b38ef203`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5df6e090be94d5fda04f59f19f851607910a342531db54e020685855f47852`  
		Last Modified: Tue, 18 Oct 2016 23:31:32 GMT  
		Size: 3.0 MB (3048531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf22b00b685a264783346fe05e34d7edec500c7c2d5dc927488ac0051016931f`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 266.1 KB (266117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a953bffc29d9e193d9847bc9918d9a33c0ad0efe73747801cfe74d1f8d32281`  
		Last Modified: Tue, 18 Oct 2016 23:31:28 GMT  
		Size: 61.2 KB (61182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9593d4dc09d848f5658628a1ed99f65aebb2aade4eb669ee748b2b842b2c36d6`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 8.7 MB (8674378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799299443f6b8dcf942965da89c15c84757d2f8a1818e362c32b497512f195c0`  
		Last Modified: Tue, 18 Oct 2016 23:31:28 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf9b288abd671a7843ceb2e813bece7040b923066c09c4b49e1e15ccfc3c05c`  
		Last Modified: Tue, 18 Oct 2016 23:31:27 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3`

```console
$ docker pull joomla@sha256:199cd16488def388cf3f839af2cbf4d8e81106751522a458965877f7e6cdceeb
```

-	Platforms:
	-	linux; amd64

### `joomla:3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172339154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d71786c1f5e13188d3a98e60d0b43bf4d9eb77a221fc76123b42a966766734`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:24:54 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 23 Sep 2016 21:24:55 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 23 Sep 2016 21:24:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 23 Sep 2016 21:24:57 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 23 Sep 2016 21:24:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 23 Sep 2016 21:24:58 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 23 Sep 2016 21:24:59 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_VERSION=5.6.27
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Tue, 18 Oct 2016 22:16:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 22:16:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 22:18:38 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:39 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:39 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 22:18:39 GMT
EXPOSE 80/tcp
# Tue, 18 Oct 2016 22:18:40 GMT
CMD ["apache2-foreground"]
# Tue, 18 Oct 2016 23:26:50 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Oct 2016 23:26:56 GMT
RUN a2enmod rewrite
# Tue, 18 Oct 2016 23:27:22 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 18 Oct 2016 23:27:32 GMT
RUN docker-php-ext-install mysqli
# Tue, 18 Oct 2016 23:27:38 GMT
RUN docker-php-ext-install mcrypt
# Tue, 18 Oct 2016 23:27:38 GMT
VOLUME [/var/www/html]
# Tue, 18 Oct 2016 23:27:39 GMT
ENV JOOMLA_VERSION=3.6.3
# Tue, 18 Oct 2016 23:27:39 GMT
ENV JOOMLA_SHA1=01eb3724e191fcfd034b54f54745703a8a4f288e
# Tue, 18 Oct 2016 23:27:48 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Oct 2016 23:27:49 GMT
COPY file:b25e9b5a462d4b2e75d2eed880fc99f96f68514e36f2b37606804556f62a3752 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:27:49 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 18 Oct 2016 23:27:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:27:50 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05dcf7da5898c6779d2972c35fd7695512c8d3639d4316f6c5fb5c92cf7a587`  
		Last Modified: Fri, 23 Sep 2016 21:27:38 GMT  
		Size: 2.8 MB (2849086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38500c090694a52f13ac803f1786e1b6eaf47d8efa2c5129d5db2ef52ebbf1`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cba9364455184cd78edc0d317497664453686c65153710dfd4e9cce5ead08e`  
		Last Modified: Fri, 23 Sep 2016 21:27:34 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc53f7ef49062cf4ce2d2a03d7d282c1c79cc3de048012605d5e53abe748c83b`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a63a6d9035b4a9307637baf440ceb1cda513c63cee3dbf7f29b406eea9b5b`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa490b7aed8861ecbbe1c255ee85380164b1a9d8eaa1e5b1f1f8ccd8e2f67aa`  
		Last Modified: Tue, 18 Oct 2016 22:50:22 GMT  
		Size: 12.6 MB (12568611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61528b650294f5d073daa77c3e93b5d6356fc8b5e363020fce1eec7116793887`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3008a0fd5e49da089bb904a89c1c80f5e61042d41d2e8c4976be05d81b2373e`  
		Last Modified: Tue, 18 Oct 2016 22:50:25 GMT  
		Size: 15.9 MB (15917192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7356731c09772ede9c24db74c8b5d9e8b1013c08896379f0c4f8de3c7d50e9`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996cde54ee6db0399b6b6fef5da36b1f864cd9a5cc5b346f60d8327f81326ddd`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a755992d52fa637098dc15b2d472508ecae93c988d3936d142ae108b38ef203`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5df6e090be94d5fda04f59f19f851607910a342531db54e020685855f47852`  
		Last Modified: Tue, 18 Oct 2016 23:31:32 GMT  
		Size: 3.0 MB (3048531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf22b00b685a264783346fe05e34d7edec500c7c2d5dc927488ac0051016931f`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 266.1 KB (266117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a953bffc29d9e193d9847bc9918d9a33c0ad0efe73747801cfe74d1f8d32281`  
		Last Modified: Tue, 18 Oct 2016 23:31:28 GMT  
		Size: 61.2 KB (61182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9593d4dc09d848f5658628a1ed99f65aebb2aade4eb669ee748b2b842b2c36d6`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 8.7 MB (8674378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799299443f6b8dcf942965da89c15c84757d2f8a1818e362c32b497512f195c0`  
		Last Modified: Tue, 18 Oct 2016 23:31:28 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf9b288abd671a7843ceb2e813bece7040b923066c09c4b49e1e15ccfc3c05c`  
		Last Modified: Tue, 18 Oct 2016 23:31:27 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:latest`

```console
$ docker pull joomla@sha256:199cd16488def388cf3f839af2cbf4d8e81106751522a458965877f7e6cdceeb
```

-	Platforms:
	-	linux; amd64

### `joomla:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172339154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d71786c1f5e13188d3a98e60d0b43bf4d9eb77a221fc76123b42a966766734`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:24:54 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 23 Sep 2016 21:24:55 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 23 Sep 2016 21:24:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 23 Sep 2016 21:24:57 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 23 Sep 2016 21:24:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 23 Sep 2016 21:24:58 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 23 Sep 2016 21:24:59 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_VERSION=5.6.27
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Tue, 18 Oct 2016 22:16:10 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Tue, 18 Oct 2016 22:16:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 22:16:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 22:18:38 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:39 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:18:39 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 22:18:39 GMT
EXPOSE 80/tcp
# Tue, 18 Oct 2016 22:18:40 GMT
CMD ["apache2-foreground"]
# Tue, 18 Oct 2016 23:26:50 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Oct 2016 23:26:56 GMT
RUN a2enmod rewrite
# Tue, 18 Oct 2016 23:27:22 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 18 Oct 2016 23:27:32 GMT
RUN docker-php-ext-install mysqli
# Tue, 18 Oct 2016 23:27:38 GMT
RUN docker-php-ext-install mcrypt
# Tue, 18 Oct 2016 23:27:38 GMT
VOLUME [/var/www/html]
# Tue, 18 Oct 2016 23:27:39 GMT
ENV JOOMLA_VERSION=3.6.3
# Tue, 18 Oct 2016 23:27:39 GMT
ENV JOOMLA_SHA1=01eb3724e191fcfd034b54f54745703a8a4f288e
# Tue, 18 Oct 2016 23:27:48 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Oct 2016 23:27:49 GMT
COPY file:b25e9b5a462d4b2e75d2eed880fc99f96f68514e36f2b37606804556f62a3752 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:27:49 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 18 Oct 2016 23:27:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:27:50 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05dcf7da5898c6779d2972c35fd7695512c8d3639d4316f6c5fb5c92cf7a587`  
		Last Modified: Fri, 23 Sep 2016 21:27:38 GMT  
		Size: 2.8 MB (2849086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38500c090694a52f13ac803f1786e1b6eaf47d8efa2c5129d5db2ef52ebbf1`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cba9364455184cd78edc0d317497664453686c65153710dfd4e9cce5ead08e`  
		Last Modified: Fri, 23 Sep 2016 21:27:34 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc53f7ef49062cf4ce2d2a03d7d282c1c79cc3de048012605d5e53abe748c83b`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a63a6d9035b4a9307637baf440ceb1cda513c63cee3dbf7f29b406eea9b5b`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa490b7aed8861ecbbe1c255ee85380164b1a9d8eaa1e5b1f1f8ccd8e2f67aa`  
		Last Modified: Tue, 18 Oct 2016 22:50:22 GMT  
		Size: 12.6 MB (12568611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61528b650294f5d073daa77c3e93b5d6356fc8b5e363020fce1eec7116793887`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3008a0fd5e49da089bb904a89c1c80f5e61042d41d2e8c4976be05d81b2373e`  
		Last Modified: Tue, 18 Oct 2016 22:50:25 GMT  
		Size: 15.9 MB (15917192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7356731c09772ede9c24db74c8b5d9e8b1013c08896379f0c4f8de3c7d50e9`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996cde54ee6db0399b6b6fef5da36b1f864cd9a5cc5b346f60d8327f81326ddd`  
		Last Modified: Tue, 18 Oct 2016 22:50:20 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a755992d52fa637098dc15b2d472508ecae93c988d3936d142ae108b38ef203`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5df6e090be94d5fda04f59f19f851607910a342531db54e020685855f47852`  
		Last Modified: Tue, 18 Oct 2016 23:31:32 GMT  
		Size: 3.0 MB (3048531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf22b00b685a264783346fe05e34d7edec500c7c2d5dc927488ac0051016931f`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 266.1 KB (266117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a953bffc29d9e193d9847bc9918d9a33c0ad0efe73747801cfe74d1f8d32281`  
		Last Modified: Tue, 18 Oct 2016 23:31:28 GMT  
		Size: 61.2 KB (61182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9593d4dc09d848f5658628a1ed99f65aebb2aade4eb669ee748b2b842b2c36d6`  
		Last Modified: Tue, 18 Oct 2016 23:31:31 GMT  
		Size: 8.7 MB (8674378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799299443f6b8dcf942965da89c15c84757d2f8a1818e362c32b497512f195c0`  
		Last Modified: Tue, 18 Oct 2016 23:31:28 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf9b288abd671a7843ceb2e813bece7040b923066c09c4b49e1e15ccfc3c05c`  
		Last Modified: Tue, 18 Oct 2016 23:31:27 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.3-apache-php7`

```console
$ docker pull joomla@sha256:df282ec858b153f404b77599f0a3039770e9335968f8a400796e02502bd70cb3
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.3-apache-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176301700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f39a41cc29ad6fd05ec24a0ae2004a337c7be2708557ac36152d0ccaa75430`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:24:54 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 23 Sep 2016 21:24:55 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 23 Sep 2016 21:24:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 23 Sep 2016 21:24:57 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 23 Sep 2016 21:24:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 23 Sep 2016 21:24:58 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 23 Sep 2016 21:41:20 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 14 Oct 2016 23:23:12 GMT
ENV PHP_VERSION=7.0.12
# Tue, 18 Oct 2016 21:49:30 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.12.tar.xz.asc/from/this/mirror
# Tue, 18 Oct 2016 21:49:30 GMT
ENV PHP_SHA256=f3d6c49e1c242e5995dec15e503fde996c327eb86cd7ec45c690e93c971b83ff PHP_MD5=bdcc4dbdac90c2a39422786653059f70
# Tue, 18 Oct 2016 21:49:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 21:49:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:52:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 21:52:04 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:52:05 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:52:05 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 21:52:05 GMT
EXPOSE 80/tcp
# Tue, 18 Oct 2016 21:52:05 GMT
CMD ["apache2-foreground"]
# Tue, 18 Oct 2016 23:27:51 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Oct 2016 23:27:52 GMT
RUN a2enmod rewrite
# Tue, 18 Oct 2016 23:28:20 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 18 Oct 2016 23:28:30 GMT
RUN docker-php-ext-install mysqli
# Tue, 18 Oct 2016 23:28:36 GMT
RUN docker-php-ext-install mcrypt
# Tue, 18 Oct 2016 23:28:40 GMT
VOLUME [/var/www/html]
# Tue, 18 Oct 2016 23:28:46 GMT
ENV JOOMLA_VERSION=3.6.3
# Tue, 18 Oct 2016 23:28:46 GMT
ENV JOOMLA_SHA1=01eb3724e191fcfd034b54f54745703a8a4f288e
# Tue, 18 Oct 2016 23:28:54 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Oct 2016 23:29:00 GMT
COPY file:b25e9b5a462d4b2e75d2eed880fc99f96f68514e36f2b37606804556f62a3752 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:29:00 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 18 Oct 2016 23:29:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:29:01 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05dcf7da5898c6779d2972c35fd7695512c8d3639d4316f6c5fb5c92cf7a587`  
		Last Modified: Fri, 23 Sep 2016 21:27:38 GMT  
		Size: 2.8 MB (2849086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38500c090694a52f13ac803f1786e1b6eaf47d8efa2c5129d5db2ef52ebbf1`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cba9364455184cd78edc0d317497664453686c65153710dfd4e9cce5ead08e`  
		Last Modified: Fri, 23 Sep 2016 21:27:34 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc53f7ef49062cf4ce2d2a03d7d282c1c79cc3de048012605d5e53abe748c83b`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a63a6d9035b4a9307637baf440ceb1cda513c63cee3dbf7f29b406eea9b5b`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38bc0a9031f0d8d51e8ce37f570d47a260bab28fb7b01ce6e7a97d593e0782b0`  
		Last Modified: Tue, 18 Oct 2016 22:44:06 GMT  
		Size: 12.6 MB (12649182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707d619b5aa32a8fc5811ca00536d4953593df31b4aee0d7f4885637aecaca2b`  
		Last Modified: Tue, 18 Oct 2016 22:44:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972b2adb78d6d07851e5a9d87b2b01ff7ff1e73d8d115e7492ab12d3bde365af`  
		Last Modified: Tue, 18 Oct 2016 22:44:12 GMT  
		Size: 19.8 MB (19835552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c070ee48346190f54d1493a4266a04378c73ba25ce7a97f32632727cfdbb1830`  
		Last Modified: Tue, 18 Oct 2016 22:44:04 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6bd4d1ec02418c73f6ec9368c3621706b8aa856815097506926462f0374e36`  
		Last Modified: Tue, 18 Oct 2016 22:44:04 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978f52187af5b12b003c413a8c7ee27b4ae105585619c7ea5329e5f7bd50e397`  
		Last Modified: Tue, 18 Oct 2016 23:33:33 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4478202ef4b8e1ec6ac29adf7ea3914b77ade62af409c36db2542047d92e5916`  
		Last Modified: Tue, 18 Oct 2016 23:33:34 GMT  
		Size: 3.0 MB (3025679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb945431297c251309ecd781a6d00447a082811c28d1c8fac49c61c32f2f729`  
		Last Modified: Tue, 18 Oct 2016 23:33:29 GMT  
		Size: 257.3 KB (257338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8760c54923f804cc98cde12314262a70d435408d66c5ed0d4826b2a3c860a1f3`  
		Last Modified: Tue, 18 Oct 2016 23:33:31 GMT  
		Size: 56.4 KB (56417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e87839b4323d0592301c1cc22bb58f43a67231f0316eab0a0b453e7e9c42613`  
		Last Modified: Tue, 18 Oct 2016 23:33:33 GMT  
		Size: 8.7 MB (8674380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22593db00eaa7e32f24c936214f4b135d106ddf0372fc1986c0a5d6400ff9bc`  
		Last Modified: Tue, 18 Oct 2016 23:33:29 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2601ef327ff7a8ca6a597c5a2a40609e636bc8221966d38817135ba404c85ac5`  
		Last Modified: Tue, 18 Oct 2016 23:33:29 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-apache-php7`

```console
$ docker pull joomla@sha256:df282ec858b153f404b77599f0a3039770e9335968f8a400796e02502bd70cb3
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-apache-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176301700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f39a41cc29ad6fd05ec24a0ae2004a337c7be2708557ac36152d0ccaa75430`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:24:54 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 23 Sep 2016 21:24:55 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 23 Sep 2016 21:24:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 23 Sep 2016 21:24:57 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 23 Sep 2016 21:24:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 23 Sep 2016 21:24:58 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 23 Sep 2016 21:41:20 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 14 Oct 2016 23:23:12 GMT
ENV PHP_VERSION=7.0.12
# Tue, 18 Oct 2016 21:49:30 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.12.tar.xz.asc/from/this/mirror
# Tue, 18 Oct 2016 21:49:30 GMT
ENV PHP_SHA256=f3d6c49e1c242e5995dec15e503fde996c327eb86cd7ec45c690e93c971b83ff PHP_MD5=bdcc4dbdac90c2a39422786653059f70
# Tue, 18 Oct 2016 21:49:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 21:49:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:52:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 21:52:04 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:52:05 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:52:05 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 21:52:05 GMT
EXPOSE 80/tcp
# Tue, 18 Oct 2016 21:52:05 GMT
CMD ["apache2-foreground"]
# Tue, 18 Oct 2016 23:27:51 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Oct 2016 23:27:52 GMT
RUN a2enmod rewrite
# Tue, 18 Oct 2016 23:28:20 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 18 Oct 2016 23:28:30 GMT
RUN docker-php-ext-install mysqli
# Tue, 18 Oct 2016 23:28:36 GMT
RUN docker-php-ext-install mcrypt
# Tue, 18 Oct 2016 23:28:40 GMT
VOLUME [/var/www/html]
# Tue, 18 Oct 2016 23:28:46 GMT
ENV JOOMLA_VERSION=3.6.3
# Tue, 18 Oct 2016 23:28:46 GMT
ENV JOOMLA_SHA1=01eb3724e191fcfd034b54f54745703a8a4f288e
# Tue, 18 Oct 2016 23:28:54 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Oct 2016 23:29:00 GMT
COPY file:b25e9b5a462d4b2e75d2eed880fc99f96f68514e36f2b37606804556f62a3752 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:29:00 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 18 Oct 2016 23:29:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:29:01 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05dcf7da5898c6779d2972c35fd7695512c8d3639d4316f6c5fb5c92cf7a587`  
		Last Modified: Fri, 23 Sep 2016 21:27:38 GMT  
		Size: 2.8 MB (2849086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38500c090694a52f13ac803f1786e1b6eaf47d8efa2c5129d5db2ef52ebbf1`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cba9364455184cd78edc0d317497664453686c65153710dfd4e9cce5ead08e`  
		Last Modified: Fri, 23 Sep 2016 21:27:34 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc53f7ef49062cf4ce2d2a03d7d282c1c79cc3de048012605d5e53abe748c83b`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a63a6d9035b4a9307637baf440ceb1cda513c63cee3dbf7f29b406eea9b5b`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38bc0a9031f0d8d51e8ce37f570d47a260bab28fb7b01ce6e7a97d593e0782b0`  
		Last Modified: Tue, 18 Oct 2016 22:44:06 GMT  
		Size: 12.6 MB (12649182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707d619b5aa32a8fc5811ca00536d4953593df31b4aee0d7f4885637aecaca2b`  
		Last Modified: Tue, 18 Oct 2016 22:44:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972b2adb78d6d07851e5a9d87b2b01ff7ff1e73d8d115e7492ab12d3bde365af`  
		Last Modified: Tue, 18 Oct 2016 22:44:12 GMT  
		Size: 19.8 MB (19835552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c070ee48346190f54d1493a4266a04378c73ba25ce7a97f32632727cfdbb1830`  
		Last Modified: Tue, 18 Oct 2016 22:44:04 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6bd4d1ec02418c73f6ec9368c3621706b8aa856815097506926462f0374e36`  
		Last Modified: Tue, 18 Oct 2016 22:44:04 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978f52187af5b12b003c413a8c7ee27b4ae105585619c7ea5329e5f7bd50e397`  
		Last Modified: Tue, 18 Oct 2016 23:33:33 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4478202ef4b8e1ec6ac29adf7ea3914b77ade62af409c36db2542047d92e5916`  
		Last Modified: Tue, 18 Oct 2016 23:33:34 GMT  
		Size: 3.0 MB (3025679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb945431297c251309ecd781a6d00447a082811c28d1c8fac49c61c32f2f729`  
		Last Modified: Tue, 18 Oct 2016 23:33:29 GMT  
		Size: 257.3 KB (257338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8760c54923f804cc98cde12314262a70d435408d66c5ed0d4826b2a3c860a1f3`  
		Last Modified: Tue, 18 Oct 2016 23:33:31 GMT  
		Size: 56.4 KB (56417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e87839b4323d0592301c1cc22bb58f43a67231f0316eab0a0b453e7e9c42613`  
		Last Modified: Tue, 18 Oct 2016 23:33:33 GMT  
		Size: 8.7 MB (8674380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22593db00eaa7e32f24c936214f4b135d106ddf0372fc1986c0a5d6400ff9bc`  
		Last Modified: Tue, 18 Oct 2016 23:33:29 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2601ef327ff7a8ca6a597c5a2a40609e636bc8221966d38817135ba404c85ac5`  
		Last Modified: Tue, 18 Oct 2016 23:33:29 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache-php7`

```console
$ docker pull joomla@sha256:df282ec858b153f404b77599f0a3039770e9335968f8a400796e02502bd70cb3
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176301700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f39a41cc29ad6fd05ec24a0ae2004a337c7be2708557ac36152d0ccaa75430`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:24:54 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 23 Sep 2016 21:24:55 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 23 Sep 2016 21:24:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 23 Sep 2016 21:24:57 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 23 Sep 2016 21:24:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 23 Sep 2016 21:24:58 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 23 Sep 2016 21:41:20 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 14 Oct 2016 23:23:12 GMT
ENV PHP_VERSION=7.0.12
# Tue, 18 Oct 2016 21:49:30 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.12.tar.xz.asc/from/this/mirror
# Tue, 18 Oct 2016 21:49:30 GMT
ENV PHP_SHA256=f3d6c49e1c242e5995dec15e503fde996c327eb86cd7ec45c690e93c971b83ff PHP_MD5=bdcc4dbdac90c2a39422786653059f70
# Tue, 18 Oct 2016 21:49:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 21:49:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:52:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 21:52:04 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:52:05 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:52:05 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 21:52:05 GMT
EXPOSE 80/tcp
# Tue, 18 Oct 2016 21:52:05 GMT
CMD ["apache2-foreground"]
# Tue, 18 Oct 2016 23:27:51 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Oct 2016 23:27:52 GMT
RUN a2enmod rewrite
# Tue, 18 Oct 2016 23:28:20 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 18 Oct 2016 23:28:30 GMT
RUN docker-php-ext-install mysqli
# Tue, 18 Oct 2016 23:28:36 GMT
RUN docker-php-ext-install mcrypt
# Tue, 18 Oct 2016 23:28:40 GMT
VOLUME [/var/www/html]
# Tue, 18 Oct 2016 23:28:46 GMT
ENV JOOMLA_VERSION=3.6.3
# Tue, 18 Oct 2016 23:28:46 GMT
ENV JOOMLA_SHA1=01eb3724e191fcfd034b54f54745703a8a4f288e
# Tue, 18 Oct 2016 23:28:54 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Oct 2016 23:29:00 GMT
COPY file:b25e9b5a462d4b2e75d2eed880fc99f96f68514e36f2b37606804556f62a3752 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:29:00 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 18 Oct 2016 23:29:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:29:01 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05dcf7da5898c6779d2972c35fd7695512c8d3639d4316f6c5fb5c92cf7a587`  
		Last Modified: Fri, 23 Sep 2016 21:27:38 GMT  
		Size: 2.8 MB (2849086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38500c090694a52f13ac803f1786e1b6eaf47d8efa2c5129d5db2ef52ebbf1`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cba9364455184cd78edc0d317497664453686c65153710dfd4e9cce5ead08e`  
		Last Modified: Fri, 23 Sep 2016 21:27:34 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc53f7ef49062cf4ce2d2a03d7d282c1c79cc3de048012605d5e53abe748c83b`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a63a6d9035b4a9307637baf440ceb1cda513c63cee3dbf7f29b406eea9b5b`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38bc0a9031f0d8d51e8ce37f570d47a260bab28fb7b01ce6e7a97d593e0782b0`  
		Last Modified: Tue, 18 Oct 2016 22:44:06 GMT  
		Size: 12.6 MB (12649182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707d619b5aa32a8fc5811ca00536d4953593df31b4aee0d7f4885637aecaca2b`  
		Last Modified: Tue, 18 Oct 2016 22:44:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972b2adb78d6d07851e5a9d87b2b01ff7ff1e73d8d115e7492ab12d3bde365af`  
		Last Modified: Tue, 18 Oct 2016 22:44:12 GMT  
		Size: 19.8 MB (19835552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c070ee48346190f54d1493a4266a04378c73ba25ce7a97f32632727cfdbb1830`  
		Last Modified: Tue, 18 Oct 2016 22:44:04 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6bd4d1ec02418c73f6ec9368c3621706b8aa856815097506926462f0374e36`  
		Last Modified: Tue, 18 Oct 2016 22:44:04 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978f52187af5b12b003c413a8c7ee27b4ae105585619c7ea5329e5f7bd50e397`  
		Last Modified: Tue, 18 Oct 2016 23:33:33 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4478202ef4b8e1ec6ac29adf7ea3914b77ade62af409c36db2542047d92e5916`  
		Last Modified: Tue, 18 Oct 2016 23:33:34 GMT  
		Size: 3.0 MB (3025679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb945431297c251309ecd781a6d00447a082811c28d1c8fac49c61c32f2f729`  
		Last Modified: Tue, 18 Oct 2016 23:33:29 GMT  
		Size: 257.3 KB (257338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8760c54923f804cc98cde12314262a70d435408d66c5ed0d4826b2a3c860a1f3`  
		Last Modified: Tue, 18 Oct 2016 23:33:31 GMT  
		Size: 56.4 KB (56417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e87839b4323d0592301c1cc22bb58f43a67231f0316eab0a0b453e7e9c42613`  
		Last Modified: Tue, 18 Oct 2016 23:33:33 GMT  
		Size: 8.7 MB (8674380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22593db00eaa7e32f24c936214f4b135d106ddf0372fc1986c0a5d6400ff9bc`  
		Last Modified: Tue, 18 Oct 2016 23:33:29 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2601ef327ff7a8ca6a597c5a2a40609e636bc8221966d38817135ba404c85ac5`  
		Last Modified: Tue, 18 Oct 2016 23:33:29 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:apache-php7`

```console
$ docker pull joomla@sha256:df282ec858b153f404b77599f0a3039770e9335968f8a400796e02502bd70cb3
```

-	Platforms:
	-	linux; amd64

### `joomla:apache-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176301700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f39a41cc29ad6fd05ec24a0ae2004a337c7be2708557ac36152d0ccaa75430`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:24:54 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 23 Sep 2016 21:24:55 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 23 Sep 2016 21:24:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 23 Sep 2016 21:24:57 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 23 Sep 2016 21:24:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 23 Sep 2016 21:24:58 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 23 Sep 2016 21:41:20 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 14 Oct 2016 23:23:12 GMT
ENV PHP_VERSION=7.0.12
# Tue, 18 Oct 2016 21:49:30 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.12.tar.xz.asc/from/this/mirror
# Tue, 18 Oct 2016 21:49:30 GMT
ENV PHP_SHA256=f3d6c49e1c242e5995dec15e503fde996c327eb86cd7ec45c690e93c971b83ff PHP_MD5=bdcc4dbdac90c2a39422786653059f70
# Tue, 18 Oct 2016 21:49:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 21:49:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:52:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 21:52:04 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:52:05 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:52:05 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 21:52:05 GMT
EXPOSE 80/tcp
# Tue, 18 Oct 2016 21:52:05 GMT
CMD ["apache2-foreground"]
# Tue, 18 Oct 2016 23:27:51 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Oct 2016 23:27:52 GMT
RUN a2enmod rewrite
# Tue, 18 Oct 2016 23:28:20 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 18 Oct 2016 23:28:30 GMT
RUN docker-php-ext-install mysqli
# Tue, 18 Oct 2016 23:28:36 GMT
RUN docker-php-ext-install mcrypt
# Tue, 18 Oct 2016 23:28:40 GMT
VOLUME [/var/www/html]
# Tue, 18 Oct 2016 23:28:46 GMT
ENV JOOMLA_VERSION=3.6.3
# Tue, 18 Oct 2016 23:28:46 GMT
ENV JOOMLA_SHA1=01eb3724e191fcfd034b54f54745703a8a4f288e
# Tue, 18 Oct 2016 23:28:54 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Oct 2016 23:29:00 GMT
COPY file:b25e9b5a462d4b2e75d2eed880fc99f96f68514e36f2b37606804556f62a3752 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:29:00 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 18 Oct 2016 23:29:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:29:01 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05dcf7da5898c6779d2972c35fd7695512c8d3639d4316f6c5fb5c92cf7a587`  
		Last Modified: Fri, 23 Sep 2016 21:27:38 GMT  
		Size: 2.8 MB (2849086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38500c090694a52f13ac803f1786e1b6eaf47d8efa2c5129d5db2ef52ebbf1`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cba9364455184cd78edc0d317497664453686c65153710dfd4e9cce5ead08e`  
		Last Modified: Fri, 23 Sep 2016 21:27:34 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc53f7ef49062cf4ce2d2a03d7d282c1c79cc3de048012605d5e53abe748c83b`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a63a6d9035b4a9307637baf440ceb1cda513c63cee3dbf7f29b406eea9b5b`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38bc0a9031f0d8d51e8ce37f570d47a260bab28fb7b01ce6e7a97d593e0782b0`  
		Last Modified: Tue, 18 Oct 2016 22:44:06 GMT  
		Size: 12.6 MB (12649182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707d619b5aa32a8fc5811ca00536d4953593df31b4aee0d7f4885637aecaca2b`  
		Last Modified: Tue, 18 Oct 2016 22:44:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972b2adb78d6d07851e5a9d87b2b01ff7ff1e73d8d115e7492ab12d3bde365af`  
		Last Modified: Tue, 18 Oct 2016 22:44:12 GMT  
		Size: 19.8 MB (19835552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c070ee48346190f54d1493a4266a04378c73ba25ce7a97f32632727cfdbb1830`  
		Last Modified: Tue, 18 Oct 2016 22:44:04 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6bd4d1ec02418c73f6ec9368c3621706b8aa856815097506926462f0374e36`  
		Last Modified: Tue, 18 Oct 2016 22:44:04 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978f52187af5b12b003c413a8c7ee27b4ae105585619c7ea5329e5f7bd50e397`  
		Last Modified: Tue, 18 Oct 2016 23:33:33 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4478202ef4b8e1ec6ac29adf7ea3914b77ade62af409c36db2542047d92e5916`  
		Last Modified: Tue, 18 Oct 2016 23:33:34 GMT  
		Size: 3.0 MB (3025679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb945431297c251309ecd781a6d00447a082811c28d1c8fac49c61c32f2f729`  
		Last Modified: Tue, 18 Oct 2016 23:33:29 GMT  
		Size: 257.3 KB (257338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8760c54923f804cc98cde12314262a70d435408d66c5ed0d4826b2a3c860a1f3`  
		Last Modified: Tue, 18 Oct 2016 23:33:31 GMT  
		Size: 56.4 KB (56417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e87839b4323d0592301c1cc22bb58f43a67231f0316eab0a0b453e7e9c42613`  
		Last Modified: Tue, 18 Oct 2016 23:33:33 GMT  
		Size: 8.7 MB (8674380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22593db00eaa7e32f24c936214f4b135d106ddf0372fc1986c0a5d6400ff9bc`  
		Last Modified: Tue, 18 Oct 2016 23:33:29 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2601ef327ff7a8ca6a597c5a2a40609e636bc8221966d38817135ba404c85ac5`  
		Last Modified: Tue, 18 Oct 2016 23:33:29 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.3-fpm`

```console
$ docker pull joomla@sha256:d5c956ab55fce37af44dad52b35f40d639aa42d9f018b42019d78212ca9d95da
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.3-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.4 MB (162376857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d2087cafc0ce9d2482c4fe1c6b321be0504efa037c45daf09c9b18315cb0fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:28:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 23 Sep 2016 21:28:05 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 18 Oct 2016 22:18:40 GMT
ENV PHP_VERSION=5.6.27
# Tue, 18 Oct 2016 22:18:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Tue, 18 Oct 2016 22:18:41 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Tue, 18 Oct 2016 22:18:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 22:18:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:22:23 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 22:22:24 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:22:24 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 22:22:25 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 18 Oct 2016 22:22:26 GMT
EXPOSE 9000/tcp
# Tue, 18 Oct 2016 22:22:26 GMT
CMD ["php-fpm"]
# Tue, 18 Oct 2016 23:29:02 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Oct 2016 23:29:27 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 18 Oct 2016 23:29:40 GMT
RUN docker-php-ext-install mysqli
# Tue, 18 Oct 2016 23:29:46 GMT
RUN docker-php-ext-install mcrypt
# Tue, 18 Oct 2016 23:29:47 GMT
VOLUME [/var/www/html]
# Tue, 18 Oct 2016 23:29:52 GMT
ENV JOOMLA_VERSION=3.6.3
# Tue, 18 Oct 2016 23:29:53 GMT
ENV JOOMLA_SHA1=01eb3724e191fcfd034b54f54745703a8a4f288e
# Tue, 18 Oct 2016 23:30:02 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Oct 2016 23:30:02 GMT
COPY file:b25e9b5a462d4b2e75d2eed880fc99f96f68514e36f2b37606804556f62a3752 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:30:03 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 18 Oct 2016 23:30:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:30:04 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002ea0291febb9b69e615ef37e9526232eb7def111a785ad4f270bdce37af3da`  
		Last Modified: Tue, 18 Oct 2016 22:51:09 GMT  
		Size: 12.5 MB (12549501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb346baa33eff23720320afb81b396474fc1e9829c7f3141c587c67b9280e131`  
		Last Modified: Tue, 18 Oct 2016 22:51:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9b9b46d6c746914f51773558aed6749b454eb13707dc9b349e135f60c947bc`  
		Last Modified: Tue, 18 Oct 2016 22:51:07 GMT  
		Size: 8.8 MB (8842015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda9beb7c9764adce8137abdae7eff77ca703466b2ec671349db54461844cf8`  
		Last Modified: Tue, 18 Oct 2016 22:51:04 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3363c569c0a1b6700e755969d637209821ad091ab351e813dceb90871063f13`  
		Last Modified: Tue, 18 Oct 2016 22:51:05 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58f4651e542709a354b6dccc3e0f7727e4604c15636a79b8e79714f8d172cc1`  
		Last Modified: Tue, 18 Oct 2016 22:51:04 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b700b634f33151edb5cc1c5fd5c0247523710c6d340bad91a12d47c974f10de`  
		Last Modified: Tue, 18 Oct 2016 23:34:32 GMT  
		Size: 3.0 MB (3025110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be075653d63b1e1488c906c027f586f6ab95d6fad1638d0db82c012e00099b16`  
		Last Modified: Tue, 18 Oct 2016 23:34:28 GMT  
		Size: 266.1 KB (266117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c148f35433c6d685016c6e0dbad94b36eff5f2b00a7bcbfa4a58afc26d344b`  
		Last Modified: Tue, 18 Oct 2016 23:34:28 GMT  
		Size: 61.2 KB (61176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20764bf62d31d212862e7c83481e9e0e23b43a0082bf363df1a2c63eb7716f73`  
		Last Modified: Tue, 18 Oct 2016 23:34:32 GMT  
		Size: 8.7 MB (8674377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f537008d9f812260aeef0efe0c36451a7601b2a5ebaf3f3a89ffa3dda4442896`  
		Last Modified: Tue, 18 Oct 2016 23:34:28 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2460e68ef9fb0dc779965f88501db26566a2d31f780fe823e6d9f0b0096cbfa8`  
		Last Modified: Tue, 18 Oct 2016 23:34:29 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-fpm`

```console
$ docker pull joomla@sha256:d5c956ab55fce37af44dad52b35f40d639aa42d9f018b42019d78212ca9d95da
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.4 MB (162376857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d2087cafc0ce9d2482c4fe1c6b321be0504efa037c45daf09c9b18315cb0fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:28:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 23 Sep 2016 21:28:05 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 18 Oct 2016 22:18:40 GMT
ENV PHP_VERSION=5.6.27
# Tue, 18 Oct 2016 22:18:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Tue, 18 Oct 2016 22:18:41 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Tue, 18 Oct 2016 22:18:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 22:18:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:22:23 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 22:22:24 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:22:24 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 22:22:25 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 18 Oct 2016 22:22:26 GMT
EXPOSE 9000/tcp
# Tue, 18 Oct 2016 22:22:26 GMT
CMD ["php-fpm"]
# Tue, 18 Oct 2016 23:29:02 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Oct 2016 23:29:27 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 18 Oct 2016 23:29:40 GMT
RUN docker-php-ext-install mysqli
# Tue, 18 Oct 2016 23:29:46 GMT
RUN docker-php-ext-install mcrypt
# Tue, 18 Oct 2016 23:29:47 GMT
VOLUME [/var/www/html]
# Tue, 18 Oct 2016 23:29:52 GMT
ENV JOOMLA_VERSION=3.6.3
# Tue, 18 Oct 2016 23:29:53 GMT
ENV JOOMLA_SHA1=01eb3724e191fcfd034b54f54745703a8a4f288e
# Tue, 18 Oct 2016 23:30:02 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Oct 2016 23:30:02 GMT
COPY file:b25e9b5a462d4b2e75d2eed880fc99f96f68514e36f2b37606804556f62a3752 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:30:03 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 18 Oct 2016 23:30:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:30:04 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002ea0291febb9b69e615ef37e9526232eb7def111a785ad4f270bdce37af3da`  
		Last Modified: Tue, 18 Oct 2016 22:51:09 GMT  
		Size: 12.5 MB (12549501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb346baa33eff23720320afb81b396474fc1e9829c7f3141c587c67b9280e131`  
		Last Modified: Tue, 18 Oct 2016 22:51:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9b9b46d6c746914f51773558aed6749b454eb13707dc9b349e135f60c947bc`  
		Last Modified: Tue, 18 Oct 2016 22:51:07 GMT  
		Size: 8.8 MB (8842015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda9beb7c9764adce8137abdae7eff77ca703466b2ec671349db54461844cf8`  
		Last Modified: Tue, 18 Oct 2016 22:51:04 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3363c569c0a1b6700e755969d637209821ad091ab351e813dceb90871063f13`  
		Last Modified: Tue, 18 Oct 2016 22:51:05 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58f4651e542709a354b6dccc3e0f7727e4604c15636a79b8e79714f8d172cc1`  
		Last Modified: Tue, 18 Oct 2016 22:51:04 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b700b634f33151edb5cc1c5fd5c0247523710c6d340bad91a12d47c974f10de`  
		Last Modified: Tue, 18 Oct 2016 23:34:32 GMT  
		Size: 3.0 MB (3025110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be075653d63b1e1488c906c027f586f6ab95d6fad1638d0db82c012e00099b16`  
		Last Modified: Tue, 18 Oct 2016 23:34:28 GMT  
		Size: 266.1 KB (266117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c148f35433c6d685016c6e0dbad94b36eff5f2b00a7bcbfa4a58afc26d344b`  
		Last Modified: Tue, 18 Oct 2016 23:34:28 GMT  
		Size: 61.2 KB (61176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20764bf62d31d212862e7c83481e9e0e23b43a0082bf363df1a2c63eb7716f73`  
		Last Modified: Tue, 18 Oct 2016 23:34:32 GMT  
		Size: 8.7 MB (8674377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f537008d9f812260aeef0efe0c36451a7601b2a5ebaf3f3a89ffa3dda4442896`  
		Last Modified: Tue, 18 Oct 2016 23:34:28 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2460e68ef9fb0dc779965f88501db26566a2d31f780fe823e6d9f0b0096cbfa8`  
		Last Modified: Tue, 18 Oct 2016 23:34:29 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-fpm`

```console
$ docker pull joomla@sha256:d5c956ab55fce37af44dad52b35f40d639aa42d9f018b42019d78212ca9d95da
```

-	Platforms:
	-	linux; amd64

### `joomla:3-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.4 MB (162376857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d2087cafc0ce9d2482c4fe1c6b321be0504efa037c45daf09c9b18315cb0fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:28:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 23 Sep 2016 21:28:05 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 18 Oct 2016 22:18:40 GMT
ENV PHP_VERSION=5.6.27
# Tue, 18 Oct 2016 22:18:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Tue, 18 Oct 2016 22:18:41 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Tue, 18 Oct 2016 22:18:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 22:18:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:22:23 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 22:22:24 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:22:24 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 22:22:25 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 18 Oct 2016 22:22:26 GMT
EXPOSE 9000/tcp
# Tue, 18 Oct 2016 22:22:26 GMT
CMD ["php-fpm"]
# Tue, 18 Oct 2016 23:29:02 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Oct 2016 23:29:27 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 18 Oct 2016 23:29:40 GMT
RUN docker-php-ext-install mysqli
# Tue, 18 Oct 2016 23:29:46 GMT
RUN docker-php-ext-install mcrypt
# Tue, 18 Oct 2016 23:29:47 GMT
VOLUME [/var/www/html]
# Tue, 18 Oct 2016 23:29:52 GMT
ENV JOOMLA_VERSION=3.6.3
# Tue, 18 Oct 2016 23:29:53 GMT
ENV JOOMLA_SHA1=01eb3724e191fcfd034b54f54745703a8a4f288e
# Tue, 18 Oct 2016 23:30:02 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Oct 2016 23:30:02 GMT
COPY file:b25e9b5a462d4b2e75d2eed880fc99f96f68514e36f2b37606804556f62a3752 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:30:03 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 18 Oct 2016 23:30:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:30:04 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002ea0291febb9b69e615ef37e9526232eb7def111a785ad4f270bdce37af3da`  
		Last Modified: Tue, 18 Oct 2016 22:51:09 GMT  
		Size: 12.5 MB (12549501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb346baa33eff23720320afb81b396474fc1e9829c7f3141c587c67b9280e131`  
		Last Modified: Tue, 18 Oct 2016 22:51:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9b9b46d6c746914f51773558aed6749b454eb13707dc9b349e135f60c947bc`  
		Last Modified: Tue, 18 Oct 2016 22:51:07 GMT  
		Size: 8.8 MB (8842015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda9beb7c9764adce8137abdae7eff77ca703466b2ec671349db54461844cf8`  
		Last Modified: Tue, 18 Oct 2016 22:51:04 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3363c569c0a1b6700e755969d637209821ad091ab351e813dceb90871063f13`  
		Last Modified: Tue, 18 Oct 2016 22:51:05 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58f4651e542709a354b6dccc3e0f7727e4604c15636a79b8e79714f8d172cc1`  
		Last Modified: Tue, 18 Oct 2016 22:51:04 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b700b634f33151edb5cc1c5fd5c0247523710c6d340bad91a12d47c974f10de`  
		Last Modified: Tue, 18 Oct 2016 23:34:32 GMT  
		Size: 3.0 MB (3025110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be075653d63b1e1488c906c027f586f6ab95d6fad1638d0db82c012e00099b16`  
		Last Modified: Tue, 18 Oct 2016 23:34:28 GMT  
		Size: 266.1 KB (266117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c148f35433c6d685016c6e0dbad94b36eff5f2b00a7bcbfa4a58afc26d344b`  
		Last Modified: Tue, 18 Oct 2016 23:34:28 GMT  
		Size: 61.2 KB (61176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20764bf62d31d212862e7c83481e9e0e23b43a0082bf363df1a2c63eb7716f73`  
		Last Modified: Tue, 18 Oct 2016 23:34:32 GMT  
		Size: 8.7 MB (8674377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f537008d9f812260aeef0efe0c36451a7601b2a5ebaf3f3a89ffa3dda4442896`  
		Last Modified: Tue, 18 Oct 2016 23:34:28 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2460e68ef9fb0dc779965f88501db26566a2d31f780fe823e6d9f0b0096cbfa8`  
		Last Modified: Tue, 18 Oct 2016 23:34:29 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:fpm`

```console
$ docker pull joomla@sha256:d5c956ab55fce37af44dad52b35f40d639aa42d9f018b42019d78212ca9d95da
```

-	Platforms:
	-	linux; amd64

### `joomla:fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.4 MB (162376857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d2087cafc0ce9d2482c4fe1c6b321be0504efa037c45daf09c9b18315cb0fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:28:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 23 Sep 2016 21:28:05 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 18 Oct 2016 22:18:40 GMT
ENV PHP_VERSION=5.6.27
# Tue, 18 Oct 2016 22:18:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Tue, 18 Oct 2016 22:18:41 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Tue, 18 Oct 2016 22:18:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 22:18:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:22:23 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 22:22:24 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:22:24 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 22:22:25 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 18 Oct 2016 22:22:26 GMT
EXPOSE 9000/tcp
# Tue, 18 Oct 2016 22:22:26 GMT
CMD ["php-fpm"]
# Tue, 18 Oct 2016 23:29:02 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Oct 2016 23:29:27 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 18 Oct 2016 23:29:40 GMT
RUN docker-php-ext-install mysqli
# Tue, 18 Oct 2016 23:29:46 GMT
RUN docker-php-ext-install mcrypt
# Tue, 18 Oct 2016 23:29:47 GMT
VOLUME [/var/www/html]
# Tue, 18 Oct 2016 23:29:52 GMT
ENV JOOMLA_VERSION=3.6.3
# Tue, 18 Oct 2016 23:29:53 GMT
ENV JOOMLA_SHA1=01eb3724e191fcfd034b54f54745703a8a4f288e
# Tue, 18 Oct 2016 23:30:02 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Oct 2016 23:30:02 GMT
COPY file:b25e9b5a462d4b2e75d2eed880fc99f96f68514e36f2b37606804556f62a3752 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:30:03 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 18 Oct 2016 23:30:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:30:04 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002ea0291febb9b69e615ef37e9526232eb7def111a785ad4f270bdce37af3da`  
		Last Modified: Tue, 18 Oct 2016 22:51:09 GMT  
		Size: 12.5 MB (12549501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb346baa33eff23720320afb81b396474fc1e9829c7f3141c587c67b9280e131`  
		Last Modified: Tue, 18 Oct 2016 22:51:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9b9b46d6c746914f51773558aed6749b454eb13707dc9b349e135f60c947bc`  
		Last Modified: Tue, 18 Oct 2016 22:51:07 GMT  
		Size: 8.8 MB (8842015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda9beb7c9764adce8137abdae7eff77ca703466b2ec671349db54461844cf8`  
		Last Modified: Tue, 18 Oct 2016 22:51:04 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3363c569c0a1b6700e755969d637209821ad091ab351e813dceb90871063f13`  
		Last Modified: Tue, 18 Oct 2016 22:51:05 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58f4651e542709a354b6dccc3e0f7727e4604c15636a79b8e79714f8d172cc1`  
		Last Modified: Tue, 18 Oct 2016 22:51:04 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b700b634f33151edb5cc1c5fd5c0247523710c6d340bad91a12d47c974f10de`  
		Last Modified: Tue, 18 Oct 2016 23:34:32 GMT  
		Size: 3.0 MB (3025110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be075653d63b1e1488c906c027f586f6ab95d6fad1638d0db82c012e00099b16`  
		Last Modified: Tue, 18 Oct 2016 23:34:28 GMT  
		Size: 266.1 KB (266117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c148f35433c6d685016c6e0dbad94b36eff5f2b00a7bcbfa4a58afc26d344b`  
		Last Modified: Tue, 18 Oct 2016 23:34:28 GMT  
		Size: 61.2 KB (61176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20764bf62d31d212862e7c83481e9e0e23b43a0082bf363df1a2c63eb7716f73`  
		Last Modified: Tue, 18 Oct 2016 23:34:32 GMT  
		Size: 8.7 MB (8674377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f537008d9f812260aeef0efe0c36451a7601b2a5ebaf3f3a89ffa3dda4442896`  
		Last Modified: Tue, 18 Oct 2016 23:34:28 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2460e68ef9fb0dc779965f88501db26566a2d31f780fe823e6d9f0b0096cbfa8`  
		Last Modified: Tue, 18 Oct 2016 23:34:29 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.3-fpm-php7`

```console
$ docker pull joomla@sha256:f0d52e1a8578a5f077375d16de6eb4c40b568a204b3f75ab7315a7f58dacc0db
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.3-fpm-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.3 MB (166312231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01f353142cdc7ce3fc88757410dedce5d180bfab1c668ea0c9af77705e36adbe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:28:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 23 Sep 2016 21:44:51 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 14 Oct 2016 23:25:47 GMT
ENV PHP_VERSION=7.0.12
# Tue, 18 Oct 2016 21:52:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.12.tar.xz.asc/from/this/mirror
# Tue, 18 Oct 2016 21:52:06 GMT
ENV PHP_SHA256=f3d6c49e1c242e5995dec15e503fde996c327eb86cd7ec45c690e93c971b83ff PHP_MD5=bdcc4dbdac90c2a39422786653059f70
# Tue, 18 Oct 2016 21:52:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 21:52:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:55:54 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 21:55:55 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:55:56 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 21:55:57 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 18 Oct 2016 21:55:57 GMT
EXPOSE 9000/tcp
# Tue, 18 Oct 2016 21:55:57 GMT
CMD ["php-fpm"]
# Tue, 18 Oct 2016 23:30:04 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Oct 2016 23:30:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 18 Oct 2016 23:30:43 GMT
RUN docker-php-ext-install mysqli
# Tue, 18 Oct 2016 23:30:49 GMT
RUN docker-php-ext-install mcrypt
# Tue, 18 Oct 2016 23:30:49 GMT
VOLUME [/var/www/html]
# Tue, 18 Oct 2016 23:30:50 GMT
ENV JOOMLA_VERSION=3.6.3
# Tue, 18 Oct 2016 23:30:50 GMT
ENV JOOMLA_SHA1=01eb3724e191fcfd034b54f54745703a8a4f288e
# Tue, 18 Oct 2016 23:31:02 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Oct 2016 23:31:03 GMT
COPY file:b25e9b5a462d4b2e75d2eed880fc99f96f68514e36f2b37606804556f62a3752 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:31:11 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 18 Oct 2016 23:31:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:31:12 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee3e2cc92e5940b6e9fccdc1074ce8f628b34584a4ef12e6ecb62c6aacc1443`  
		Last Modified: Tue, 18 Oct 2016 22:45:06 GMT  
		Size: 12.6 MB (12630256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36301e6fbe96162dcb56f99c6fa6c6ac1e2b64a37f75264aeac3198ae4c95bbd`  
		Last Modified: Tue, 18 Oct 2016 22:45:02 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab3e0cbb43b29ee5bd1c0433dd5934d631d0b468bd4e2ed2e4395fa79663147`  
		Last Modified: Tue, 18 Oct 2016 22:45:05 GMT  
		Size: 12.7 MB (12732851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98eaec9a949e494ad18133b425b371fe8a7bf515a64f9a417e751a2b65edb3f`  
		Last Modified: Tue, 18 Oct 2016 22:45:02 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194135e62975781419a134ace7ea70671d5af0ab6f2c32232aea7f65722e3c53`  
		Last Modified: Tue, 18 Oct 2016 22:45:01 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ca893aef33e07a81adef2e71ff258a3f75a4c38cff02e0f45e5cdef3512ee5`  
		Last Modified: Tue, 18 Oct 2016 22:45:02 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af19a17743d11fb4db782d0c978e0a7e79a6b80436b14d2212e7def0833d8cdd`  
		Last Modified: Tue, 18 Oct 2016 23:35:30 GMT  
		Size: 3.0 MB (3002371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52be6e6b71d8a1ebadc260a36789a9c7698080eeaad1583a2e26623873d63ae1`  
		Last Modified: Tue, 18 Oct 2016 23:35:26 GMT  
		Size: 257.3 KB (257343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2313cb23dab0c14f0f28356d8829fa19447695db18fa5a5a9718d0108405c7`  
		Last Modified: Tue, 18 Oct 2016 23:35:26 GMT  
		Size: 56.4 KB (56419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc6a328972cfdbe5a3c8363534e62ebe64519d1d5249eefce205a37ba9cb0cb`  
		Last Modified: Tue, 18 Oct 2016 23:35:29 GMT  
		Size: 8.7 MB (8674381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c36df7b0046a87582cc27825726a3446ef5d17b1dca0d39c512f374c0e57253`  
		Last Modified: Tue, 18 Oct 2016 23:35:26 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2759933afe0852b6d5623d2857ce8ed41ddeda024bb09ae8b5d6d7621c1ecd`  
		Last Modified: Tue, 18 Oct 2016 23:35:26 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-fpm-php7`

```console
$ docker pull joomla@sha256:f0d52e1a8578a5f077375d16de6eb4c40b568a204b3f75ab7315a7f58dacc0db
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-fpm-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.3 MB (166312231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01f353142cdc7ce3fc88757410dedce5d180bfab1c668ea0c9af77705e36adbe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:28:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 23 Sep 2016 21:44:51 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 14 Oct 2016 23:25:47 GMT
ENV PHP_VERSION=7.0.12
# Tue, 18 Oct 2016 21:52:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.12.tar.xz.asc/from/this/mirror
# Tue, 18 Oct 2016 21:52:06 GMT
ENV PHP_SHA256=f3d6c49e1c242e5995dec15e503fde996c327eb86cd7ec45c690e93c971b83ff PHP_MD5=bdcc4dbdac90c2a39422786653059f70
# Tue, 18 Oct 2016 21:52:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 21:52:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:55:54 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 21:55:55 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:55:56 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 21:55:57 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 18 Oct 2016 21:55:57 GMT
EXPOSE 9000/tcp
# Tue, 18 Oct 2016 21:55:57 GMT
CMD ["php-fpm"]
# Tue, 18 Oct 2016 23:30:04 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Oct 2016 23:30:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 18 Oct 2016 23:30:43 GMT
RUN docker-php-ext-install mysqli
# Tue, 18 Oct 2016 23:30:49 GMT
RUN docker-php-ext-install mcrypt
# Tue, 18 Oct 2016 23:30:49 GMT
VOLUME [/var/www/html]
# Tue, 18 Oct 2016 23:30:50 GMT
ENV JOOMLA_VERSION=3.6.3
# Tue, 18 Oct 2016 23:30:50 GMT
ENV JOOMLA_SHA1=01eb3724e191fcfd034b54f54745703a8a4f288e
# Tue, 18 Oct 2016 23:31:02 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Oct 2016 23:31:03 GMT
COPY file:b25e9b5a462d4b2e75d2eed880fc99f96f68514e36f2b37606804556f62a3752 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:31:11 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 18 Oct 2016 23:31:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:31:12 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee3e2cc92e5940b6e9fccdc1074ce8f628b34584a4ef12e6ecb62c6aacc1443`  
		Last Modified: Tue, 18 Oct 2016 22:45:06 GMT  
		Size: 12.6 MB (12630256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36301e6fbe96162dcb56f99c6fa6c6ac1e2b64a37f75264aeac3198ae4c95bbd`  
		Last Modified: Tue, 18 Oct 2016 22:45:02 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab3e0cbb43b29ee5bd1c0433dd5934d631d0b468bd4e2ed2e4395fa79663147`  
		Last Modified: Tue, 18 Oct 2016 22:45:05 GMT  
		Size: 12.7 MB (12732851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98eaec9a949e494ad18133b425b371fe8a7bf515a64f9a417e751a2b65edb3f`  
		Last Modified: Tue, 18 Oct 2016 22:45:02 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194135e62975781419a134ace7ea70671d5af0ab6f2c32232aea7f65722e3c53`  
		Last Modified: Tue, 18 Oct 2016 22:45:01 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ca893aef33e07a81adef2e71ff258a3f75a4c38cff02e0f45e5cdef3512ee5`  
		Last Modified: Tue, 18 Oct 2016 22:45:02 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af19a17743d11fb4db782d0c978e0a7e79a6b80436b14d2212e7def0833d8cdd`  
		Last Modified: Tue, 18 Oct 2016 23:35:30 GMT  
		Size: 3.0 MB (3002371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52be6e6b71d8a1ebadc260a36789a9c7698080eeaad1583a2e26623873d63ae1`  
		Last Modified: Tue, 18 Oct 2016 23:35:26 GMT  
		Size: 257.3 KB (257343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2313cb23dab0c14f0f28356d8829fa19447695db18fa5a5a9718d0108405c7`  
		Last Modified: Tue, 18 Oct 2016 23:35:26 GMT  
		Size: 56.4 KB (56419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc6a328972cfdbe5a3c8363534e62ebe64519d1d5249eefce205a37ba9cb0cb`  
		Last Modified: Tue, 18 Oct 2016 23:35:29 GMT  
		Size: 8.7 MB (8674381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c36df7b0046a87582cc27825726a3446ef5d17b1dca0d39c512f374c0e57253`  
		Last Modified: Tue, 18 Oct 2016 23:35:26 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2759933afe0852b6d5623d2857ce8ed41ddeda024bb09ae8b5d6d7621c1ecd`  
		Last Modified: Tue, 18 Oct 2016 23:35:26 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-fpm-php7`

```console
$ docker pull joomla@sha256:f0d52e1a8578a5f077375d16de6eb4c40b568a204b3f75ab7315a7f58dacc0db
```

-	Platforms:
	-	linux; amd64

### `joomla:3-fpm-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.3 MB (166312231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01f353142cdc7ce3fc88757410dedce5d180bfab1c668ea0c9af77705e36adbe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:28:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 23 Sep 2016 21:44:51 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 14 Oct 2016 23:25:47 GMT
ENV PHP_VERSION=7.0.12
# Tue, 18 Oct 2016 21:52:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.12.tar.xz.asc/from/this/mirror
# Tue, 18 Oct 2016 21:52:06 GMT
ENV PHP_SHA256=f3d6c49e1c242e5995dec15e503fde996c327eb86cd7ec45c690e93c971b83ff PHP_MD5=bdcc4dbdac90c2a39422786653059f70
# Tue, 18 Oct 2016 21:52:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 21:52:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:55:54 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 21:55:55 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:55:56 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 21:55:57 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 18 Oct 2016 21:55:57 GMT
EXPOSE 9000/tcp
# Tue, 18 Oct 2016 21:55:57 GMT
CMD ["php-fpm"]
# Tue, 18 Oct 2016 23:30:04 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Oct 2016 23:30:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 18 Oct 2016 23:30:43 GMT
RUN docker-php-ext-install mysqli
# Tue, 18 Oct 2016 23:30:49 GMT
RUN docker-php-ext-install mcrypt
# Tue, 18 Oct 2016 23:30:49 GMT
VOLUME [/var/www/html]
# Tue, 18 Oct 2016 23:30:50 GMT
ENV JOOMLA_VERSION=3.6.3
# Tue, 18 Oct 2016 23:30:50 GMT
ENV JOOMLA_SHA1=01eb3724e191fcfd034b54f54745703a8a4f288e
# Tue, 18 Oct 2016 23:31:02 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Oct 2016 23:31:03 GMT
COPY file:b25e9b5a462d4b2e75d2eed880fc99f96f68514e36f2b37606804556f62a3752 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:31:11 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 18 Oct 2016 23:31:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:31:12 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee3e2cc92e5940b6e9fccdc1074ce8f628b34584a4ef12e6ecb62c6aacc1443`  
		Last Modified: Tue, 18 Oct 2016 22:45:06 GMT  
		Size: 12.6 MB (12630256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36301e6fbe96162dcb56f99c6fa6c6ac1e2b64a37f75264aeac3198ae4c95bbd`  
		Last Modified: Tue, 18 Oct 2016 22:45:02 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab3e0cbb43b29ee5bd1c0433dd5934d631d0b468bd4e2ed2e4395fa79663147`  
		Last Modified: Tue, 18 Oct 2016 22:45:05 GMT  
		Size: 12.7 MB (12732851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98eaec9a949e494ad18133b425b371fe8a7bf515a64f9a417e751a2b65edb3f`  
		Last Modified: Tue, 18 Oct 2016 22:45:02 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194135e62975781419a134ace7ea70671d5af0ab6f2c32232aea7f65722e3c53`  
		Last Modified: Tue, 18 Oct 2016 22:45:01 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ca893aef33e07a81adef2e71ff258a3f75a4c38cff02e0f45e5cdef3512ee5`  
		Last Modified: Tue, 18 Oct 2016 22:45:02 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af19a17743d11fb4db782d0c978e0a7e79a6b80436b14d2212e7def0833d8cdd`  
		Last Modified: Tue, 18 Oct 2016 23:35:30 GMT  
		Size: 3.0 MB (3002371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52be6e6b71d8a1ebadc260a36789a9c7698080eeaad1583a2e26623873d63ae1`  
		Last Modified: Tue, 18 Oct 2016 23:35:26 GMT  
		Size: 257.3 KB (257343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2313cb23dab0c14f0f28356d8829fa19447695db18fa5a5a9718d0108405c7`  
		Last Modified: Tue, 18 Oct 2016 23:35:26 GMT  
		Size: 56.4 KB (56419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc6a328972cfdbe5a3c8363534e62ebe64519d1d5249eefce205a37ba9cb0cb`  
		Last Modified: Tue, 18 Oct 2016 23:35:29 GMT  
		Size: 8.7 MB (8674381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c36df7b0046a87582cc27825726a3446ef5d17b1dca0d39c512f374c0e57253`  
		Last Modified: Tue, 18 Oct 2016 23:35:26 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2759933afe0852b6d5623d2857ce8ed41ddeda024bb09ae8b5d6d7621c1ecd`  
		Last Modified: Tue, 18 Oct 2016 23:35:26 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:fpm-php7`

```console
$ docker pull joomla@sha256:f0d52e1a8578a5f077375d16de6eb4c40b568a204b3f75ab7315a7f58dacc0db
```

-	Platforms:
	-	linux; amd64

### `joomla:fpm-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.3 MB (166312231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01f353142cdc7ce3fc88757410dedce5d180bfab1c668ea0c9af77705e36adbe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:28:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 23 Sep 2016 21:44:51 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 14 Oct 2016 23:25:47 GMT
ENV PHP_VERSION=7.0.12
# Tue, 18 Oct 2016 21:52:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.12.tar.xz.asc/from/this/mirror
# Tue, 18 Oct 2016 21:52:06 GMT
ENV PHP_SHA256=f3d6c49e1c242e5995dec15e503fde996c327eb86cd7ec45c690e93c971b83ff PHP_MD5=bdcc4dbdac90c2a39422786653059f70
# Tue, 18 Oct 2016 21:52:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 21:52:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:55:54 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 21:55:55 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:55:56 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 21:55:57 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 18 Oct 2016 21:55:57 GMT
EXPOSE 9000/tcp
# Tue, 18 Oct 2016 21:55:57 GMT
CMD ["php-fpm"]
# Tue, 18 Oct 2016 23:30:04 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Oct 2016 23:30:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 18 Oct 2016 23:30:43 GMT
RUN docker-php-ext-install mysqli
# Tue, 18 Oct 2016 23:30:49 GMT
RUN docker-php-ext-install mcrypt
# Tue, 18 Oct 2016 23:30:49 GMT
VOLUME [/var/www/html]
# Tue, 18 Oct 2016 23:30:50 GMT
ENV JOOMLA_VERSION=3.6.3
# Tue, 18 Oct 2016 23:30:50 GMT
ENV JOOMLA_SHA1=01eb3724e191fcfd034b54f54745703a8a4f288e
# Tue, 18 Oct 2016 23:31:02 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Oct 2016 23:31:03 GMT
COPY file:b25e9b5a462d4b2e75d2eed880fc99f96f68514e36f2b37606804556f62a3752 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:31:11 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 18 Oct 2016 23:31:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:31:12 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee3e2cc92e5940b6e9fccdc1074ce8f628b34584a4ef12e6ecb62c6aacc1443`  
		Last Modified: Tue, 18 Oct 2016 22:45:06 GMT  
		Size: 12.6 MB (12630256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36301e6fbe96162dcb56f99c6fa6c6ac1e2b64a37f75264aeac3198ae4c95bbd`  
		Last Modified: Tue, 18 Oct 2016 22:45:02 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab3e0cbb43b29ee5bd1c0433dd5934d631d0b468bd4e2ed2e4395fa79663147`  
		Last Modified: Tue, 18 Oct 2016 22:45:05 GMT  
		Size: 12.7 MB (12732851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98eaec9a949e494ad18133b425b371fe8a7bf515a64f9a417e751a2b65edb3f`  
		Last Modified: Tue, 18 Oct 2016 22:45:02 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194135e62975781419a134ace7ea70671d5af0ab6f2c32232aea7f65722e3c53`  
		Last Modified: Tue, 18 Oct 2016 22:45:01 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ca893aef33e07a81adef2e71ff258a3f75a4c38cff02e0f45e5cdef3512ee5`  
		Last Modified: Tue, 18 Oct 2016 22:45:02 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af19a17743d11fb4db782d0c978e0a7e79a6b80436b14d2212e7def0833d8cdd`  
		Last Modified: Tue, 18 Oct 2016 23:35:30 GMT  
		Size: 3.0 MB (3002371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52be6e6b71d8a1ebadc260a36789a9c7698080eeaad1583a2e26623873d63ae1`  
		Last Modified: Tue, 18 Oct 2016 23:35:26 GMT  
		Size: 257.3 KB (257343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2313cb23dab0c14f0f28356d8829fa19447695db18fa5a5a9718d0108405c7`  
		Last Modified: Tue, 18 Oct 2016 23:35:26 GMT  
		Size: 56.4 KB (56419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc6a328972cfdbe5a3c8363534e62ebe64519d1d5249eefce205a37ba9cb0cb`  
		Last Modified: Tue, 18 Oct 2016 23:35:29 GMT  
		Size: 8.7 MB (8674381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c36df7b0046a87582cc27825726a3446ef5d17b1dca0d39c512f374c0e57253`  
		Last Modified: Tue, 18 Oct 2016 23:35:26 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2759933afe0852b6d5623d2857ce8ed41ddeda024bb09ae8b5d6d7621c1ecd`  
		Last Modified: Tue, 18 Oct 2016 23:35:26 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
