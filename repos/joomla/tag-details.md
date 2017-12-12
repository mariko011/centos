<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `joomla`

-	[`joomla:3`](#joomla3)
-	[`joomla:3.8`](#joomla38)
-	[`joomla:3.8.2`](#joomla382)
-	[`joomla:3.8.2-apache`](#joomla382-apache)
-	[`joomla:3.8.2-apache-php7`](#joomla382-apache-php7)
-	[`joomla:3.8.2-fpm`](#joomla382-fpm)
-	[`joomla:3.8.2-fpm-php7`](#joomla382-fpm-php7)
-	[`joomla:3.8-apache`](#joomla38-apache)
-	[`joomla:3.8-apache-php7`](#joomla38-apache-php7)
-	[`joomla:3.8-fpm`](#joomla38-fpm)
-	[`joomla:3.8-fpm-php7`](#joomla38-fpm-php7)
-	[`joomla:3-apache`](#joomla3-apache)
-	[`joomla:3-apache-php7`](#joomla3-apache-php7)
-	[`joomla:3-fpm`](#joomla3-fpm)
-	[`joomla:3-fpm-php7`](#joomla3-fpm-php7)
-	[`joomla:apache`](#joomlaapache)
-	[`joomla:apache-php7`](#joomlaapache-php7)
-	[`joomla:fpm`](#joomlafpm)
-	[`joomla:fpm-php7`](#joomlafpm-php7)
-	[`joomla:latest`](#joomlalatest)

## `joomla:3`

```console
$ docker pull joomla@sha256:8ff86ab99643119c6fccf12fe0d40b9a951b337fb8feb084f33a1a03c767f062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3` - linux; amd64

```console
$ docker pull joomla@sha256:02afabe82305b70c13f1e94180bc78a4a6548dfb21c761cf86f36435e28b2d10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.4 MB (172423926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32a510f02f3b4e3060db25074b1a45811bc24bbcb19d75dde90da0885702e11f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 06:04:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:04:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 06:04:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 06:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 12 Dec 2017 06:13:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 12 Dec 2017 06:13:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 12 Dec 2017 06:13:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 12 Dec 2017 06:13:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 12 Dec 2017 06:13:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 06:56:41 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 12 Dec 2017 06:56:41 GMT
ENV PHP_VERSION=5.6.32
# Tue, 12 Dec 2017 06:56:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 06:56:42 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Tue, 12 Dec 2017 06:56:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 06:56:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 06:59:45 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 06:59:46 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:46 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 06:59:46 GMT
EXPOSE 80/tcp
# Tue, 12 Dec 2017 06:59:47 GMT
CMD ["apache2-foreground"]
# Tue, 12 Dec 2017 09:46:17 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 12 Dec 2017 09:46:17 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 12 Dec 2017 09:46:19 GMT
RUN a2enmod rewrite
# Tue, 12 Dec 2017 09:46:48 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 12 Dec 2017 09:46:56 GMT
RUN docker-php-ext-install mysqli
# Tue, 12 Dec 2017 09:47:01 GMT
RUN docker-php-ext-install mcrypt
# Tue, 12 Dec 2017 09:47:23 GMT
RUN docker-php-ext-install zip
# Tue, 12 Dec 2017 09:47:23 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 09:47:23 GMT
ENV JOOMLA_VERSION=3.8.2
# Tue, 12 Dec 2017 09:47:24 GMT
ENV JOOMLA_SHA1=e68745d55cc5b1a7bb46f72f4296c6550e088543
# Tue, 12 Dec 2017 09:47:29 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 12 Dec 2017 09:47:30 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Tue, 12 Dec 2017 09:47:30 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 12 Dec 2017 09:47:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 09:47:31 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abfca402d9b38de54362ba77d7a6841e1862028622caf32fe05fb90a49f4d36`  
		Last Modified: Tue, 12 Dec 2017 07:18:06 GMT  
		Size: 81.9 MB (81876790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502a4f90da606173fb3b788d076ecd2b2e620a8cfd18e60930c1d821bbb25715`  
		Last Modified: Tue, 12 Dec 2017 07:17:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0250641c2a932255c5b4f5bb483cd8664f5e0855b0b195c538c00761394f0c`  
		Last Modified: Tue, 12 Dec 2017 07:19:46 GMT  
		Size: 3.0 MB (3011955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8369e62349f672f343044b9af97fa7737607e6f608177b22c7552f8516f1ce`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18189b19fc46e7b1c56b31bd69e2833f3e2b2b580bb71899366159c94017fd04`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59972270bf3b3899a20b826eaad8b2c2fc24a9b38c90a0c18341a13fdf23779c`  
		Last Modified: Tue, 12 Dec 2017 07:19:41 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bd8d4276cfbda5285440f9748df0dc4539eb730efc42d75335355098c684fc`  
		Last Modified: Tue, 12 Dec 2017 07:19:42 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3c100b9d8e0aaed1d69d3483fa2f95e8d95727d6d078977ae3f2a771e007eb`  
		Last Modified: Tue, 12 Dec 2017 07:28:25 GMT  
		Size: 12.8 MB (12817707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c594a2e740f6444402a8e68c457d20f144ea3e9607fa460e99743254ae77c`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970337d23026cf4b6ddc6b705cfc58321ec34928936c58416a1f003a62110226`  
		Last Modified: Tue, 12 Dec 2017 07:28:26 GMT  
		Size: 9.5 MB (9534580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8593f35b0acb0769fcaf021159e9c05da017204b0fc5ecf6da141c9d815550f`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113145dfe2250cbe2522f8cc938e7edeec2e213f71b9fa9505519d07d4d96c23`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048a559a7ac9971fda63454c1041129e9872f039f379a1a6028074159f90dced`  
		Last Modified: Tue, 12 Dec 2017 10:05:50 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c9ce674f99bde79e41bd974e8ee01fdc3f34c5e28098283f9b87f412cd3a6c`  
		Last Modified: Tue, 12 Dec 2017 10:05:51 GMT  
		Size: 3.0 MB (3000696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3761060b7a3541b60b1b53cda819ad88507a01e4dc872c7c84ce47f76357cb4c`  
		Last Modified: Tue, 12 Dec 2017 10:05:50 GMT  
		Size: 58.0 KB (57997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e572bf69d64f2dfdd351491700c5efdbc040aa2236947b9c376c2ee53c0773`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 19.7 KB (19703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b96fbd3a668f96ffb83e92b83239bdeefc2c1d39c91dbb849dd85460977fd6ef`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 63.4 KB (63408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ee98fc2caaef22b1a653af3ec60a58dda2c6239f5ef229edefc14b3df5d283`  
		Last Modified: Tue, 12 Dec 2017 10:05:56 GMT  
		Size: 9.4 MB (9433108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb27b5a3ac9f56f82dfe7afa5672ddfe384057f462e6289f8b98e0ca9a8e18f`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8dd61833388bfdfc759991d767991ab28ad1a280a2158559f49ae936cf724ea`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8`

```console
$ docker pull joomla@sha256:8ff86ab99643119c6fccf12fe0d40b9a951b337fb8feb084f33a1a03c767f062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8` - linux; amd64

```console
$ docker pull joomla@sha256:02afabe82305b70c13f1e94180bc78a4a6548dfb21c761cf86f36435e28b2d10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.4 MB (172423926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32a510f02f3b4e3060db25074b1a45811bc24bbcb19d75dde90da0885702e11f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 06:04:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:04:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 06:04:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 06:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 12 Dec 2017 06:13:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 12 Dec 2017 06:13:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 12 Dec 2017 06:13:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 12 Dec 2017 06:13:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 12 Dec 2017 06:13:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 06:56:41 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 12 Dec 2017 06:56:41 GMT
ENV PHP_VERSION=5.6.32
# Tue, 12 Dec 2017 06:56:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 06:56:42 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Tue, 12 Dec 2017 06:56:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 06:56:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 06:59:45 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 06:59:46 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:46 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 06:59:46 GMT
EXPOSE 80/tcp
# Tue, 12 Dec 2017 06:59:47 GMT
CMD ["apache2-foreground"]
# Tue, 12 Dec 2017 09:46:17 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 12 Dec 2017 09:46:17 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 12 Dec 2017 09:46:19 GMT
RUN a2enmod rewrite
# Tue, 12 Dec 2017 09:46:48 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 12 Dec 2017 09:46:56 GMT
RUN docker-php-ext-install mysqli
# Tue, 12 Dec 2017 09:47:01 GMT
RUN docker-php-ext-install mcrypt
# Tue, 12 Dec 2017 09:47:23 GMT
RUN docker-php-ext-install zip
# Tue, 12 Dec 2017 09:47:23 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 09:47:23 GMT
ENV JOOMLA_VERSION=3.8.2
# Tue, 12 Dec 2017 09:47:24 GMT
ENV JOOMLA_SHA1=e68745d55cc5b1a7bb46f72f4296c6550e088543
# Tue, 12 Dec 2017 09:47:29 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 12 Dec 2017 09:47:30 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Tue, 12 Dec 2017 09:47:30 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 12 Dec 2017 09:47:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 09:47:31 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abfca402d9b38de54362ba77d7a6841e1862028622caf32fe05fb90a49f4d36`  
		Last Modified: Tue, 12 Dec 2017 07:18:06 GMT  
		Size: 81.9 MB (81876790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502a4f90da606173fb3b788d076ecd2b2e620a8cfd18e60930c1d821bbb25715`  
		Last Modified: Tue, 12 Dec 2017 07:17:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0250641c2a932255c5b4f5bb483cd8664f5e0855b0b195c538c00761394f0c`  
		Last Modified: Tue, 12 Dec 2017 07:19:46 GMT  
		Size: 3.0 MB (3011955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8369e62349f672f343044b9af97fa7737607e6f608177b22c7552f8516f1ce`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18189b19fc46e7b1c56b31bd69e2833f3e2b2b580bb71899366159c94017fd04`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59972270bf3b3899a20b826eaad8b2c2fc24a9b38c90a0c18341a13fdf23779c`  
		Last Modified: Tue, 12 Dec 2017 07:19:41 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bd8d4276cfbda5285440f9748df0dc4539eb730efc42d75335355098c684fc`  
		Last Modified: Tue, 12 Dec 2017 07:19:42 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3c100b9d8e0aaed1d69d3483fa2f95e8d95727d6d078977ae3f2a771e007eb`  
		Last Modified: Tue, 12 Dec 2017 07:28:25 GMT  
		Size: 12.8 MB (12817707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c594a2e740f6444402a8e68c457d20f144ea3e9607fa460e99743254ae77c`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970337d23026cf4b6ddc6b705cfc58321ec34928936c58416a1f003a62110226`  
		Last Modified: Tue, 12 Dec 2017 07:28:26 GMT  
		Size: 9.5 MB (9534580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8593f35b0acb0769fcaf021159e9c05da017204b0fc5ecf6da141c9d815550f`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113145dfe2250cbe2522f8cc938e7edeec2e213f71b9fa9505519d07d4d96c23`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048a559a7ac9971fda63454c1041129e9872f039f379a1a6028074159f90dced`  
		Last Modified: Tue, 12 Dec 2017 10:05:50 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c9ce674f99bde79e41bd974e8ee01fdc3f34c5e28098283f9b87f412cd3a6c`  
		Last Modified: Tue, 12 Dec 2017 10:05:51 GMT  
		Size: 3.0 MB (3000696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3761060b7a3541b60b1b53cda819ad88507a01e4dc872c7c84ce47f76357cb4c`  
		Last Modified: Tue, 12 Dec 2017 10:05:50 GMT  
		Size: 58.0 KB (57997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e572bf69d64f2dfdd351491700c5efdbc040aa2236947b9c376c2ee53c0773`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 19.7 KB (19703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b96fbd3a668f96ffb83e92b83239bdeefc2c1d39c91dbb849dd85460977fd6ef`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 63.4 KB (63408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ee98fc2caaef22b1a653af3ec60a58dda2c6239f5ef229edefc14b3df5d283`  
		Last Modified: Tue, 12 Dec 2017 10:05:56 GMT  
		Size: 9.4 MB (9433108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb27b5a3ac9f56f82dfe7afa5672ddfe384057f462e6289f8b98e0ca9a8e18f`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8dd61833388bfdfc759991d767991ab28ad1a280a2158559f49ae936cf724ea`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8.2`

```console
$ docker pull joomla@sha256:8ff86ab99643119c6fccf12fe0d40b9a951b337fb8feb084f33a1a03c767f062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8.2` - linux; amd64

```console
$ docker pull joomla@sha256:02afabe82305b70c13f1e94180bc78a4a6548dfb21c761cf86f36435e28b2d10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.4 MB (172423926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32a510f02f3b4e3060db25074b1a45811bc24bbcb19d75dde90da0885702e11f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 06:04:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:04:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 06:04:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 06:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 12 Dec 2017 06:13:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 12 Dec 2017 06:13:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 12 Dec 2017 06:13:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 12 Dec 2017 06:13:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 12 Dec 2017 06:13:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 06:56:41 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 12 Dec 2017 06:56:41 GMT
ENV PHP_VERSION=5.6.32
# Tue, 12 Dec 2017 06:56:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 06:56:42 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Tue, 12 Dec 2017 06:56:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 06:56:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 06:59:45 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 06:59:46 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:46 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 06:59:46 GMT
EXPOSE 80/tcp
# Tue, 12 Dec 2017 06:59:47 GMT
CMD ["apache2-foreground"]
# Tue, 12 Dec 2017 09:46:17 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 12 Dec 2017 09:46:17 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 12 Dec 2017 09:46:19 GMT
RUN a2enmod rewrite
# Tue, 12 Dec 2017 09:46:48 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 12 Dec 2017 09:46:56 GMT
RUN docker-php-ext-install mysqli
# Tue, 12 Dec 2017 09:47:01 GMT
RUN docker-php-ext-install mcrypt
# Tue, 12 Dec 2017 09:47:23 GMT
RUN docker-php-ext-install zip
# Tue, 12 Dec 2017 09:47:23 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 09:47:23 GMT
ENV JOOMLA_VERSION=3.8.2
# Tue, 12 Dec 2017 09:47:24 GMT
ENV JOOMLA_SHA1=e68745d55cc5b1a7bb46f72f4296c6550e088543
# Tue, 12 Dec 2017 09:47:29 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 12 Dec 2017 09:47:30 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Tue, 12 Dec 2017 09:47:30 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 12 Dec 2017 09:47:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 09:47:31 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abfca402d9b38de54362ba77d7a6841e1862028622caf32fe05fb90a49f4d36`  
		Last Modified: Tue, 12 Dec 2017 07:18:06 GMT  
		Size: 81.9 MB (81876790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502a4f90da606173fb3b788d076ecd2b2e620a8cfd18e60930c1d821bbb25715`  
		Last Modified: Tue, 12 Dec 2017 07:17:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0250641c2a932255c5b4f5bb483cd8664f5e0855b0b195c538c00761394f0c`  
		Last Modified: Tue, 12 Dec 2017 07:19:46 GMT  
		Size: 3.0 MB (3011955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8369e62349f672f343044b9af97fa7737607e6f608177b22c7552f8516f1ce`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18189b19fc46e7b1c56b31bd69e2833f3e2b2b580bb71899366159c94017fd04`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59972270bf3b3899a20b826eaad8b2c2fc24a9b38c90a0c18341a13fdf23779c`  
		Last Modified: Tue, 12 Dec 2017 07:19:41 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bd8d4276cfbda5285440f9748df0dc4539eb730efc42d75335355098c684fc`  
		Last Modified: Tue, 12 Dec 2017 07:19:42 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3c100b9d8e0aaed1d69d3483fa2f95e8d95727d6d078977ae3f2a771e007eb`  
		Last Modified: Tue, 12 Dec 2017 07:28:25 GMT  
		Size: 12.8 MB (12817707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c594a2e740f6444402a8e68c457d20f144ea3e9607fa460e99743254ae77c`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970337d23026cf4b6ddc6b705cfc58321ec34928936c58416a1f003a62110226`  
		Last Modified: Tue, 12 Dec 2017 07:28:26 GMT  
		Size: 9.5 MB (9534580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8593f35b0acb0769fcaf021159e9c05da017204b0fc5ecf6da141c9d815550f`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113145dfe2250cbe2522f8cc938e7edeec2e213f71b9fa9505519d07d4d96c23`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048a559a7ac9971fda63454c1041129e9872f039f379a1a6028074159f90dced`  
		Last Modified: Tue, 12 Dec 2017 10:05:50 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c9ce674f99bde79e41bd974e8ee01fdc3f34c5e28098283f9b87f412cd3a6c`  
		Last Modified: Tue, 12 Dec 2017 10:05:51 GMT  
		Size: 3.0 MB (3000696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3761060b7a3541b60b1b53cda819ad88507a01e4dc872c7c84ce47f76357cb4c`  
		Last Modified: Tue, 12 Dec 2017 10:05:50 GMT  
		Size: 58.0 KB (57997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e572bf69d64f2dfdd351491700c5efdbc040aa2236947b9c376c2ee53c0773`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 19.7 KB (19703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b96fbd3a668f96ffb83e92b83239bdeefc2c1d39c91dbb849dd85460977fd6ef`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 63.4 KB (63408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ee98fc2caaef22b1a653af3ec60a58dda2c6239f5ef229edefc14b3df5d283`  
		Last Modified: Tue, 12 Dec 2017 10:05:56 GMT  
		Size: 9.4 MB (9433108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb27b5a3ac9f56f82dfe7afa5672ddfe384057f462e6289f8b98e0ca9a8e18f`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8dd61833388bfdfc759991d767991ab28ad1a280a2158559f49ae936cf724ea`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8.2-apache`

```console
$ docker pull joomla@sha256:8ff86ab99643119c6fccf12fe0d40b9a951b337fb8feb084f33a1a03c767f062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8.2-apache` - linux; amd64

```console
$ docker pull joomla@sha256:02afabe82305b70c13f1e94180bc78a4a6548dfb21c761cf86f36435e28b2d10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.4 MB (172423926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32a510f02f3b4e3060db25074b1a45811bc24bbcb19d75dde90da0885702e11f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 06:04:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:04:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 06:04:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 06:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 12 Dec 2017 06:13:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 12 Dec 2017 06:13:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 12 Dec 2017 06:13:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 12 Dec 2017 06:13:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 12 Dec 2017 06:13:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 06:56:41 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 12 Dec 2017 06:56:41 GMT
ENV PHP_VERSION=5.6.32
# Tue, 12 Dec 2017 06:56:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 06:56:42 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Tue, 12 Dec 2017 06:56:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 06:56:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 06:59:45 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 06:59:46 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:46 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 06:59:46 GMT
EXPOSE 80/tcp
# Tue, 12 Dec 2017 06:59:47 GMT
CMD ["apache2-foreground"]
# Tue, 12 Dec 2017 09:46:17 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 12 Dec 2017 09:46:17 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 12 Dec 2017 09:46:19 GMT
RUN a2enmod rewrite
# Tue, 12 Dec 2017 09:46:48 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 12 Dec 2017 09:46:56 GMT
RUN docker-php-ext-install mysqli
# Tue, 12 Dec 2017 09:47:01 GMT
RUN docker-php-ext-install mcrypt
# Tue, 12 Dec 2017 09:47:23 GMT
RUN docker-php-ext-install zip
# Tue, 12 Dec 2017 09:47:23 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 09:47:23 GMT
ENV JOOMLA_VERSION=3.8.2
# Tue, 12 Dec 2017 09:47:24 GMT
ENV JOOMLA_SHA1=e68745d55cc5b1a7bb46f72f4296c6550e088543
# Tue, 12 Dec 2017 09:47:29 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 12 Dec 2017 09:47:30 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Tue, 12 Dec 2017 09:47:30 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 12 Dec 2017 09:47:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 09:47:31 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abfca402d9b38de54362ba77d7a6841e1862028622caf32fe05fb90a49f4d36`  
		Last Modified: Tue, 12 Dec 2017 07:18:06 GMT  
		Size: 81.9 MB (81876790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502a4f90da606173fb3b788d076ecd2b2e620a8cfd18e60930c1d821bbb25715`  
		Last Modified: Tue, 12 Dec 2017 07:17:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0250641c2a932255c5b4f5bb483cd8664f5e0855b0b195c538c00761394f0c`  
		Last Modified: Tue, 12 Dec 2017 07:19:46 GMT  
		Size: 3.0 MB (3011955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8369e62349f672f343044b9af97fa7737607e6f608177b22c7552f8516f1ce`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18189b19fc46e7b1c56b31bd69e2833f3e2b2b580bb71899366159c94017fd04`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59972270bf3b3899a20b826eaad8b2c2fc24a9b38c90a0c18341a13fdf23779c`  
		Last Modified: Tue, 12 Dec 2017 07:19:41 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bd8d4276cfbda5285440f9748df0dc4539eb730efc42d75335355098c684fc`  
		Last Modified: Tue, 12 Dec 2017 07:19:42 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3c100b9d8e0aaed1d69d3483fa2f95e8d95727d6d078977ae3f2a771e007eb`  
		Last Modified: Tue, 12 Dec 2017 07:28:25 GMT  
		Size: 12.8 MB (12817707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c594a2e740f6444402a8e68c457d20f144ea3e9607fa460e99743254ae77c`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970337d23026cf4b6ddc6b705cfc58321ec34928936c58416a1f003a62110226`  
		Last Modified: Tue, 12 Dec 2017 07:28:26 GMT  
		Size: 9.5 MB (9534580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8593f35b0acb0769fcaf021159e9c05da017204b0fc5ecf6da141c9d815550f`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113145dfe2250cbe2522f8cc938e7edeec2e213f71b9fa9505519d07d4d96c23`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048a559a7ac9971fda63454c1041129e9872f039f379a1a6028074159f90dced`  
		Last Modified: Tue, 12 Dec 2017 10:05:50 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c9ce674f99bde79e41bd974e8ee01fdc3f34c5e28098283f9b87f412cd3a6c`  
		Last Modified: Tue, 12 Dec 2017 10:05:51 GMT  
		Size: 3.0 MB (3000696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3761060b7a3541b60b1b53cda819ad88507a01e4dc872c7c84ce47f76357cb4c`  
		Last Modified: Tue, 12 Dec 2017 10:05:50 GMT  
		Size: 58.0 KB (57997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e572bf69d64f2dfdd351491700c5efdbc040aa2236947b9c376c2ee53c0773`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 19.7 KB (19703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b96fbd3a668f96ffb83e92b83239bdeefc2c1d39c91dbb849dd85460977fd6ef`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 63.4 KB (63408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ee98fc2caaef22b1a653af3ec60a58dda2c6239f5ef229edefc14b3df5d283`  
		Last Modified: Tue, 12 Dec 2017 10:05:56 GMT  
		Size: 9.4 MB (9433108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb27b5a3ac9f56f82dfe7afa5672ddfe384057f462e6289f8b98e0ca9a8e18f`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8dd61833388bfdfc759991d767991ab28ad1a280a2158559f49ae936cf724ea`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8.2-apache-php7`

```console
$ docker pull joomla@sha256:657787f279eff11e036e7855c5ec3030353330e525ff15d792e0ec53ab411198
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8.2-apache-php7` - linux; amd64

```console
$ docker pull joomla@sha256:cfda1738d8e223d9fdeb1d255f04f9da902a2b5039ff7dc1df778454c1a58a15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176101233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98107124a39497a0d4ea3fe9e718162f59d3138ae169c7f3fedb4c54a3fdeadb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 06:04:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:04:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 06:04:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 06:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 12 Dec 2017 06:13:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 12 Dec 2017 06:13:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 12 Dec 2017 06:13:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 12 Dec 2017 06:13:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 12 Dec 2017 06:13:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 06:37:45 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 12 Dec 2017 06:37:45 GMT
ENV PHP_VERSION=7.0.26
# Tue, 12 Dec 2017 06:37:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 06:37:45 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Tue, 12 Dec 2017 06:38:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 06:38:01 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:41:29 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 06:41:30 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:41:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 06:41:30 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:41:30 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 06:41:31 GMT
EXPOSE 80/tcp
# Tue, 12 Dec 2017 06:41:31 GMT
CMD ["apache2-foreground"]
# Tue, 12 Dec 2017 09:49:20 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 12 Dec 2017 09:49:20 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 12 Dec 2017 09:49:21 GMT
RUN a2enmod rewrite
# Tue, 12 Dec 2017 09:49:47 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 12 Dec 2017 09:55:08 GMT
RUN docker-php-ext-install mysqli
# Tue, 12 Dec 2017 09:55:14 GMT
RUN docker-php-ext-install mcrypt
# Tue, 12 Dec 2017 09:55:34 GMT
RUN docker-php-ext-install zip
# Tue, 12 Dec 2017 09:55:34 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 09:55:34 GMT
ENV JOOMLA_VERSION=3.8.2
# Tue, 12 Dec 2017 09:55:35 GMT
ENV JOOMLA_SHA1=e68745d55cc5b1a7bb46f72f4296c6550e088543
# Tue, 12 Dec 2017 09:55:41 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 12 Dec 2017 09:55:41 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Tue, 12 Dec 2017 09:55:42 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 12 Dec 2017 09:55:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 09:55:42 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abfca402d9b38de54362ba77d7a6841e1862028622caf32fe05fb90a49f4d36`  
		Last Modified: Tue, 12 Dec 2017 07:18:06 GMT  
		Size: 81.9 MB (81876790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502a4f90da606173fb3b788d076ecd2b2e620a8cfd18e60930c1d821bbb25715`  
		Last Modified: Tue, 12 Dec 2017 07:17:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0250641c2a932255c5b4f5bb483cd8664f5e0855b0b195c538c00761394f0c`  
		Last Modified: Tue, 12 Dec 2017 07:19:46 GMT  
		Size: 3.0 MB (3011955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8369e62349f672f343044b9af97fa7737607e6f608177b22c7552f8516f1ce`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18189b19fc46e7b1c56b31bd69e2833f3e2b2b580bb71899366159c94017fd04`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59972270bf3b3899a20b826eaad8b2c2fc24a9b38c90a0c18341a13fdf23779c`  
		Last Modified: Tue, 12 Dec 2017 07:19:41 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bd8d4276cfbda5285440f9748df0dc4539eb730efc42d75335355098c684fc`  
		Last Modified: Tue, 12 Dec 2017 07:19:42 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ea00c88fd676720002a88b1d9e4a1d8bdc064c34fc896bba26e6fd94d17f83`  
		Last Modified: Tue, 12 Dec 2017 07:23:54 GMT  
		Size: 12.3 MB (12320036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c95acf0ef9e9c2eae237bafcc79b5250870e73f2cc184af684d61f338ca4c06`  
		Last Modified: Tue, 12 Dec 2017 07:23:52 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22c930e4a88b618b69718510d7615e4dfafd4ffc6c51f8418dbd2f23718906b`  
		Last Modified: Tue, 12 Dec 2017 07:23:58 GMT  
		Size: 13.7 MB (13707869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e1ab290043be93ca537eab2efd869b75095af393dfdfa2f75477c28640ef70`  
		Last Modified: Tue, 12 Dec 2017 07:23:52 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3125c522ede8cd7a96bf2ecb686ec6574d335a8dab86822ab7c3afeace2354c`  
		Last Modified: Tue, 12 Dec 2017 07:23:52 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c517cb40cba9f77f6cfb1fda19ef5a405b7da5cf6ae70574eae391977184546f`  
		Last Modified: Tue, 12 Dec 2017 10:07:28 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f7159ccf44d9523a311bfbbe7e4d70f5f1b997acd9196f7e9a6e4c11cf8afa`  
		Last Modified: Tue, 12 Dec 2017 10:07:29 GMT  
		Size: 3.0 MB (2996068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc36012cb3c607faaed61a68a42f1948dfc54b7beeca63c5fa430e1c1920cbb`  
		Last Modified: Tue, 12 Dec 2017 10:07:28 GMT  
		Size: 56.4 KB (56401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c732b64c2f4b52ff40a474d438b7374fa9611c77f9d53c1c189446e2dd5ac5`  
		Last Modified: Tue, 12 Dec 2017 10:07:26 GMT  
		Size: 18.3 KB (18284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0ec00385440cde62395692d8749f8fd5e2ec5c763894b616f23d48c3ee9bb7`  
		Last Modified: Tue, 12 Dec 2017 10:07:26 GMT  
		Size: 72.8 KB (72752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a8395082b83a3502c3b8a435d554199c9442c9e9a132831e8e70a761f2f8a4`  
		Last Modified: Tue, 12 Dec 2017 10:07:32 GMT  
		Size: 9.4 MB (9433102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd89bd235809e588e2d115fbf7c5c9abbea8d1a1c80fe6c7e6af68c9fef19ba`  
		Last Modified: Tue, 12 Dec 2017 10:07:26 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a731ee2b7e3a271100d23f64203ad7abc5ff962a3ee356c0a5c897d38af7293a`  
		Last Modified: Tue, 12 Dec 2017 10:07:26 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8.2-fpm`

```console
$ docker pull joomla@sha256:0b268a9a71b56a1210f4511f1f71d183dfd7f511c00d1b033e5c69a85d6bb0b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8.2-fpm` - linux; amd64

```console
$ docker pull joomla@sha256:5eb4b9048268b28f86abd815bbcfcea0debd8882ee6542e99ed57cfbb81e8d43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169054458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67aef4cec631c4045917022e3f0df2878d8c39aa8e40b4e54e035e3ff98073a1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 06:04:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:04:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 06:04:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 06:59:54 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 12 Dec 2017 06:59:54 GMT
ENV PHP_VERSION=5.6.32
# Tue, 12 Dec 2017 06:59:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 06:59:55 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Tue, 12 Dec 2017 07:00:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 07:00:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 07:04:30 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 07:04:36 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 12 Dec 2017 07:04:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 07:04:36 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 07:04:37 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 12 Dec 2017 07:04:37 GMT
EXPOSE 9000/tcp
# Tue, 12 Dec 2017 07:04:37 GMT
CMD ["php-fpm"]
# Tue, 12 Dec 2017 09:55:56 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 12 Dec 2017 09:55:56 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 12 Dec 2017 09:56:21 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 12 Dec 2017 09:56:28 GMT
RUN docker-php-ext-install mysqli
# Tue, 12 Dec 2017 09:56:34 GMT
RUN docker-php-ext-install mcrypt
# Tue, 12 Dec 2017 09:56:55 GMT
RUN docker-php-ext-install zip
# Tue, 12 Dec 2017 09:56:55 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 09:56:56 GMT
ENV JOOMLA_VERSION=3.8.2
# Tue, 12 Dec 2017 09:56:56 GMT
ENV JOOMLA_SHA1=e68745d55cc5b1a7bb46f72f4296c6550e088543
# Tue, 12 Dec 2017 09:57:02 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 12 Dec 2017 09:57:02 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Tue, 12 Dec 2017 09:57:03 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 12 Dec 2017 09:57:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 09:57:09 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abfca402d9b38de54362ba77d7a6841e1862028622caf32fe05fb90a49f4d36`  
		Last Modified: Tue, 12 Dec 2017 07:18:06 GMT  
		Size: 81.9 MB (81876790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502a4f90da606173fb3b788d076ecd2b2e620a8cfd18e60930c1d821bbb25715`  
		Last Modified: Tue, 12 Dec 2017 07:17:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7411bcc6bef20e45e31fe6c390f5c2031466f8b39ea45f137c0ea6169758d82`  
		Last Modified: Tue, 12 Dec 2017 07:29:29 GMT  
		Size: 12.8 MB (12800839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300a6b91f34de23c23a2e8fe3d364144aab91409a75ab9bcc10673f9fae5ed82`  
		Last Modified: Tue, 12 Dec 2017 07:29:25 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ba67843fb8c3332ec256dfe8839b4e71235cc8f23ed72e15328bb19a543f32`  
		Last Modified: Tue, 12 Dec 2017 07:29:28 GMT  
		Size: 9.2 MB (9209496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a005301ce437929d5836af989aee358e5c5224c2977fcc45fa7cc19a907b7bd`  
		Last Modified: Tue, 12 Dec 2017 07:29:25 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06673dd985c8ce301facd66d269c0029fa3d0d7d3c723cf0d7aae9716c3842e9`  
		Last Modified: Tue, 12 Dec 2017 07:29:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01acddaa56c2ea0ba171f4b27ca820538ec019c22335e8412800622b566aa646`  
		Last Modified: Tue, 12 Dec 2017 07:29:25 GMT  
		Size: 7.6 KB (7619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadbe31aa18d76501c766ca942e434c4fd241c2b578301092577c89837c8c438`  
		Last Modified: Tue, 12 Dec 2017 10:08:18 GMT  
		Size: 3.0 MB (2981011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5416a2217e641c1937c1e8c21208114f9b1e196d1673da6071af9e537b0c4e4`  
		Last Modified: Tue, 12 Dec 2017 10:08:19 GMT  
		Size: 58.0 KB (57995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ca0e2a6110e2cf71a531f13f0fc31b890cd378938e74f138d705dcaf0c0783`  
		Last Modified: Tue, 12 Dec 2017 10:08:15 GMT  
		Size: 19.7 KB (19699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db5f5db8af176ef6d652905ad6a0174f153b59724be676b844306dec3e09833`  
		Last Modified: Tue, 12 Dec 2017 10:08:15 GMT  
		Size: 63.4 KB (63410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7cc22fcef808124c3fcbe5c7f42a6bc92785f3c779e3803cc7e9f8c71a317cc`  
		Last Modified: Tue, 12 Dec 2017 10:08:21 GMT  
		Size: 9.4 MB (9433106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d596b9be8fd44c2362fdc8da8198aab776688f3f0d0f2ff4dda8c8055a170d`  
		Last Modified: Tue, 12 Dec 2017 10:08:15 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1214e31268dddffb109256af4cc97ff069e8522f0e1a1b3d610c51d76f90724b`  
		Last Modified: Tue, 12 Dec 2017 10:08:16 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8.2-fpm-php7`

```console
$ docker pull joomla@sha256:8c78a94a10015b5c1cb33b00aaa9e881f90e48d5fa900d27d6c9c6764e7ea78b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8.2-fpm-php7` - linux; amd64

```console
$ docker pull joomla@sha256:ea2f212726006a4184b62ef39db963ba961b58ac6ec18da570b5adbc9dd819a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172747870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d6dadbcde938d1fd57b0d2f94bf3375df92bed283d197738aec3716ed4f5007`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 06:04:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:04:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 06:04:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 06:41:43 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 12 Dec 2017 06:41:43 GMT
ENV PHP_VERSION=7.0.26
# Tue, 12 Dec 2017 06:41:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 06:41:44 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Tue, 12 Dec 2017 06:41:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 06:41:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:46:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 06:46:42 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:46:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 06:46:43 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 06:46:44 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 12 Dec 2017 06:46:44 GMT
EXPOSE 9000/tcp
# Tue, 12 Dec 2017 06:46:44 GMT
CMD ["php-fpm"]
# Tue, 12 Dec 2017 09:57:26 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 12 Dec 2017 09:57:26 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 12 Dec 2017 09:57:54 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 12 Dec 2017 09:58:03 GMT
RUN docker-php-ext-install mysqli
# Tue, 12 Dec 2017 09:58:08 GMT
RUN docker-php-ext-install mcrypt
# Tue, 12 Dec 2017 10:02:42 GMT
RUN docker-php-ext-install zip
# Tue, 12 Dec 2017 10:02:42 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 10:02:42 GMT
ENV JOOMLA_VERSION=3.8.2
# Tue, 12 Dec 2017 10:02:42 GMT
ENV JOOMLA_SHA1=e68745d55cc5b1a7bb46f72f4296c6550e088543
# Tue, 12 Dec 2017 10:02:48 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 12 Dec 2017 10:05:29 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Tue, 12 Dec 2017 10:05:30 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 12 Dec 2017 10:05:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 10:05:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abfca402d9b38de54362ba77d7a6841e1862028622caf32fe05fb90a49f4d36`  
		Last Modified: Tue, 12 Dec 2017 07:18:06 GMT  
		Size: 81.9 MB (81876790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502a4f90da606173fb3b788d076ecd2b2e620a8cfd18e60930c1d821bbb25715`  
		Last Modified: Tue, 12 Dec 2017 07:17:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d1c721b5ebc2a8fb934584300967876c1ef4e4164ba03d292d748ead0bdcdc`  
		Last Modified: Tue, 12 Dec 2017 07:24:54 GMT  
		Size: 12.3 MB (12303236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f29c89e0c1ffebb11550cec4ce689e6009deb97e807d800db08eae0e1ea020`  
		Last Modified: Tue, 12 Dec 2017 07:24:51 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c12874108556182a150d6b672a4d7e9bbbbe6b56ebf47ce7319f6083a4f19da`  
		Last Modified: Tue, 12 Dec 2017 07:24:57 GMT  
		Size: 13.4 MB (13398968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cea6fa1222d539b59a324c1d73703a018379b490a19d831f2d094cece62f9ce`  
		Last Modified: Tue, 12 Dec 2017 07:24:51 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b2456f51e00c53273f4687357631dab33c7634232d990b4d73fda30dca161c`  
		Last Modified: Tue, 12 Dec 2017 07:24:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a86606c052d941f98cdd0e4c1eb82d1203c8fa73a31a3c575d520d2ccc4bd9`  
		Last Modified: Tue, 12 Dec 2017 07:24:51 GMT  
		Size: 7.7 KB (7679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccf09dae3f8e5cbe6c5ba17f0e56c9aacab50469027151240cfd0076a88f221`  
		Last Modified: Tue, 12 Dec 2017 10:23:39 GMT  
		Size: 3.0 MB (2976141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32debe056894c784c93d45ee1006cec9750b57dcd84bffd443ebbcfb858129a9`  
		Last Modified: Tue, 12 Dec 2017 10:23:38 GMT  
		Size: 56.4 KB (56408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3132e16ee36b1b5fabb2e7d3108d5c7de2f4f2a3d3ec05009445a723bec73b29`  
		Last Modified: Tue, 12 Dec 2017 10:23:36 GMT  
		Size: 18.3 KB (18289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206a632edaa92b00bb8089e1e1ad89f8cc661a5ed44fe380f1cab7597833b4a8`  
		Last Modified: Tue, 12 Dec 2017 10:23:36 GMT  
		Size: 72.8 KB (72764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f292ffcafbb6d44cead2c8260f18e91d69a914cc09a1f2c337df8fec9d7da96f`  
		Last Modified: Tue, 12 Dec 2017 10:23:42 GMT  
		Size: 9.4 MB (9433105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3064ff7af667a3ceff8b375cd4776c19fb82c4a6dfe531cf9d20f8f0cdbff589`  
		Last Modified: Tue, 12 Dec 2017 10:23:35 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c086f642f47dc2cde38a8cdd03b1d5a48535df92e89929802fc5dac7c78bb11f`  
		Last Modified: Tue, 12 Dec 2017 10:23:35 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8-apache`

```console
$ docker pull joomla@sha256:8ff86ab99643119c6fccf12fe0d40b9a951b337fb8feb084f33a1a03c767f062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8-apache` - linux; amd64

```console
$ docker pull joomla@sha256:02afabe82305b70c13f1e94180bc78a4a6548dfb21c761cf86f36435e28b2d10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.4 MB (172423926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32a510f02f3b4e3060db25074b1a45811bc24bbcb19d75dde90da0885702e11f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 06:04:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:04:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 06:04:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 06:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 12 Dec 2017 06:13:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 12 Dec 2017 06:13:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 12 Dec 2017 06:13:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 12 Dec 2017 06:13:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 12 Dec 2017 06:13:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 06:56:41 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 12 Dec 2017 06:56:41 GMT
ENV PHP_VERSION=5.6.32
# Tue, 12 Dec 2017 06:56:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 06:56:42 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Tue, 12 Dec 2017 06:56:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 06:56:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 06:59:45 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 06:59:46 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:46 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 06:59:46 GMT
EXPOSE 80/tcp
# Tue, 12 Dec 2017 06:59:47 GMT
CMD ["apache2-foreground"]
# Tue, 12 Dec 2017 09:46:17 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 12 Dec 2017 09:46:17 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 12 Dec 2017 09:46:19 GMT
RUN a2enmod rewrite
# Tue, 12 Dec 2017 09:46:48 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 12 Dec 2017 09:46:56 GMT
RUN docker-php-ext-install mysqli
# Tue, 12 Dec 2017 09:47:01 GMT
RUN docker-php-ext-install mcrypt
# Tue, 12 Dec 2017 09:47:23 GMT
RUN docker-php-ext-install zip
# Tue, 12 Dec 2017 09:47:23 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 09:47:23 GMT
ENV JOOMLA_VERSION=3.8.2
# Tue, 12 Dec 2017 09:47:24 GMT
ENV JOOMLA_SHA1=e68745d55cc5b1a7bb46f72f4296c6550e088543
# Tue, 12 Dec 2017 09:47:29 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 12 Dec 2017 09:47:30 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Tue, 12 Dec 2017 09:47:30 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 12 Dec 2017 09:47:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 09:47:31 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abfca402d9b38de54362ba77d7a6841e1862028622caf32fe05fb90a49f4d36`  
		Last Modified: Tue, 12 Dec 2017 07:18:06 GMT  
		Size: 81.9 MB (81876790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502a4f90da606173fb3b788d076ecd2b2e620a8cfd18e60930c1d821bbb25715`  
		Last Modified: Tue, 12 Dec 2017 07:17:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0250641c2a932255c5b4f5bb483cd8664f5e0855b0b195c538c00761394f0c`  
		Last Modified: Tue, 12 Dec 2017 07:19:46 GMT  
		Size: 3.0 MB (3011955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8369e62349f672f343044b9af97fa7737607e6f608177b22c7552f8516f1ce`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18189b19fc46e7b1c56b31bd69e2833f3e2b2b580bb71899366159c94017fd04`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59972270bf3b3899a20b826eaad8b2c2fc24a9b38c90a0c18341a13fdf23779c`  
		Last Modified: Tue, 12 Dec 2017 07:19:41 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bd8d4276cfbda5285440f9748df0dc4539eb730efc42d75335355098c684fc`  
		Last Modified: Tue, 12 Dec 2017 07:19:42 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3c100b9d8e0aaed1d69d3483fa2f95e8d95727d6d078977ae3f2a771e007eb`  
		Last Modified: Tue, 12 Dec 2017 07:28:25 GMT  
		Size: 12.8 MB (12817707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c594a2e740f6444402a8e68c457d20f144ea3e9607fa460e99743254ae77c`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970337d23026cf4b6ddc6b705cfc58321ec34928936c58416a1f003a62110226`  
		Last Modified: Tue, 12 Dec 2017 07:28:26 GMT  
		Size: 9.5 MB (9534580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8593f35b0acb0769fcaf021159e9c05da017204b0fc5ecf6da141c9d815550f`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113145dfe2250cbe2522f8cc938e7edeec2e213f71b9fa9505519d07d4d96c23`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048a559a7ac9971fda63454c1041129e9872f039f379a1a6028074159f90dced`  
		Last Modified: Tue, 12 Dec 2017 10:05:50 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c9ce674f99bde79e41bd974e8ee01fdc3f34c5e28098283f9b87f412cd3a6c`  
		Last Modified: Tue, 12 Dec 2017 10:05:51 GMT  
		Size: 3.0 MB (3000696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3761060b7a3541b60b1b53cda819ad88507a01e4dc872c7c84ce47f76357cb4c`  
		Last Modified: Tue, 12 Dec 2017 10:05:50 GMT  
		Size: 58.0 KB (57997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e572bf69d64f2dfdd351491700c5efdbc040aa2236947b9c376c2ee53c0773`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 19.7 KB (19703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b96fbd3a668f96ffb83e92b83239bdeefc2c1d39c91dbb849dd85460977fd6ef`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 63.4 KB (63408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ee98fc2caaef22b1a653af3ec60a58dda2c6239f5ef229edefc14b3df5d283`  
		Last Modified: Tue, 12 Dec 2017 10:05:56 GMT  
		Size: 9.4 MB (9433108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb27b5a3ac9f56f82dfe7afa5672ddfe384057f462e6289f8b98e0ca9a8e18f`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8dd61833388bfdfc759991d767991ab28ad1a280a2158559f49ae936cf724ea`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8-apache-php7`

```console
$ docker pull joomla@sha256:657787f279eff11e036e7855c5ec3030353330e525ff15d792e0ec53ab411198
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8-apache-php7` - linux; amd64

```console
$ docker pull joomla@sha256:cfda1738d8e223d9fdeb1d255f04f9da902a2b5039ff7dc1df778454c1a58a15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176101233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98107124a39497a0d4ea3fe9e718162f59d3138ae169c7f3fedb4c54a3fdeadb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 06:04:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:04:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 06:04:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 06:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 12 Dec 2017 06:13:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 12 Dec 2017 06:13:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 12 Dec 2017 06:13:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 12 Dec 2017 06:13:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 12 Dec 2017 06:13:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 06:37:45 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 12 Dec 2017 06:37:45 GMT
ENV PHP_VERSION=7.0.26
# Tue, 12 Dec 2017 06:37:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 06:37:45 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Tue, 12 Dec 2017 06:38:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 06:38:01 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:41:29 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 06:41:30 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:41:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 06:41:30 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:41:30 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 06:41:31 GMT
EXPOSE 80/tcp
# Tue, 12 Dec 2017 06:41:31 GMT
CMD ["apache2-foreground"]
# Tue, 12 Dec 2017 09:49:20 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 12 Dec 2017 09:49:20 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 12 Dec 2017 09:49:21 GMT
RUN a2enmod rewrite
# Tue, 12 Dec 2017 09:49:47 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 12 Dec 2017 09:55:08 GMT
RUN docker-php-ext-install mysqli
# Tue, 12 Dec 2017 09:55:14 GMT
RUN docker-php-ext-install mcrypt
# Tue, 12 Dec 2017 09:55:34 GMT
RUN docker-php-ext-install zip
# Tue, 12 Dec 2017 09:55:34 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 09:55:34 GMT
ENV JOOMLA_VERSION=3.8.2
# Tue, 12 Dec 2017 09:55:35 GMT
ENV JOOMLA_SHA1=e68745d55cc5b1a7bb46f72f4296c6550e088543
# Tue, 12 Dec 2017 09:55:41 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 12 Dec 2017 09:55:41 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Tue, 12 Dec 2017 09:55:42 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 12 Dec 2017 09:55:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 09:55:42 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abfca402d9b38de54362ba77d7a6841e1862028622caf32fe05fb90a49f4d36`  
		Last Modified: Tue, 12 Dec 2017 07:18:06 GMT  
		Size: 81.9 MB (81876790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502a4f90da606173fb3b788d076ecd2b2e620a8cfd18e60930c1d821bbb25715`  
		Last Modified: Tue, 12 Dec 2017 07:17:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0250641c2a932255c5b4f5bb483cd8664f5e0855b0b195c538c00761394f0c`  
		Last Modified: Tue, 12 Dec 2017 07:19:46 GMT  
		Size: 3.0 MB (3011955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8369e62349f672f343044b9af97fa7737607e6f608177b22c7552f8516f1ce`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18189b19fc46e7b1c56b31bd69e2833f3e2b2b580bb71899366159c94017fd04`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59972270bf3b3899a20b826eaad8b2c2fc24a9b38c90a0c18341a13fdf23779c`  
		Last Modified: Tue, 12 Dec 2017 07:19:41 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bd8d4276cfbda5285440f9748df0dc4539eb730efc42d75335355098c684fc`  
		Last Modified: Tue, 12 Dec 2017 07:19:42 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ea00c88fd676720002a88b1d9e4a1d8bdc064c34fc896bba26e6fd94d17f83`  
		Last Modified: Tue, 12 Dec 2017 07:23:54 GMT  
		Size: 12.3 MB (12320036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c95acf0ef9e9c2eae237bafcc79b5250870e73f2cc184af684d61f338ca4c06`  
		Last Modified: Tue, 12 Dec 2017 07:23:52 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22c930e4a88b618b69718510d7615e4dfafd4ffc6c51f8418dbd2f23718906b`  
		Last Modified: Tue, 12 Dec 2017 07:23:58 GMT  
		Size: 13.7 MB (13707869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e1ab290043be93ca537eab2efd869b75095af393dfdfa2f75477c28640ef70`  
		Last Modified: Tue, 12 Dec 2017 07:23:52 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3125c522ede8cd7a96bf2ecb686ec6574d335a8dab86822ab7c3afeace2354c`  
		Last Modified: Tue, 12 Dec 2017 07:23:52 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c517cb40cba9f77f6cfb1fda19ef5a405b7da5cf6ae70574eae391977184546f`  
		Last Modified: Tue, 12 Dec 2017 10:07:28 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f7159ccf44d9523a311bfbbe7e4d70f5f1b997acd9196f7e9a6e4c11cf8afa`  
		Last Modified: Tue, 12 Dec 2017 10:07:29 GMT  
		Size: 3.0 MB (2996068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc36012cb3c607faaed61a68a42f1948dfc54b7beeca63c5fa430e1c1920cbb`  
		Last Modified: Tue, 12 Dec 2017 10:07:28 GMT  
		Size: 56.4 KB (56401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c732b64c2f4b52ff40a474d438b7374fa9611c77f9d53c1c189446e2dd5ac5`  
		Last Modified: Tue, 12 Dec 2017 10:07:26 GMT  
		Size: 18.3 KB (18284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0ec00385440cde62395692d8749f8fd5e2ec5c763894b616f23d48c3ee9bb7`  
		Last Modified: Tue, 12 Dec 2017 10:07:26 GMT  
		Size: 72.8 KB (72752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a8395082b83a3502c3b8a435d554199c9442c9e9a132831e8e70a761f2f8a4`  
		Last Modified: Tue, 12 Dec 2017 10:07:32 GMT  
		Size: 9.4 MB (9433102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd89bd235809e588e2d115fbf7c5c9abbea8d1a1c80fe6c7e6af68c9fef19ba`  
		Last Modified: Tue, 12 Dec 2017 10:07:26 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a731ee2b7e3a271100d23f64203ad7abc5ff962a3ee356c0a5c897d38af7293a`  
		Last Modified: Tue, 12 Dec 2017 10:07:26 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8-fpm`

```console
$ docker pull joomla@sha256:0b268a9a71b56a1210f4511f1f71d183dfd7f511c00d1b033e5c69a85d6bb0b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8-fpm` - linux; amd64

```console
$ docker pull joomla@sha256:5eb4b9048268b28f86abd815bbcfcea0debd8882ee6542e99ed57cfbb81e8d43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169054458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67aef4cec631c4045917022e3f0df2878d8c39aa8e40b4e54e035e3ff98073a1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 06:04:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:04:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 06:04:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 06:59:54 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 12 Dec 2017 06:59:54 GMT
ENV PHP_VERSION=5.6.32
# Tue, 12 Dec 2017 06:59:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 06:59:55 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Tue, 12 Dec 2017 07:00:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 07:00:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 07:04:30 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 07:04:36 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 12 Dec 2017 07:04:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 07:04:36 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 07:04:37 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 12 Dec 2017 07:04:37 GMT
EXPOSE 9000/tcp
# Tue, 12 Dec 2017 07:04:37 GMT
CMD ["php-fpm"]
# Tue, 12 Dec 2017 09:55:56 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 12 Dec 2017 09:55:56 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 12 Dec 2017 09:56:21 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 12 Dec 2017 09:56:28 GMT
RUN docker-php-ext-install mysqli
# Tue, 12 Dec 2017 09:56:34 GMT
RUN docker-php-ext-install mcrypt
# Tue, 12 Dec 2017 09:56:55 GMT
RUN docker-php-ext-install zip
# Tue, 12 Dec 2017 09:56:55 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 09:56:56 GMT
ENV JOOMLA_VERSION=3.8.2
# Tue, 12 Dec 2017 09:56:56 GMT
ENV JOOMLA_SHA1=e68745d55cc5b1a7bb46f72f4296c6550e088543
# Tue, 12 Dec 2017 09:57:02 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 12 Dec 2017 09:57:02 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Tue, 12 Dec 2017 09:57:03 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 12 Dec 2017 09:57:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 09:57:09 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abfca402d9b38de54362ba77d7a6841e1862028622caf32fe05fb90a49f4d36`  
		Last Modified: Tue, 12 Dec 2017 07:18:06 GMT  
		Size: 81.9 MB (81876790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502a4f90da606173fb3b788d076ecd2b2e620a8cfd18e60930c1d821bbb25715`  
		Last Modified: Tue, 12 Dec 2017 07:17:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7411bcc6bef20e45e31fe6c390f5c2031466f8b39ea45f137c0ea6169758d82`  
		Last Modified: Tue, 12 Dec 2017 07:29:29 GMT  
		Size: 12.8 MB (12800839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300a6b91f34de23c23a2e8fe3d364144aab91409a75ab9bcc10673f9fae5ed82`  
		Last Modified: Tue, 12 Dec 2017 07:29:25 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ba67843fb8c3332ec256dfe8839b4e71235cc8f23ed72e15328bb19a543f32`  
		Last Modified: Tue, 12 Dec 2017 07:29:28 GMT  
		Size: 9.2 MB (9209496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a005301ce437929d5836af989aee358e5c5224c2977fcc45fa7cc19a907b7bd`  
		Last Modified: Tue, 12 Dec 2017 07:29:25 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06673dd985c8ce301facd66d269c0029fa3d0d7d3c723cf0d7aae9716c3842e9`  
		Last Modified: Tue, 12 Dec 2017 07:29:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01acddaa56c2ea0ba171f4b27ca820538ec019c22335e8412800622b566aa646`  
		Last Modified: Tue, 12 Dec 2017 07:29:25 GMT  
		Size: 7.6 KB (7619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadbe31aa18d76501c766ca942e434c4fd241c2b578301092577c89837c8c438`  
		Last Modified: Tue, 12 Dec 2017 10:08:18 GMT  
		Size: 3.0 MB (2981011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5416a2217e641c1937c1e8c21208114f9b1e196d1673da6071af9e537b0c4e4`  
		Last Modified: Tue, 12 Dec 2017 10:08:19 GMT  
		Size: 58.0 KB (57995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ca0e2a6110e2cf71a531f13f0fc31b890cd378938e74f138d705dcaf0c0783`  
		Last Modified: Tue, 12 Dec 2017 10:08:15 GMT  
		Size: 19.7 KB (19699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db5f5db8af176ef6d652905ad6a0174f153b59724be676b844306dec3e09833`  
		Last Modified: Tue, 12 Dec 2017 10:08:15 GMT  
		Size: 63.4 KB (63410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7cc22fcef808124c3fcbe5c7f42a6bc92785f3c779e3803cc7e9f8c71a317cc`  
		Last Modified: Tue, 12 Dec 2017 10:08:21 GMT  
		Size: 9.4 MB (9433106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d596b9be8fd44c2362fdc8da8198aab776688f3f0d0f2ff4dda8c8055a170d`  
		Last Modified: Tue, 12 Dec 2017 10:08:15 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1214e31268dddffb109256af4cc97ff069e8522f0e1a1b3d610c51d76f90724b`  
		Last Modified: Tue, 12 Dec 2017 10:08:16 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8-fpm-php7`

```console
$ docker pull joomla@sha256:8c78a94a10015b5c1cb33b00aaa9e881f90e48d5fa900d27d6c9c6764e7ea78b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8-fpm-php7` - linux; amd64

```console
$ docker pull joomla@sha256:ea2f212726006a4184b62ef39db963ba961b58ac6ec18da570b5adbc9dd819a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172747870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d6dadbcde938d1fd57b0d2f94bf3375df92bed283d197738aec3716ed4f5007`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 06:04:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:04:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 06:04:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 06:41:43 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 12 Dec 2017 06:41:43 GMT
ENV PHP_VERSION=7.0.26
# Tue, 12 Dec 2017 06:41:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 06:41:44 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Tue, 12 Dec 2017 06:41:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 06:41:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:46:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 06:46:42 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:46:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 06:46:43 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 06:46:44 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 12 Dec 2017 06:46:44 GMT
EXPOSE 9000/tcp
# Tue, 12 Dec 2017 06:46:44 GMT
CMD ["php-fpm"]
# Tue, 12 Dec 2017 09:57:26 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 12 Dec 2017 09:57:26 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 12 Dec 2017 09:57:54 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 12 Dec 2017 09:58:03 GMT
RUN docker-php-ext-install mysqli
# Tue, 12 Dec 2017 09:58:08 GMT
RUN docker-php-ext-install mcrypt
# Tue, 12 Dec 2017 10:02:42 GMT
RUN docker-php-ext-install zip
# Tue, 12 Dec 2017 10:02:42 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 10:02:42 GMT
ENV JOOMLA_VERSION=3.8.2
# Tue, 12 Dec 2017 10:02:42 GMT
ENV JOOMLA_SHA1=e68745d55cc5b1a7bb46f72f4296c6550e088543
# Tue, 12 Dec 2017 10:02:48 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 12 Dec 2017 10:05:29 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Tue, 12 Dec 2017 10:05:30 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 12 Dec 2017 10:05:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 10:05:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abfca402d9b38de54362ba77d7a6841e1862028622caf32fe05fb90a49f4d36`  
		Last Modified: Tue, 12 Dec 2017 07:18:06 GMT  
		Size: 81.9 MB (81876790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502a4f90da606173fb3b788d076ecd2b2e620a8cfd18e60930c1d821bbb25715`  
		Last Modified: Tue, 12 Dec 2017 07:17:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d1c721b5ebc2a8fb934584300967876c1ef4e4164ba03d292d748ead0bdcdc`  
		Last Modified: Tue, 12 Dec 2017 07:24:54 GMT  
		Size: 12.3 MB (12303236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f29c89e0c1ffebb11550cec4ce689e6009deb97e807d800db08eae0e1ea020`  
		Last Modified: Tue, 12 Dec 2017 07:24:51 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c12874108556182a150d6b672a4d7e9bbbbe6b56ebf47ce7319f6083a4f19da`  
		Last Modified: Tue, 12 Dec 2017 07:24:57 GMT  
		Size: 13.4 MB (13398968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cea6fa1222d539b59a324c1d73703a018379b490a19d831f2d094cece62f9ce`  
		Last Modified: Tue, 12 Dec 2017 07:24:51 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b2456f51e00c53273f4687357631dab33c7634232d990b4d73fda30dca161c`  
		Last Modified: Tue, 12 Dec 2017 07:24:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a86606c052d941f98cdd0e4c1eb82d1203c8fa73a31a3c575d520d2ccc4bd9`  
		Last Modified: Tue, 12 Dec 2017 07:24:51 GMT  
		Size: 7.7 KB (7679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccf09dae3f8e5cbe6c5ba17f0e56c9aacab50469027151240cfd0076a88f221`  
		Last Modified: Tue, 12 Dec 2017 10:23:39 GMT  
		Size: 3.0 MB (2976141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32debe056894c784c93d45ee1006cec9750b57dcd84bffd443ebbcfb858129a9`  
		Last Modified: Tue, 12 Dec 2017 10:23:38 GMT  
		Size: 56.4 KB (56408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3132e16ee36b1b5fabb2e7d3108d5c7de2f4f2a3d3ec05009445a723bec73b29`  
		Last Modified: Tue, 12 Dec 2017 10:23:36 GMT  
		Size: 18.3 KB (18289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206a632edaa92b00bb8089e1e1ad89f8cc661a5ed44fe380f1cab7597833b4a8`  
		Last Modified: Tue, 12 Dec 2017 10:23:36 GMT  
		Size: 72.8 KB (72764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f292ffcafbb6d44cead2c8260f18e91d69a914cc09a1f2c337df8fec9d7da96f`  
		Last Modified: Tue, 12 Dec 2017 10:23:42 GMT  
		Size: 9.4 MB (9433105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3064ff7af667a3ceff8b375cd4776c19fb82c4a6dfe531cf9d20f8f0cdbff589`  
		Last Modified: Tue, 12 Dec 2017 10:23:35 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c086f642f47dc2cde38a8cdd03b1d5a48535df92e89929802fc5dac7c78bb11f`  
		Last Modified: Tue, 12 Dec 2017 10:23:35 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache`

```console
$ docker pull joomla@sha256:8ff86ab99643119c6fccf12fe0d40b9a951b337fb8feb084f33a1a03c767f062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3-apache` - linux; amd64

```console
$ docker pull joomla@sha256:02afabe82305b70c13f1e94180bc78a4a6548dfb21c761cf86f36435e28b2d10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.4 MB (172423926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32a510f02f3b4e3060db25074b1a45811bc24bbcb19d75dde90da0885702e11f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 06:04:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:04:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 06:04:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 06:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 12 Dec 2017 06:13:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 12 Dec 2017 06:13:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 12 Dec 2017 06:13:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 12 Dec 2017 06:13:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 12 Dec 2017 06:13:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 06:56:41 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 12 Dec 2017 06:56:41 GMT
ENV PHP_VERSION=5.6.32
# Tue, 12 Dec 2017 06:56:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 06:56:42 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Tue, 12 Dec 2017 06:56:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 06:56:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 06:59:45 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 06:59:46 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:46 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 06:59:46 GMT
EXPOSE 80/tcp
# Tue, 12 Dec 2017 06:59:47 GMT
CMD ["apache2-foreground"]
# Tue, 12 Dec 2017 09:46:17 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 12 Dec 2017 09:46:17 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 12 Dec 2017 09:46:19 GMT
RUN a2enmod rewrite
# Tue, 12 Dec 2017 09:46:48 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 12 Dec 2017 09:46:56 GMT
RUN docker-php-ext-install mysqli
# Tue, 12 Dec 2017 09:47:01 GMT
RUN docker-php-ext-install mcrypt
# Tue, 12 Dec 2017 09:47:23 GMT
RUN docker-php-ext-install zip
# Tue, 12 Dec 2017 09:47:23 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 09:47:23 GMT
ENV JOOMLA_VERSION=3.8.2
# Tue, 12 Dec 2017 09:47:24 GMT
ENV JOOMLA_SHA1=e68745d55cc5b1a7bb46f72f4296c6550e088543
# Tue, 12 Dec 2017 09:47:29 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 12 Dec 2017 09:47:30 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Tue, 12 Dec 2017 09:47:30 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 12 Dec 2017 09:47:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 09:47:31 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abfca402d9b38de54362ba77d7a6841e1862028622caf32fe05fb90a49f4d36`  
		Last Modified: Tue, 12 Dec 2017 07:18:06 GMT  
		Size: 81.9 MB (81876790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502a4f90da606173fb3b788d076ecd2b2e620a8cfd18e60930c1d821bbb25715`  
		Last Modified: Tue, 12 Dec 2017 07:17:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0250641c2a932255c5b4f5bb483cd8664f5e0855b0b195c538c00761394f0c`  
		Last Modified: Tue, 12 Dec 2017 07:19:46 GMT  
		Size: 3.0 MB (3011955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8369e62349f672f343044b9af97fa7737607e6f608177b22c7552f8516f1ce`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18189b19fc46e7b1c56b31bd69e2833f3e2b2b580bb71899366159c94017fd04`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59972270bf3b3899a20b826eaad8b2c2fc24a9b38c90a0c18341a13fdf23779c`  
		Last Modified: Tue, 12 Dec 2017 07:19:41 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bd8d4276cfbda5285440f9748df0dc4539eb730efc42d75335355098c684fc`  
		Last Modified: Tue, 12 Dec 2017 07:19:42 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3c100b9d8e0aaed1d69d3483fa2f95e8d95727d6d078977ae3f2a771e007eb`  
		Last Modified: Tue, 12 Dec 2017 07:28:25 GMT  
		Size: 12.8 MB (12817707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c594a2e740f6444402a8e68c457d20f144ea3e9607fa460e99743254ae77c`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970337d23026cf4b6ddc6b705cfc58321ec34928936c58416a1f003a62110226`  
		Last Modified: Tue, 12 Dec 2017 07:28:26 GMT  
		Size: 9.5 MB (9534580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8593f35b0acb0769fcaf021159e9c05da017204b0fc5ecf6da141c9d815550f`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113145dfe2250cbe2522f8cc938e7edeec2e213f71b9fa9505519d07d4d96c23`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048a559a7ac9971fda63454c1041129e9872f039f379a1a6028074159f90dced`  
		Last Modified: Tue, 12 Dec 2017 10:05:50 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c9ce674f99bde79e41bd974e8ee01fdc3f34c5e28098283f9b87f412cd3a6c`  
		Last Modified: Tue, 12 Dec 2017 10:05:51 GMT  
		Size: 3.0 MB (3000696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3761060b7a3541b60b1b53cda819ad88507a01e4dc872c7c84ce47f76357cb4c`  
		Last Modified: Tue, 12 Dec 2017 10:05:50 GMT  
		Size: 58.0 KB (57997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e572bf69d64f2dfdd351491700c5efdbc040aa2236947b9c376c2ee53c0773`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 19.7 KB (19703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b96fbd3a668f96ffb83e92b83239bdeefc2c1d39c91dbb849dd85460977fd6ef`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 63.4 KB (63408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ee98fc2caaef22b1a653af3ec60a58dda2c6239f5ef229edefc14b3df5d283`  
		Last Modified: Tue, 12 Dec 2017 10:05:56 GMT  
		Size: 9.4 MB (9433108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb27b5a3ac9f56f82dfe7afa5672ddfe384057f462e6289f8b98e0ca9a8e18f`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8dd61833388bfdfc759991d767991ab28ad1a280a2158559f49ae936cf724ea`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache-php7`

```console
$ docker pull joomla@sha256:657787f279eff11e036e7855c5ec3030353330e525ff15d792e0ec53ab411198
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3-apache-php7` - linux; amd64

```console
$ docker pull joomla@sha256:cfda1738d8e223d9fdeb1d255f04f9da902a2b5039ff7dc1df778454c1a58a15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176101233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98107124a39497a0d4ea3fe9e718162f59d3138ae169c7f3fedb4c54a3fdeadb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 06:04:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:04:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 06:04:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 06:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 12 Dec 2017 06:13:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 12 Dec 2017 06:13:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 12 Dec 2017 06:13:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 12 Dec 2017 06:13:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 12 Dec 2017 06:13:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 06:37:45 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 12 Dec 2017 06:37:45 GMT
ENV PHP_VERSION=7.0.26
# Tue, 12 Dec 2017 06:37:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 06:37:45 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Tue, 12 Dec 2017 06:38:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 06:38:01 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:41:29 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 06:41:30 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:41:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 06:41:30 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:41:30 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 06:41:31 GMT
EXPOSE 80/tcp
# Tue, 12 Dec 2017 06:41:31 GMT
CMD ["apache2-foreground"]
# Tue, 12 Dec 2017 09:49:20 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 12 Dec 2017 09:49:20 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 12 Dec 2017 09:49:21 GMT
RUN a2enmod rewrite
# Tue, 12 Dec 2017 09:49:47 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 12 Dec 2017 09:55:08 GMT
RUN docker-php-ext-install mysqli
# Tue, 12 Dec 2017 09:55:14 GMT
RUN docker-php-ext-install mcrypt
# Tue, 12 Dec 2017 09:55:34 GMT
RUN docker-php-ext-install zip
# Tue, 12 Dec 2017 09:55:34 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 09:55:34 GMT
ENV JOOMLA_VERSION=3.8.2
# Tue, 12 Dec 2017 09:55:35 GMT
ENV JOOMLA_SHA1=e68745d55cc5b1a7bb46f72f4296c6550e088543
# Tue, 12 Dec 2017 09:55:41 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 12 Dec 2017 09:55:41 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Tue, 12 Dec 2017 09:55:42 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 12 Dec 2017 09:55:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 09:55:42 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abfca402d9b38de54362ba77d7a6841e1862028622caf32fe05fb90a49f4d36`  
		Last Modified: Tue, 12 Dec 2017 07:18:06 GMT  
		Size: 81.9 MB (81876790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502a4f90da606173fb3b788d076ecd2b2e620a8cfd18e60930c1d821bbb25715`  
		Last Modified: Tue, 12 Dec 2017 07:17:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0250641c2a932255c5b4f5bb483cd8664f5e0855b0b195c538c00761394f0c`  
		Last Modified: Tue, 12 Dec 2017 07:19:46 GMT  
		Size: 3.0 MB (3011955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8369e62349f672f343044b9af97fa7737607e6f608177b22c7552f8516f1ce`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18189b19fc46e7b1c56b31bd69e2833f3e2b2b580bb71899366159c94017fd04`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59972270bf3b3899a20b826eaad8b2c2fc24a9b38c90a0c18341a13fdf23779c`  
		Last Modified: Tue, 12 Dec 2017 07:19:41 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bd8d4276cfbda5285440f9748df0dc4539eb730efc42d75335355098c684fc`  
		Last Modified: Tue, 12 Dec 2017 07:19:42 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ea00c88fd676720002a88b1d9e4a1d8bdc064c34fc896bba26e6fd94d17f83`  
		Last Modified: Tue, 12 Dec 2017 07:23:54 GMT  
		Size: 12.3 MB (12320036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c95acf0ef9e9c2eae237bafcc79b5250870e73f2cc184af684d61f338ca4c06`  
		Last Modified: Tue, 12 Dec 2017 07:23:52 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22c930e4a88b618b69718510d7615e4dfafd4ffc6c51f8418dbd2f23718906b`  
		Last Modified: Tue, 12 Dec 2017 07:23:58 GMT  
		Size: 13.7 MB (13707869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e1ab290043be93ca537eab2efd869b75095af393dfdfa2f75477c28640ef70`  
		Last Modified: Tue, 12 Dec 2017 07:23:52 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3125c522ede8cd7a96bf2ecb686ec6574d335a8dab86822ab7c3afeace2354c`  
		Last Modified: Tue, 12 Dec 2017 07:23:52 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c517cb40cba9f77f6cfb1fda19ef5a405b7da5cf6ae70574eae391977184546f`  
		Last Modified: Tue, 12 Dec 2017 10:07:28 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f7159ccf44d9523a311bfbbe7e4d70f5f1b997acd9196f7e9a6e4c11cf8afa`  
		Last Modified: Tue, 12 Dec 2017 10:07:29 GMT  
		Size: 3.0 MB (2996068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc36012cb3c607faaed61a68a42f1948dfc54b7beeca63c5fa430e1c1920cbb`  
		Last Modified: Tue, 12 Dec 2017 10:07:28 GMT  
		Size: 56.4 KB (56401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c732b64c2f4b52ff40a474d438b7374fa9611c77f9d53c1c189446e2dd5ac5`  
		Last Modified: Tue, 12 Dec 2017 10:07:26 GMT  
		Size: 18.3 KB (18284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0ec00385440cde62395692d8749f8fd5e2ec5c763894b616f23d48c3ee9bb7`  
		Last Modified: Tue, 12 Dec 2017 10:07:26 GMT  
		Size: 72.8 KB (72752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a8395082b83a3502c3b8a435d554199c9442c9e9a132831e8e70a761f2f8a4`  
		Last Modified: Tue, 12 Dec 2017 10:07:32 GMT  
		Size: 9.4 MB (9433102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd89bd235809e588e2d115fbf7c5c9abbea8d1a1c80fe6c7e6af68c9fef19ba`  
		Last Modified: Tue, 12 Dec 2017 10:07:26 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a731ee2b7e3a271100d23f64203ad7abc5ff962a3ee356c0a5c897d38af7293a`  
		Last Modified: Tue, 12 Dec 2017 10:07:26 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-fpm`

```console
$ docker pull joomla@sha256:0b268a9a71b56a1210f4511f1f71d183dfd7f511c00d1b033e5c69a85d6bb0b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3-fpm` - linux; amd64

```console
$ docker pull joomla@sha256:5eb4b9048268b28f86abd815bbcfcea0debd8882ee6542e99ed57cfbb81e8d43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169054458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67aef4cec631c4045917022e3f0df2878d8c39aa8e40b4e54e035e3ff98073a1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 06:04:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:04:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 06:04:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 06:59:54 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 12 Dec 2017 06:59:54 GMT
ENV PHP_VERSION=5.6.32
# Tue, 12 Dec 2017 06:59:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 06:59:55 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Tue, 12 Dec 2017 07:00:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 07:00:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 07:04:30 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 07:04:36 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 12 Dec 2017 07:04:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 07:04:36 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 07:04:37 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 12 Dec 2017 07:04:37 GMT
EXPOSE 9000/tcp
# Tue, 12 Dec 2017 07:04:37 GMT
CMD ["php-fpm"]
# Tue, 12 Dec 2017 09:55:56 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 12 Dec 2017 09:55:56 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 12 Dec 2017 09:56:21 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 12 Dec 2017 09:56:28 GMT
RUN docker-php-ext-install mysqli
# Tue, 12 Dec 2017 09:56:34 GMT
RUN docker-php-ext-install mcrypt
# Tue, 12 Dec 2017 09:56:55 GMT
RUN docker-php-ext-install zip
# Tue, 12 Dec 2017 09:56:55 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 09:56:56 GMT
ENV JOOMLA_VERSION=3.8.2
# Tue, 12 Dec 2017 09:56:56 GMT
ENV JOOMLA_SHA1=e68745d55cc5b1a7bb46f72f4296c6550e088543
# Tue, 12 Dec 2017 09:57:02 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 12 Dec 2017 09:57:02 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Tue, 12 Dec 2017 09:57:03 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 12 Dec 2017 09:57:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 09:57:09 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abfca402d9b38de54362ba77d7a6841e1862028622caf32fe05fb90a49f4d36`  
		Last Modified: Tue, 12 Dec 2017 07:18:06 GMT  
		Size: 81.9 MB (81876790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502a4f90da606173fb3b788d076ecd2b2e620a8cfd18e60930c1d821bbb25715`  
		Last Modified: Tue, 12 Dec 2017 07:17:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7411bcc6bef20e45e31fe6c390f5c2031466f8b39ea45f137c0ea6169758d82`  
		Last Modified: Tue, 12 Dec 2017 07:29:29 GMT  
		Size: 12.8 MB (12800839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300a6b91f34de23c23a2e8fe3d364144aab91409a75ab9bcc10673f9fae5ed82`  
		Last Modified: Tue, 12 Dec 2017 07:29:25 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ba67843fb8c3332ec256dfe8839b4e71235cc8f23ed72e15328bb19a543f32`  
		Last Modified: Tue, 12 Dec 2017 07:29:28 GMT  
		Size: 9.2 MB (9209496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a005301ce437929d5836af989aee358e5c5224c2977fcc45fa7cc19a907b7bd`  
		Last Modified: Tue, 12 Dec 2017 07:29:25 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06673dd985c8ce301facd66d269c0029fa3d0d7d3c723cf0d7aae9716c3842e9`  
		Last Modified: Tue, 12 Dec 2017 07:29:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01acddaa56c2ea0ba171f4b27ca820538ec019c22335e8412800622b566aa646`  
		Last Modified: Tue, 12 Dec 2017 07:29:25 GMT  
		Size: 7.6 KB (7619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadbe31aa18d76501c766ca942e434c4fd241c2b578301092577c89837c8c438`  
		Last Modified: Tue, 12 Dec 2017 10:08:18 GMT  
		Size: 3.0 MB (2981011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5416a2217e641c1937c1e8c21208114f9b1e196d1673da6071af9e537b0c4e4`  
		Last Modified: Tue, 12 Dec 2017 10:08:19 GMT  
		Size: 58.0 KB (57995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ca0e2a6110e2cf71a531f13f0fc31b890cd378938e74f138d705dcaf0c0783`  
		Last Modified: Tue, 12 Dec 2017 10:08:15 GMT  
		Size: 19.7 KB (19699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db5f5db8af176ef6d652905ad6a0174f153b59724be676b844306dec3e09833`  
		Last Modified: Tue, 12 Dec 2017 10:08:15 GMT  
		Size: 63.4 KB (63410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7cc22fcef808124c3fcbe5c7f42a6bc92785f3c779e3803cc7e9f8c71a317cc`  
		Last Modified: Tue, 12 Dec 2017 10:08:21 GMT  
		Size: 9.4 MB (9433106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d596b9be8fd44c2362fdc8da8198aab776688f3f0d0f2ff4dda8c8055a170d`  
		Last Modified: Tue, 12 Dec 2017 10:08:15 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1214e31268dddffb109256af4cc97ff069e8522f0e1a1b3d610c51d76f90724b`  
		Last Modified: Tue, 12 Dec 2017 10:08:16 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-fpm-php7`

```console
$ docker pull joomla@sha256:8c78a94a10015b5c1cb33b00aaa9e881f90e48d5fa900d27d6c9c6764e7ea78b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3-fpm-php7` - linux; amd64

```console
$ docker pull joomla@sha256:ea2f212726006a4184b62ef39db963ba961b58ac6ec18da570b5adbc9dd819a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172747870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d6dadbcde938d1fd57b0d2f94bf3375df92bed283d197738aec3716ed4f5007`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 06:04:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:04:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 06:04:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 06:41:43 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 12 Dec 2017 06:41:43 GMT
ENV PHP_VERSION=7.0.26
# Tue, 12 Dec 2017 06:41:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 06:41:44 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Tue, 12 Dec 2017 06:41:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 06:41:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:46:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 06:46:42 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:46:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 06:46:43 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 06:46:44 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 12 Dec 2017 06:46:44 GMT
EXPOSE 9000/tcp
# Tue, 12 Dec 2017 06:46:44 GMT
CMD ["php-fpm"]
# Tue, 12 Dec 2017 09:57:26 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 12 Dec 2017 09:57:26 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 12 Dec 2017 09:57:54 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 12 Dec 2017 09:58:03 GMT
RUN docker-php-ext-install mysqli
# Tue, 12 Dec 2017 09:58:08 GMT
RUN docker-php-ext-install mcrypt
# Tue, 12 Dec 2017 10:02:42 GMT
RUN docker-php-ext-install zip
# Tue, 12 Dec 2017 10:02:42 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 10:02:42 GMT
ENV JOOMLA_VERSION=3.8.2
# Tue, 12 Dec 2017 10:02:42 GMT
ENV JOOMLA_SHA1=e68745d55cc5b1a7bb46f72f4296c6550e088543
# Tue, 12 Dec 2017 10:02:48 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 12 Dec 2017 10:05:29 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Tue, 12 Dec 2017 10:05:30 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 12 Dec 2017 10:05:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 10:05:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abfca402d9b38de54362ba77d7a6841e1862028622caf32fe05fb90a49f4d36`  
		Last Modified: Tue, 12 Dec 2017 07:18:06 GMT  
		Size: 81.9 MB (81876790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502a4f90da606173fb3b788d076ecd2b2e620a8cfd18e60930c1d821bbb25715`  
		Last Modified: Tue, 12 Dec 2017 07:17:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d1c721b5ebc2a8fb934584300967876c1ef4e4164ba03d292d748ead0bdcdc`  
		Last Modified: Tue, 12 Dec 2017 07:24:54 GMT  
		Size: 12.3 MB (12303236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f29c89e0c1ffebb11550cec4ce689e6009deb97e807d800db08eae0e1ea020`  
		Last Modified: Tue, 12 Dec 2017 07:24:51 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c12874108556182a150d6b672a4d7e9bbbbe6b56ebf47ce7319f6083a4f19da`  
		Last Modified: Tue, 12 Dec 2017 07:24:57 GMT  
		Size: 13.4 MB (13398968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cea6fa1222d539b59a324c1d73703a018379b490a19d831f2d094cece62f9ce`  
		Last Modified: Tue, 12 Dec 2017 07:24:51 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b2456f51e00c53273f4687357631dab33c7634232d990b4d73fda30dca161c`  
		Last Modified: Tue, 12 Dec 2017 07:24:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a86606c052d941f98cdd0e4c1eb82d1203c8fa73a31a3c575d520d2ccc4bd9`  
		Last Modified: Tue, 12 Dec 2017 07:24:51 GMT  
		Size: 7.7 KB (7679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccf09dae3f8e5cbe6c5ba17f0e56c9aacab50469027151240cfd0076a88f221`  
		Last Modified: Tue, 12 Dec 2017 10:23:39 GMT  
		Size: 3.0 MB (2976141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32debe056894c784c93d45ee1006cec9750b57dcd84bffd443ebbcfb858129a9`  
		Last Modified: Tue, 12 Dec 2017 10:23:38 GMT  
		Size: 56.4 KB (56408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3132e16ee36b1b5fabb2e7d3108d5c7de2f4f2a3d3ec05009445a723bec73b29`  
		Last Modified: Tue, 12 Dec 2017 10:23:36 GMT  
		Size: 18.3 KB (18289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206a632edaa92b00bb8089e1e1ad89f8cc661a5ed44fe380f1cab7597833b4a8`  
		Last Modified: Tue, 12 Dec 2017 10:23:36 GMT  
		Size: 72.8 KB (72764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f292ffcafbb6d44cead2c8260f18e91d69a914cc09a1f2c337df8fec9d7da96f`  
		Last Modified: Tue, 12 Dec 2017 10:23:42 GMT  
		Size: 9.4 MB (9433105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3064ff7af667a3ceff8b375cd4776c19fb82c4a6dfe531cf9d20f8f0cdbff589`  
		Last Modified: Tue, 12 Dec 2017 10:23:35 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c086f642f47dc2cde38a8cdd03b1d5a48535df92e89929802fc5dac7c78bb11f`  
		Last Modified: Tue, 12 Dec 2017 10:23:35 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:apache`

```console
$ docker pull joomla@sha256:8ff86ab99643119c6fccf12fe0d40b9a951b337fb8feb084f33a1a03c767f062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:apache` - linux; amd64

```console
$ docker pull joomla@sha256:02afabe82305b70c13f1e94180bc78a4a6548dfb21c761cf86f36435e28b2d10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.4 MB (172423926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32a510f02f3b4e3060db25074b1a45811bc24bbcb19d75dde90da0885702e11f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 06:04:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:04:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 06:04:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 06:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 12 Dec 2017 06:13:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 12 Dec 2017 06:13:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 12 Dec 2017 06:13:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 12 Dec 2017 06:13:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 12 Dec 2017 06:13:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 06:56:41 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 12 Dec 2017 06:56:41 GMT
ENV PHP_VERSION=5.6.32
# Tue, 12 Dec 2017 06:56:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 06:56:42 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Tue, 12 Dec 2017 06:56:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 06:56:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 06:59:45 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 06:59:46 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:46 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 06:59:46 GMT
EXPOSE 80/tcp
# Tue, 12 Dec 2017 06:59:47 GMT
CMD ["apache2-foreground"]
# Tue, 12 Dec 2017 09:46:17 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 12 Dec 2017 09:46:17 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 12 Dec 2017 09:46:19 GMT
RUN a2enmod rewrite
# Tue, 12 Dec 2017 09:46:48 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 12 Dec 2017 09:46:56 GMT
RUN docker-php-ext-install mysqli
# Tue, 12 Dec 2017 09:47:01 GMT
RUN docker-php-ext-install mcrypt
# Tue, 12 Dec 2017 09:47:23 GMT
RUN docker-php-ext-install zip
# Tue, 12 Dec 2017 09:47:23 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 09:47:23 GMT
ENV JOOMLA_VERSION=3.8.2
# Tue, 12 Dec 2017 09:47:24 GMT
ENV JOOMLA_SHA1=e68745d55cc5b1a7bb46f72f4296c6550e088543
# Tue, 12 Dec 2017 09:47:29 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 12 Dec 2017 09:47:30 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Tue, 12 Dec 2017 09:47:30 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 12 Dec 2017 09:47:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 09:47:31 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abfca402d9b38de54362ba77d7a6841e1862028622caf32fe05fb90a49f4d36`  
		Last Modified: Tue, 12 Dec 2017 07:18:06 GMT  
		Size: 81.9 MB (81876790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502a4f90da606173fb3b788d076ecd2b2e620a8cfd18e60930c1d821bbb25715`  
		Last Modified: Tue, 12 Dec 2017 07:17:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0250641c2a932255c5b4f5bb483cd8664f5e0855b0b195c538c00761394f0c`  
		Last Modified: Tue, 12 Dec 2017 07:19:46 GMT  
		Size: 3.0 MB (3011955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8369e62349f672f343044b9af97fa7737607e6f608177b22c7552f8516f1ce`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18189b19fc46e7b1c56b31bd69e2833f3e2b2b580bb71899366159c94017fd04`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59972270bf3b3899a20b826eaad8b2c2fc24a9b38c90a0c18341a13fdf23779c`  
		Last Modified: Tue, 12 Dec 2017 07:19:41 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bd8d4276cfbda5285440f9748df0dc4539eb730efc42d75335355098c684fc`  
		Last Modified: Tue, 12 Dec 2017 07:19:42 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3c100b9d8e0aaed1d69d3483fa2f95e8d95727d6d078977ae3f2a771e007eb`  
		Last Modified: Tue, 12 Dec 2017 07:28:25 GMT  
		Size: 12.8 MB (12817707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c594a2e740f6444402a8e68c457d20f144ea3e9607fa460e99743254ae77c`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970337d23026cf4b6ddc6b705cfc58321ec34928936c58416a1f003a62110226`  
		Last Modified: Tue, 12 Dec 2017 07:28:26 GMT  
		Size: 9.5 MB (9534580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8593f35b0acb0769fcaf021159e9c05da017204b0fc5ecf6da141c9d815550f`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113145dfe2250cbe2522f8cc938e7edeec2e213f71b9fa9505519d07d4d96c23`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048a559a7ac9971fda63454c1041129e9872f039f379a1a6028074159f90dced`  
		Last Modified: Tue, 12 Dec 2017 10:05:50 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c9ce674f99bde79e41bd974e8ee01fdc3f34c5e28098283f9b87f412cd3a6c`  
		Last Modified: Tue, 12 Dec 2017 10:05:51 GMT  
		Size: 3.0 MB (3000696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3761060b7a3541b60b1b53cda819ad88507a01e4dc872c7c84ce47f76357cb4c`  
		Last Modified: Tue, 12 Dec 2017 10:05:50 GMT  
		Size: 58.0 KB (57997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e572bf69d64f2dfdd351491700c5efdbc040aa2236947b9c376c2ee53c0773`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 19.7 KB (19703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b96fbd3a668f96ffb83e92b83239bdeefc2c1d39c91dbb849dd85460977fd6ef`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 63.4 KB (63408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ee98fc2caaef22b1a653af3ec60a58dda2c6239f5ef229edefc14b3df5d283`  
		Last Modified: Tue, 12 Dec 2017 10:05:56 GMT  
		Size: 9.4 MB (9433108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb27b5a3ac9f56f82dfe7afa5672ddfe384057f462e6289f8b98e0ca9a8e18f`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8dd61833388bfdfc759991d767991ab28ad1a280a2158559f49ae936cf724ea`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:apache-php7`

```console
$ docker pull joomla@sha256:657787f279eff11e036e7855c5ec3030353330e525ff15d792e0ec53ab411198
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:apache-php7` - linux; amd64

```console
$ docker pull joomla@sha256:cfda1738d8e223d9fdeb1d255f04f9da902a2b5039ff7dc1df778454c1a58a15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176101233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98107124a39497a0d4ea3fe9e718162f59d3138ae169c7f3fedb4c54a3fdeadb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 06:04:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:04:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 06:04:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 06:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 12 Dec 2017 06:13:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 12 Dec 2017 06:13:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 12 Dec 2017 06:13:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 12 Dec 2017 06:13:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 12 Dec 2017 06:13:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 06:37:45 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 12 Dec 2017 06:37:45 GMT
ENV PHP_VERSION=7.0.26
# Tue, 12 Dec 2017 06:37:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 06:37:45 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Tue, 12 Dec 2017 06:38:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 06:38:01 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:41:29 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 06:41:30 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:41:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 06:41:30 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:41:30 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 06:41:31 GMT
EXPOSE 80/tcp
# Tue, 12 Dec 2017 06:41:31 GMT
CMD ["apache2-foreground"]
# Tue, 12 Dec 2017 09:49:20 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 12 Dec 2017 09:49:20 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 12 Dec 2017 09:49:21 GMT
RUN a2enmod rewrite
# Tue, 12 Dec 2017 09:49:47 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 12 Dec 2017 09:55:08 GMT
RUN docker-php-ext-install mysqli
# Tue, 12 Dec 2017 09:55:14 GMT
RUN docker-php-ext-install mcrypt
# Tue, 12 Dec 2017 09:55:34 GMT
RUN docker-php-ext-install zip
# Tue, 12 Dec 2017 09:55:34 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 09:55:34 GMT
ENV JOOMLA_VERSION=3.8.2
# Tue, 12 Dec 2017 09:55:35 GMT
ENV JOOMLA_SHA1=e68745d55cc5b1a7bb46f72f4296c6550e088543
# Tue, 12 Dec 2017 09:55:41 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 12 Dec 2017 09:55:41 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Tue, 12 Dec 2017 09:55:42 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 12 Dec 2017 09:55:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 09:55:42 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abfca402d9b38de54362ba77d7a6841e1862028622caf32fe05fb90a49f4d36`  
		Last Modified: Tue, 12 Dec 2017 07:18:06 GMT  
		Size: 81.9 MB (81876790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502a4f90da606173fb3b788d076ecd2b2e620a8cfd18e60930c1d821bbb25715`  
		Last Modified: Tue, 12 Dec 2017 07:17:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0250641c2a932255c5b4f5bb483cd8664f5e0855b0b195c538c00761394f0c`  
		Last Modified: Tue, 12 Dec 2017 07:19:46 GMT  
		Size: 3.0 MB (3011955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8369e62349f672f343044b9af97fa7737607e6f608177b22c7552f8516f1ce`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18189b19fc46e7b1c56b31bd69e2833f3e2b2b580bb71899366159c94017fd04`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59972270bf3b3899a20b826eaad8b2c2fc24a9b38c90a0c18341a13fdf23779c`  
		Last Modified: Tue, 12 Dec 2017 07:19:41 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bd8d4276cfbda5285440f9748df0dc4539eb730efc42d75335355098c684fc`  
		Last Modified: Tue, 12 Dec 2017 07:19:42 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ea00c88fd676720002a88b1d9e4a1d8bdc064c34fc896bba26e6fd94d17f83`  
		Last Modified: Tue, 12 Dec 2017 07:23:54 GMT  
		Size: 12.3 MB (12320036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c95acf0ef9e9c2eae237bafcc79b5250870e73f2cc184af684d61f338ca4c06`  
		Last Modified: Tue, 12 Dec 2017 07:23:52 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22c930e4a88b618b69718510d7615e4dfafd4ffc6c51f8418dbd2f23718906b`  
		Last Modified: Tue, 12 Dec 2017 07:23:58 GMT  
		Size: 13.7 MB (13707869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e1ab290043be93ca537eab2efd869b75095af393dfdfa2f75477c28640ef70`  
		Last Modified: Tue, 12 Dec 2017 07:23:52 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3125c522ede8cd7a96bf2ecb686ec6574d335a8dab86822ab7c3afeace2354c`  
		Last Modified: Tue, 12 Dec 2017 07:23:52 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c517cb40cba9f77f6cfb1fda19ef5a405b7da5cf6ae70574eae391977184546f`  
		Last Modified: Tue, 12 Dec 2017 10:07:28 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f7159ccf44d9523a311bfbbe7e4d70f5f1b997acd9196f7e9a6e4c11cf8afa`  
		Last Modified: Tue, 12 Dec 2017 10:07:29 GMT  
		Size: 3.0 MB (2996068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc36012cb3c607faaed61a68a42f1948dfc54b7beeca63c5fa430e1c1920cbb`  
		Last Modified: Tue, 12 Dec 2017 10:07:28 GMT  
		Size: 56.4 KB (56401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c732b64c2f4b52ff40a474d438b7374fa9611c77f9d53c1c189446e2dd5ac5`  
		Last Modified: Tue, 12 Dec 2017 10:07:26 GMT  
		Size: 18.3 KB (18284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0ec00385440cde62395692d8749f8fd5e2ec5c763894b616f23d48c3ee9bb7`  
		Last Modified: Tue, 12 Dec 2017 10:07:26 GMT  
		Size: 72.8 KB (72752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a8395082b83a3502c3b8a435d554199c9442c9e9a132831e8e70a761f2f8a4`  
		Last Modified: Tue, 12 Dec 2017 10:07:32 GMT  
		Size: 9.4 MB (9433102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd89bd235809e588e2d115fbf7c5c9abbea8d1a1c80fe6c7e6af68c9fef19ba`  
		Last Modified: Tue, 12 Dec 2017 10:07:26 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a731ee2b7e3a271100d23f64203ad7abc5ff962a3ee356c0a5c897d38af7293a`  
		Last Modified: Tue, 12 Dec 2017 10:07:26 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:fpm`

```console
$ docker pull joomla@sha256:0b268a9a71b56a1210f4511f1f71d183dfd7f511c00d1b033e5c69a85d6bb0b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:fpm` - linux; amd64

```console
$ docker pull joomla@sha256:5eb4b9048268b28f86abd815bbcfcea0debd8882ee6542e99ed57cfbb81e8d43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169054458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67aef4cec631c4045917022e3f0df2878d8c39aa8e40b4e54e035e3ff98073a1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 06:04:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:04:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 06:04:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 06:59:54 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 12 Dec 2017 06:59:54 GMT
ENV PHP_VERSION=5.6.32
# Tue, 12 Dec 2017 06:59:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 06:59:55 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Tue, 12 Dec 2017 07:00:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 07:00:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 07:04:30 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 07:04:36 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 12 Dec 2017 07:04:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 07:04:36 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 07:04:37 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 12 Dec 2017 07:04:37 GMT
EXPOSE 9000/tcp
# Tue, 12 Dec 2017 07:04:37 GMT
CMD ["php-fpm"]
# Tue, 12 Dec 2017 09:55:56 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 12 Dec 2017 09:55:56 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 12 Dec 2017 09:56:21 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 12 Dec 2017 09:56:28 GMT
RUN docker-php-ext-install mysqli
# Tue, 12 Dec 2017 09:56:34 GMT
RUN docker-php-ext-install mcrypt
# Tue, 12 Dec 2017 09:56:55 GMT
RUN docker-php-ext-install zip
# Tue, 12 Dec 2017 09:56:55 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 09:56:56 GMT
ENV JOOMLA_VERSION=3.8.2
# Tue, 12 Dec 2017 09:56:56 GMT
ENV JOOMLA_SHA1=e68745d55cc5b1a7bb46f72f4296c6550e088543
# Tue, 12 Dec 2017 09:57:02 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 12 Dec 2017 09:57:02 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Tue, 12 Dec 2017 09:57:03 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 12 Dec 2017 09:57:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 09:57:09 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abfca402d9b38de54362ba77d7a6841e1862028622caf32fe05fb90a49f4d36`  
		Last Modified: Tue, 12 Dec 2017 07:18:06 GMT  
		Size: 81.9 MB (81876790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502a4f90da606173fb3b788d076ecd2b2e620a8cfd18e60930c1d821bbb25715`  
		Last Modified: Tue, 12 Dec 2017 07:17:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7411bcc6bef20e45e31fe6c390f5c2031466f8b39ea45f137c0ea6169758d82`  
		Last Modified: Tue, 12 Dec 2017 07:29:29 GMT  
		Size: 12.8 MB (12800839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300a6b91f34de23c23a2e8fe3d364144aab91409a75ab9bcc10673f9fae5ed82`  
		Last Modified: Tue, 12 Dec 2017 07:29:25 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ba67843fb8c3332ec256dfe8839b4e71235cc8f23ed72e15328bb19a543f32`  
		Last Modified: Tue, 12 Dec 2017 07:29:28 GMT  
		Size: 9.2 MB (9209496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a005301ce437929d5836af989aee358e5c5224c2977fcc45fa7cc19a907b7bd`  
		Last Modified: Tue, 12 Dec 2017 07:29:25 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06673dd985c8ce301facd66d269c0029fa3d0d7d3c723cf0d7aae9716c3842e9`  
		Last Modified: Tue, 12 Dec 2017 07:29:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01acddaa56c2ea0ba171f4b27ca820538ec019c22335e8412800622b566aa646`  
		Last Modified: Tue, 12 Dec 2017 07:29:25 GMT  
		Size: 7.6 KB (7619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadbe31aa18d76501c766ca942e434c4fd241c2b578301092577c89837c8c438`  
		Last Modified: Tue, 12 Dec 2017 10:08:18 GMT  
		Size: 3.0 MB (2981011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5416a2217e641c1937c1e8c21208114f9b1e196d1673da6071af9e537b0c4e4`  
		Last Modified: Tue, 12 Dec 2017 10:08:19 GMT  
		Size: 58.0 KB (57995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ca0e2a6110e2cf71a531f13f0fc31b890cd378938e74f138d705dcaf0c0783`  
		Last Modified: Tue, 12 Dec 2017 10:08:15 GMT  
		Size: 19.7 KB (19699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db5f5db8af176ef6d652905ad6a0174f153b59724be676b844306dec3e09833`  
		Last Modified: Tue, 12 Dec 2017 10:08:15 GMT  
		Size: 63.4 KB (63410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7cc22fcef808124c3fcbe5c7f42a6bc92785f3c779e3803cc7e9f8c71a317cc`  
		Last Modified: Tue, 12 Dec 2017 10:08:21 GMT  
		Size: 9.4 MB (9433106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d596b9be8fd44c2362fdc8da8198aab776688f3f0d0f2ff4dda8c8055a170d`  
		Last Modified: Tue, 12 Dec 2017 10:08:15 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1214e31268dddffb109256af4cc97ff069e8522f0e1a1b3d610c51d76f90724b`  
		Last Modified: Tue, 12 Dec 2017 10:08:16 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:fpm-php7`

```console
$ docker pull joomla@sha256:8c78a94a10015b5c1cb33b00aaa9e881f90e48d5fa900d27d6c9c6764e7ea78b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:fpm-php7` - linux; amd64

```console
$ docker pull joomla@sha256:ea2f212726006a4184b62ef39db963ba961b58ac6ec18da570b5adbc9dd819a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172747870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d6dadbcde938d1fd57b0d2f94bf3375df92bed283d197738aec3716ed4f5007`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 06:04:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:04:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 06:04:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 06:41:43 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 12 Dec 2017 06:41:43 GMT
ENV PHP_VERSION=7.0.26
# Tue, 12 Dec 2017 06:41:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 06:41:44 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Tue, 12 Dec 2017 06:41:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 06:41:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:46:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 06:46:42 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:46:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 06:46:43 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 06:46:44 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 12 Dec 2017 06:46:44 GMT
EXPOSE 9000/tcp
# Tue, 12 Dec 2017 06:46:44 GMT
CMD ["php-fpm"]
# Tue, 12 Dec 2017 09:57:26 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 12 Dec 2017 09:57:26 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 12 Dec 2017 09:57:54 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 12 Dec 2017 09:58:03 GMT
RUN docker-php-ext-install mysqli
# Tue, 12 Dec 2017 09:58:08 GMT
RUN docker-php-ext-install mcrypt
# Tue, 12 Dec 2017 10:02:42 GMT
RUN docker-php-ext-install zip
# Tue, 12 Dec 2017 10:02:42 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 10:02:42 GMT
ENV JOOMLA_VERSION=3.8.2
# Tue, 12 Dec 2017 10:02:42 GMT
ENV JOOMLA_SHA1=e68745d55cc5b1a7bb46f72f4296c6550e088543
# Tue, 12 Dec 2017 10:02:48 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 12 Dec 2017 10:05:29 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Tue, 12 Dec 2017 10:05:30 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 12 Dec 2017 10:05:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 10:05:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abfca402d9b38de54362ba77d7a6841e1862028622caf32fe05fb90a49f4d36`  
		Last Modified: Tue, 12 Dec 2017 07:18:06 GMT  
		Size: 81.9 MB (81876790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502a4f90da606173fb3b788d076ecd2b2e620a8cfd18e60930c1d821bbb25715`  
		Last Modified: Tue, 12 Dec 2017 07:17:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d1c721b5ebc2a8fb934584300967876c1ef4e4164ba03d292d748ead0bdcdc`  
		Last Modified: Tue, 12 Dec 2017 07:24:54 GMT  
		Size: 12.3 MB (12303236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f29c89e0c1ffebb11550cec4ce689e6009deb97e807d800db08eae0e1ea020`  
		Last Modified: Tue, 12 Dec 2017 07:24:51 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c12874108556182a150d6b672a4d7e9bbbbe6b56ebf47ce7319f6083a4f19da`  
		Last Modified: Tue, 12 Dec 2017 07:24:57 GMT  
		Size: 13.4 MB (13398968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cea6fa1222d539b59a324c1d73703a018379b490a19d831f2d094cece62f9ce`  
		Last Modified: Tue, 12 Dec 2017 07:24:51 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b2456f51e00c53273f4687357631dab33c7634232d990b4d73fda30dca161c`  
		Last Modified: Tue, 12 Dec 2017 07:24:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a86606c052d941f98cdd0e4c1eb82d1203c8fa73a31a3c575d520d2ccc4bd9`  
		Last Modified: Tue, 12 Dec 2017 07:24:51 GMT  
		Size: 7.7 KB (7679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccf09dae3f8e5cbe6c5ba17f0e56c9aacab50469027151240cfd0076a88f221`  
		Last Modified: Tue, 12 Dec 2017 10:23:39 GMT  
		Size: 3.0 MB (2976141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32debe056894c784c93d45ee1006cec9750b57dcd84bffd443ebbcfb858129a9`  
		Last Modified: Tue, 12 Dec 2017 10:23:38 GMT  
		Size: 56.4 KB (56408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3132e16ee36b1b5fabb2e7d3108d5c7de2f4f2a3d3ec05009445a723bec73b29`  
		Last Modified: Tue, 12 Dec 2017 10:23:36 GMT  
		Size: 18.3 KB (18289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206a632edaa92b00bb8089e1e1ad89f8cc661a5ed44fe380f1cab7597833b4a8`  
		Last Modified: Tue, 12 Dec 2017 10:23:36 GMT  
		Size: 72.8 KB (72764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f292ffcafbb6d44cead2c8260f18e91d69a914cc09a1f2c337df8fec9d7da96f`  
		Last Modified: Tue, 12 Dec 2017 10:23:42 GMT  
		Size: 9.4 MB (9433105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3064ff7af667a3ceff8b375cd4776c19fb82c4a6dfe531cf9d20f8f0cdbff589`  
		Last Modified: Tue, 12 Dec 2017 10:23:35 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c086f642f47dc2cde38a8cdd03b1d5a48535df92e89929802fc5dac7c78bb11f`  
		Last Modified: Tue, 12 Dec 2017 10:23:35 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:latest`

```console
$ docker pull joomla@sha256:8ff86ab99643119c6fccf12fe0d40b9a951b337fb8feb084f33a1a03c767f062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:latest` - linux; amd64

```console
$ docker pull joomla@sha256:02afabe82305b70c13f1e94180bc78a4a6548dfb21c761cf86f36435e28b2d10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.4 MB (172423926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32a510f02f3b4e3060db25074b1a45811bc24bbcb19d75dde90da0885702e11f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 06:04:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:04:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 06:04:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 06:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 12 Dec 2017 06:13:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 12 Dec 2017 06:13:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 12 Dec 2017 06:13:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 12 Dec 2017 06:13:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 12 Dec 2017 06:13:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 06:56:41 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 12 Dec 2017 06:56:41 GMT
ENV PHP_VERSION=5.6.32
# Tue, 12 Dec 2017 06:56:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 06:56:42 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Tue, 12 Dec 2017 06:56:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 06:56:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 06:59:45 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 06:59:46 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:46 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 06:59:46 GMT
EXPOSE 80/tcp
# Tue, 12 Dec 2017 06:59:47 GMT
CMD ["apache2-foreground"]
# Tue, 12 Dec 2017 09:46:17 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 12 Dec 2017 09:46:17 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 12 Dec 2017 09:46:19 GMT
RUN a2enmod rewrite
# Tue, 12 Dec 2017 09:46:48 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 12 Dec 2017 09:46:56 GMT
RUN docker-php-ext-install mysqli
# Tue, 12 Dec 2017 09:47:01 GMT
RUN docker-php-ext-install mcrypt
# Tue, 12 Dec 2017 09:47:23 GMT
RUN docker-php-ext-install zip
# Tue, 12 Dec 2017 09:47:23 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 09:47:23 GMT
ENV JOOMLA_VERSION=3.8.2
# Tue, 12 Dec 2017 09:47:24 GMT
ENV JOOMLA_SHA1=e68745d55cc5b1a7bb46f72f4296c6550e088543
# Tue, 12 Dec 2017 09:47:29 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 12 Dec 2017 09:47:30 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Tue, 12 Dec 2017 09:47:30 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 12 Dec 2017 09:47:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 09:47:31 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abfca402d9b38de54362ba77d7a6841e1862028622caf32fe05fb90a49f4d36`  
		Last Modified: Tue, 12 Dec 2017 07:18:06 GMT  
		Size: 81.9 MB (81876790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502a4f90da606173fb3b788d076ecd2b2e620a8cfd18e60930c1d821bbb25715`  
		Last Modified: Tue, 12 Dec 2017 07:17:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0250641c2a932255c5b4f5bb483cd8664f5e0855b0b195c538c00761394f0c`  
		Last Modified: Tue, 12 Dec 2017 07:19:46 GMT  
		Size: 3.0 MB (3011955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8369e62349f672f343044b9af97fa7737607e6f608177b22c7552f8516f1ce`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18189b19fc46e7b1c56b31bd69e2833f3e2b2b580bb71899366159c94017fd04`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59972270bf3b3899a20b826eaad8b2c2fc24a9b38c90a0c18341a13fdf23779c`  
		Last Modified: Tue, 12 Dec 2017 07:19:41 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bd8d4276cfbda5285440f9748df0dc4539eb730efc42d75335355098c684fc`  
		Last Modified: Tue, 12 Dec 2017 07:19:42 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3c100b9d8e0aaed1d69d3483fa2f95e8d95727d6d078977ae3f2a771e007eb`  
		Last Modified: Tue, 12 Dec 2017 07:28:25 GMT  
		Size: 12.8 MB (12817707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c594a2e740f6444402a8e68c457d20f144ea3e9607fa460e99743254ae77c`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970337d23026cf4b6ddc6b705cfc58321ec34928936c58416a1f003a62110226`  
		Last Modified: Tue, 12 Dec 2017 07:28:26 GMT  
		Size: 9.5 MB (9534580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8593f35b0acb0769fcaf021159e9c05da017204b0fc5ecf6da141c9d815550f`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113145dfe2250cbe2522f8cc938e7edeec2e213f71b9fa9505519d07d4d96c23`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048a559a7ac9971fda63454c1041129e9872f039f379a1a6028074159f90dced`  
		Last Modified: Tue, 12 Dec 2017 10:05:50 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c9ce674f99bde79e41bd974e8ee01fdc3f34c5e28098283f9b87f412cd3a6c`  
		Last Modified: Tue, 12 Dec 2017 10:05:51 GMT  
		Size: 3.0 MB (3000696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3761060b7a3541b60b1b53cda819ad88507a01e4dc872c7c84ce47f76357cb4c`  
		Last Modified: Tue, 12 Dec 2017 10:05:50 GMT  
		Size: 58.0 KB (57997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e572bf69d64f2dfdd351491700c5efdbc040aa2236947b9c376c2ee53c0773`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 19.7 KB (19703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b96fbd3a668f96ffb83e92b83239bdeefc2c1d39c91dbb849dd85460977fd6ef`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 63.4 KB (63408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ee98fc2caaef22b1a653af3ec60a58dda2c6239f5ef229edefc14b3df5d283`  
		Last Modified: Tue, 12 Dec 2017 10:05:56 GMT  
		Size: 9.4 MB (9433108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb27b5a3ac9f56f82dfe7afa5672ddfe384057f462e6289f8b98e0ca9a8e18f`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8dd61833388bfdfc759991d767991ab28ad1a280a2158559f49ae936cf724ea`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
