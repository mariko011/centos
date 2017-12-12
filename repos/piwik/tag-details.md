<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `piwik`

-	[`piwik:3`](#piwik3)
-	[`piwik:3.2`](#piwik32)
-	[`piwik:3.2.1`](#piwik321)
-	[`piwik:3.2.1-apache`](#piwik321-apache)
-	[`piwik:3.2.1-fpm`](#piwik321-fpm)
-	[`piwik:3.2-apache`](#piwik32-apache)
-	[`piwik:3.2-fpm`](#piwik32-fpm)
-	[`piwik:3-apache`](#piwik3-apache)
-	[`piwik:3-fpm`](#piwik3-fpm)
-	[`piwik:apache`](#piwikapache)
-	[`piwik:fpm`](#piwikfpm)
-	[`piwik:latest`](#piwiklatest)

## `piwik:3`

```console
$ docker pull piwik@sha256:a39523f2ef1f1881eb908bb9f6bc4eb6f92543cd57b68385cacb0642b42bc29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:3` - linux; amd64

```console
$ docker pull piwik@sha256:484f693ba97218381319ec72a70a8bd2aafef8e2b3476dcecebb898decc070b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195495839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb9a42c79a12f74b2c7f7ace94c420bdca4edc7e9981d40774b18193dbb42fe`
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
# Tue, 12 Dec 2017 10:56:37 GMT
MAINTAINER pierre@piwik.org
# Tue, 12 Dec 2017 10:56:51 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 10:57:50 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Tue, 12 Dec 2017 11:01:55 GMT
RUN pecl install APCu geoip redis   && rm -rf /tmp/pear
# Tue, 12 Dec 2017 11:02:33 GMT
RUN docker-php-ext-enable redis
# Tue, 12 Dec 2017 11:02:33 GMT
ENV PIWIK_VERSION=3.2.1
# Tue, 12 Dec 2017 11:02:41 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Tue, 12 Dec 2017 11:02:42 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Tue, 12 Dec 2017 11:02:43 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Tue, 12 Dec 2017 11:02:43 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Tue, 12 Dec 2017 11:02:44 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 11:02:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 11:02:44 GMT
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
	-	`sha256:da70bea3755007327e6b31377ffff207b575daa53fbb42457afb68fbc352677f`  
		Last Modified: Tue, 12 Dec 2017 11:05:23 GMT  
		Size: 7.3 MB (7320539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6a41680ebd1f2779aa47907949038c7dd6c98acaa7375f28c545bde06f3b7c`  
		Last Modified: Tue, 12 Dec 2017 11:05:22 GMT  
		Size: 1.1 MB (1128817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce80947f3a3d3d886624ca78d26dc61b90bdfc30d6b4bfd88faedc1a3070a67`  
		Last Modified: Tue, 12 Dec 2017 11:05:18 GMT  
		Size: 612.5 KB (612521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cab4b58abb23cb5faebde44e608dcc05ca6695a9831c794a7847969b79d2e63`  
		Last Modified: Tue, 12 Dec 2017 11:05:16 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6371ed9a5fb7e300a92dfe24a7b08f4f77799376c2b54c45058d44ba1c5e8d5c`  
		Last Modified: Tue, 12 Dec 2017 11:05:18 GMT  
		Size: 14.5 MB (14538973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d5a1f3d39cdde978e10f41bd1da58db9d22917b97e6480cae913c1456eb5a4`  
		Last Modified: Tue, 12 Dec 2017 11:05:16 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b86898b7d4572ee5fad11e2f6fe9ff435ee973638649ec80225d79a432b0c3`  
		Last Modified: Tue, 12 Dec 2017 11:05:16 GMT  
		Size: 12.0 MB (12047322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f22f5914eaf5ebb1b8600d30fc5e1bb9bc90ea1cc80461e6eb47ec6f43217cf`  
		Last Modified: Tue, 12 Dec 2017 11:05:13 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.2`

```console
$ docker pull piwik@sha256:a39523f2ef1f1881eb908bb9f6bc4eb6f92543cd57b68385cacb0642b42bc29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:3.2` - linux; amd64

```console
$ docker pull piwik@sha256:484f693ba97218381319ec72a70a8bd2aafef8e2b3476dcecebb898decc070b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195495839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb9a42c79a12f74b2c7f7ace94c420bdca4edc7e9981d40774b18193dbb42fe`
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
# Tue, 12 Dec 2017 10:56:37 GMT
MAINTAINER pierre@piwik.org
# Tue, 12 Dec 2017 10:56:51 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 10:57:50 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Tue, 12 Dec 2017 11:01:55 GMT
RUN pecl install APCu geoip redis   && rm -rf /tmp/pear
# Tue, 12 Dec 2017 11:02:33 GMT
RUN docker-php-ext-enable redis
# Tue, 12 Dec 2017 11:02:33 GMT
ENV PIWIK_VERSION=3.2.1
# Tue, 12 Dec 2017 11:02:41 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Tue, 12 Dec 2017 11:02:42 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Tue, 12 Dec 2017 11:02:43 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Tue, 12 Dec 2017 11:02:43 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Tue, 12 Dec 2017 11:02:44 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 11:02:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 11:02:44 GMT
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
	-	`sha256:da70bea3755007327e6b31377ffff207b575daa53fbb42457afb68fbc352677f`  
		Last Modified: Tue, 12 Dec 2017 11:05:23 GMT  
		Size: 7.3 MB (7320539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6a41680ebd1f2779aa47907949038c7dd6c98acaa7375f28c545bde06f3b7c`  
		Last Modified: Tue, 12 Dec 2017 11:05:22 GMT  
		Size: 1.1 MB (1128817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce80947f3a3d3d886624ca78d26dc61b90bdfc30d6b4bfd88faedc1a3070a67`  
		Last Modified: Tue, 12 Dec 2017 11:05:18 GMT  
		Size: 612.5 KB (612521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cab4b58abb23cb5faebde44e608dcc05ca6695a9831c794a7847969b79d2e63`  
		Last Modified: Tue, 12 Dec 2017 11:05:16 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6371ed9a5fb7e300a92dfe24a7b08f4f77799376c2b54c45058d44ba1c5e8d5c`  
		Last Modified: Tue, 12 Dec 2017 11:05:18 GMT  
		Size: 14.5 MB (14538973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d5a1f3d39cdde978e10f41bd1da58db9d22917b97e6480cae913c1456eb5a4`  
		Last Modified: Tue, 12 Dec 2017 11:05:16 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b86898b7d4572ee5fad11e2f6fe9ff435ee973638649ec80225d79a432b0c3`  
		Last Modified: Tue, 12 Dec 2017 11:05:16 GMT  
		Size: 12.0 MB (12047322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f22f5914eaf5ebb1b8600d30fc5e1bb9bc90ea1cc80461e6eb47ec6f43217cf`  
		Last Modified: Tue, 12 Dec 2017 11:05:13 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.2.1`

```console
$ docker pull piwik@sha256:a39523f2ef1f1881eb908bb9f6bc4eb6f92543cd57b68385cacb0642b42bc29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:3.2.1` - linux; amd64

```console
$ docker pull piwik@sha256:484f693ba97218381319ec72a70a8bd2aafef8e2b3476dcecebb898decc070b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195495839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb9a42c79a12f74b2c7f7ace94c420bdca4edc7e9981d40774b18193dbb42fe`
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
# Tue, 12 Dec 2017 10:56:37 GMT
MAINTAINER pierre@piwik.org
# Tue, 12 Dec 2017 10:56:51 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 10:57:50 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Tue, 12 Dec 2017 11:01:55 GMT
RUN pecl install APCu geoip redis   && rm -rf /tmp/pear
# Tue, 12 Dec 2017 11:02:33 GMT
RUN docker-php-ext-enable redis
# Tue, 12 Dec 2017 11:02:33 GMT
ENV PIWIK_VERSION=3.2.1
# Tue, 12 Dec 2017 11:02:41 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Tue, 12 Dec 2017 11:02:42 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Tue, 12 Dec 2017 11:02:43 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Tue, 12 Dec 2017 11:02:43 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Tue, 12 Dec 2017 11:02:44 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 11:02:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 11:02:44 GMT
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
	-	`sha256:da70bea3755007327e6b31377ffff207b575daa53fbb42457afb68fbc352677f`  
		Last Modified: Tue, 12 Dec 2017 11:05:23 GMT  
		Size: 7.3 MB (7320539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6a41680ebd1f2779aa47907949038c7dd6c98acaa7375f28c545bde06f3b7c`  
		Last Modified: Tue, 12 Dec 2017 11:05:22 GMT  
		Size: 1.1 MB (1128817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce80947f3a3d3d886624ca78d26dc61b90bdfc30d6b4bfd88faedc1a3070a67`  
		Last Modified: Tue, 12 Dec 2017 11:05:18 GMT  
		Size: 612.5 KB (612521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cab4b58abb23cb5faebde44e608dcc05ca6695a9831c794a7847969b79d2e63`  
		Last Modified: Tue, 12 Dec 2017 11:05:16 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6371ed9a5fb7e300a92dfe24a7b08f4f77799376c2b54c45058d44ba1c5e8d5c`  
		Last Modified: Tue, 12 Dec 2017 11:05:18 GMT  
		Size: 14.5 MB (14538973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d5a1f3d39cdde978e10f41bd1da58db9d22917b97e6480cae913c1456eb5a4`  
		Last Modified: Tue, 12 Dec 2017 11:05:16 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b86898b7d4572ee5fad11e2f6fe9ff435ee973638649ec80225d79a432b0c3`  
		Last Modified: Tue, 12 Dec 2017 11:05:16 GMT  
		Size: 12.0 MB (12047322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f22f5914eaf5ebb1b8600d30fc5e1bb9bc90ea1cc80461e6eb47ec6f43217cf`  
		Last Modified: Tue, 12 Dec 2017 11:05:13 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.2.1-apache`

```console
$ docker pull piwik@sha256:a39523f2ef1f1881eb908bb9f6bc4eb6f92543cd57b68385cacb0642b42bc29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:3.2.1-apache` - linux; amd64

```console
$ docker pull piwik@sha256:484f693ba97218381319ec72a70a8bd2aafef8e2b3476dcecebb898decc070b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195495839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb9a42c79a12f74b2c7f7ace94c420bdca4edc7e9981d40774b18193dbb42fe`
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
# Tue, 12 Dec 2017 10:56:37 GMT
MAINTAINER pierre@piwik.org
# Tue, 12 Dec 2017 10:56:51 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 10:57:50 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Tue, 12 Dec 2017 11:01:55 GMT
RUN pecl install APCu geoip redis   && rm -rf /tmp/pear
# Tue, 12 Dec 2017 11:02:33 GMT
RUN docker-php-ext-enable redis
# Tue, 12 Dec 2017 11:02:33 GMT
ENV PIWIK_VERSION=3.2.1
# Tue, 12 Dec 2017 11:02:41 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Tue, 12 Dec 2017 11:02:42 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Tue, 12 Dec 2017 11:02:43 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Tue, 12 Dec 2017 11:02:43 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Tue, 12 Dec 2017 11:02:44 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 11:02:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 11:02:44 GMT
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
	-	`sha256:da70bea3755007327e6b31377ffff207b575daa53fbb42457afb68fbc352677f`  
		Last Modified: Tue, 12 Dec 2017 11:05:23 GMT  
		Size: 7.3 MB (7320539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6a41680ebd1f2779aa47907949038c7dd6c98acaa7375f28c545bde06f3b7c`  
		Last Modified: Tue, 12 Dec 2017 11:05:22 GMT  
		Size: 1.1 MB (1128817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce80947f3a3d3d886624ca78d26dc61b90bdfc30d6b4bfd88faedc1a3070a67`  
		Last Modified: Tue, 12 Dec 2017 11:05:18 GMT  
		Size: 612.5 KB (612521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cab4b58abb23cb5faebde44e608dcc05ca6695a9831c794a7847969b79d2e63`  
		Last Modified: Tue, 12 Dec 2017 11:05:16 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6371ed9a5fb7e300a92dfe24a7b08f4f77799376c2b54c45058d44ba1c5e8d5c`  
		Last Modified: Tue, 12 Dec 2017 11:05:18 GMT  
		Size: 14.5 MB (14538973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d5a1f3d39cdde978e10f41bd1da58db9d22917b97e6480cae913c1456eb5a4`  
		Last Modified: Tue, 12 Dec 2017 11:05:16 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b86898b7d4572ee5fad11e2f6fe9ff435ee973638649ec80225d79a432b0c3`  
		Last Modified: Tue, 12 Dec 2017 11:05:16 GMT  
		Size: 12.0 MB (12047322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f22f5914eaf5ebb1b8600d30fc5e1bb9bc90ea1cc80461e6eb47ec6f43217cf`  
		Last Modified: Tue, 12 Dec 2017 11:05:13 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.2.1-fpm`

```console
$ docker pull piwik@sha256:a95c2ad34ef7ba326bf241dc095768030ab669a4e4f6ea615b1db7189ea5a4ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:3.2.1-fpm` - linux; amd64

```console
$ docker pull piwik@sha256:66c9207eb30a1938cca657b8ae33d8725483754fe0f00e796f0bcdd54ea0b180
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.1 MB (192126356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c80ea5958a9c7a4d2009d638cf8106ef3f4b090295ece61c3dda814a9e71f37`
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
# Tue, 12 Dec 2017 11:03:03 GMT
MAINTAINER pierre@piwik.org
# Tue, 12 Dec 2017 11:03:15 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:04:14 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Tue, 12 Dec 2017 11:04:36 GMT
RUN pecl install APCu geoip redis   && rm -rf /tmp/pear
# Tue, 12 Dec 2017 11:04:37 GMT
RUN docker-php-ext-enable redis
# Tue, 12 Dec 2017 11:04:37 GMT
ENV PIWIK_VERSION=3.2.1
# Tue, 12 Dec 2017 11:04:44 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Tue, 12 Dec 2017 11:04:45 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Tue, 12 Dec 2017 11:04:46 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Tue, 12 Dec 2017 11:04:46 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Tue, 12 Dec 2017 11:04:46 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 11:04:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 11:04:47 GMT
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
	-	`sha256:9ca65f7008d4fab0eaa377114a60a71c3c340ffd6b252d1de583ff895041f6ed`  
		Last Modified: Tue, 12 Dec 2017 11:07:03 GMT  
		Size: 7.3 MB (7300421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8640acd48bfd82fe39fbe367817a5f8f0dc9583e74c0e0d1350f3178627a3074`  
		Last Modified: Tue, 12 Dec 2017 11:07:01 GMT  
		Size: 1.1 MB (1128894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3e89e9de70168b543316dc0dea25d7c807cbec501b55f5a6910d983781b298`  
		Last Modified: Tue, 12 Dec 2017 11:07:00 GMT  
		Size: 612.5 KB (612536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f8d8be926c1b19659bcdc3d5d77809dc668958ea0c6a0e9e70e81084e36f9d`  
		Last Modified: Tue, 12 Dec 2017 11:06:58 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1cf37fe70df0c4024846ae3697cf14d391ff7c23648cfe542af40d7c3ae050`  
		Last Modified: Tue, 12 Dec 2017 11:07:01 GMT  
		Size: 14.5 MB (14538960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46bdfa3781475cb96a06a92fdcfaef7be867253c20cda19a0ae76ee2e01c999c`  
		Last Modified: Tue, 12 Dec 2017 11:06:59 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d65f1391146b9fd3060f636bb33158c500a8f0c0fae229cf4a7cb66507b5686`  
		Last Modified: Tue, 12 Dec 2017 11:07:00 GMT  
		Size: 12.0 MB (12047345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4d9afb2120216d36f87380e50258a11b0a4be91795c1c4ebe65909f06ff628`  
		Last Modified: Tue, 12 Dec 2017 11:06:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.2-apache`

```console
$ docker pull piwik@sha256:a39523f2ef1f1881eb908bb9f6bc4eb6f92543cd57b68385cacb0642b42bc29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:3.2-apache` - linux; amd64

```console
$ docker pull piwik@sha256:484f693ba97218381319ec72a70a8bd2aafef8e2b3476dcecebb898decc070b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195495839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb9a42c79a12f74b2c7f7ace94c420bdca4edc7e9981d40774b18193dbb42fe`
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
# Tue, 12 Dec 2017 10:56:37 GMT
MAINTAINER pierre@piwik.org
# Tue, 12 Dec 2017 10:56:51 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 10:57:50 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Tue, 12 Dec 2017 11:01:55 GMT
RUN pecl install APCu geoip redis   && rm -rf /tmp/pear
# Tue, 12 Dec 2017 11:02:33 GMT
RUN docker-php-ext-enable redis
# Tue, 12 Dec 2017 11:02:33 GMT
ENV PIWIK_VERSION=3.2.1
# Tue, 12 Dec 2017 11:02:41 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Tue, 12 Dec 2017 11:02:42 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Tue, 12 Dec 2017 11:02:43 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Tue, 12 Dec 2017 11:02:43 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Tue, 12 Dec 2017 11:02:44 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 11:02:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 11:02:44 GMT
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
	-	`sha256:da70bea3755007327e6b31377ffff207b575daa53fbb42457afb68fbc352677f`  
		Last Modified: Tue, 12 Dec 2017 11:05:23 GMT  
		Size: 7.3 MB (7320539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6a41680ebd1f2779aa47907949038c7dd6c98acaa7375f28c545bde06f3b7c`  
		Last Modified: Tue, 12 Dec 2017 11:05:22 GMT  
		Size: 1.1 MB (1128817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce80947f3a3d3d886624ca78d26dc61b90bdfc30d6b4bfd88faedc1a3070a67`  
		Last Modified: Tue, 12 Dec 2017 11:05:18 GMT  
		Size: 612.5 KB (612521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cab4b58abb23cb5faebde44e608dcc05ca6695a9831c794a7847969b79d2e63`  
		Last Modified: Tue, 12 Dec 2017 11:05:16 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6371ed9a5fb7e300a92dfe24a7b08f4f77799376c2b54c45058d44ba1c5e8d5c`  
		Last Modified: Tue, 12 Dec 2017 11:05:18 GMT  
		Size: 14.5 MB (14538973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d5a1f3d39cdde978e10f41bd1da58db9d22917b97e6480cae913c1456eb5a4`  
		Last Modified: Tue, 12 Dec 2017 11:05:16 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b86898b7d4572ee5fad11e2f6fe9ff435ee973638649ec80225d79a432b0c3`  
		Last Modified: Tue, 12 Dec 2017 11:05:16 GMT  
		Size: 12.0 MB (12047322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f22f5914eaf5ebb1b8600d30fc5e1bb9bc90ea1cc80461e6eb47ec6f43217cf`  
		Last Modified: Tue, 12 Dec 2017 11:05:13 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.2-fpm`

```console
$ docker pull piwik@sha256:a95c2ad34ef7ba326bf241dc095768030ab669a4e4f6ea615b1db7189ea5a4ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:3.2-fpm` - linux; amd64

```console
$ docker pull piwik@sha256:66c9207eb30a1938cca657b8ae33d8725483754fe0f00e796f0bcdd54ea0b180
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.1 MB (192126356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c80ea5958a9c7a4d2009d638cf8106ef3f4b090295ece61c3dda814a9e71f37`
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
# Tue, 12 Dec 2017 11:03:03 GMT
MAINTAINER pierre@piwik.org
# Tue, 12 Dec 2017 11:03:15 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:04:14 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Tue, 12 Dec 2017 11:04:36 GMT
RUN pecl install APCu geoip redis   && rm -rf /tmp/pear
# Tue, 12 Dec 2017 11:04:37 GMT
RUN docker-php-ext-enable redis
# Tue, 12 Dec 2017 11:04:37 GMT
ENV PIWIK_VERSION=3.2.1
# Tue, 12 Dec 2017 11:04:44 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Tue, 12 Dec 2017 11:04:45 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Tue, 12 Dec 2017 11:04:46 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Tue, 12 Dec 2017 11:04:46 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Tue, 12 Dec 2017 11:04:46 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 11:04:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 11:04:47 GMT
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
	-	`sha256:9ca65f7008d4fab0eaa377114a60a71c3c340ffd6b252d1de583ff895041f6ed`  
		Last Modified: Tue, 12 Dec 2017 11:07:03 GMT  
		Size: 7.3 MB (7300421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8640acd48bfd82fe39fbe367817a5f8f0dc9583e74c0e0d1350f3178627a3074`  
		Last Modified: Tue, 12 Dec 2017 11:07:01 GMT  
		Size: 1.1 MB (1128894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3e89e9de70168b543316dc0dea25d7c807cbec501b55f5a6910d983781b298`  
		Last Modified: Tue, 12 Dec 2017 11:07:00 GMT  
		Size: 612.5 KB (612536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f8d8be926c1b19659bcdc3d5d77809dc668958ea0c6a0e9e70e81084e36f9d`  
		Last Modified: Tue, 12 Dec 2017 11:06:58 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1cf37fe70df0c4024846ae3697cf14d391ff7c23648cfe542af40d7c3ae050`  
		Last Modified: Tue, 12 Dec 2017 11:07:01 GMT  
		Size: 14.5 MB (14538960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46bdfa3781475cb96a06a92fdcfaef7be867253c20cda19a0ae76ee2e01c999c`  
		Last Modified: Tue, 12 Dec 2017 11:06:59 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d65f1391146b9fd3060f636bb33158c500a8f0c0fae229cf4a7cb66507b5686`  
		Last Modified: Tue, 12 Dec 2017 11:07:00 GMT  
		Size: 12.0 MB (12047345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4d9afb2120216d36f87380e50258a11b0a4be91795c1c4ebe65909f06ff628`  
		Last Modified: Tue, 12 Dec 2017 11:06:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3-apache`

```console
$ docker pull piwik@sha256:a39523f2ef1f1881eb908bb9f6bc4eb6f92543cd57b68385cacb0642b42bc29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:3-apache` - linux; amd64

```console
$ docker pull piwik@sha256:484f693ba97218381319ec72a70a8bd2aafef8e2b3476dcecebb898decc070b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195495839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb9a42c79a12f74b2c7f7ace94c420bdca4edc7e9981d40774b18193dbb42fe`
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
# Tue, 12 Dec 2017 10:56:37 GMT
MAINTAINER pierre@piwik.org
# Tue, 12 Dec 2017 10:56:51 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 10:57:50 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Tue, 12 Dec 2017 11:01:55 GMT
RUN pecl install APCu geoip redis   && rm -rf /tmp/pear
# Tue, 12 Dec 2017 11:02:33 GMT
RUN docker-php-ext-enable redis
# Tue, 12 Dec 2017 11:02:33 GMT
ENV PIWIK_VERSION=3.2.1
# Tue, 12 Dec 2017 11:02:41 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Tue, 12 Dec 2017 11:02:42 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Tue, 12 Dec 2017 11:02:43 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Tue, 12 Dec 2017 11:02:43 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Tue, 12 Dec 2017 11:02:44 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 11:02:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 11:02:44 GMT
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
	-	`sha256:da70bea3755007327e6b31377ffff207b575daa53fbb42457afb68fbc352677f`  
		Last Modified: Tue, 12 Dec 2017 11:05:23 GMT  
		Size: 7.3 MB (7320539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6a41680ebd1f2779aa47907949038c7dd6c98acaa7375f28c545bde06f3b7c`  
		Last Modified: Tue, 12 Dec 2017 11:05:22 GMT  
		Size: 1.1 MB (1128817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce80947f3a3d3d886624ca78d26dc61b90bdfc30d6b4bfd88faedc1a3070a67`  
		Last Modified: Tue, 12 Dec 2017 11:05:18 GMT  
		Size: 612.5 KB (612521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cab4b58abb23cb5faebde44e608dcc05ca6695a9831c794a7847969b79d2e63`  
		Last Modified: Tue, 12 Dec 2017 11:05:16 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6371ed9a5fb7e300a92dfe24a7b08f4f77799376c2b54c45058d44ba1c5e8d5c`  
		Last Modified: Tue, 12 Dec 2017 11:05:18 GMT  
		Size: 14.5 MB (14538973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d5a1f3d39cdde978e10f41bd1da58db9d22917b97e6480cae913c1456eb5a4`  
		Last Modified: Tue, 12 Dec 2017 11:05:16 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b86898b7d4572ee5fad11e2f6fe9ff435ee973638649ec80225d79a432b0c3`  
		Last Modified: Tue, 12 Dec 2017 11:05:16 GMT  
		Size: 12.0 MB (12047322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f22f5914eaf5ebb1b8600d30fc5e1bb9bc90ea1cc80461e6eb47ec6f43217cf`  
		Last Modified: Tue, 12 Dec 2017 11:05:13 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3-fpm`

```console
$ docker pull piwik@sha256:a95c2ad34ef7ba326bf241dc095768030ab669a4e4f6ea615b1db7189ea5a4ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:3-fpm` - linux; amd64

```console
$ docker pull piwik@sha256:66c9207eb30a1938cca657b8ae33d8725483754fe0f00e796f0bcdd54ea0b180
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.1 MB (192126356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c80ea5958a9c7a4d2009d638cf8106ef3f4b090295ece61c3dda814a9e71f37`
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
# Tue, 12 Dec 2017 11:03:03 GMT
MAINTAINER pierre@piwik.org
# Tue, 12 Dec 2017 11:03:15 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:04:14 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Tue, 12 Dec 2017 11:04:36 GMT
RUN pecl install APCu geoip redis   && rm -rf /tmp/pear
# Tue, 12 Dec 2017 11:04:37 GMT
RUN docker-php-ext-enable redis
# Tue, 12 Dec 2017 11:04:37 GMT
ENV PIWIK_VERSION=3.2.1
# Tue, 12 Dec 2017 11:04:44 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Tue, 12 Dec 2017 11:04:45 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Tue, 12 Dec 2017 11:04:46 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Tue, 12 Dec 2017 11:04:46 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Tue, 12 Dec 2017 11:04:46 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 11:04:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 11:04:47 GMT
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
	-	`sha256:9ca65f7008d4fab0eaa377114a60a71c3c340ffd6b252d1de583ff895041f6ed`  
		Last Modified: Tue, 12 Dec 2017 11:07:03 GMT  
		Size: 7.3 MB (7300421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8640acd48bfd82fe39fbe367817a5f8f0dc9583e74c0e0d1350f3178627a3074`  
		Last Modified: Tue, 12 Dec 2017 11:07:01 GMT  
		Size: 1.1 MB (1128894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3e89e9de70168b543316dc0dea25d7c807cbec501b55f5a6910d983781b298`  
		Last Modified: Tue, 12 Dec 2017 11:07:00 GMT  
		Size: 612.5 KB (612536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f8d8be926c1b19659bcdc3d5d77809dc668958ea0c6a0e9e70e81084e36f9d`  
		Last Modified: Tue, 12 Dec 2017 11:06:58 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1cf37fe70df0c4024846ae3697cf14d391ff7c23648cfe542af40d7c3ae050`  
		Last Modified: Tue, 12 Dec 2017 11:07:01 GMT  
		Size: 14.5 MB (14538960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46bdfa3781475cb96a06a92fdcfaef7be867253c20cda19a0ae76ee2e01c999c`  
		Last Modified: Tue, 12 Dec 2017 11:06:59 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d65f1391146b9fd3060f636bb33158c500a8f0c0fae229cf4a7cb66507b5686`  
		Last Modified: Tue, 12 Dec 2017 11:07:00 GMT  
		Size: 12.0 MB (12047345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4d9afb2120216d36f87380e50258a11b0a4be91795c1c4ebe65909f06ff628`  
		Last Modified: Tue, 12 Dec 2017 11:06:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:apache`

```console
$ docker pull piwik@sha256:a39523f2ef1f1881eb908bb9f6bc4eb6f92543cd57b68385cacb0642b42bc29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:apache` - linux; amd64

```console
$ docker pull piwik@sha256:484f693ba97218381319ec72a70a8bd2aafef8e2b3476dcecebb898decc070b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195495839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb9a42c79a12f74b2c7f7ace94c420bdca4edc7e9981d40774b18193dbb42fe`
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
# Tue, 12 Dec 2017 10:56:37 GMT
MAINTAINER pierre@piwik.org
# Tue, 12 Dec 2017 10:56:51 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 10:57:50 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Tue, 12 Dec 2017 11:01:55 GMT
RUN pecl install APCu geoip redis   && rm -rf /tmp/pear
# Tue, 12 Dec 2017 11:02:33 GMT
RUN docker-php-ext-enable redis
# Tue, 12 Dec 2017 11:02:33 GMT
ENV PIWIK_VERSION=3.2.1
# Tue, 12 Dec 2017 11:02:41 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Tue, 12 Dec 2017 11:02:42 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Tue, 12 Dec 2017 11:02:43 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Tue, 12 Dec 2017 11:02:43 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Tue, 12 Dec 2017 11:02:44 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 11:02:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 11:02:44 GMT
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
	-	`sha256:da70bea3755007327e6b31377ffff207b575daa53fbb42457afb68fbc352677f`  
		Last Modified: Tue, 12 Dec 2017 11:05:23 GMT  
		Size: 7.3 MB (7320539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6a41680ebd1f2779aa47907949038c7dd6c98acaa7375f28c545bde06f3b7c`  
		Last Modified: Tue, 12 Dec 2017 11:05:22 GMT  
		Size: 1.1 MB (1128817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce80947f3a3d3d886624ca78d26dc61b90bdfc30d6b4bfd88faedc1a3070a67`  
		Last Modified: Tue, 12 Dec 2017 11:05:18 GMT  
		Size: 612.5 KB (612521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cab4b58abb23cb5faebde44e608dcc05ca6695a9831c794a7847969b79d2e63`  
		Last Modified: Tue, 12 Dec 2017 11:05:16 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6371ed9a5fb7e300a92dfe24a7b08f4f77799376c2b54c45058d44ba1c5e8d5c`  
		Last Modified: Tue, 12 Dec 2017 11:05:18 GMT  
		Size: 14.5 MB (14538973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d5a1f3d39cdde978e10f41bd1da58db9d22917b97e6480cae913c1456eb5a4`  
		Last Modified: Tue, 12 Dec 2017 11:05:16 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b86898b7d4572ee5fad11e2f6fe9ff435ee973638649ec80225d79a432b0c3`  
		Last Modified: Tue, 12 Dec 2017 11:05:16 GMT  
		Size: 12.0 MB (12047322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f22f5914eaf5ebb1b8600d30fc5e1bb9bc90ea1cc80461e6eb47ec6f43217cf`  
		Last Modified: Tue, 12 Dec 2017 11:05:13 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:fpm`

```console
$ docker pull piwik@sha256:a95c2ad34ef7ba326bf241dc095768030ab669a4e4f6ea615b1db7189ea5a4ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:fpm` - linux; amd64

```console
$ docker pull piwik@sha256:66c9207eb30a1938cca657b8ae33d8725483754fe0f00e796f0bcdd54ea0b180
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.1 MB (192126356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c80ea5958a9c7a4d2009d638cf8106ef3f4b090295ece61c3dda814a9e71f37`
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
# Tue, 12 Dec 2017 11:03:03 GMT
MAINTAINER pierre@piwik.org
# Tue, 12 Dec 2017 11:03:15 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:04:14 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Tue, 12 Dec 2017 11:04:36 GMT
RUN pecl install APCu geoip redis   && rm -rf /tmp/pear
# Tue, 12 Dec 2017 11:04:37 GMT
RUN docker-php-ext-enable redis
# Tue, 12 Dec 2017 11:04:37 GMT
ENV PIWIK_VERSION=3.2.1
# Tue, 12 Dec 2017 11:04:44 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Tue, 12 Dec 2017 11:04:45 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Tue, 12 Dec 2017 11:04:46 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Tue, 12 Dec 2017 11:04:46 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Tue, 12 Dec 2017 11:04:46 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 11:04:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 11:04:47 GMT
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
	-	`sha256:9ca65f7008d4fab0eaa377114a60a71c3c340ffd6b252d1de583ff895041f6ed`  
		Last Modified: Tue, 12 Dec 2017 11:07:03 GMT  
		Size: 7.3 MB (7300421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8640acd48bfd82fe39fbe367817a5f8f0dc9583e74c0e0d1350f3178627a3074`  
		Last Modified: Tue, 12 Dec 2017 11:07:01 GMT  
		Size: 1.1 MB (1128894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3e89e9de70168b543316dc0dea25d7c807cbec501b55f5a6910d983781b298`  
		Last Modified: Tue, 12 Dec 2017 11:07:00 GMT  
		Size: 612.5 KB (612536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f8d8be926c1b19659bcdc3d5d77809dc668958ea0c6a0e9e70e81084e36f9d`  
		Last Modified: Tue, 12 Dec 2017 11:06:58 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1cf37fe70df0c4024846ae3697cf14d391ff7c23648cfe542af40d7c3ae050`  
		Last Modified: Tue, 12 Dec 2017 11:07:01 GMT  
		Size: 14.5 MB (14538960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46bdfa3781475cb96a06a92fdcfaef7be867253c20cda19a0ae76ee2e01c999c`  
		Last Modified: Tue, 12 Dec 2017 11:06:59 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d65f1391146b9fd3060f636bb33158c500a8f0c0fae229cf4a7cb66507b5686`  
		Last Modified: Tue, 12 Dec 2017 11:07:00 GMT  
		Size: 12.0 MB (12047345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4d9afb2120216d36f87380e50258a11b0a4be91795c1c4ebe65909f06ff628`  
		Last Modified: Tue, 12 Dec 2017 11:06:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:latest`

```console
$ docker pull piwik@sha256:82a327f12d8a5d4b2db2ce5c6a3418dfc88a4294428f1d8c94aff5738b416034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:latest` - linux; amd64

```console
$ docker pull piwik@sha256:4de422331e77624d44c96afdf891da605f32a26c02e7f4d58daecdf2ee11a77a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195466550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b910aabf62ae9008caf70328f0058a5a05ac78555026b74152f961bf454bf90c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Fri, 01 Dec 2017 01:42:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 01 Dec 2017 01:43:15 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 01 Dec 2017 01:43:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 01:43:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 01:48:25 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Dec 2017 01:48:27 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 01 Dec 2017 01:48:27 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 01 Dec 2017 01:48:28 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 01 Dec 2017 01:48:28 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 01 Dec 2017 01:48:29 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 01 Dec 2017 01:48:30 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 01 Dec 2017 01:48:34 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 01 Dec 2017 01:48:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 01 Dec 2017 01:48:34 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 01:48:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 01:48:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 02:55:11 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 01 Dec 2017 02:55:11 GMT
ENV PHP_VERSION=5.6.32
# Fri, 01 Dec 2017 02:55:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 02:55:11 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Fri, 01 Dec 2017 02:55:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Dec 2017 02:55:26 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:57:40 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 02:57:40 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:57:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 02:57:41 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:57:41 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 02:57:41 GMT
EXPOSE 80/tcp
# Fri, 01 Dec 2017 02:57:41 GMT
CMD ["apache2-foreground"]
# Fri, 01 Dec 2017 05:09:28 GMT
MAINTAINER pierre@piwik.org
# Fri, 01 Dec 2017 05:09:41 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Fri, 01 Dec 2017 05:10:40 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Sat, 09 Dec 2017 01:25:19 GMT
RUN pecl install APCu geoip redis   && rm -rf /tmp/pear
# Sat, 09 Dec 2017 01:25:20 GMT
RUN docker-php-ext-enable redis
# Sat, 09 Dec 2017 01:25:21 GMT
ENV PIWIK_VERSION=3.2.1
# Sat, 09 Dec 2017 01:25:27 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Sat, 09 Dec 2017 01:25:28 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Sat, 09 Dec 2017 01:25:29 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Sat, 09 Dec 2017 01:25:29 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Sat, 09 Dec 2017 01:25:29 GMT
VOLUME [/var/www/html]
# Sat, 09 Dec 2017 01:25:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 09 Dec 2017 01:25:30 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c266283065ed384496a48d17b330b2fe844c74558ded1397d54b3ad1ecf61699`  
		Last Modified: Fri, 01 Dec 2017 03:22:49 GMT  
		Size: 81.9 MB (81852025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec99b99d75b15e7271800232999805dbbd2b22b461813e170fd6c625a494eabc`  
		Last Modified: Fri, 01 Dec 2017 03:22:30 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1acd20a385dfd8dea7297ea6658d0ff43d4ddee1b02044378bb03efff7133afd`  
		Last Modified: Fri, 01 Dec 2017 03:23:57 GMT  
		Size: 3.0 MB (3011944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d806755bbb5d3592be294a0a581e53b9bd25ee60186509409442a440872203`  
		Last Modified: Fri, 01 Dec 2017 03:23:56 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a68419027d0100a424f424b6cd160e00702be46f47525e633328cffd746d496`  
		Last Modified: Fri, 01 Dec 2017 03:23:55 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d54cf8a3cefda521fb3196ee218b091bc09e4330b1cc9dda39801c2f73bf350`  
		Last Modified: Fri, 01 Dec 2017 03:23:54 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f625202d40e3571f24dfceba5d6eace6a429eabd3369d6b68b891f81c3464d1`  
		Last Modified: Fri, 01 Dec 2017 03:23:53 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d44d50012c437e5f129eb4b44f1c1e1ea245c560bd010913ff6ffdf087d5992`  
		Last Modified: Fri, 01 Dec 2017 03:34:41 GMT  
		Size: 12.8 MB (12817749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde2597589daeb15171262a15da7545522d202b0cd20ca10d2e1f605327de288`  
		Last Modified: Fri, 01 Dec 2017 03:34:40 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc7ed272edc429f2acd8709d38fd8ffba4a423cb776d5a919266092a2b2e095`  
		Last Modified: Fri, 01 Dec 2017 03:34:42 GMT  
		Size: 9.5 MB (9534621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a03861917b8108d3f9c89119e5da709e1c2ef7fd0eb2655d6908f51b1de892c`  
		Last Modified: Fri, 01 Dec 2017 03:34:41 GMT  
		Size: 2.2 KB (2183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9c6b3bf298bfc6e3fb3c46173f0d3a89400bbfd62c30dbef4d8e1544a4b22c`  
		Last Modified: Fri, 01 Dec 2017 03:34:40 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07bcd7287bf3081c0b0c54b6a1d941794ae30bddf1ba658b608380f84e05a756`  
		Last Modified: Fri, 01 Dec 2017 05:13:05 GMT  
		Size: 7.3 MB (7320536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e34c925919a883f2db463cbbdf8fab5ea5d56a0234ab5d2cc894999b2e722c`  
		Last Modified: Fri, 01 Dec 2017 05:13:00 GMT  
		Size: 1.1 MB (1128817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66b01ad4fbc51d0d27fa0f188047f624c7c1286fce14edf36cfd9b62f6b8b4c`  
		Last Modified: Sat, 09 Dec 2017 01:26:35 GMT  
		Size: 612.5 KB (612491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2254bf41f20e3c65dbed17cb0c852eea98b2955ca4fe6a54bd30e843f7bccca2`  
		Last Modified: Sat, 09 Dec 2017 01:26:33 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab9659765dbe0d7b0f3229537eac7e5baf3682daed3d6c2ae10b3762aab51f0`  
		Last Modified: Sat, 09 Dec 2017 01:26:36 GMT  
		Size: 14.5 MB (14538970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee5047c04f9173c8d46dbfbc71f7e9b123b19b8e58518c45d4713e4cc807c0`  
		Last Modified: Sat, 09 Dec 2017 01:26:33 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6e2651058fbf60363d2c4a64d8bf38fbca791d964157e6765e42aae16f3132`  
		Last Modified: Sat, 09 Dec 2017 01:26:34 GMT  
		Size: 12.0 MB (12047342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1b58b5bf5e92184ac97078088d6a0829bce4f54e7b30253f89e96ccfc90d6b`  
		Last Modified: Sat, 09 Dec 2017 01:26:33 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
