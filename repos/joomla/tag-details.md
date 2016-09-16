<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

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

```console
$ docker pull joomla@sha256:232daaff1ebbb3ccff2cd235b94a15210b9108c3673c05c5997ced38d7fa3305
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.2-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171586990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32238a0af7d6218add1289fc8105cef88deed043d5f12d0f07116e8d8d7bd6e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:21:21 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 31 Aug 2016 00:21:22 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 31 Aug 2016 00:21:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 31 Aug 2016 00:21:24 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 31 Aug 2016 00:21:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 31 Aug 2016 00:34:48 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:35:36 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:35:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:37:51 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:51 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:52 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:37:52 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:37:52 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 21:58:22 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 16 Sep 2016 21:58:22 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 21:58:43 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 16 Sep 2016 21:58:50 GMT
RUN docker-php-ext-install mysqli
# Fri, 16 Sep 2016 21:58:50 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 21:58:51 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 16 Sep 2016 21:58:51 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 16 Sep 2016 21:58:58 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 16 Sep 2016 21:58:58 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 16 Sep 2016 21:58:59 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 16 Sep 2016 21:58:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 21:59:00 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9632186b6198e59b441d935261b11ff1c87e5cd9167ca4919c12f7cd776cfb`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 2.8 MB (2846751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa737a56f54d953a4a488dc224cbb55d0c0ea44aae67e531b17a70fb4b42c91`  
		Last Modified: Wed, 31 Aug 2016 16:57:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d454914546db3a7df0bc7e37300f6c19f8710b1d6b539865641c841a1c81d`  
		Last Modified: Wed, 31 Aug 2016 16:57:46 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2de374782c02050ab1a225e1602a0157d489852b1a25833f0d767e12d7607ad`  
		Last Modified: Wed, 31 Aug 2016 16:57:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2793df33d916e62e622430074d131cbb6e53d5c4fbd04f3eec825543522cf6`  
		Last Modified: Wed, 31 Aug 2016 16:57:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e04a84359e7cf9895f75bde7ab17d42aad62f3064b837fb7fbef20c5d39b663`  
		Last Modified: Fri, 16 Sep 2016 21:02:57 GMT  
		Size: 12.4 MB (12417486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b78dd93da18cc92c3f4f8d95b3723ce3744e73cb4294394815bdf2752f052e`  
		Last Modified: Fri, 16 Sep 2016 21:02:55 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5a185cc4ffd3fe5b851650ec791d11f5f1a4f6d39025088522728d4e8b0207`  
		Last Modified: Fri, 16 Sep 2016 21:03:00 GMT  
		Size: 15.9 MB (15906800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf93fe985e6684a5806487ff5b23efa84e4d76ce77f10e9dff3bf1a951c896`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02b0950172b2c8ca14a3447bf85adc6ddc07a07fad7e92a48c7066a7a7ae693`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96956b1b7ead312302fbd7c09dec6b1dcde84511ef55324cf62e7142f7489ef0`  
		Last Modified: Fri, 16 Sep 2016 21:59:10 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc21180859621de98286165cdf24e7f2962a63f9f430ec4b50b8da1bfe8dd6d`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 2.8 MB (2841107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10f121901a86651e6f3faca1b980d1fda7a6530617a6f15d41f255a3d480c75`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 266.1 KB (266116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5cd7926e6da3b801dcc47e7638a82e1e9c906f6e961b3e25db8c444c81d76a`  
		Last Modified: Fri, 16 Sep 2016 21:59:09 GMT  
		Size: 8.4 MB (8351910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9872ea8d2b2ebdb42daccf4318915a0f60420ef73a6add9735f581646a4cdd64`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495f3d5598a903df13cde78315e964fe9b4d0f77ef61a2f3390555b348405908`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-apache`

```console
$ docker pull joomla@sha256:232daaff1ebbb3ccff2cd235b94a15210b9108c3673c05c5997ced38d7fa3305
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171586990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32238a0af7d6218add1289fc8105cef88deed043d5f12d0f07116e8d8d7bd6e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:21:21 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 31 Aug 2016 00:21:22 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 31 Aug 2016 00:21:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 31 Aug 2016 00:21:24 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 31 Aug 2016 00:21:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 31 Aug 2016 00:34:48 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:35:36 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:35:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:37:51 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:51 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:52 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:37:52 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:37:52 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 21:58:22 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 16 Sep 2016 21:58:22 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 21:58:43 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 16 Sep 2016 21:58:50 GMT
RUN docker-php-ext-install mysqli
# Fri, 16 Sep 2016 21:58:50 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 21:58:51 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 16 Sep 2016 21:58:51 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 16 Sep 2016 21:58:58 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 16 Sep 2016 21:58:58 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 16 Sep 2016 21:58:59 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 16 Sep 2016 21:58:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 21:59:00 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9632186b6198e59b441d935261b11ff1c87e5cd9167ca4919c12f7cd776cfb`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 2.8 MB (2846751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa737a56f54d953a4a488dc224cbb55d0c0ea44aae67e531b17a70fb4b42c91`  
		Last Modified: Wed, 31 Aug 2016 16:57:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d454914546db3a7df0bc7e37300f6c19f8710b1d6b539865641c841a1c81d`  
		Last Modified: Wed, 31 Aug 2016 16:57:46 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2de374782c02050ab1a225e1602a0157d489852b1a25833f0d767e12d7607ad`  
		Last Modified: Wed, 31 Aug 2016 16:57:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2793df33d916e62e622430074d131cbb6e53d5c4fbd04f3eec825543522cf6`  
		Last Modified: Wed, 31 Aug 2016 16:57:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e04a84359e7cf9895f75bde7ab17d42aad62f3064b837fb7fbef20c5d39b663`  
		Last Modified: Fri, 16 Sep 2016 21:02:57 GMT  
		Size: 12.4 MB (12417486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b78dd93da18cc92c3f4f8d95b3723ce3744e73cb4294394815bdf2752f052e`  
		Last Modified: Fri, 16 Sep 2016 21:02:55 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5a185cc4ffd3fe5b851650ec791d11f5f1a4f6d39025088522728d4e8b0207`  
		Last Modified: Fri, 16 Sep 2016 21:03:00 GMT  
		Size: 15.9 MB (15906800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf93fe985e6684a5806487ff5b23efa84e4d76ce77f10e9dff3bf1a951c896`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02b0950172b2c8ca14a3447bf85adc6ddc07a07fad7e92a48c7066a7a7ae693`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96956b1b7ead312302fbd7c09dec6b1dcde84511ef55324cf62e7142f7489ef0`  
		Last Modified: Fri, 16 Sep 2016 21:59:10 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc21180859621de98286165cdf24e7f2962a63f9f430ec4b50b8da1bfe8dd6d`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 2.8 MB (2841107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10f121901a86651e6f3faca1b980d1fda7a6530617a6f15d41f255a3d480c75`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 266.1 KB (266116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5cd7926e6da3b801dcc47e7638a82e1e9c906f6e961b3e25db8c444c81d76a`  
		Last Modified: Fri, 16 Sep 2016 21:59:09 GMT  
		Size: 8.4 MB (8351910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9872ea8d2b2ebdb42daccf4318915a0f60420ef73a6add9735f581646a4cdd64`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495f3d5598a903df13cde78315e964fe9b4d0f77ef61a2f3390555b348405908`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache`

```console
$ docker pull joomla@sha256:232daaff1ebbb3ccff2cd235b94a15210b9108c3673c05c5997ced38d7fa3305
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171586990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32238a0af7d6218add1289fc8105cef88deed043d5f12d0f07116e8d8d7bd6e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:21:21 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 31 Aug 2016 00:21:22 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 31 Aug 2016 00:21:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 31 Aug 2016 00:21:24 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 31 Aug 2016 00:21:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 31 Aug 2016 00:34:48 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:35:36 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:35:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:37:51 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:51 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:52 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:37:52 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:37:52 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 21:58:22 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 16 Sep 2016 21:58:22 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 21:58:43 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 16 Sep 2016 21:58:50 GMT
RUN docker-php-ext-install mysqli
# Fri, 16 Sep 2016 21:58:50 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 21:58:51 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 16 Sep 2016 21:58:51 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 16 Sep 2016 21:58:58 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 16 Sep 2016 21:58:58 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 16 Sep 2016 21:58:59 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 16 Sep 2016 21:58:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 21:59:00 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9632186b6198e59b441d935261b11ff1c87e5cd9167ca4919c12f7cd776cfb`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 2.8 MB (2846751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa737a56f54d953a4a488dc224cbb55d0c0ea44aae67e531b17a70fb4b42c91`  
		Last Modified: Wed, 31 Aug 2016 16:57:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d454914546db3a7df0bc7e37300f6c19f8710b1d6b539865641c841a1c81d`  
		Last Modified: Wed, 31 Aug 2016 16:57:46 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2de374782c02050ab1a225e1602a0157d489852b1a25833f0d767e12d7607ad`  
		Last Modified: Wed, 31 Aug 2016 16:57:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2793df33d916e62e622430074d131cbb6e53d5c4fbd04f3eec825543522cf6`  
		Last Modified: Wed, 31 Aug 2016 16:57:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e04a84359e7cf9895f75bde7ab17d42aad62f3064b837fb7fbef20c5d39b663`  
		Last Modified: Fri, 16 Sep 2016 21:02:57 GMT  
		Size: 12.4 MB (12417486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b78dd93da18cc92c3f4f8d95b3723ce3744e73cb4294394815bdf2752f052e`  
		Last Modified: Fri, 16 Sep 2016 21:02:55 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5a185cc4ffd3fe5b851650ec791d11f5f1a4f6d39025088522728d4e8b0207`  
		Last Modified: Fri, 16 Sep 2016 21:03:00 GMT  
		Size: 15.9 MB (15906800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf93fe985e6684a5806487ff5b23efa84e4d76ce77f10e9dff3bf1a951c896`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02b0950172b2c8ca14a3447bf85adc6ddc07a07fad7e92a48c7066a7a7ae693`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96956b1b7ead312302fbd7c09dec6b1dcde84511ef55324cf62e7142f7489ef0`  
		Last Modified: Fri, 16 Sep 2016 21:59:10 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc21180859621de98286165cdf24e7f2962a63f9f430ec4b50b8da1bfe8dd6d`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 2.8 MB (2841107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10f121901a86651e6f3faca1b980d1fda7a6530617a6f15d41f255a3d480c75`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 266.1 KB (266116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5cd7926e6da3b801dcc47e7638a82e1e9c906f6e961b3e25db8c444c81d76a`  
		Last Modified: Fri, 16 Sep 2016 21:59:09 GMT  
		Size: 8.4 MB (8351910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9872ea8d2b2ebdb42daccf4318915a0f60420ef73a6add9735f581646a4cdd64`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495f3d5598a903df13cde78315e964fe9b4d0f77ef61a2f3390555b348405908`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:apache`

```console
$ docker pull joomla@sha256:4c3625b40a1d6c6a1ec215aae61c049103239f1b97efacefc1701a1821c389fa
```

-	Platforms:
	-	linux; amd64

### `joomla:apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171567624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f391c8198510efcc63e8f6b73cc0c1cb43ca53bea54d6a096fe5d2d604261569`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:21:21 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 31 Aug 2016 00:21:22 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 31 Aug 2016 00:21:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 31 Aug 2016 00:21:24 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 31 Aug 2016 00:21:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 31 Aug 2016 00:34:48 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 31 Aug 2016 00:34:48 GMT
ENV PHP_VERSION=5.6.25
# Wed, 31 Aug 2016 00:34:48 GMT
ENV PHP_FILENAME=php-5.6.25.tar.xz
# Wed, 31 Aug 2016 00:34:49 GMT
ENV PHP_SHA256=7535cd6e20040ccec4594cc386c6f15c3f2c88f24163294a31068cf7dfe7f644
# Wed, 31 Aug 2016 00:34:52 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 31 Aug 2016 00:34:52 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 31 Aug 2016 00:37:06 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 31 Aug 2016 00:37:06 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Wed, 31 Aug 2016 00:37:07 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 31 Aug 2016 00:37:07 GMT
WORKDIR /var/www/html
# Wed, 31 Aug 2016 00:37:07 GMT
EXPOSE 80/tcp
# Wed, 31 Aug 2016 00:37:08 GMT
CMD ["apache2-foreground"]
# Wed, 31 Aug 2016 01:58:29 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 31 Aug 2016 01:58:30 GMT
RUN a2enmod rewrite
# Wed, 31 Aug 2016 01:58:51 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 31 Aug 2016 01:58:59 GMT
RUN docker-php-ext-install mysqli
# Wed, 31 Aug 2016 01:58:59 GMT
VOLUME [/var/www/html]
# Wed, 31 Aug 2016 01:58:59 GMT
ENV JOOMLA_VERSION=3.6.2
# Wed, 31 Aug 2016 01:59:00 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Wed, 31 Aug 2016 01:59:07 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 31 Aug 2016 01:59:08 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 31 Aug 2016 01:59:08 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 31 Aug 2016 01:59:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Aug 2016 01:59:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9632186b6198e59b441d935261b11ff1c87e5cd9167ca4919c12f7cd776cfb`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 2.8 MB (2846751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa737a56f54d953a4a488dc224cbb55d0c0ea44aae67e531b17a70fb4b42c91`  
		Last Modified: Wed, 31 Aug 2016 16:57:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d454914546db3a7df0bc7e37300f6c19f8710b1d6b539865641c841a1c81d`  
		Last Modified: Wed, 31 Aug 2016 16:57:46 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2de374782c02050ab1a225e1602a0157d489852b1a25833f0d767e12d7607ad`  
		Last Modified: Wed, 31 Aug 2016 16:57:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2793df33d916e62e622430074d131cbb6e53d5c4fbd04f3eec825543522cf6`  
		Last Modified: Wed, 31 Aug 2016 16:57:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc671c179a7fe6ec0848f9c3ce4a23b8d80d95396a5c757759dff3a7e042495a`  
		Last Modified: Wed, 07 Sep 2016 19:04:19 GMT  
		Size: 12.4 MB (12409728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d8126c78b83732df2804d5d86e792fdbf6fceaa1e689b9e93e3c6efdeac22b`  
		Last Modified: Wed, 07 Sep 2016 19:04:19 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdababdd77074ef2a25abe92afbc9b389a2d64ae96f573a4b1429d32ad1194c0`  
		Last Modified: Wed, 07 Sep 2016 19:04:23 GMT  
		Size: 15.9 MB (15895268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e18d196a061adc66ca0188363aad2cd41eb1269af1b321635aafdceaea5546f`  
		Last Modified: Wed, 07 Sep 2016 19:04:16 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1cb18da9004e30826489993d31df9b5db556a82062fbb9af8f28a628b0672b`  
		Last Modified: Wed, 07 Sep 2016 19:04:17 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60439908175e84f51d6beda0519e10b4b37b412e70a16a2f60a9b9beb3a78b42`  
		Last Modified: Wed, 07 Sep 2016 21:23:42 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c25d27f061bbf22c3ab85736ed6a2e7a90dca499e477f4b0e6e08c85e8514a`  
		Last Modified: Wed, 07 Sep 2016 21:23:40 GMT  
		Size: 2.8 MB (2841061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc0351770dc2d16c99c538af12cf702afbd49ef4a46805521cca3887404eeb3`  
		Last Modified: Wed, 07 Sep 2016 21:23:40 GMT  
		Size: 266.1 KB (266116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a8b6272f0258c1478945106a87c5ebbc927bddfd9021f6ace06f6507850384`  
		Last Modified: Wed, 07 Sep 2016 21:23:44 GMT  
		Size: 8.4 MB (8351882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66fb1339d07bac5131e7788e9293d2ef85060c29df179b35f00c6f3e4e805d7`  
		Last Modified: Wed, 07 Sep 2016 21:23:38 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406151cbe4916bac983c913641519040600f5224506ce66ae6ad4e0d6b4e3acb`  
		Last Modified: Wed, 07 Sep 2016 21:23:40 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.2`

```console
$ docker pull joomla@sha256:232daaff1ebbb3ccff2cd235b94a15210b9108c3673c05c5997ced38d7fa3305
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171586990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32238a0af7d6218add1289fc8105cef88deed043d5f12d0f07116e8d8d7bd6e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:21:21 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 31 Aug 2016 00:21:22 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 31 Aug 2016 00:21:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 31 Aug 2016 00:21:24 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 31 Aug 2016 00:21:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 31 Aug 2016 00:34:48 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:35:36 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:35:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:37:51 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:51 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:52 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:37:52 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:37:52 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 21:58:22 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 16 Sep 2016 21:58:22 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 21:58:43 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 16 Sep 2016 21:58:50 GMT
RUN docker-php-ext-install mysqli
# Fri, 16 Sep 2016 21:58:50 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 21:58:51 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 16 Sep 2016 21:58:51 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 16 Sep 2016 21:58:58 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 16 Sep 2016 21:58:58 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 16 Sep 2016 21:58:59 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 16 Sep 2016 21:58:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 21:59:00 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9632186b6198e59b441d935261b11ff1c87e5cd9167ca4919c12f7cd776cfb`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 2.8 MB (2846751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa737a56f54d953a4a488dc224cbb55d0c0ea44aae67e531b17a70fb4b42c91`  
		Last Modified: Wed, 31 Aug 2016 16:57:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d454914546db3a7df0bc7e37300f6c19f8710b1d6b539865641c841a1c81d`  
		Last Modified: Wed, 31 Aug 2016 16:57:46 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2de374782c02050ab1a225e1602a0157d489852b1a25833f0d767e12d7607ad`  
		Last Modified: Wed, 31 Aug 2016 16:57:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2793df33d916e62e622430074d131cbb6e53d5c4fbd04f3eec825543522cf6`  
		Last Modified: Wed, 31 Aug 2016 16:57:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e04a84359e7cf9895f75bde7ab17d42aad62f3064b837fb7fbef20c5d39b663`  
		Last Modified: Fri, 16 Sep 2016 21:02:57 GMT  
		Size: 12.4 MB (12417486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b78dd93da18cc92c3f4f8d95b3723ce3744e73cb4294394815bdf2752f052e`  
		Last Modified: Fri, 16 Sep 2016 21:02:55 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5a185cc4ffd3fe5b851650ec791d11f5f1a4f6d39025088522728d4e8b0207`  
		Last Modified: Fri, 16 Sep 2016 21:03:00 GMT  
		Size: 15.9 MB (15906800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf93fe985e6684a5806487ff5b23efa84e4d76ce77f10e9dff3bf1a951c896`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02b0950172b2c8ca14a3447bf85adc6ddc07a07fad7e92a48c7066a7a7ae693`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96956b1b7ead312302fbd7c09dec6b1dcde84511ef55324cf62e7142f7489ef0`  
		Last Modified: Fri, 16 Sep 2016 21:59:10 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc21180859621de98286165cdf24e7f2962a63f9f430ec4b50b8da1bfe8dd6d`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 2.8 MB (2841107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10f121901a86651e6f3faca1b980d1fda7a6530617a6f15d41f255a3d480c75`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 266.1 KB (266116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5cd7926e6da3b801dcc47e7638a82e1e9c906f6e961b3e25db8c444c81d76a`  
		Last Modified: Fri, 16 Sep 2016 21:59:09 GMT  
		Size: 8.4 MB (8351910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9872ea8d2b2ebdb42daccf4318915a0f60420ef73a6add9735f581646a4cdd64`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495f3d5598a903df13cde78315e964fe9b4d0f77ef61a2f3390555b348405908`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6`

```console
$ docker pull joomla@sha256:232daaff1ebbb3ccff2cd235b94a15210b9108c3673c05c5997ced38d7fa3305
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171586990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32238a0af7d6218add1289fc8105cef88deed043d5f12d0f07116e8d8d7bd6e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:21:21 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 31 Aug 2016 00:21:22 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 31 Aug 2016 00:21:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 31 Aug 2016 00:21:24 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 31 Aug 2016 00:21:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 31 Aug 2016 00:34:48 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:35:36 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:35:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:37:51 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:51 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:52 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:37:52 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:37:52 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 21:58:22 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 16 Sep 2016 21:58:22 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 21:58:43 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 16 Sep 2016 21:58:50 GMT
RUN docker-php-ext-install mysqli
# Fri, 16 Sep 2016 21:58:50 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 21:58:51 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 16 Sep 2016 21:58:51 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 16 Sep 2016 21:58:58 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 16 Sep 2016 21:58:58 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 16 Sep 2016 21:58:59 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 16 Sep 2016 21:58:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 21:59:00 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9632186b6198e59b441d935261b11ff1c87e5cd9167ca4919c12f7cd776cfb`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 2.8 MB (2846751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa737a56f54d953a4a488dc224cbb55d0c0ea44aae67e531b17a70fb4b42c91`  
		Last Modified: Wed, 31 Aug 2016 16:57:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d454914546db3a7df0bc7e37300f6c19f8710b1d6b539865641c841a1c81d`  
		Last Modified: Wed, 31 Aug 2016 16:57:46 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2de374782c02050ab1a225e1602a0157d489852b1a25833f0d767e12d7607ad`  
		Last Modified: Wed, 31 Aug 2016 16:57:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2793df33d916e62e622430074d131cbb6e53d5c4fbd04f3eec825543522cf6`  
		Last Modified: Wed, 31 Aug 2016 16:57:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e04a84359e7cf9895f75bde7ab17d42aad62f3064b837fb7fbef20c5d39b663`  
		Last Modified: Fri, 16 Sep 2016 21:02:57 GMT  
		Size: 12.4 MB (12417486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b78dd93da18cc92c3f4f8d95b3723ce3744e73cb4294394815bdf2752f052e`  
		Last Modified: Fri, 16 Sep 2016 21:02:55 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5a185cc4ffd3fe5b851650ec791d11f5f1a4f6d39025088522728d4e8b0207`  
		Last Modified: Fri, 16 Sep 2016 21:03:00 GMT  
		Size: 15.9 MB (15906800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf93fe985e6684a5806487ff5b23efa84e4d76ce77f10e9dff3bf1a951c896`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02b0950172b2c8ca14a3447bf85adc6ddc07a07fad7e92a48c7066a7a7ae693`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96956b1b7ead312302fbd7c09dec6b1dcde84511ef55324cf62e7142f7489ef0`  
		Last Modified: Fri, 16 Sep 2016 21:59:10 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc21180859621de98286165cdf24e7f2962a63f9f430ec4b50b8da1bfe8dd6d`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 2.8 MB (2841107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10f121901a86651e6f3faca1b980d1fda7a6530617a6f15d41f255a3d480c75`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 266.1 KB (266116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5cd7926e6da3b801dcc47e7638a82e1e9c906f6e961b3e25db8c444c81d76a`  
		Last Modified: Fri, 16 Sep 2016 21:59:09 GMT  
		Size: 8.4 MB (8351910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9872ea8d2b2ebdb42daccf4318915a0f60420ef73a6add9735f581646a4cdd64`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495f3d5598a903df13cde78315e964fe9b4d0f77ef61a2f3390555b348405908`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3`

```console
$ docker pull joomla@sha256:232daaff1ebbb3ccff2cd235b94a15210b9108c3673c05c5997ced38d7fa3305
```

-	Platforms:
	-	linux; amd64

### `joomla:3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171586990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32238a0af7d6218add1289fc8105cef88deed043d5f12d0f07116e8d8d7bd6e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:21:21 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 31 Aug 2016 00:21:22 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 31 Aug 2016 00:21:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 31 Aug 2016 00:21:24 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 31 Aug 2016 00:21:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 31 Aug 2016 00:34:48 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:35:36 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:35:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:37:51 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:51 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:52 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:37:52 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:37:52 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 21:58:22 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 16 Sep 2016 21:58:22 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 21:58:43 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 16 Sep 2016 21:58:50 GMT
RUN docker-php-ext-install mysqli
# Fri, 16 Sep 2016 21:58:50 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 21:58:51 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 16 Sep 2016 21:58:51 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 16 Sep 2016 21:58:58 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 16 Sep 2016 21:58:58 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 16 Sep 2016 21:58:59 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 16 Sep 2016 21:58:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 21:59:00 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9632186b6198e59b441d935261b11ff1c87e5cd9167ca4919c12f7cd776cfb`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 2.8 MB (2846751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa737a56f54d953a4a488dc224cbb55d0c0ea44aae67e531b17a70fb4b42c91`  
		Last Modified: Wed, 31 Aug 2016 16:57:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d454914546db3a7df0bc7e37300f6c19f8710b1d6b539865641c841a1c81d`  
		Last Modified: Wed, 31 Aug 2016 16:57:46 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2de374782c02050ab1a225e1602a0157d489852b1a25833f0d767e12d7607ad`  
		Last Modified: Wed, 31 Aug 2016 16:57:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2793df33d916e62e622430074d131cbb6e53d5c4fbd04f3eec825543522cf6`  
		Last Modified: Wed, 31 Aug 2016 16:57:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e04a84359e7cf9895f75bde7ab17d42aad62f3064b837fb7fbef20c5d39b663`  
		Last Modified: Fri, 16 Sep 2016 21:02:57 GMT  
		Size: 12.4 MB (12417486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b78dd93da18cc92c3f4f8d95b3723ce3744e73cb4294394815bdf2752f052e`  
		Last Modified: Fri, 16 Sep 2016 21:02:55 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5a185cc4ffd3fe5b851650ec791d11f5f1a4f6d39025088522728d4e8b0207`  
		Last Modified: Fri, 16 Sep 2016 21:03:00 GMT  
		Size: 15.9 MB (15906800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf93fe985e6684a5806487ff5b23efa84e4d76ce77f10e9dff3bf1a951c896`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02b0950172b2c8ca14a3447bf85adc6ddc07a07fad7e92a48c7066a7a7ae693`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96956b1b7ead312302fbd7c09dec6b1dcde84511ef55324cf62e7142f7489ef0`  
		Last Modified: Fri, 16 Sep 2016 21:59:10 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc21180859621de98286165cdf24e7f2962a63f9f430ec4b50b8da1bfe8dd6d`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 2.8 MB (2841107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10f121901a86651e6f3faca1b980d1fda7a6530617a6f15d41f255a3d480c75`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 266.1 KB (266116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5cd7926e6da3b801dcc47e7638a82e1e9c906f6e961b3e25db8c444c81d76a`  
		Last Modified: Fri, 16 Sep 2016 21:59:09 GMT  
		Size: 8.4 MB (8351910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9872ea8d2b2ebdb42daccf4318915a0f60420ef73a6add9735f581646a4cdd64`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495f3d5598a903df13cde78315e964fe9b4d0f77ef61a2f3390555b348405908`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:latest`

```console
$ docker pull joomla@sha256:232daaff1ebbb3ccff2cd235b94a15210b9108c3673c05c5997ced38d7fa3305
```

-	Platforms:
	-	linux; amd64

### `joomla:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171586990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32238a0af7d6218add1289fc8105cef88deed043d5f12d0f07116e8d8d7bd6e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:21:21 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 31 Aug 2016 00:21:22 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 31 Aug 2016 00:21:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 31 Aug 2016 00:21:24 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 31 Aug 2016 00:21:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 31 Aug 2016 00:34:48 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:35:36 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:35:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:37:51 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:51 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:52 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:37:52 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:37:52 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 21:58:22 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 16 Sep 2016 21:58:22 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 21:58:43 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 16 Sep 2016 21:58:50 GMT
RUN docker-php-ext-install mysqli
# Fri, 16 Sep 2016 21:58:50 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 21:58:51 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 16 Sep 2016 21:58:51 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 16 Sep 2016 21:58:58 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 16 Sep 2016 21:58:58 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 16 Sep 2016 21:58:59 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 16 Sep 2016 21:58:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 21:59:00 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9632186b6198e59b441d935261b11ff1c87e5cd9167ca4919c12f7cd776cfb`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 2.8 MB (2846751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa737a56f54d953a4a488dc224cbb55d0c0ea44aae67e531b17a70fb4b42c91`  
		Last Modified: Wed, 31 Aug 2016 16:57:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d454914546db3a7df0bc7e37300f6c19f8710b1d6b539865641c841a1c81d`  
		Last Modified: Wed, 31 Aug 2016 16:57:46 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2de374782c02050ab1a225e1602a0157d489852b1a25833f0d767e12d7607ad`  
		Last Modified: Wed, 31 Aug 2016 16:57:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2793df33d916e62e622430074d131cbb6e53d5c4fbd04f3eec825543522cf6`  
		Last Modified: Wed, 31 Aug 2016 16:57:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e04a84359e7cf9895f75bde7ab17d42aad62f3064b837fb7fbef20c5d39b663`  
		Last Modified: Fri, 16 Sep 2016 21:02:57 GMT  
		Size: 12.4 MB (12417486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b78dd93da18cc92c3f4f8d95b3723ce3744e73cb4294394815bdf2752f052e`  
		Last Modified: Fri, 16 Sep 2016 21:02:55 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5a185cc4ffd3fe5b851650ec791d11f5f1a4f6d39025088522728d4e8b0207`  
		Last Modified: Fri, 16 Sep 2016 21:03:00 GMT  
		Size: 15.9 MB (15906800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf93fe985e6684a5806487ff5b23efa84e4d76ce77f10e9dff3bf1a951c896`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02b0950172b2c8ca14a3447bf85adc6ddc07a07fad7e92a48c7066a7a7ae693`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96956b1b7ead312302fbd7c09dec6b1dcde84511ef55324cf62e7142f7489ef0`  
		Last Modified: Fri, 16 Sep 2016 21:59:10 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc21180859621de98286165cdf24e7f2962a63f9f430ec4b50b8da1bfe8dd6d`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 2.8 MB (2841107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10f121901a86651e6f3faca1b980d1fda7a6530617a6f15d41f255a3d480c75`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 266.1 KB (266116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5cd7926e6da3b801dcc47e7638a82e1e9c906f6e961b3e25db8c444c81d76a`  
		Last Modified: Fri, 16 Sep 2016 21:59:09 GMT  
		Size: 8.4 MB (8351910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9872ea8d2b2ebdb42daccf4318915a0f60420ef73a6add9735f581646a4cdd64`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495f3d5598a903df13cde78315e964fe9b4d0f77ef61a2f3390555b348405908`  
		Last Modified: Fri, 16 Sep 2016 21:59:06 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.2-apache-php7`

```console
$ docker pull joomla@sha256:b81fbce139a92648a3ee3cc0abee54c8a69888f9c24ce519593bb84dd0867c94
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.2-apache-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175173778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2693865450d8214022b09b5c9a7cefe075f6f3278b4847d1e830191d178235a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:21:21 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 31 Aug 2016 00:21:22 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 31 Aug 2016 00:21:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 31 Aug 2016 00:21:24 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 31 Aug 2016 00:21:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 31 Aug 2016 00:21:26 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 16 Sep 2016 20:10:33 GMT
ENV PHP_VERSION=7.0.11
# Fri, 16 Sep 2016 20:10:33 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 16 Sep 2016 20:10:34 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 16 Sep 2016 20:10:37 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:10:37 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:56 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:12:57 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:58 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:58 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:12:58 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:12:58 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 22:03:09 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 16 Sep 2016 22:03:10 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 22:03:31 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 16 Sep 2016 22:03:38 GMT
RUN docker-php-ext-install mysqli
# Fri, 16 Sep 2016 22:03:38 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:03:39 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 16 Sep 2016 22:03:39 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 16 Sep 2016 22:03:46 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 16 Sep 2016 22:03:47 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 16 Sep 2016 22:03:47 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 16 Sep 2016 22:03:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:03:48 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9632186b6198e59b441d935261b11ff1c87e5cd9167ca4919c12f7cd776cfb`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 2.8 MB (2846751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa737a56f54d953a4a488dc224cbb55d0c0ea44aae67e531b17a70fb4b42c91`  
		Last Modified: Wed, 31 Aug 2016 16:57:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d454914546db3a7df0bc7e37300f6c19f8710b1d6b539865641c841a1c81d`  
		Last Modified: Wed, 31 Aug 2016 16:57:46 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2de374782c02050ab1a225e1602a0157d489852b1a25833f0d767e12d7607ad`  
		Last Modified: Wed, 31 Aug 2016 16:57:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2793df33d916e62e622430074d131cbb6e53d5c4fbd04f3eec825543522cf6`  
		Last Modified: Wed, 31 Aug 2016 16:57:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6780388c2f29f373e682fee0033da3e451ea9a2b897f61edac5041da17e27f`  
		Last Modified: Fri, 16 Sep 2016 20:57:57 GMT  
		Size: 12.3 MB (12262930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af0b463988f37f056f184669df6638bc6ef2e812b17e359c3ca31c4f440d021`  
		Last Modified: Fri, 16 Sep 2016 20:57:54 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035c54b616677db310be763fa513f5736878bfe3cf7a5d009b2b32ae1fdbd9a2`  
		Last Modified: Fri, 16 Sep 2016 20:58:01 GMT  
		Size: 19.7 MB (19680450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e46d9d737b7455c16c42328fbf726d42a3131adcd21e15f12250e4d18fbbbe2`  
		Last Modified: Fri, 16 Sep 2016 20:57:55 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d18e0362977dd44127c6f7d74b30e176b05b9f49549b2905cb15196e349c143`  
		Last Modified: Fri, 16 Sep 2016 20:57:54 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd8ca46d943a97fb33523425e8209ae195b625a7800dba121ece0a8a2777f5a`  
		Last Modified: Fri, 16 Sep 2016 22:03:57 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5175f850ef85c93360a7d1f26c1fbcbe4a13a88b54a99d346aafc044087d1bea`  
		Last Modified: Fri, 16 Sep 2016 22:03:55 GMT  
		Size: 2.8 MB (2817595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f5478585f329de049addd0eadaabf2183e3a19723a7ce9d6c11535fa41112a`  
		Last Modified: Fri, 16 Sep 2016 22:03:54 GMT  
		Size: 257.3 KB (257340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff1770c597f48542305c9abf3ba43ca5575598682cb663e6a2a13dc04126f3a`  
		Last Modified: Fri, 16 Sep 2016 22:03:57 GMT  
		Size: 8.4 MB (8351899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db832a51ef34d3d04441ef1df94f5f68dce8c1d5a9aa257711bbc1960e1e284`  
		Last Modified: Fri, 16 Sep 2016 22:03:54 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34688430900f60935e5f3156d8d72ba752716a423eef6b858abddfbaee6f869d`  
		Last Modified: Fri, 16 Sep 2016 22:03:54 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-apache-php7`

```console
$ docker pull joomla@sha256:b81fbce139a92648a3ee3cc0abee54c8a69888f9c24ce519593bb84dd0867c94
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-apache-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175173778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2693865450d8214022b09b5c9a7cefe075f6f3278b4847d1e830191d178235a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:21:21 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 31 Aug 2016 00:21:22 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 31 Aug 2016 00:21:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 31 Aug 2016 00:21:24 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 31 Aug 2016 00:21:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 31 Aug 2016 00:21:26 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 16 Sep 2016 20:10:33 GMT
ENV PHP_VERSION=7.0.11
# Fri, 16 Sep 2016 20:10:33 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 16 Sep 2016 20:10:34 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 16 Sep 2016 20:10:37 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:10:37 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:56 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:12:57 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:58 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:58 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:12:58 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:12:58 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 22:03:09 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 16 Sep 2016 22:03:10 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 22:03:31 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 16 Sep 2016 22:03:38 GMT
RUN docker-php-ext-install mysqli
# Fri, 16 Sep 2016 22:03:38 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:03:39 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 16 Sep 2016 22:03:39 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 16 Sep 2016 22:03:46 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 16 Sep 2016 22:03:47 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 16 Sep 2016 22:03:47 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 16 Sep 2016 22:03:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:03:48 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9632186b6198e59b441d935261b11ff1c87e5cd9167ca4919c12f7cd776cfb`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 2.8 MB (2846751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa737a56f54d953a4a488dc224cbb55d0c0ea44aae67e531b17a70fb4b42c91`  
		Last Modified: Wed, 31 Aug 2016 16:57:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d454914546db3a7df0bc7e37300f6c19f8710b1d6b539865641c841a1c81d`  
		Last Modified: Wed, 31 Aug 2016 16:57:46 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2de374782c02050ab1a225e1602a0157d489852b1a25833f0d767e12d7607ad`  
		Last Modified: Wed, 31 Aug 2016 16:57:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2793df33d916e62e622430074d131cbb6e53d5c4fbd04f3eec825543522cf6`  
		Last Modified: Wed, 31 Aug 2016 16:57:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6780388c2f29f373e682fee0033da3e451ea9a2b897f61edac5041da17e27f`  
		Last Modified: Fri, 16 Sep 2016 20:57:57 GMT  
		Size: 12.3 MB (12262930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af0b463988f37f056f184669df6638bc6ef2e812b17e359c3ca31c4f440d021`  
		Last Modified: Fri, 16 Sep 2016 20:57:54 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035c54b616677db310be763fa513f5736878bfe3cf7a5d009b2b32ae1fdbd9a2`  
		Last Modified: Fri, 16 Sep 2016 20:58:01 GMT  
		Size: 19.7 MB (19680450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e46d9d737b7455c16c42328fbf726d42a3131adcd21e15f12250e4d18fbbbe2`  
		Last Modified: Fri, 16 Sep 2016 20:57:55 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d18e0362977dd44127c6f7d74b30e176b05b9f49549b2905cb15196e349c143`  
		Last Modified: Fri, 16 Sep 2016 20:57:54 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd8ca46d943a97fb33523425e8209ae195b625a7800dba121ece0a8a2777f5a`  
		Last Modified: Fri, 16 Sep 2016 22:03:57 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5175f850ef85c93360a7d1f26c1fbcbe4a13a88b54a99d346aafc044087d1bea`  
		Last Modified: Fri, 16 Sep 2016 22:03:55 GMT  
		Size: 2.8 MB (2817595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f5478585f329de049addd0eadaabf2183e3a19723a7ce9d6c11535fa41112a`  
		Last Modified: Fri, 16 Sep 2016 22:03:54 GMT  
		Size: 257.3 KB (257340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff1770c597f48542305c9abf3ba43ca5575598682cb663e6a2a13dc04126f3a`  
		Last Modified: Fri, 16 Sep 2016 22:03:57 GMT  
		Size: 8.4 MB (8351899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db832a51ef34d3d04441ef1df94f5f68dce8c1d5a9aa257711bbc1960e1e284`  
		Last Modified: Fri, 16 Sep 2016 22:03:54 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34688430900f60935e5f3156d8d72ba752716a423eef6b858abddfbaee6f869d`  
		Last Modified: Fri, 16 Sep 2016 22:03:54 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache-php7`

```console
$ docker pull joomla@sha256:b81fbce139a92648a3ee3cc0abee54c8a69888f9c24ce519593bb84dd0867c94
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175173778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2693865450d8214022b09b5c9a7cefe075f6f3278b4847d1e830191d178235a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:21:21 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 31 Aug 2016 00:21:22 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 31 Aug 2016 00:21:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 31 Aug 2016 00:21:24 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 31 Aug 2016 00:21:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 31 Aug 2016 00:21:26 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 16 Sep 2016 20:10:33 GMT
ENV PHP_VERSION=7.0.11
# Fri, 16 Sep 2016 20:10:33 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 16 Sep 2016 20:10:34 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 16 Sep 2016 20:10:37 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:10:37 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:56 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:12:57 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:58 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:58 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:12:58 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:12:58 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 22:03:09 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 16 Sep 2016 22:03:10 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 22:03:31 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 16 Sep 2016 22:03:38 GMT
RUN docker-php-ext-install mysqli
# Fri, 16 Sep 2016 22:03:38 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:03:39 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 16 Sep 2016 22:03:39 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 16 Sep 2016 22:03:46 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 16 Sep 2016 22:03:47 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 16 Sep 2016 22:03:47 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 16 Sep 2016 22:03:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:03:48 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9632186b6198e59b441d935261b11ff1c87e5cd9167ca4919c12f7cd776cfb`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 2.8 MB (2846751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa737a56f54d953a4a488dc224cbb55d0c0ea44aae67e531b17a70fb4b42c91`  
		Last Modified: Wed, 31 Aug 2016 16:57:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d454914546db3a7df0bc7e37300f6c19f8710b1d6b539865641c841a1c81d`  
		Last Modified: Wed, 31 Aug 2016 16:57:46 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2de374782c02050ab1a225e1602a0157d489852b1a25833f0d767e12d7607ad`  
		Last Modified: Wed, 31 Aug 2016 16:57:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2793df33d916e62e622430074d131cbb6e53d5c4fbd04f3eec825543522cf6`  
		Last Modified: Wed, 31 Aug 2016 16:57:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6780388c2f29f373e682fee0033da3e451ea9a2b897f61edac5041da17e27f`  
		Last Modified: Fri, 16 Sep 2016 20:57:57 GMT  
		Size: 12.3 MB (12262930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af0b463988f37f056f184669df6638bc6ef2e812b17e359c3ca31c4f440d021`  
		Last Modified: Fri, 16 Sep 2016 20:57:54 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035c54b616677db310be763fa513f5736878bfe3cf7a5d009b2b32ae1fdbd9a2`  
		Last Modified: Fri, 16 Sep 2016 20:58:01 GMT  
		Size: 19.7 MB (19680450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e46d9d737b7455c16c42328fbf726d42a3131adcd21e15f12250e4d18fbbbe2`  
		Last Modified: Fri, 16 Sep 2016 20:57:55 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d18e0362977dd44127c6f7d74b30e176b05b9f49549b2905cb15196e349c143`  
		Last Modified: Fri, 16 Sep 2016 20:57:54 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd8ca46d943a97fb33523425e8209ae195b625a7800dba121ece0a8a2777f5a`  
		Last Modified: Fri, 16 Sep 2016 22:03:57 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5175f850ef85c93360a7d1f26c1fbcbe4a13a88b54a99d346aafc044087d1bea`  
		Last Modified: Fri, 16 Sep 2016 22:03:55 GMT  
		Size: 2.8 MB (2817595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f5478585f329de049addd0eadaabf2183e3a19723a7ce9d6c11535fa41112a`  
		Last Modified: Fri, 16 Sep 2016 22:03:54 GMT  
		Size: 257.3 KB (257340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff1770c597f48542305c9abf3ba43ca5575598682cb663e6a2a13dc04126f3a`  
		Last Modified: Fri, 16 Sep 2016 22:03:57 GMT  
		Size: 8.4 MB (8351899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db832a51ef34d3d04441ef1df94f5f68dce8c1d5a9aa257711bbc1960e1e284`  
		Last Modified: Fri, 16 Sep 2016 22:03:54 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34688430900f60935e5f3156d8d72ba752716a423eef6b858abddfbaee6f869d`  
		Last Modified: Fri, 16 Sep 2016 22:03:54 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:apache-php7`

```console
$ docker pull joomla@sha256:b81fbce139a92648a3ee3cc0abee54c8a69888f9c24ce519593bb84dd0867c94
```

-	Platforms:
	-	linux; amd64

### `joomla:apache-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175173778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2693865450d8214022b09b5c9a7cefe075f6f3278b4847d1e830191d178235a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:21:21 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 31 Aug 2016 00:21:22 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 31 Aug 2016 00:21:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 31 Aug 2016 00:21:24 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 31 Aug 2016 00:21:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 31 Aug 2016 00:21:26 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 16 Sep 2016 20:10:33 GMT
ENV PHP_VERSION=7.0.11
# Fri, 16 Sep 2016 20:10:33 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 16 Sep 2016 20:10:34 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 16 Sep 2016 20:10:37 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:10:37 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:56 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:12:57 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:58 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:58 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:12:58 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:12:58 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 22:03:09 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 16 Sep 2016 22:03:10 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 22:03:31 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 16 Sep 2016 22:03:38 GMT
RUN docker-php-ext-install mysqli
# Fri, 16 Sep 2016 22:03:38 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:03:39 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 16 Sep 2016 22:03:39 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 16 Sep 2016 22:03:46 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 16 Sep 2016 22:03:47 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 16 Sep 2016 22:03:47 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 16 Sep 2016 22:03:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:03:48 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9632186b6198e59b441d935261b11ff1c87e5cd9167ca4919c12f7cd776cfb`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 2.8 MB (2846751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa737a56f54d953a4a488dc224cbb55d0c0ea44aae67e531b17a70fb4b42c91`  
		Last Modified: Wed, 31 Aug 2016 16:57:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d454914546db3a7df0bc7e37300f6c19f8710b1d6b539865641c841a1c81d`  
		Last Modified: Wed, 31 Aug 2016 16:57:46 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2de374782c02050ab1a225e1602a0157d489852b1a25833f0d767e12d7607ad`  
		Last Modified: Wed, 31 Aug 2016 16:57:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2793df33d916e62e622430074d131cbb6e53d5c4fbd04f3eec825543522cf6`  
		Last Modified: Wed, 31 Aug 2016 16:57:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6780388c2f29f373e682fee0033da3e451ea9a2b897f61edac5041da17e27f`  
		Last Modified: Fri, 16 Sep 2016 20:57:57 GMT  
		Size: 12.3 MB (12262930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af0b463988f37f056f184669df6638bc6ef2e812b17e359c3ca31c4f440d021`  
		Last Modified: Fri, 16 Sep 2016 20:57:54 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035c54b616677db310be763fa513f5736878bfe3cf7a5d009b2b32ae1fdbd9a2`  
		Last Modified: Fri, 16 Sep 2016 20:58:01 GMT  
		Size: 19.7 MB (19680450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e46d9d737b7455c16c42328fbf726d42a3131adcd21e15f12250e4d18fbbbe2`  
		Last Modified: Fri, 16 Sep 2016 20:57:55 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d18e0362977dd44127c6f7d74b30e176b05b9f49549b2905cb15196e349c143`  
		Last Modified: Fri, 16 Sep 2016 20:57:54 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd8ca46d943a97fb33523425e8209ae195b625a7800dba121ece0a8a2777f5a`  
		Last Modified: Fri, 16 Sep 2016 22:03:57 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5175f850ef85c93360a7d1f26c1fbcbe4a13a88b54a99d346aafc044087d1bea`  
		Last Modified: Fri, 16 Sep 2016 22:03:55 GMT  
		Size: 2.8 MB (2817595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f5478585f329de049addd0eadaabf2183e3a19723a7ce9d6c11535fa41112a`  
		Last Modified: Fri, 16 Sep 2016 22:03:54 GMT  
		Size: 257.3 KB (257340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff1770c597f48542305c9abf3ba43ca5575598682cb663e6a2a13dc04126f3a`  
		Last Modified: Fri, 16 Sep 2016 22:03:57 GMT  
		Size: 8.4 MB (8351899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db832a51ef34d3d04441ef1df94f5f68dce8c1d5a9aa257711bbc1960e1e284`  
		Last Modified: Fri, 16 Sep 2016 22:03:54 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34688430900f60935e5f3156d8d72ba752716a423eef6b858abddfbaee6f869d`  
		Last Modified: Fri, 16 Sep 2016 22:03:54 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.2-fpm`

```console
$ docker pull joomla@sha256:988b4139ac842365f60a3f4ad0e016fcf6572034daabe3ed9f4710b62780e85b
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.2-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.7 MB (161650153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcdbeaa4442bcbece1318a3263f3d9cc41e21743fb6f56f815b01d025af9b6f6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:23:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 31 Aug 2016 00:37:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:37:56 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:37:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:41:18 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:41:18 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:41:19 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:41:19 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 16 Sep 2016 20:41:20 GMT
EXPOSE 9000/tcp
# Fri, 16 Sep 2016 20:41:20 GMT
CMD ["php-fpm"]
# Fri, 16 Sep 2016 22:00:18 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 16 Sep 2016 22:00:54 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 16 Sep 2016 22:01:01 GMT
RUN docker-php-ext-install mysqli
# Fri, 16 Sep 2016 22:01:02 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:01:02 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 16 Sep 2016 22:01:02 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 16 Sep 2016 22:01:09 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 16 Sep 2016 22:01:10 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 16 Sep 2016 22:01:10 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 16 Sep 2016 22:01:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:01:11 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f867227ba0ca7d341b526da9b951ce76c29841e628fd41e7848cd02a10cc9b3`  
		Last Modified: Fri, 16 Sep 2016 21:03:33 GMT  
		Size: 12.4 MB (12417483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e060fac29eab30697e9e6d0cf654eb74fd357cf9bae808a22716372d9167adf`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc5c82aa9b2bd88b7d2110285a373e40b7340379ee6e0f8f95b6269ed7b6b28`  
		Last Modified: Fri, 16 Sep 2016 21:03:31 GMT  
		Size: 8.8 MB (8835389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28455473ebdcc509ff6d0f1005ba4537b9c06fc753eac522d34f7d983f90cac1`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779e531cc75ed9693123bb9d9b2adcbf6905ef0dcdef6f54d7f69de0534e99d1`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42627851ab0d4a77e88ff88f96a8ae1246b73e545c2fdd9111e46ff20acf58ec`  
		Last Modified: Fri, 16 Sep 2016 21:03:29 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46becea148aa5a92df33bca07429aaf297ea1e8ebe3efce74cd3f26914e92308`  
		Last Modified: Fri, 16 Sep 2016 22:01:18 GMT  
		Size: 2.8 MB (2817945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b85e70fccdc6656bef9cebda73e37dcf795b1c98da540f048e648076002b45a7`  
		Last Modified: Fri, 16 Sep 2016 22:01:17 GMT  
		Size: 266.1 KB (266121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2f5f12a8aea853cc5a6340ef8153190d04b3ece77e9133c2bb3b7f679456c0`  
		Last Modified: Fri, 16 Sep 2016 22:01:21 GMT  
		Size: 8.4 MB (8351900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a0c2910b782ae6fb0f84e84f72b904e5fbed364ec588e92f8869e2331011c87`  
		Last Modified: Fri, 16 Sep 2016 22:01:17 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a072cc5c67c587f68419e4ca511d3d5d8580fd6117fffe6ec55f72831f292718`  
		Last Modified: Fri, 16 Sep 2016 22:01:17 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-fpm`

```console
$ docker pull joomla@sha256:988b4139ac842365f60a3f4ad0e016fcf6572034daabe3ed9f4710b62780e85b
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.7 MB (161650153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcdbeaa4442bcbece1318a3263f3d9cc41e21743fb6f56f815b01d025af9b6f6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:23:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 31 Aug 2016 00:37:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:37:56 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:37:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:41:18 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:41:18 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:41:19 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:41:19 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 16 Sep 2016 20:41:20 GMT
EXPOSE 9000/tcp
# Fri, 16 Sep 2016 20:41:20 GMT
CMD ["php-fpm"]
# Fri, 16 Sep 2016 22:00:18 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 16 Sep 2016 22:00:54 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 16 Sep 2016 22:01:01 GMT
RUN docker-php-ext-install mysqli
# Fri, 16 Sep 2016 22:01:02 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:01:02 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 16 Sep 2016 22:01:02 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 16 Sep 2016 22:01:09 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 16 Sep 2016 22:01:10 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 16 Sep 2016 22:01:10 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 16 Sep 2016 22:01:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:01:11 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f867227ba0ca7d341b526da9b951ce76c29841e628fd41e7848cd02a10cc9b3`  
		Last Modified: Fri, 16 Sep 2016 21:03:33 GMT  
		Size: 12.4 MB (12417483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e060fac29eab30697e9e6d0cf654eb74fd357cf9bae808a22716372d9167adf`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc5c82aa9b2bd88b7d2110285a373e40b7340379ee6e0f8f95b6269ed7b6b28`  
		Last Modified: Fri, 16 Sep 2016 21:03:31 GMT  
		Size: 8.8 MB (8835389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28455473ebdcc509ff6d0f1005ba4537b9c06fc753eac522d34f7d983f90cac1`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779e531cc75ed9693123bb9d9b2adcbf6905ef0dcdef6f54d7f69de0534e99d1`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42627851ab0d4a77e88ff88f96a8ae1246b73e545c2fdd9111e46ff20acf58ec`  
		Last Modified: Fri, 16 Sep 2016 21:03:29 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46becea148aa5a92df33bca07429aaf297ea1e8ebe3efce74cd3f26914e92308`  
		Last Modified: Fri, 16 Sep 2016 22:01:18 GMT  
		Size: 2.8 MB (2817945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b85e70fccdc6656bef9cebda73e37dcf795b1c98da540f048e648076002b45a7`  
		Last Modified: Fri, 16 Sep 2016 22:01:17 GMT  
		Size: 266.1 KB (266121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2f5f12a8aea853cc5a6340ef8153190d04b3ece77e9133c2bb3b7f679456c0`  
		Last Modified: Fri, 16 Sep 2016 22:01:21 GMT  
		Size: 8.4 MB (8351900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a0c2910b782ae6fb0f84e84f72b904e5fbed364ec588e92f8869e2331011c87`  
		Last Modified: Fri, 16 Sep 2016 22:01:17 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a072cc5c67c587f68419e4ca511d3d5d8580fd6117fffe6ec55f72831f292718`  
		Last Modified: Fri, 16 Sep 2016 22:01:17 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-fpm`

```console
$ docker pull joomla@sha256:988b4139ac842365f60a3f4ad0e016fcf6572034daabe3ed9f4710b62780e85b
```

-	Platforms:
	-	linux; amd64

### `joomla:3-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.7 MB (161650153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcdbeaa4442bcbece1318a3263f3d9cc41e21743fb6f56f815b01d025af9b6f6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:23:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 31 Aug 2016 00:37:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:37:56 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:37:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:41:18 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:41:18 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:41:19 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:41:19 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 16 Sep 2016 20:41:20 GMT
EXPOSE 9000/tcp
# Fri, 16 Sep 2016 20:41:20 GMT
CMD ["php-fpm"]
# Fri, 16 Sep 2016 22:00:18 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 16 Sep 2016 22:00:54 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 16 Sep 2016 22:01:01 GMT
RUN docker-php-ext-install mysqli
# Fri, 16 Sep 2016 22:01:02 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:01:02 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 16 Sep 2016 22:01:02 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 16 Sep 2016 22:01:09 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 16 Sep 2016 22:01:10 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 16 Sep 2016 22:01:10 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 16 Sep 2016 22:01:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:01:11 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f867227ba0ca7d341b526da9b951ce76c29841e628fd41e7848cd02a10cc9b3`  
		Last Modified: Fri, 16 Sep 2016 21:03:33 GMT  
		Size: 12.4 MB (12417483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e060fac29eab30697e9e6d0cf654eb74fd357cf9bae808a22716372d9167adf`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc5c82aa9b2bd88b7d2110285a373e40b7340379ee6e0f8f95b6269ed7b6b28`  
		Last Modified: Fri, 16 Sep 2016 21:03:31 GMT  
		Size: 8.8 MB (8835389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28455473ebdcc509ff6d0f1005ba4537b9c06fc753eac522d34f7d983f90cac1`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779e531cc75ed9693123bb9d9b2adcbf6905ef0dcdef6f54d7f69de0534e99d1`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42627851ab0d4a77e88ff88f96a8ae1246b73e545c2fdd9111e46ff20acf58ec`  
		Last Modified: Fri, 16 Sep 2016 21:03:29 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46becea148aa5a92df33bca07429aaf297ea1e8ebe3efce74cd3f26914e92308`  
		Last Modified: Fri, 16 Sep 2016 22:01:18 GMT  
		Size: 2.8 MB (2817945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b85e70fccdc6656bef9cebda73e37dcf795b1c98da540f048e648076002b45a7`  
		Last Modified: Fri, 16 Sep 2016 22:01:17 GMT  
		Size: 266.1 KB (266121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2f5f12a8aea853cc5a6340ef8153190d04b3ece77e9133c2bb3b7f679456c0`  
		Last Modified: Fri, 16 Sep 2016 22:01:21 GMT  
		Size: 8.4 MB (8351900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a0c2910b782ae6fb0f84e84f72b904e5fbed364ec588e92f8869e2331011c87`  
		Last Modified: Fri, 16 Sep 2016 22:01:17 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a072cc5c67c587f68419e4ca511d3d5d8580fd6117fffe6ec55f72831f292718`  
		Last Modified: Fri, 16 Sep 2016 22:01:17 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:fpm`

```console
$ docker pull joomla@sha256:988b4139ac842365f60a3f4ad0e016fcf6572034daabe3ed9f4710b62780e85b
```

-	Platforms:
	-	linux; amd64

### `joomla:fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.7 MB (161650153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcdbeaa4442bcbece1318a3263f3d9cc41e21743fb6f56f815b01d025af9b6f6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:23:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 31 Aug 2016 00:37:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:37:56 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:37:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:41:18 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:41:18 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:41:19 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:41:19 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 16 Sep 2016 20:41:20 GMT
EXPOSE 9000/tcp
# Fri, 16 Sep 2016 20:41:20 GMT
CMD ["php-fpm"]
# Fri, 16 Sep 2016 22:00:18 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 16 Sep 2016 22:00:54 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 16 Sep 2016 22:01:01 GMT
RUN docker-php-ext-install mysqli
# Fri, 16 Sep 2016 22:01:02 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:01:02 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 16 Sep 2016 22:01:02 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 16 Sep 2016 22:01:09 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 16 Sep 2016 22:01:10 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 16 Sep 2016 22:01:10 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 16 Sep 2016 22:01:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:01:11 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f867227ba0ca7d341b526da9b951ce76c29841e628fd41e7848cd02a10cc9b3`  
		Last Modified: Fri, 16 Sep 2016 21:03:33 GMT  
		Size: 12.4 MB (12417483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e060fac29eab30697e9e6d0cf654eb74fd357cf9bae808a22716372d9167adf`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc5c82aa9b2bd88b7d2110285a373e40b7340379ee6e0f8f95b6269ed7b6b28`  
		Last Modified: Fri, 16 Sep 2016 21:03:31 GMT  
		Size: 8.8 MB (8835389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28455473ebdcc509ff6d0f1005ba4537b9c06fc753eac522d34f7d983f90cac1`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779e531cc75ed9693123bb9d9b2adcbf6905ef0dcdef6f54d7f69de0534e99d1`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42627851ab0d4a77e88ff88f96a8ae1246b73e545c2fdd9111e46ff20acf58ec`  
		Last Modified: Fri, 16 Sep 2016 21:03:29 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46becea148aa5a92df33bca07429aaf297ea1e8ebe3efce74cd3f26914e92308`  
		Last Modified: Fri, 16 Sep 2016 22:01:18 GMT  
		Size: 2.8 MB (2817945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b85e70fccdc6656bef9cebda73e37dcf795b1c98da540f048e648076002b45a7`  
		Last Modified: Fri, 16 Sep 2016 22:01:17 GMT  
		Size: 266.1 KB (266121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2f5f12a8aea853cc5a6340ef8153190d04b3ece77e9133c2bb3b7f679456c0`  
		Last Modified: Fri, 16 Sep 2016 22:01:21 GMT  
		Size: 8.4 MB (8351900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a0c2910b782ae6fb0f84e84f72b904e5fbed364ec588e92f8869e2331011c87`  
		Last Modified: Fri, 16 Sep 2016 22:01:17 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a072cc5c67c587f68419e4ca511d3d5d8580fd6117fffe6ec55f72831f292718`  
		Last Modified: Fri, 16 Sep 2016 22:01:17 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.2-fpm-php7`

```console
$ docker pull joomla@sha256:4f93d061043d70594e75b392c627e66af4a3bdc48e17eda5a2af028795e70bf4
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.2-fpm-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165292410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0136e57960ec49659ea2b9d64061d85260e8f4829f7c4160aa80bd210183860a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:23:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 31 Aug 2016 00:23:57 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 16 Sep 2016 20:12:59 GMT
ENV PHP_VERSION=7.0.11
# Fri, 16 Sep 2016 20:12:59 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 16 Sep 2016 20:12:59 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 16 Sep 2016 20:13:02 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:13:03 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:16:35 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:16:36 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:16:36 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:16:37 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 16 Sep 2016 20:16:37 GMT
EXPOSE 9000/tcp
# Fri, 16 Sep 2016 20:16:38 GMT
CMD ["php-fpm"]
# Fri, 16 Sep 2016 22:01:51 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 16 Sep 2016 22:02:11 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 16 Sep 2016 22:02:18 GMT
RUN docker-php-ext-install mysqli
# Fri, 16 Sep 2016 22:02:19 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:02:19 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 16 Sep 2016 22:02:19 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 16 Sep 2016 22:02:26 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 16 Sep 2016 22:02:27 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 16 Sep 2016 22:02:27 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 16 Sep 2016 22:02:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:02:28 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624e766219f907f5499bf78882219a4b025fa6935f6e4e52c97c37efaa8cc05d`  
		Last Modified: Fri, 16 Sep 2016 20:58:45 GMT  
		Size: 12.3 MB (12262926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2d4c3c5b2e0f03ec800a4e7fccb9b78c5b799c08a094bb5cf23758bf467ac1`  
		Last Modified: Fri, 16 Sep 2016 20:58:41 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89d7e7ab53e2c84ab613261bdbc3913a4f2cd9a5f225feafa3eea2e644076c1`  
		Last Modified: Fri, 16 Sep 2016 20:58:43 GMT  
		Size: 12.7 MB (12664234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f966903a2738337fefa8f5f5363526a15c352939cfdfa9e908ae1ff9fed9c5`  
		Last Modified: Fri, 16 Sep 2016 20:58:39 GMT  
		Size: 1.8 KB (1834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0021b1668feb44e009dfb75c5fd47a78a4666c9f0d8e2b06452f019df44c97bb`  
		Last Modified: Fri, 16 Sep 2016 20:58:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03980b5ab0816f19ef830db8137009db5221ac423eb3ea61376d7a90b7799b8c`  
		Last Modified: Fri, 16 Sep 2016 20:58:39 GMT  
		Size: 7.7 KB (7689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abc3ccf64f550be324e252c9b8696d2d7f6236fc9f78d4f7b6132f7fe8dc482`  
		Last Modified: Fri, 16 Sep 2016 22:02:35 GMT  
		Size: 2.8 MB (2794594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085051b2c717f329eaadfb1cc06361cff0b3f985d5da4f903862d2ef4d5085e9`  
		Last Modified: Fri, 16 Sep 2016 22:02:34 GMT  
		Size: 257.4 KB (257367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1844705b1ac10c3879cccb28e256e9dcc1b69de3f4119b54959e0fd9b09fcce`  
		Last Modified: Fri, 16 Sep 2016 22:02:38 GMT  
		Size: 8.4 MB (8351907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9857cbbf6beb7d4bd7bb157bea5f09732f2cc1c6abf66e0f869cd974e298d1`  
		Last Modified: Fri, 16 Sep 2016 22:02:34 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfeeafca7f1424fc0cfd3d27c5858e0a397bfe40e71a801d248bc0a4e4a41d65`  
		Last Modified: Fri, 16 Sep 2016 22:02:34 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-fpm-php7`

```console
$ docker pull joomla@sha256:4f93d061043d70594e75b392c627e66af4a3bdc48e17eda5a2af028795e70bf4
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-fpm-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165292410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0136e57960ec49659ea2b9d64061d85260e8f4829f7c4160aa80bd210183860a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:23:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 31 Aug 2016 00:23:57 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 16 Sep 2016 20:12:59 GMT
ENV PHP_VERSION=7.0.11
# Fri, 16 Sep 2016 20:12:59 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 16 Sep 2016 20:12:59 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 16 Sep 2016 20:13:02 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:13:03 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:16:35 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:16:36 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:16:36 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:16:37 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 16 Sep 2016 20:16:37 GMT
EXPOSE 9000/tcp
# Fri, 16 Sep 2016 20:16:38 GMT
CMD ["php-fpm"]
# Fri, 16 Sep 2016 22:01:51 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 16 Sep 2016 22:02:11 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 16 Sep 2016 22:02:18 GMT
RUN docker-php-ext-install mysqli
# Fri, 16 Sep 2016 22:02:19 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:02:19 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 16 Sep 2016 22:02:19 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 16 Sep 2016 22:02:26 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 16 Sep 2016 22:02:27 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 16 Sep 2016 22:02:27 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 16 Sep 2016 22:02:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:02:28 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624e766219f907f5499bf78882219a4b025fa6935f6e4e52c97c37efaa8cc05d`  
		Last Modified: Fri, 16 Sep 2016 20:58:45 GMT  
		Size: 12.3 MB (12262926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2d4c3c5b2e0f03ec800a4e7fccb9b78c5b799c08a094bb5cf23758bf467ac1`  
		Last Modified: Fri, 16 Sep 2016 20:58:41 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89d7e7ab53e2c84ab613261bdbc3913a4f2cd9a5f225feafa3eea2e644076c1`  
		Last Modified: Fri, 16 Sep 2016 20:58:43 GMT  
		Size: 12.7 MB (12664234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f966903a2738337fefa8f5f5363526a15c352939cfdfa9e908ae1ff9fed9c5`  
		Last Modified: Fri, 16 Sep 2016 20:58:39 GMT  
		Size: 1.8 KB (1834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0021b1668feb44e009dfb75c5fd47a78a4666c9f0d8e2b06452f019df44c97bb`  
		Last Modified: Fri, 16 Sep 2016 20:58:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03980b5ab0816f19ef830db8137009db5221ac423eb3ea61376d7a90b7799b8c`  
		Last Modified: Fri, 16 Sep 2016 20:58:39 GMT  
		Size: 7.7 KB (7689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abc3ccf64f550be324e252c9b8696d2d7f6236fc9f78d4f7b6132f7fe8dc482`  
		Last Modified: Fri, 16 Sep 2016 22:02:35 GMT  
		Size: 2.8 MB (2794594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085051b2c717f329eaadfb1cc06361cff0b3f985d5da4f903862d2ef4d5085e9`  
		Last Modified: Fri, 16 Sep 2016 22:02:34 GMT  
		Size: 257.4 KB (257367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1844705b1ac10c3879cccb28e256e9dcc1b69de3f4119b54959e0fd9b09fcce`  
		Last Modified: Fri, 16 Sep 2016 22:02:38 GMT  
		Size: 8.4 MB (8351907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9857cbbf6beb7d4bd7bb157bea5f09732f2cc1c6abf66e0f869cd974e298d1`  
		Last Modified: Fri, 16 Sep 2016 22:02:34 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfeeafca7f1424fc0cfd3d27c5858e0a397bfe40e71a801d248bc0a4e4a41d65`  
		Last Modified: Fri, 16 Sep 2016 22:02:34 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-fpm-php7`

```console
$ docker pull joomla@sha256:4f93d061043d70594e75b392c627e66af4a3bdc48e17eda5a2af028795e70bf4
```

-	Platforms:
	-	linux; amd64

### `joomla:3-fpm-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165292410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0136e57960ec49659ea2b9d64061d85260e8f4829f7c4160aa80bd210183860a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:23:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 31 Aug 2016 00:23:57 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 16 Sep 2016 20:12:59 GMT
ENV PHP_VERSION=7.0.11
# Fri, 16 Sep 2016 20:12:59 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 16 Sep 2016 20:12:59 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 16 Sep 2016 20:13:02 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:13:03 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:16:35 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:16:36 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:16:36 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:16:37 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 16 Sep 2016 20:16:37 GMT
EXPOSE 9000/tcp
# Fri, 16 Sep 2016 20:16:38 GMT
CMD ["php-fpm"]
# Fri, 16 Sep 2016 22:01:51 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 16 Sep 2016 22:02:11 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 16 Sep 2016 22:02:18 GMT
RUN docker-php-ext-install mysqli
# Fri, 16 Sep 2016 22:02:19 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:02:19 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 16 Sep 2016 22:02:19 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 16 Sep 2016 22:02:26 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 16 Sep 2016 22:02:27 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 16 Sep 2016 22:02:27 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 16 Sep 2016 22:02:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:02:28 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624e766219f907f5499bf78882219a4b025fa6935f6e4e52c97c37efaa8cc05d`  
		Last Modified: Fri, 16 Sep 2016 20:58:45 GMT  
		Size: 12.3 MB (12262926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2d4c3c5b2e0f03ec800a4e7fccb9b78c5b799c08a094bb5cf23758bf467ac1`  
		Last Modified: Fri, 16 Sep 2016 20:58:41 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89d7e7ab53e2c84ab613261bdbc3913a4f2cd9a5f225feafa3eea2e644076c1`  
		Last Modified: Fri, 16 Sep 2016 20:58:43 GMT  
		Size: 12.7 MB (12664234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f966903a2738337fefa8f5f5363526a15c352939cfdfa9e908ae1ff9fed9c5`  
		Last Modified: Fri, 16 Sep 2016 20:58:39 GMT  
		Size: 1.8 KB (1834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0021b1668feb44e009dfb75c5fd47a78a4666c9f0d8e2b06452f019df44c97bb`  
		Last Modified: Fri, 16 Sep 2016 20:58:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03980b5ab0816f19ef830db8137009db5221ac423eb3ea61376d7a90b7799b8c`  
		Last Modified: Fri, 16 Sep 2016 20:58:39 GMT  
		Size: 7.7 KB (7689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abc3ccf64f550be324e252c9b8696d2d7f6236fc9f78d4f7b6132f7fe8dc482`  
		Last Modified: Fri, 16 Sep 2016 22:02:35 GMT  
		Size: 2.8 MB (2794594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085051b2c717f329eaadfb1cc06361cff0b3f985d5da4f903862d2ef4d5085e9`  
		Last Modified: Fri, 16 Sep 2016 22:02:34 GMT  
		Size: 257.4 KB (257367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1844705b1ac10c3879cccb28e256e9dcc1b69de3f4119b54959e0fd9b09fcce`  
		Last Modified: Fri, 16 Sep 2016 22:02:38 GMT  
		Size: 8.4 MB (8351907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9857cbbf6beb7d4bd7bb157bea5f09732f2cc1c6abf66e0f869cd974e298d1`  
		Last Modified: Fri, 16 Sep 2016 22:02:34 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfeeafca7f1424fc0cfd3d27c5858e0a397bfe40e71a801d248bc0a4e4a41d65`  
		Last Modified: Fri, 16 Sep 2016 22:02:34 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:fpm-php7`

```console
$ docker pull joomla@sha256:4f93d061043d70594e75b392c627e66af4a3bdc48e17eda5a2af028795e70bf4
```

-	Platforms:
	-	linux; amd64

### `joomla:fpm-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165292410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0136e57960ec49659ea2b9d64061d85260e8f4829f7c4160aa80bd210183860a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:23:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 31 Aug 2016 00:23:57 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 16 Sep 2016 20:12:59 GMT
ENV PHP_VERSION=7.0.11
# Fri, 16 Sep 2016 20:12:59 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 16 Sep 2016 20:12:59 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 16 Sep 2016 20:13:02 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:13:03 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:16:35 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:16:36 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:16:36 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:16:37 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 16 Sep 2016 20:16:37 GMT
EXPOSE 9000/tcp
# Fri, 16 Sep 2016 20:16:38 GMT
CMD ["php-fpm"]
# Fri, 16 Sep 2016 22:01:51 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 16 Sep 2016 22:02:11 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 16 Sep 2016 22:02:18 GMT
RUN docker-php-ext-install mysqli
# Fri, 16 Sep 2016 22:02:19 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:02:19 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 16 Sep 2016 22:02:19 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 16 Sep 2016 22:02:26 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 16 Sep 2016 22:02:27 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 16 Sep 2016 22:02:27 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 16 Sep 2016 22:02:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:02:28 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624e766219f907f5499bf78882219a4b025fa6935f6e4e52c97c37efaa8cc05d`  
		Last Modified: Fri, 16 Sep 2016 20:58:45 GMT  
		Size: 12.3 MB (12262926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2d4c3c5b2e0f03ec800a4e7fccb9b78c5b799c08a094bb5cf23758bf467ac1`  
		Last Modified: Fri, 16 Sep 2016 20:58:41 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89d7e7ab53e2c84ab613261bdbc3913a4f2cd9a5f225feafa3eea2e644076c1`  
		Last Modified: Fri, 16 Sep 2016 20:58:43 GMT  
		Size: 12.7 MB (12664234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f966903a2738337fefa8f5f5363526a15c352939cfdfa9e908ae1ff9fed9c5`  
		Last Modified: Fri, 16 Sep 2016 20:58:39 GMT  
		Size: 1.8 KB (1834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0021b1668feb44e009dfb75c5fd47a78a4666c9f0d8e2b06452f019df44c97bb`  
		Last Modified: Fri, 16 Sep 2016 20:58:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03980b5ab0816f19ef830db8137009db5221ac423eb3ea61376d7a90b7799b8c`  
		Last Modified: Fri, 16 Sep 2016 20:58:39 GMT  
		Size: 7.7 KB (7689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abc3ccf64f550be324e252c9b8696d2d7f6236fc9f78d4f7b6132f7fe8dc482`  
		Last Modified: Fri, 16 Sep 2016 22:02:35 GMT  
		Size: 2.8 MB (2794594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085051b2c717f329eaadfb1cc06361cff0b3f985d5da4f903862d2ef4d5085e9`  
		Last Modified: Fri, 16 Sep 2016 22:02:34 GMT  
		Size: 257.4 KB (257367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1844705b1ac10c3879cccb28e256e9dcc1b69de3f4119b54959e0fd9b09fcce`  
		Last Modified: Fri, 16 Sep 2016 22:02:38 GMT  
		Size: 8.4 MB (8351907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9857cbbf6beb7d4bd7bb157bea5f09732f2cc1c6abf66e0f869cd974e298d1`  
		Last Modified: Fri, 16 Sep 2016 22:02:34 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfeeafca7f1424fc0cfd3d27c5858e0a397bfe40e71a801d248bc0a4e4a41d65`  
		Last Modified: Fri, 16 Sep 2016 22:02:34 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
