<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `owncloud`

-	[`owncloud:8.0.15-apache`](#owncloud8015-apache)
-	[`owncloud:8.0-apache`](#owncloud80-apache)
-	[`owncloud:8.0.15`](#owncloud8015)
-	[`owncloud:8.0`](#owncloud80)
-	[`owncloud:8.0.15-fpm`](#owncloud8015-fpm)
-	[`owncloud:8.0-fpm`](#owncloud80-fpm)
-	[`owncloud:8.1.10-apache`](#owncloud8110-apache)
-	[`owncloud:8.1-apache`](#owncloud81-apache)
-	[`owncloud:8.1.10`](#owncloud8110)
-	[`owncloud:8.1`](#owncloud81)
-	[`owncloud:8.1.10-fpm`](#owncloud8110-fpm)
-	[`owncloud:8.1-fpm`](#owncloud81-fpm)
-	[`owncloud:8.2.8-apache`](#owncloud828-apache)
-	[`owncloud:8.2-apache`](#owncloud82-apache)
-	[`owncloud:8-apache`](#owncloud8-apache)
-	[`owncloud:8.2.8`](#owncloud828)
-	[`owncloud:8.2`](#owncloud82)
-	[`owncloud:8`](#owncloud8)
-	[`owncloud:8.2.8-fpm`](#owncloud828-fpm)
-	[`owncloud:8.2-fpm`](#owncloud82-fpm)
-	[`owncloud:8-fpm`](#owncloud8-fpm)
-	[`owncloud:9.0.5-apache`](#owncloud905-apache)
-	[`owncloud:9.0-apache`](#owncloud90-apache)
-	[`owncloud:9.0.5`](#owncloud905)
-	[`owncloud:9.0`](#owncloud90)
-	[`owncloud:9.0.5-fpm`](#owncloud905-fpm)
-	[`owncloud:9.0-fpm`](#owncloud90-fpm)
-	[`owncloud:9.1.1-apache`](#owncloud911-apache)
-	[`owncloud:9.1-apache`](#owncloud91-apache)
-	[`owncloud:9-apache`](#owncloud9-apache)
-	[`owncloud:apache`](#owncloudapache)
-	[`owncloud:9.1.1`](#owncloud911)
-	[`owncloud:9.1`](#owncloud91)
-	[`owncloud:9`](#owncloud9)
-	[`owncloud:latest`](#owncloudlatest)
-	[`owncloud:9.1.1-fpm`](#owncloud911-fpm)
-	[`owncloud:9.1-fpm`](#owncloud91-fpm)
-	[`owncloud:9-fpm`](#owncloud9-fpm)
-	[`owncloud:fpm`](#owncloudfpm)

## `owncloud:8.0.15-apache`

```console
$ docker pull owncloud@sha256:c80f8b93b285d0d48408e3555d9aa357b73431b6f00355d013c780971c45d3a8
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.0.15-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223746470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d607f31d7ffc4ec18c1337cc623826033e357f7a4a5e2abab52a61597878ba97`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:21:53 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:23:42 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:23:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:23:44 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:23:53 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& docker-php-ext-enable apcu
# Sat, 22 Oct 2016 07:23:53 GMT
ENV OWNCLOUD_VERSION=8.0.15
# Sat, 22 Oct 2016 07:23:53 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:24:10 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:24:11 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:24:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:24:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc28a77c22d45d9cb2426f6b27f664bd4722a61656e2307f259a8c2cc3a7084`  
		Last Modified: Sat, 22 Oct 2016 07:24:34 GMT  
		Size: 33.5 MB (33470883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6449db1198ce836ee5f281d71440616a47f335892c3d2a0f1591aa2744181a5`  
		Last Modified: Sat, 22 Oct 2016 07:24:26 GMT  
		Size: 3.7 MB (3742915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc35823aeac3fb6a2ce28e15cc9ae84a44d6df2acf347d937dce8be8849bc3dd`  
		Last Modified: Sat, 22 Oct 2016 07:24:22 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237df4aacef355ce877b93157d0f1dff311dc7b53bfe4d6234ca191e95641247`  
		Last Modified: Sat, 22 Oct 2016 07:24:22 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8a72a44506da000ae7495336f344407439f36ee7cc9d82f82b44b6641ad8e4`  
		Last Modified: Sat, 22 Oct 2016 07:24:23 GMT  
		Size: 363.7 KB (363673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370379b9853a7d4c7512dfe68beb54b531284fc50e7ae14a290e3ef0806bb311`  
		Last Modified: Sat, 22 Oct 2016 07:24:30 GMT  
		Size: 25.9 MB (25883730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3461f803f8ac0becb9004d7330a0554df9258dccc0a8580c677964588409630`  
		Last Modified: Sat, 22 Oct 2016 07:24:22 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.0-apache`

```console
$ docker pull owncloud@sha256:c80f8b93b285d0d48408e3555d9aa357b73431b6f00355d013c780971c45d3a8
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.0-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223746470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d607f31d7ffc4ec18c1337cc623826033e357f7a4a5e2abab52a61597878ba97`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:21:53 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:23:42 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:23:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:23:44 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:23:53 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& docker-php-ext-enable apcu
# Sat, 22 Oct 2016 07:23:53 GMT
ENV OWNCLOUD_VERSION=8.0.15
# Sat, 22 Oct 2016 07:23:53 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:24:10 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:24:11 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:24:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:24:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc28a77c22d45d9cb2426f6b27f664bd4722a61656e2307f259a8c2cc3a7084`  
		Last Modified: Sat, 22 Oct 2016 07:24:34 GMT  
		Size: 33.5 MB (33470883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6449db1198ce836ee5f281d71440616a47f335892c3d2a0f1591aa2744181a5`  
		Last Modified: Sat, 22 Oct 2016 07:24:26 GMT  
		Size: 3.7 MB (3742915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc35823aeac3fb6a2ce28e15cc9ae84a44d6df2acf347d937dce8be8849bc3dd`  
		Last Modified: Sat, 22 Oct 2016 07:24:22 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237df4aacef355ce877b93157d0f1dff311dc7b53bfe4d6234ca191e95641247`  
		Last Modified: Sat, 22 Oct 2016 07:24:22 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8a72a44506da000ae7495336f344407439f36ee7cc9d82f82b44b6641ad8e4`  
		Last Modified: Sat, 22 Oct 2016 07:24:23 GMT  
		Size: 363.7 KB (363673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370379b9853a7d4c7512dfe68beb54b531284fc50e7ae14a290e3ef0806bb311`  
		Last Modified: Sat, 22 Oct 2016 07:24:30 GMT  
		Size: 25.9 MB (25883730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3461f803f8ac0becb9004d7330a0554df9258dccc0a8580c677964588409630`  
		Last Modified: Sat, 22 Oct 2016 07:24:22 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.0.15`

```console
$ docker pull owncloud@sha256:c80f8b93b285d0d48408e3555d9aa357b73431b6f00355d013c780971c45d3a8
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.0.15` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223746470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d607f31d7ffc4ec18c1337cc623826033e357f7a4a5e2abab52a61597878ba97`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:21:53 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:23:42 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:23:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:23:44 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:23:53 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& docker-php-ext-enable apcu
# Sat, 22 Oct 2016 07:23:53 GMT
ENV OWNCLOUD_VERSION=8.0.15
# Sat, 22 Oct 2016 07:23:53 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:24:10 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:24:11 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:24:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:24:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc28a77c22d45d9cb2426f6b27f664bd4722a61656e2307f259a8c2cc3a7084`  
		Last Modified: Sat, 22 Oct 2016 07:24:34 GMT  
		Size: 33.5 MB (33470883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6449db1198ce836ee5f281d71440616a47f335892c3d2a0f1591aa2744181a5`  
		Last Modified: Sat, 22 Oct 2016 07:24:26 GMT  
		Size: 3.7 MB (3742915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc35823aeac3fb6a2ce28e15cc9ae84a44d6df2acf347d937dce8be8849bc3dd`  
		Last Modified: Sat, 22 Oct 2016 07:24:22 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237df4aacef355ce877b93157d0f1dff311dc7b53bfe4d6234ca191e95641247`  
		Last Modified: Sat, 22 Oct 2016 07:24:22 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8a72a44506da000ae7495336f344407439f36ee7cc9d82f82b44b6641ad8e4`  
		Last Modified: Sat, 22 Oct 2016 07:24:23 GMT  
		Size: 363.7 KB (363673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370379b9853a7d4c7512dfe68beb54b531284fc50e7ae14a290e3ef0806bb311`  
		Last Modified: Sat, 22 Oct 2016 07:24:30 GMT  
		Size: 25.9 MB (25883730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3461f803f8ac0becb9004d7330a0554df9258dccc0a8580c677964588409630`  
		Last Modified: Sat, 22 Oct 2016 07:24:22 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.0`

```console
$ docker pull owncloud@sha256:c80f8b93b285d0d48408e3555d9aa357b73431b6f00355d013c780971c45d3a8
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223746470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d607f31d7ffc4ec18c1337cc623826033e357f7a4a5e2abab52a61597878ba97`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:21:53 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:23:42 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:23:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:23:44 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:23:53 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& docker-php-ext-enable apcu
# Sat, 22 Oct 2016 07:23:53 GMT
ENV OWNCLOUD_VERSION=8.0.15
# Sat, 22 Oct 2016 07:23:53 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:24:10 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:24:11 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:24:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:24:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc28a77c22d45d9cb2426f6b27f664bd4722a61656e2307f259a8c2cc3a7084`  
		Last Modified: Sat, 22 Oct 2016 07:24:34 GMT  
		Size: 33.5 MB (33470883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6449db1198ce836ee5f281d71440616a47f335892c3d2a0f1591aa2744181a5`  
		Last Modified: Sat, 22 Oct 2016 07:24:26 GMT  
		Size: 3.7 MB (3742915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc35823aeac3fb6a2ce28e15cc9ae84a44d6df2acf347d937dce8be8849bc3dd`  
		Last Modified: Sat, 22 Oct 2016 07:24:22 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237df4aacef355ce877b93157d0f1dff311dc7b53bfe4d6234ca191e95641247`  
		Last Modified: Sat, 22 Oct 2016 07:24:22 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8a72a44506da000ae7495336f344407439f36ee7cc9d82f82b44b6641ad8e4`  
		Last Modified: Sat, 22 Oct 2016 07:24:23 GMT  
		Size: 363.7 KB (363673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370379b9853a7d4c7512dfe68beb54b531284fc50e7ae14a290e3ef0806bb311`  
		Last Modified: Sat, 22 Oct 2016 07:24:30 GMT  
		Size: 25.9 MB (25883730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3461f803f8ac0becb9004d7330a0554df9258dccc0a8580c677964588409630`  
		Last Modified: Sat, 22 Oct 2016 07:24:22 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.0.15-fpm`

```console
$ docker pull owncloud@sha256:6f4f9e3eaba49af85e1cd7206b3504aef16b0049ec8ebf48ba63b1090264be88
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.0.15-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.8 MB (213785344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f3339e4838cd7f00b84b9313eff7d1e3ae86e8a5320851d87d5e60b10754f9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:10:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 21 Oct 2016 23:10:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:10:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:10:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:13:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:14:00 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:14:00 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:14:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Oct 2016 23:14:02 GMT
EXPOSE 9000/tcp
# Fri, 21 Oct 2016 23:14:02 GMT
CMD ["php-fpm"]
# Sat, 22 Oct 2016 07:25:33 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:27:19 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:27:20 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:27:29 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& docker-php-ext-enable apcu
# Sat, 22 Oct 2016 07:27:29 GMT
ENV OWNCLOUD_VERSION=8.0.15
# Sat, 22 Oct 2016 07:27:30 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:27:42 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:27:43 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:27:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:27:44 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa40caf97a527ab5b58f26d26b407b55f4fae6798e1d7f89267747d74195f1b`  
		Last Modified: Fri, 21 Oct 2016 23:14:18 GMT  
		Size: 12.5 MB (12549527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064a3d3e9245dbe11fb127133ebdf3e7feb188948093feb6b1597ff1c1c2ed23`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8cd631ee525e5d7ae7dea910aa38eb0270991abc1dc5ca199d17a824383e47`  
		Last Modified: Fri, 21 Oct 2016 23:14:14 GMT  
		Size: 8.8 MB (8841952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3181f198b31f771fb106ad398e5e61380a7122b7f48ad2949ce0937eae2ff49b`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f4db8284a3c17605cf8a4b33cf8cfb43ce5e4d78c1104fea88e88b47f704af`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca292aae86f240632732ffde349c152c947ea665d31b37c80a2689a8858e394`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7649b54e64366fdabbda5c856699f27f02f193974124566462cfffc1b2d02643`  
		Last Modified: Sat, 22 Oct 2016 07:28:07 GMT  
		Size: 33.4 MB (33448274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0b5e038d93141ecb2a8f00e7dc4739208629bd8823171bdcc65cf44827aefb`  
		Last Modified: Sat, 22 Oct 2016 07:27:55 GMT  
		Size: 3.7 MB (3743111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fc4e1562cb154e659ed883f135f80373c22ad5b43952a8f3f391d02a038100`  
		Last Modified: Sat, 22 Oct 2016 07:27:54 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49db0f9303da557dc860e98a30dc63f2b19492ade7945e94373453a21fcdebd4`  
		Last Modified: Sat, 22 Oct 2016 07:27:55 GMT  
		Size: 363.6 KB (363647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2cc6afcfd9decffaac2611ad344f38c2c5e0dc7ac696fce3f3d3d5b84ef3955`  
		Last Modified: Sat, 22 Oct 2016 07:28:01 GMT  
		Size: 25.9 MB (25883751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c30dd1ff6e0a2445712d27e2b93eeb1da003c47d9b1e721ceff554ca676568`  
		Last Modified: Sat, 22 Oct 2016 07:27:54 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.0-fpm`

```console
$ docker pull owncloud@sha256:6f4f9e3eaba49af85e1cd7206b3504aef16b0049ec8ebf48ba63b1090264be88
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.0-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.8 MB (213785344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f3339e4838cd7f00b84b9313eff7d1e3ae86e8a5320851d87d5e60b10754f9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:10:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 21 Oct 2016 23:10:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:10:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:10:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:13:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:14:00 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:14:00 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:14:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Oct 2016 23:14:02 GMT
EXPOSE 9000/tcp
# Fri, 21 Oct 2016 23:14:02 GMT
CMD ["php-fpm"]
# Sat, 22 Oct 2016 07:25:33 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:27:19 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:27:20 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:27:29 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& docker-php-ext-enable apcu
# Sat, 22 Oct 2016 07:27:29 GMT
ENV OWNCLOUD_VERSION=8.0.15
# Sat, 22 Oct 2016 07:27:30 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:27:42 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:27:43 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:27:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:27:44 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa40caf97a527ab5b58f26d26b407b55f4fae6798e1d7f89267747d74195f1b`  
		Last Modified: Fri, 21 Oct 2016 23:14:18 GMT  
		Size: 12.5 MB (12549527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064a3d3e9245dbe11fb127133ebdf3e7feb188948093feb6b1597ff1c1c2ed23`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8cd631ee525e5d7ae7dea910aa38eb0270991abc1dc5ca199d17a824383e47`  
		Last Modified: Fri, 21 Oct 2016 23:14:14 GMT  
		Size: 8.8 MB (8841952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3181f198b31f771fb106ad398e5e61380a7122b7f48ad2949ce0937eae2ff49b`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f4db8284a3c17605cf8a4b33cf8cfb43ce5e4d78c1104fea88e88b47f704af`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca292aae86f240632732ffde349c152c947ea665d31b37c80a2689a8858e394`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7649b54e64366fdabbda5c856699f27f02f193974124566462cfffc1b2d02643`  
		Last Modified: Sat, 22 Oct 2016 07:28:07 GMT  
		Size: 33.4 MB (33448274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0b5e038d93141ecb2a8f00e7dc4739208629bd8823171bdcc65cf44827aefb`  
		Last Modified: Sat, 22 Oct 2016 07:27:55 GMT  
		Size: 3.7 MB (3743111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fc4e1562cb154e659ed883f135f80373c22ad5b43952a8f3f391d02a038100`  
		Last Modified: Sat, 22 Oct 2016 07:27:54 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49db0f9303da557dc860e98a30dc63f2b19492ade7945e94373453a21fcdebd4`  
		Last Modified: Sat, 22 Oct 2016 07:27:55 GMT  
		Size: 363.6 KB (363647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2cc6afcfd9decffaac2611ad344f38c2c5e0dc7ac696fce3f3d3d5b84ef3955`  
		Last Modified: Sat, 22 Oct 2016 07:28:01 GMT  
		Size: 25.9 MB (25883751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c30dd1ff6e0a2445712d27e2b93eeb1da003c47d9b1e721ceff554ca676568`  
		Last Modified: Sat, 22 Oct 2016 07:27:54 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.1.10-apache`

```console
$ docker pull owncloud@sha256:317cfef7e437af960791bfc83fa6c2c8f63bd284a63ec8a8e3d4557eb5c216ee
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.1.10-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.5 MB (226527491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ca45e237df616c7d7fb015bdca8652f7b7eaf064fb64180dda972d8f5bfeb3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:13:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:15:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:15:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:15:48 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:16:13 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:28:27 GMT
ENV OWNCLOUD_VERSION=8.1.10
# Sat, 22 Oct 2016 07:28:27 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:28:46 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:28:47 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:28:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:28:47 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f4a29766039aaaf9dc7fa0709699b0834fe0dc247d2cca3a77fb2e252eadc`  
		Last Modified: Sat, 22 Oct 2016 07:16:52 GMT  
		Size: 34.3 MB (34331907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade5e0ddc77cbbc3b273352ac0252c292d8f606a8b3d7cb69ca1d89abad04a6`  
		Last Modified: Sat, 22 Oct 2016 07:16:43 GMT  
		Size: 3.7 MB (3742930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4491c97404a1b01f48deef5eca9b82e1f7d35f745cef1c7442df07b0ec19469e`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de26be8b7e43a7f4d16685b7f5288b48543f6dff7f723ad150ba26fcbdafe50a`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d8fdfd9eb87b7202760b8f1341b205af54ce8bb4b1c0e71c792b003a12d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 1.3 MB (1330747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c741bc32448d2dc44a1de51e16290dd44ac7aaea31912e32f2185e5fe42c123d`  
		Last Modified: Sat, 22 Oct 2016 07:29:05 GMT  
		Size: 26.8 MB (26836634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eada80038885076166b4f8b2e10df8f268aaa439ca8472b449e4ffb85b627dfa`  
		Last Modified: Sat, 22 Oct 2016 07:28:57 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.1-apache`

```console
$ docker pull owncloud@sha256:317cfef7e437af960791bfc83fa6c2c8f63bd284a63ec8a8e3d4557eb5c216ee
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.1-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.5 MB (226527491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ca45e237df616c7d7fb015bdca8652f7b7eaf064fb64180dda972d8f5bfeb3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:13:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:15:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:15:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:15:48 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:16:13 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:28:27 GMT
ENV OWNCLOUD_VERSION=8.1.10
# Sat, 22 Oct 2016 07:28:27 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:28:46 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:28:47 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:28:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:28:47 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f4a29766039aaaf9dc7fa0709699b0834fe0dc247d2cca3a77fb2e252eadc`  
		Last Modified: Sat, 22 Oct 2016 07:16:52 GMT  
		Size: 34.3 MB (34331907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade5e0ddc77cbbc3b273352ac0252c292d8f606a8b3d7cb69ca1d89abad04a6`  
		Last Modified: Sat, 22 Oct 2016 07:16:43 GMT  
		Size: 3.7 MB (3742930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4491c97404a1b01f48deef5eca9b82e1f7d35f745cef1c7442df07b0ec19469e`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de26be8b7e43a7f4d16685b7f5288b48543f6dff7f723ad150ba26fcbdafe50a`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d8fdfd9eb87b7202760b8f1341b205af54ce8bb4b1c0e71c792b003a12d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 1.3 MB (1330747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c741bc32448d2dc44a1de51e16290dd44ac7aaea31912e32f2185e5fe42c123d`  
		Last Modified: Sat, 22 Oct 2016 07:29:05 GMT  
		Size: 26.8 MB (26836634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eada80038885076166b4f8b2e10df8f268aaa439ca8472b449e4ffb85b627dfa`  
		Last Modified: Sat, 22 Oct 2016 07:28:57 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.1.10`

```console
$ docker pull owncloud@sha256:317cfef7e437af960791bfc83fa6c2c8f63bd284a63ec8a8e3d4557eb5c216ee
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.1.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.5 MB (226527491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ca45e237df616c7d7fb015bdca8652f7b7eaf064fb64180dda972d8f5bfeb3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:13:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:15:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:15:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:15:48 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:16:13 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:28:27 GMT
ENV OWNCLOUD_VERSION=8.1.10
# Sat, 22 Oct 2016 07:28:27 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:28:46 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:28:47 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:28:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:28:47 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f4a29766039aaaf9dc7fa0709699b0834fe0dc247d2cca3a77fb2e252eadc`  
		Last Modified: Sat, 22 Oct 2016 07:16:52 GMT  
		Size: 34.3 MB (34331907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade5e0ddc77cbbc3b273352ac0252c292d8f606a8b3d7cb69ca1d89abad04a6`  
		Last Modified: Sat, 22 Oct 2016 07:16:43 GMT  
		Size: 3.7 MB (3742930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4491c97404a1b01f48deef5eca9b82e1f7d35f745cef1c7442df07b0ec19469e`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de26be8b7e43a7f4d16685b7f5288b48543f6dff7f723ad150ba26fcbdafe50a`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d8fdfd9eb87b7202760b8f1341b205af54ce8bb4b1c0e71c792b003a12d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 1.3 MB (1330747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c741bc32448d2dc44a1de51e16290dd44ac7aaea31912e32f2185e5fe42c123d`  
		Last Modified: Sat, 22 Oct 2016 07:29:05 GMT  
		Size: 26.8 MB (26836634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eada80038885076166b4f8b2e10df8f268aaa439ca8472b449e4ffb85b627dfa`  
		Last Modified: Sat, 22 Oct 2016 07:28:57 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.1`

```console
$ docker pull owncloud@sha256:317cfef7e437af960791bfc83fa6c2c8f63bd284a63ec8a8e3d4557eb5c216ee
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.5 MB (226527491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ca45e237df616c7d7fb015bdca8652f7b7eaf064fb64180dda972d8f5bfeb3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:13:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:15:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:15:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:15:48 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:16:13 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:28:27 GMT
ENV OWNCLOUD_VERSION=8.1.10
# Sat, 22 Oct 2016 07:28:27 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:28:46 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:28:47 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:28:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:28:47 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f4a29766039aaaf9dc7fa0709699b0834fe0dc247d2cca3a77fb2e252eadc`  
		Last Modified: Sat, 22 Oct 2016 07:16:52 GMT  
		Size: 34.3 MB (34331907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade5e0ddc77cbbc3b273352ac0252c292d8f606a8b3d7cb69ca1d89abad04a6`  
		Last Modified: Sat, 22 Oct 2016 07:16:43 GMT  
		Size: 3.7 MB (3742930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4491c97404a1b01f48deef5eca9b82e1f7d35f745cef1c7442df07b0ec19469e`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de26be8b7e43a7f4d16685b7f5288b48543f6dff7f723ad150ba26fcbdafe50a`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d8fdfd9eb87b7202760b8f1341b205af54ce8bb4b1c0e71c792b003a12d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 1.3 MB (1330747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c741bc32448d2dc44a1de51e16290dd44ac7aaea31912e32f2185e5fe42c123d`  
		Last Modified: Sat, 22 Oct 2016 07:29:05 GMT  
		Size: 26.8 MB (26836634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eada80038885076166b4f8b2e10df8f268aaa439ca8472b449e4ffb85b627dfa`  
		Last Modified: Sat, 22 Oct 2016 07:28:57 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.1.10-fpm`

```console
$ docker pull owncloud@sha256:a19b1889bc375ce1322b456ea62f29e30bef2b92c6388ea39c962c1353020d38
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.1.10-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.6 MB (216566149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:530011ec62837d73a44f5d05b1dcaeee2598b28f323097ca8597b459335d1d26`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:10:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 21 Oct 2016 23:10:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:10:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:10:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:13:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:14:00 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:14:00 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:14:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Oct 2016 23:14:02 GMT
EXPOSE 9000/tcp
# Fri, 21 Oct 2016 23:14:02 GMT
CMD ["php-fpm"]
# Sat, 22 Oct 2016 07:18:15 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:20:02 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:20:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:20:29 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:29:48 GMT
ENV OWNCLOUD_VERSION=8.1.10
# Sat, 22 Oct 2016 07:29:48 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:30:01 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:30:02 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:30:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:30:03 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa40caf97a527ab5b58f26d26b407b55f4fae6798e1d7f89267747d74195f1b`  
		Last Modified: Fri, 21 Oct 2016 23:14:18 GMT  
		Size: 12.5 MB (12549527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064a3d3e9245dbe11fb127133ebdf3e7feb188948093feb6b1597ff1c1c2ed23`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8cd631ee525e5d7ae7dea910aa38eb0270991abc1dc5ca199d17a824383e47`  
		Last Modified: Fri, 21 Oct 2016 23:14:14 GMT  
		Size: 8.8 MB (8841952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3181f198b31f771fb106ad398e5e61380a7122b7f48ad2949ce0937eae2ff49b`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f4db8284a3c17605cf8a4b33cf8cfb43ce5e4d78c1104fea88e88b47f704af`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca292aae86f240632732ffde349c152c947ea665d31b37c80a2689a8858e394`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40083b945798329a66df3b67b2a7bf1c9dff38d58f173610cd27093313c3dc7`  
		Last Modified: Sat, 22 Oct 2016 07:21:08 GMT  
		Size: 34.3 MB (34309173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1effd34919d4300b45a7b7a4f32e358f43ce4c898bee542df608d4eaecffc6ae`  
		Last Modified: Sat, 22 Oct 2016 07:20:57 GMT  
		Size: 3.7 MB (3743106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e64f904d47b69422ab5aa4ead17a44703e480612756d137f728c91b4a26bbb`  
		Last Modified: Sat, 22 Oct 2016 07:20:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07e5fe26a64d4192bc3acac86040adcad450020178fe1f2d0a86b8b5f5f4653`  
		Last Modified: Sat, 22 Oct 2016 07:20:57 GMT  
		Size: 1.3 MB (1330674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f9513402ccf15378f0e35f0a4a96e39cad755b3bf61cae81d3db3fe3197ef7`  
		Last Modified: Sat, 22 Oct 2016 07:30:21 GMT  
		Size: 26.8 MB (26836634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bc2f56fe8b2e4be7b372abb0af120414bd4f35d4f583e61d14db5aaf7f1e23a`  
		Last Modified: Sat, 22 Oct 2016 07:30:13 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.1-fpm`

```console
$ docker pull owncloud@sha256:a19b1889bc375ce1322b456ea62f29e30bef2b92c6388ea39c962c1353020d38
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.1-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.6 MB (216566149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:530011ec62837d73a44f5d05b1dcaeee2598b28f323097ca8597b459335d1d26`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:10:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 21 Oct 2016 23:10:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:10:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:10:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:13:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:14:00 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:14:00 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:14:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Oct 2016 23:14:02 GMT
EXPOSE 9000/tcp
# Fri, 21 Oct 2016 23:14:02 GMT
CMD ["php-fpm"]
# Sat, 22 Oct 2016 07:18:15 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:20:02 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:20:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:20:29 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:29:48 GMT
ENV OWNCLOUD_VERSION=8.1.10
# Sat, 22 Oct 2016 07:29:48 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:30:01 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:30:02 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:30:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:30:03 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa40caf97a527ab5b58f26d26b407b55f4fae6798e1d7f89267747d74195f1b`  
		Last Modified: Fri, 21 Oct 2016 23:14:18 GMT  
		Size: 12.5 MB (12549527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064a3d3e9245dbe11fb127133ebdf3e7feb188948093feb6b1597ff1c1c2ed23`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8cd631ee525e5d7ae7dea910aa38eb0270991abc1dc5ca199d17a824383e47`  
		Last Modified: Fri, 21 Oct 2016 23:14:14 GMT  
		Size: 8.8 MB (8841952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3181f198b31f771fb106ad398e5e61380a7122b7f48ad2949ce0937eae2ff49b`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f4db8284a3c17605cf8a4b33cf8cfb43ce5e4d78c1104fea88e88b47f704af`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca292aae86f240632732ffde349c152c947ea665d31b37c80a2689a8858e394`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40083b945798329a66df3b67b2a7bf1c9dff38d58f173610cd27093313c3dc7`  
		Last Modified: Sat, 22 Oct 2016 07:21:08 GMT  
		Size: 34.3 MB (34309173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1effd34919d4300b45a7b7a4f32e358f43ce4c898bee542df608d4eaecffc6ae`  
		Last Modified: Sat, 22 Oct 2016 07:20:57 GMT  
		Size: 3.7 MB (3743106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e64f904d47b69422ab5aa4ead17a44703e480612756d137f728c91b4a26bbb`  
		Last Modified: Sat, 22 Oct 2016 07:20:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07e5fe26a64d4192bc3acac86040adcad450020178fe1f2d0a86b8b5f5f4653`  
		Last Modified: Sat, 22 Oct 2016 07:20:57 GMT  
		Size: 1.3 MB (1330674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f9513402ccf15378f0e35f0a4a96e39cad755b3bf61cae81d3db3fe3197ef7`  
		Last Modified: Sat, 22 Oct 2016 07:30:21 GMT  
		Size: 26.8 MB (26836634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bc2f56fe8b2e4be7b372abb0af120414bd4f35d4f583e61d14db5aaf7f1e23a`  
		Last Modified: Sat, 22 Oct 2016 07:30:13 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.2.8-apache`

```console
$ docker pull owncloud@sha256:d1aef437dffbf0c2cf45cd17bde3caa6392579e2104c2aca6a51f68dac950f2a
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.2.8-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229911661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96071be91d041fffdbcf3f29037d743d9bbf1076b3dbb718ee593509241cf0bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:13:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:15:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:15:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:15:48 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:16:13 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:16:13 GMT
ENV OWNCLOUD_VERSION=8.2.8
# Sat, 22 Oct 2016 07:16:14 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:16:27 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:16:28 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:16:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:16:29 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f4a29766039aaaf9dc7fa0709699b0834fe0dc247d2cca3a77fb2e252eadc`  
		Last Modified: Sat, 22 Oct 2016 07:16:52 GMT  
		Size: 34.3 MB (34331907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade5e0ddc77cbbc3b273352ac0252c292d8f606a8b3d7cb69ca1d89abad04a6`  
		Last Modified: Sat, 22 Oct 2016 07:16:43 GMT  
		Size: 3.7 MB (3742930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4491c97404a1b01f48deef5eca9b82e1f7d35f745cef1c7442df07b0ec19469e`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de26be8b7e43a7f4d16685b7f5288b48543f6dff7f723ad150ba26fcbdafe50a`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d8fdfd9eb87b7202760b8f1341b205af54ce8bb4b1c0e71c792b003a12d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 1.3 MB (1330747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d64e1986e250e84b7140c0b82a5ac684bde291e934214c5d7b1af0c8f1830db`  
		Last Modified: Sat, 22 Oct 2016 07:16:51 GMT  
		Size: 30.2 MB (30220804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b940930f1c76a9b5c9188a3213a2a2699719207c268f5647386e183d612d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.2-apache`

```console
$ docker pull owncloud@sha256:d1aef437dffbf0c2cf45cd17bde3caa6392579e2104c2aca6a51f68dac950f2a
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.2-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229911661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96071be91d041fffdbcf3f29037d743d9bbf1076b3dbb718ee593509241cf0bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:13:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:15:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:15:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:15:48 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:16:13 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:16:13 GMT
ENV OWNCLOUD_VERSION=8.2.8
# Sat, 22 Oct 2016 07:16:14 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:16:27 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:16:28 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:16:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:16:29 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f4a29766039aaaf9dc7fa0709699b0834fe0dc247d2cca3a77fb2e252eadc`  
		Last Modified: Sat, 22 Oct 2016 07:16:52 GMT  
		Size: 34.3 MB (34331907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade5e0ddc77cbbc3b273352ac0252c292d8f606a8b3d7cb69ca1d89abad04a6`  
		Last Modified: Sat, 22 Oct 2016 07:16:43 GMT  
		Size: 3.7 MB (3742930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4491c97404a1b01f48deef5eca9b82e1f7d35f745cef1c7442df07b0ec19469e`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de26be8b7e43a7f4d16685b7f5288b48543f6dff7f723ad150ba26fcbdafe50a`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d8fdfd9eb87b7202760b8f1341b205af54ce8bb4b1c0e71c792b003a12d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 1.3 MB (1330747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d64e1986e250e84b7140c0b82a5ac684bde291e934214c5d7b1af0c8f1830db`  
		Last Modified: Sat, 22 Oct 2016 07:16:51 GMT  
		Size: 30.2 MB (30220804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b940930f1c76a9b5c9188a3213a2a2699719207c268f5647386e183d612d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8-apache`

```console
$ docker pull owncloud@sha256:d1aef437dffbf0c2cf45cd17bde3caa6392579e2104c2aca6a51f68dac950f2a
```

-	Platforms:
	-	linux; amd64

### `owncloud:8-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229911661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96071be91d041fffdbcf3f29037d743d9bbf1076b3dbb718ee593509241cf0bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:13:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:15:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:15:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:15:48 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:16:13 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:16:13 GMT
ENV OWNCLOUD_VERSION=8.2.8
# Sat, 22 Oct 2016 07:16:14 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:16:27 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:16:28 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:16:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:16:29 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f4a29766039aaaf9dc7fa0709699b0834fe0dc247d2cca3a77fb2e252eadc`  
		Last Modified: Sat, 22 Oct 2016 07:16:52 GMT  
		Size: 34.3 MB (34331907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade5e0ddc77cbbc3b273352ac0252c292d8f606a8b3d7cb69ca1d89abad04a6`  
		Last Modified: Sat, 22 Oct 2016 07:16:43 GMT  
		Size: 3.7 MB (3742930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4491c97404a1b01f48deef5eca9b82e1f7d35f745cef1c7442df07b0ec19469e`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de26be8b7e43a7f4d16685b7f5288b48543f6dff7f723ad150ba26fcbdafe50a`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d8fdfd9eb87b7202760b8f1341b205af54ce8bb4b1c0e71c792b003a12d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 1.3 MB (1330747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d64e1986e250e84b7140c0b82a5ac684bde291e934214c5d7b1af0c8f1830db`  
		Last Modified: Sat, 22 Oct 2016 07:16:51 GMT  
		Size: 30.2 MB (30220804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b940930f1c76a9b5c9188a3213a2a2699719207c268f5647386e183d612d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.2.8`

```console
$ docker pull owncloud@sha256:d1aef437dffbf0c2cf45cd17bde3caa6392579e2104c2aca6a51f68dac950f2a
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.2.8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229911661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96071be91d041fffdbcf3f29037d743d9bbf1076b3dbb718ee593509241cf0bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:13:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:15:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:15:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:15:48 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:16:13 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:16:13 GMT
ENV OWNCLOUD_VERSION=8.2.8
# Sat, 22 Oct 2016 07:16:14 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:16:27 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:16:28 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:16:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:16:29 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f4a29766039aaaf9dc7fa0709699b0834fe0dc247d2cca3a77fb2e252eadc`  
		Last Modified: Sat, 22 Oct 2016 07:16:52 GMT  
		Size: 34.3 MB (34331907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade5e0ddc77cbbc3b273352ac0252c292d8f606a8b3d7cb69ca1d89abad04a6`  
		Last Modified: Sat, 22 Oct 2016 07:16:43 GMT  
		Size: 3.7 MB (3742930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4491c97404a1b01f48deef5eca9b82e1f7d35f745cef1c7442df07b0ec19469e`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de26be8b7e43a7f4d16685b7f5288b48543f6dff7f723ad150ba26fcbdafe50a`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d8fdfd9eb87b7202760b8f1341b205af54ce8bb4b1c0e71c792b003a12d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 1.3 MB (1330747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d64e1986e250e84b7140c0b82a5ac684bde291e934214c5d7b1af0c8f1830db`  
		Last Modified: Sat, 22 Oct 2016 07:16:51 GMT  
		Size: 30.2 MB (30220804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b940930f1c76a9b5c9188a3213a2a2699719207c268f5647386e183d612d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.2`

```console
$ docker pull owncloud@sha256:d1aef437dffbf0c2cf45cd17bde3caa6392579e2104c2aca6a51f68dac950f2a
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229911661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96071be91d041fffdbcf3f29037d743d9bbf1076b3dbb718ee593509241cf0bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:13:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:15:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:15:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:15:48 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:16:13 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:16:13 GMT
ENV OWNCLOUD_VERSION=8.2.8
# Sat, 22 Oct 2016 07:16:14 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:16:27 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:16:28 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:16:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:16:29 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f4a29766039aaaf9dc7fa0709699b0834fe0dc247d2cca3a77fb2e252eadc`  
		Last Modified: Sat, 22 Oct 2016 07:16:52 GMT  
		Size: 34.3 MB (34331907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade5e0ddc77cbbc3b273352ac0252c292d8f606a8b3d7cb69ca1d89abad04a6`  
		Last Modified: Sat, 22 Oct 2016 07:16:43 GMT  
		Size: 3.7 MB (3742930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4491c97404a1b01f48deef5eca9b82e1f7d35f745cef1c7442df07b0ec19469e`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de26be8b7e43a7f4d16685b7f5288b48543f6dff7f723ad150ba26fcbdafe50a`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d8fdfd9eb87b7202760b8f1341b205af54ce8bb4b1c0e71c792b003a12d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 1.3 MB (1330747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d64e1986e250e84b7140c0b82a5ac684bde291e934214c5d7b1af0c8f1830db`  
		Last Modified: Sat, 22 Oct 2016 07:16:51 GMT  
		Size: 30.2 MB (30220804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b940930f1c76a9b5c9188a3213a2a2699719207c268f5647386e183d612d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8`

```console
$ docker pull owncloud@sha256:d1aef437dffbf0c2cf45cd17bde3caa6392579e2104c2aca6a51f68dac950f2a
```

-	Platforms:
	-	linux; amd64

### `owncloud:8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229911661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96071be91d041fffdbcf3f29037d743d9bbf1076b3dbb718ee593509241cf0bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:13:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:15:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:15:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:15:48 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:16:13 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:16:13 GMT
ENV OWNCLOUD_VERSION=8.2.8
# Sat, 22 Oct 2016 07:16:14 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:16:27 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:16:28 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:16:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:16:29 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f4a29766039aaaf9dc7fa0709699b0834fe0dc247d2cca3a77fb2e252eadc`  
		Last Modified: Sat, 22 Oct 2016 07:16:52 GMT  
		Size: 34.3 MB (34331907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade5e0ddc77cbbc3b273352ac0252c292d8f606a8b3d7cb69ca1d89abad04a6`  
		Last Modified: Sat, 22 Oct 2016 07:16:43 GMT  
		Size: 3.7 MB (3742930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4491c97404a1b01f48deef5eca9b82e1f7d35f745cef1c7442df07b0ec19469e`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de26be8b7e43a7f4d16685b7f5288b48543f6dff7f723ad150ba26fcbdafe50a`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d8fdfd9eb87b7202760b8f1341b205af54ce8bb4b1c0e71c792b003a12d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 1.3 MB (1330747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d64e1986e250e84b7140c0b82a5ac684bde291e934214c5d7b1af0c8f1830db`  
		Last Modified: Sat, 22 Oct 2016 07:16:51 GMT  
		Size: 30.2 MB (30220804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b940930f1c76a9b5c9188a3213a2a2699719207c268f5647386e183d612d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.2.8-fpm`

```console
$ docker pull owncloud@sha256:9cca2031338774691c99e78f64d8583f13929601b9458b1a437198f1eb9457a0
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.2.8-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.0 MB (219950353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ea677f8757ecd6d7cb8282b0c598c6558366971ee62febc6a9fc87867ac29fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:10:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 21 Oct 2016 23:10:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:10:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:10:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:13:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:14:00 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:14:00 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:14:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Oct 2016 23:14:02 GMT
EXPOSE 9000/tcp
# Fri, 21 Oct 2016 23:14:02 GMT
CMD ["php-fpm"]
# Sat, 22 Oct 2016 07:18:15 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:20:02 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:20:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:20:29 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:20:29 GMT
ENV OWNCLOUD_VERSION=8.2.8
# Sat, 22 Oct 2016 07:20:29 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:20:44 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:20:45 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:20:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:20:46 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa40caf97a527ab5b58f26d26b407b55f4fae6798e1d7f89267747d74195f1b`  
		Last Modified: Fri, 21 Oct 2016 23:14:18 GMT  
		Size: 12.5 MB (12549527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064a3d3e9245dbe11fb127133ebdf3e7feb188948093feb6b1597ff1c1c2ed23`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8cd631ee525e5d7ae7dea910aa38eb0270991abc1dc5ca199d17a824383e47`  
		Last Modified: Fri, 21 Oct 2016 23:14:14 GMT  
		Size: 8.8 MB (8841952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3181f198b31f771fb106ad398e5e61380a7122b7f48ad2949ce0937eae2ff49b`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f4db8284a3c17605cf8a4b33cf8cfb43ce5e4d78c1104fea88e88b47f704af`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca292aae86f240632732ffde349c152c947ea665d31b37c80a2689a8858e394`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40083b945798329a66df3b67b2a7bf1c9dff38d58f173610cd27093313c3dc7`  
		Last Modified: Sat, 22 Oct 2016 07:21:08 GMT  
		Size: 34.3 MB (34309173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1effd34919d4300b45a7b7a4f32e358f43ce4c898bee542df608d4eaecffc6ae`  
		Last Modified: Sat, 22 Oct 2016 07:20:57 GMT  
		Size: 3.7 MB (3743106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e64f904d47b69422ab5aa4ead17a44703e480612756d137f728c91b4a26bbb`  
		Last Modified: Sat, 22 Oct 2016 07:20:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07e5fe26a64d4192bc3acac86040adcad450020178fe1f2d0a86b8b5f5f4653`  
		Last Modified: Sat, 22 Oct 2016 07:20:57 GMT  
		Size: 1.3 MB (1330674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d82635cd84077dd29750ce2872e2971a5a1bb569bbfcc4b910823bfcf97a7d`  
		Last Modified: Sat, 22 Oct 2016 07:21:04 GMT  
		Size: 30.2 MB (30220838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c161b97a79281b2f1f197f9b8f78fa0956099d4aa2096c9cb5ebd9df29abe8`  
		Last Modified: Sat, 22 Oct 2016 07:20:56 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.2-fpm`

```console
$ docker pull owncloud@sha256:9cca2031338774691c99e78f64d8583f13929601b9458b1a437198f1eb9457a0
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.2-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.0 MB (219950353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ea677f8757ecd6d7cb8282b0c598c6558366971ee62febc6a9fc87867ac29fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:10:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 21 Oct 2016 23:10:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:10:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:10:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:13:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:14:00 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:14:00 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:14:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Oct 2016 23:14:02 GMT
EXPOSE 9000/tcp
# Fri, 21 Oct 2016 23:14:02 GMT
CMD ["php-fpm"]
# Sat, 22 Oct 2016 07:18:15 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:20:02 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:20:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:20:29 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:20:29 GMT
ENV OWNCLOUD_VERSION=8.2.8
# Sat, 22 Oct 2016 07:20:29 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:20:44 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:20:45 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:20:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:20:46 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa40caf97a527ab5b58f26d26b407b55f4fae6798e1d7f89267747d74195f1b`  
		Last Modified: Fri, 21 Oct 2016 23:14:18 GMT  
		Size: 12.5 MB (12549527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064a3d3e9245dbe11fb127133ebdf3e7feb188948093feb6b1597ff1c1c2ed23`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8cd631ee525e5d7ae7dea910aa38eb0270991abc1dc5ca199d17a824383e47`  
		Last Modified: Fri, 21 Oct 2016 23:14:14 GMT  
		Size: 8.8 MB (8841952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3181f198b31f771fb106ad398e5e61380a7122b7f48ad2949ce0937eae2ff49b`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f4db8284a3c17605cf8a4b33cf8cfb43ce5e4d78c1104fea88e88b47f704af`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca292aae86f240632732ffde349c152c947ea665d31b37c80a2689a8858e394`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40083b945798329a66df3b67b2a7bf1c9dff38d58f173610cd27093313c3dc7`  
		Last Modified: Sat, 22 Oct 2016 07:21:08 GMT  
		Size: 34.3 MB (34309173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1effd34919d4300b45a7b7a4f32e358f43ce4c898bee542df608d4eaecffc6ae`  
		Last Modified: Sat, 22 Oct 2016 07:20:57 GMT  
		Size: 3.7 MB (3743106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e64f904d47b69422ab5aa4ead17a44703e480612756d137f728c91b4a26bbb`  
		Last Modified: Sat, 22 Oct 2016 07:20:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07e5fe26a64d4192bc3acac86040adcad450020178fe1f2d0a86b8b5f5f4653`  
		Last Modified: Sat, 22 Oct 2016 07:20:57 GMT  
		Size: 1.3 MB (1330674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d82635cd84077dd29750ce2872e2971a5a1bb569bbfcc4b910823bfcf97a7d`  
		Last Modified: Sat, 22 Oct 2016 07:21:04 GMT  
		Size: 30.2 MB (30220838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c161b97a79281b2f1f197f9b8f78fa0956099d4aa2096c9cb5ebd9df29abe8`  
		Last Modified: Sat, 22 Oct 2016 07:20:56 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8-fpm`

```console
$ docker pull owncloud@sha256:9cca2031338774691c99e78f64d8583f13929601b9458b1a437198f1eb9457a0
```

-	Platforms:
	-	linux; amd64

### `owncloud:8-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.0 MB (219950353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ea677f8757ecd6d7cb8282b0c598c6558366971ee62febc6a9fc87867ac29fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:10:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 21 Oct 2016 23:10:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:10:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:10:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:13:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:14:00 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:14:00 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:14:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Oct 2016 23:14:02 GMT
EXPOSE 9000/tcp
# Fri, 21 Oct 2016 23:14:02 GMT
CMD ["php-fpm"]
# Sat, 22 Oct 2016 07:18:15 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:20:02 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:20:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:20:29 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:20:29 GMT
ENV OWNCLOUD_VERSION=8.2.8
# Sat, 22 Oct 2016 07:20:29 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:20:44 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:20:45 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:20:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:20:46 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa40caf97a527ab5b58f26d26b407b55f4fae6798e1d7f89267747d74195f1b`  
		Last Modified: Fri, 21 Oct 2016 23:14:18 GMT  
		Size: 12.5 MB (12549527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064a3d3e9245dbe11fb127133ebdf3e7feb188948093feb6b1597ff1c1c2ed23`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8cd631ee525e5d7ae7dea910aa38eb0270991abc1dc5ca199d17a824383e47`  
		Last Modified: Fri, 21 Oct 2016 23:14:14 GMT  
		Size: 8.8 MB (8841952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3181f198b31f771fb106ad398e5e61380a7122b7f48ad2949ce0937eae2ff49b`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f4db8284a3c17605cf8a4b33cf8cfb43ce5e4d78c1104fea88e88b47f704af`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca292aae86f240632732ffde349c152c947ea665d31b37c80a2689a8858e394`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40083b945798329a66df3b67b2a7bf1c9dff38d58f173610cd27093313c3dc7`  
		Last Modified: Sat, 22 Oct 2016 07:21:08 GMT  
		Size: 34.3 MB (34309173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1effd34919d4300b45a7b7a4f32e358f43ce4c898bee542df608d4eaecffc6ae`  
		Last Modified: Sat, 22 Oct 2016 07:20:57 GMT  
		Size: 3.7 MB (3743106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e64f904d47b69422ab5aa4ead17a44703e480612756d137f728c91b4a26bbb`  
		Last Modified: Sat, 22 Oct 2016 07:20:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07e5fe26a64d4192bc3acac86040adcad450020178fe1f2d0a86b8b5f5f4653`  
		Last Modified: Sat, 22 Oct 2016 07:20:57 GMT  
		Size: 1.3 MB (1330674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d82635cd84077dd29750ce2872e2971a5a1bb569bbfcc4b910823bfcf97a7d`  
		Last Modified: Sat, 22 Oct 2016 07:21:04 GMT  
		Size: 30.2 MB (30220838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c161b97a79281b2f1f197f9b8f78fa0956099d4aa2096c9cb5ebd9df29abe8`  
		Last Modified: Sat, 22 Oct 2016 07:20:56 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9.0.5-apache`

```console
$ docker pull owncloud@sha256:8dd1ad886eb52870070a42b9b35e8e8ea07b963d380638344e9e907b12b8bff3
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.0.5-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.7 MB (230712635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebef8fe2b32a98eaf9edaa26229ce2a2e7f81dd938a956cf81f0ca31c10eba5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:13:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:15:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:15:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:15:48 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:16:13 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:34:25 GMT
ENV OWNCLOUD_VERSION=9.0.5
# Sat, 22 Oct 2016 07:34:25 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:34:56 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:34:57 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:34:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:34:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f4a29766039aaaf9dc7fa0709699b0834fe0dc247d2cca3a77fb2e252eadc`  
		Last Modified: Sat, 22 Oct 2016 07:16:52 GMT  
		Size: 34.3 MB (34331907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade5e0ddc77cbbc3b273352ac0252c292d8f606a8b3d7cb69ca1d89abad04a6`  
		Last Modified: Sat, 22 Oct 2016 07:16:43 GMT  
		Size: 3.7 MB (3742930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4491c97404a1b01f48deef5eca9b82e1f7d35f745cef1c7442df07b0ec19469e`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de26be8b7e43a7f4d16685b7f5288b48543f6dff7f723ad150ba26fcbdafe50a`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d8fdfd9eb87b7202760b8f1341b205af54ce8bb4b1c0e71c792b003a12d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 1.3 MB (1330747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0393b84fe62a93d0759caff7fbe275506d37848dc28619c6bc3509b2566ab063`  
		Last Modified: Sat, 22 Oct 2016 07:35:18 GMT  
		Size: 31.0 MB (31021779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ca78ed1c8cd02ec36cd3c2485b7d9ea46edd30b3104a34c0263e3ed890d91a`  
		Last Modified: Sat, 22 Oct 2016 07:35:08 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9.0-apache`

```console
$ docker pull owncloud@sha256:8dd1ad886eb52870070a42b9b35e8e8ea07b963d380638344e9e907b12b8bff3
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.0-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.7 MB (230712635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebef8fe2b32a98eaf9edaa26229ce2a2e7f81dd938a956cf81f0ca31c10eba5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:13:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:15:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:15:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:15:48 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:16:13 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:34:25 GMT
ENV OWNCLOUD_VERSION=9.0.5
# Sat, 22 Oct 2016 07:34:25 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:34:56 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:34:57 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:34:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:34:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f4a29766039aaaf9dc7fa0709699b0834fe0dc247d2cca3a77fb2e252eadc`  
		Last Modified: Sat, 22 Oct 2016 07:16:52 GMT  
		Size: 34.3 MB (34331907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade5e0ddc77cbbc3b273352ac0252c292d8f606a8b3d7cb69ca1d89abad04a6`  
		Last Modified: Sat, 22 Oct 2016 07:16:43 GMT  
		Size: 3.7 MB (3742930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4491c97404a1b01f48deef5eca9b82e1f7d35f745cef1c7442df07b0ec19469e`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de26be8b7e43a7f4d16685b7f5288b48543f6dff7f723ad150ba26fcbdafe50a`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d8fdfd9eb87b7202760b8f1341b205af54ce8bb4b1c0e71c792b003a12d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 1.3 MB (1330747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0393b84fe62a93d0759caff7fbe275506d37848dc28619c6bc3509b2566ab063`  
		Last Modified: Sat, 22 Oct 2016 07:35:18 GMT  
		Size: 31.0 MB (31021779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ca78ed1c8cd02ec36cd3c2485b7d9ea46edd30b3104a34c0263e3ed890d91a`  
		Last Modified: Sat, 22 Oct 2016 07:35:08 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9.0.5`

```console
$ docker pull owncloud@sha256:8dd1ad886eb52870070a42b9b35e8e8ea07b963d380638344e9e907b12b8bff3
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.0.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.7 MB (230712635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebef8fe2b32a98eaf9edaa26229ce2a2e7f81dd938a956cf81f0ca31c10eba5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:13:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:15:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:15:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:15:48 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:16:13 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:34:25 GMT
ENV OWNCLOUD_VERSION=9.0.5
# Sat, 22 Oct 2016 07:34:25 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:34:56 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:34:57 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:34:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:34:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f4a29766039aaaf9dc7fa0709699b0834fe0dc247d2cca3a77fb2e252eadc`  
		Last Modified: Sat, 22 Oct 2016 07:16:52 GMT  
		Size: 34.3 MB (34331907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade5e0ddc77cbbc3b273352ac0252c292d8f606a8b3d7cb69ca1d89abad04a6`  
		Last Modified: Sat, 22 Oct 2016 07:16:43 GMT  
		Size: 3.7 MB (3742930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4491c97404a1b01f48deef5eca9b82e1f7d35f745cef1c7442df07b0ec19469e`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de26be8b7e43a7f4d16685b7f5288b48543f6dff7f723ad150ba26fcbdafe50a`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d8fdfd9eb87b7202760b8f1341b205af54ce8bb4b1c0e71c792b003a12d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 1.3 MB (1330747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0393b84fe62a93d0759caff7fbe275506d37848dc28619c6bc3509b2566ab063`  
		Last Modified: Sat, 22 Oct 2016 07:35:18 GMT  
		Size: 31.0 MB (31021779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ca78ed1c8cd02ec36cd3c2485b7d9ea46edd30b3104a34c0263e3ed890d91a`  
		Last Modified: Sat, 22 Oct 2016 07:35:08 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9.0`

```console
$ docker pull owncloud@sha256:8dd1ad886eb52870070a42b9b35e8e8ea07b963d380638344e9e907b12b8bff3
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.7 MB (230712635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebef8fe2b32a98eaf9edaa26229ce2a2e7f81dd938a956cf81f0ca31c10eba5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:13:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:15:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:15:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:15:48 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:16:13 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:34:25 GMT
ENV OWNCLOUD_VERSION=9.0.5
# Sat, 22 Oct 2016 07:34:25 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:34:56 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:34:57 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:34:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:34:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f4a29766039aaaf9dc7fa0709699b0834fe0dc247d2cca3a77fb2e252eadc`  
		Last Modified: Sat, 22 Oct 2016 07:16:52 GMT  
		Size: 34.3 MB (34331907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade5e0ddc77cbbc3b273352ac0252c292d8f606a8b3d7cb69ca1d89abad04a6`  
		Last Modified: Sat, 22 Oct 2016 07:16:43 GMT  
		Size: 3.7 MB (3742930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4491c97404a1b01f48deef5eca9b82e1f7d35f745cef1c7442df07b0ec19469e`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de26be8b7e43a7f4d16685b7f5288b48543f6dff7f723ad150ba26fcbdafe50a`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d8fdfd9eb87b7202760b8f1341b205af54ce8bb4b1c0e71c792b003a12d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 1.3 MB (1330747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0393b84fe62a93d0759caff7fbe275506d37848dc28619c6bc3509b2566ab063`  
		Last Modified: Sat, 22 Oct 2016 07:35:18 GMT  
		Size: 31.0 MB (31021779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ca78ed1c8cd02ec36cd3c2485b7d9ea46edd30b3104a34c0263e3ed890d91a`  
		Last Modified: Sat, 22 Oct 2016 07:35:08 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9.0.5-fpm`

```console
$ docker pull owncloud@sha256:1d5d74368920781f540841f98cf4f7e74e227d93a969def9a911250a9b683624
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.0.5-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.8 MB (220751313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7ac6c97270cb87bc45ab78dfc053f47eb0653de6e646e7b4b24c9ea42f2fb3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:10:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 21 Oct 2016 23:10:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:10:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:10:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:13:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:14:00 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:14:00 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:14:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Oct 2016 23:14:02 GMT
EXPOSE 9000/tcp
# Fri, 21 Oct 2016 23:14:02 GMT
CMD ["php-fpm"]
# Sat, 22 Oct 2016 07:18:15 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:20:02 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:20:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:20:29 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:36:04 GMT
ENV OWNCLOUD_VERSION=9.0.5
# Sat, 22 Oct 2016 07:36:04 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:37:17 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:37:18 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:37:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:37:19 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa40caf97a527ab5b58f26d26b407b55f4fae6798e1d7f89267747d74195f1b`  
		Last Modified: Fri, 21 Oct 2016 23:14:18 GMT  
		Size: 12.5 MB (12549527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064a3d3e9245dbe11fb127133ebdf3e7feb188948093feb6b1597ff1c1c2ed23`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8cd631ee525e5d7ae7dea910aa38eb0270991abc1dc5ca199d17a824383e47`  
		Last Modified: Fri, 21 Oct 2016 23:14:14 GMT  
		Size: 8.8 MB (8841952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3181f198b31f771fb106ad398e5e61380a7122b7f48ad2949ce0937eae2ff49b`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f4db8284a3c17605cf8a4b33cf8cfb43ce5e4d78c1104fea88e88b47f704af`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca292aae86f240632732ffde349c152c947ea665d31b37c80a2689a8858e394`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40083b945798329a66df3b67b2a7bf1c9dff38d58f173610cd27093313c3dc7`  
		Last Modified: Sat, 22 Oct 2016 07:21:08 GMT  
		Size: 34.3 MB (34309173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1effd34919d4300b45a7b7a4f32e358f43ce4c898bee542df608d4eaecffc6ae`  
		Last Modified: Sat, 22 Oct 2016 07:20:57 GMT  
		Size: 3.7 MB (3743106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e64f904d47b69422ab5aa4ead17a44703e480612756d137f728c91b4a26bbb`  
		Last Modified: Sat, 22 Oct 2016 07:20:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07e5fe26a64d4192bc3acac86040adcad450020178fe1f2d0a86b8b5f5f4653`  
		Last Modified: Sat, 22 Oct 2016 07:20:57 GMT  
		Size: 1.3 MB (1330674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c20bb5c7ed6fb35008cbd78a9cc6fc5fd99358c776842a404b86cc91128881a`  
		Last Modified: Sat, 22 Oct 2016 07:37:39 GMT  
		Size: 31.0 MB (31021799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971c2aa5a5abc277a4fc27e311e995bf1824f124d741c533009f03077dc8a78e`  
		Last Modified: Sat, 22 Oct 2016 07:37:29 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9.0-fpm`

```console
$ docker pull owncloud@sha256:1d5d74368920781f540841f98cf4f7e74e227d93a969def9a911250a9b683624
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.0-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.8 MB (220751313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7ac6c97270cb87bc45ab78dfc053f47eb0653de6e646e7b4b24c9ea42f2fb3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:10:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 21 Oct 2016 23:10:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:10:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:10:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:13:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:14:00 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:14:00 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:14:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Oct 2016 23:14:02 GMT
EXPOSE 9000/tcp
# Fri, 21 Oct 2016 23:14:02 GMT
CMD ["php-fpm"]
# Sat, 22 Oct 2016 07:18:15 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:20:02 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:20:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:20:29 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:36:04 GMT
ENV OWNCLOUD_VERSION=9.0.5
# Sat, 22 Oct 2016 07:36:04 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:37:17 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:37:18 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:37:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:37:19 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa40caf97a527ab5b58f26d26b407b55f4fae6798e1d7f89267747d74195f1b`  
		Last Modified: Fri, 21 Oct 2016 23:14:18 GMT  
		Size: 12.5 MB (12549527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064a3d3e9245dbe11fb127133ebdf3e7feb188948093feb6b1597ff1c1c2ed23`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8cd631ee525e5d7ae7dea910aa38eb0270991abc1dc5ca199d17a824383e47`  
		Last Modified: Fri, 21 Oct 2016 23:14:14 GMT  
		Size: 8.8 MB (8841952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3181f198b31f771fb106ad398e5e61380a7122b7f48ad2949ce0937eae2ff49b`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f4db8284a3c17605cf8a4b33cf8cfb43ce5e4d78c1104fea88e88b47f704af`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca292aae86f240632732ffde349c152c947ea665d31b37c80a2689a8858e394`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40083b945798329a66df3b67b2a7bf1c9dff38d58f173610cd27093313c3dc7`  
		Last Modified: Sat, 22 Oct 2016 07:21:08 GMT  
		Size: 34.3 MB (34309173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1effd34919d4300b45a7b7a4f32e358f43ce4c898bee542df608d4eaecffc6ae`  
		Last Modified: Sat, 22 Oct 2016 07:20:57 GMT  
		Size: 3.7 MB (3743106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e64f904d47b69422ab5aa4ead17a44703e480612756d137f728c91b4a26bbb`  
		Last Modified: Sat, 22 Oct 2016 07:20:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07e5fe26a64d4192bc3acac86040adcad450020178fe1f2d0a86b8b5f5f4653`  
		Last Modified: Sat, 22 Oct 2016 07:20:57 GMT  
		Size: 1.3 MB (1330674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c20bb5c7ed6fb35008cbd78a9cc6fc5fd99358c776842a404b86cc91128881a`  
		Last Modified: Sat, 22 Oct 2016 07:37:39 GMT  
		Size: 31.0 MB (31021799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971c2aa5a5abc277a4fc27e311e995bf1824f124d741c533009f03077dc8a78e`  
		Last Modified: Sat, 22 Oct 2016 07:37:29 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9.1.1-apache`

```console
$ docker pull owncloud@sha256:bfc12b209a1d2a16b035f0847587a70dc846776e904077a78ebc111d67ef62e1
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.1.1-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231395705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59127cd32146485373f9cd04147399b46b440abff7077a3b6a63dab1639ea49d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:13:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:15:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:15:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:15:48 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:16:13 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:30:41 GMT
ENV OWNCLOUD_VERSION=9.1.1
# Sat, 22 Oct 2016 07:30:41 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:30:55 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:30:57 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:30:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:30:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f4a29766039aaaf9dc7fa0709699b0834fe0dc247d2cca3a77fb2e252eadc`  
		Last Modified: Sat, 22 Oct 2016 07:16:52 GMT  
		Size: 34.3 MB (34331907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade5e0ddc77cbbc3b273352ac0252c292d8f606a8b3d7cb69ca1d89abad04a6`  
		Last Modified: Sat, 22 Oct 2016 07:16:43 GMT  
		Size: 3.7 MB (3742930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4491c97404a1b01f48deef5eca9b82e1f7d35f745cef1c7442df07b0ec19469e`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de26be8b7e43a7f4d16685b7f5288b48543f6dff7f723ad150ba26fcbdafe50a`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d8fdfd9eb87b7202760b8f1341b205af54ce8bb4b1c0e71c792b003a12d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 1.3 MB (1330747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5b66bae712abebb1a5155b9073cced3fb433d527d7ae94e7932fea81f83cec`  
		Last Modified: Sat, 22 Oct 2016 07:31:17 GMT  
		Size: 31.7 MB (31704848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3cadfa25120b5c756044eea615424b85eaba4c80e6f3713015003cd837de46d`  
		Last Modified: Sat, 22 Oct 2016 07:31:08 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9.1-apache`

```console
$ docker pull owncloud@sha256:bfc12b209a1d2a16b035f0847587a70dc846776e904077a78ebc111d67ef62e1
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.1-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231395705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59127cd32146485373f9cd04147399b46b440abff7077a3b6a63dab1639ea49d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:13:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:15:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:15:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:15:48 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:16:13 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:30:41 GMT
ENV OWNCLOUD_VERSION=9.1.1
# Sat, 22 Oct 2016 07:30:41 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:30:55 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:30:57 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:30:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:30:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f4a29766039aaaf9dc7fa0709699b0834fe0dc247d2cca3a77fb2e252eadc`  
		Last Modified: Sat, 22 Oct 2016 07:16:52 GMT  
		Size: 34.3 MB (34331907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade5e0ddc77cbbc3b273352ac0252c292d8f606a8b3d7cb69ca1d89abad04a6`  
		Last Modified: Sat, 22 Oct 2016 07:16:43 GMT  
		Size: 3.7 MB (3742930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4491c97404a1b01f48deef5eca9b82e1f7d35f745cef1c7442df07b0ec19469e`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de26be8b7e43a7f4d16685b7f5288b48543f6dff7f723ad150ba26fcbdafe50a`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d8fdfd9eb87b7202760b8f1341b205af54ce8bb4b1c0e71c792b003a12d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 1.3 MB (1330747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5b66bae712abebb1a5155b9073cced3fb433d527d7ae94e7932fea81f83cec`  
		Last Modified: Sat, 22 Oct 2016 07:31:17 GMT  
		Size: 31.7 MB (31704848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3cadfa25120b5c756044eea615424b85eaba4c80e6f3713015003cd837de46d`  
		Last Modified: Sat, 22 Oct 2016 07:31:08 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9-apache`

```console
$ docker pull owncloud@sha256:bfc12b209a1d2a16b035f0847587a70dc846776e904077a78ebc111d67ef62e1
```

-	Platforms:
	-	linux; amd64

### `owncloud:9-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231395705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59127cd32146485373f9cd04147399b46b440abff7077a3b6a63dab1639ea49d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:13:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:15:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:15:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:15:48 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:16:13 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:30:41 GMT
ENV OWNCLOUD_VERSION=9.1.1
# Sat, 22 Oct 2016 07:30:41 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:30:55 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:30:57 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:30:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:30:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f4a29766039aaaf9dc7fa0709699b0834fe0dc247d2cca3a77fb2e252eadc`  
		Last Modified: Sat, 22 Oct 2016 07:16:52 GMT  
		Size: 34.3 MB (34331907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade5e0ddc77cbbc3b273352ac0252c292d8f606a8b3d7cb69ca1d89abad04a6`  
		Last Modified: Sat, 22 Oct 2016 07:16:43 GMT  
		Size: 3.7 MB (3742930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4491c97404a1b01f48deef5eca9b82e1f7d35f745cef1c7442df07b0ec19469e`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de26be8b7e43a7f4d16685b7f5288b48543f6dff7f723ad150ba26fcbdafe50a`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d8fdfd9eb87b7202760b8f1341b205af54ce8bb4b1c0e71c792b003a12d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 1.3 MB (1330747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5b66bae712abebb1a5155b9073cced3fb433d527d7ae94e7932fea81f83cec`  
		Last Modified: Sat, 22 Oct 2016 07:31:17 GMT  
		Size: 31.7 MB (31704848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3cadfa25120b5c756044eea615424b85eaba4c80e6f3713015003cd837de46d`  
		Last Modified: Sat, 22 Oct 2016 07:31:08 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:apache`

```console
$ docker pull owncloud@sha256:bfc12b209a1d2a16b035f0847587a70dc846776e904077a78ebc111d67ef62e1
```

-	Platforms:
	-	linux; amd64

### `owncloud:apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231395705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59127cd32146485373f9cd04147399b46b440abff7077a3b6a63dab1639ea49d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:13:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:15:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:15:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:15:48 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:16:13 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:30:41 GMT
ENV OWNCLOUD_VERSION=9.1.1
# Sat, 22 Oct 2016 07:30:41 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:30:55 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:30:57 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:30:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:30:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f4a29766039aaaf9dc7fa0709699b0834fe0dc247d2cca3a77fb2e252eadc`  
		Last Modified: Sat, 22 Oct 2016 07:16:52 GMT  
		Size: 34.3 MB (34331907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade5e0ddc77cbbc3b273352ac0252c292d8f606a8b3d7cb69ca1d89abad04a6`  
		Last Modified: Sat, 22 Oct 2016 07:16:43 GMT  
		Size: 3.7 MB (3742930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4491c97404a1b01f48deef5eca9b82e1f7d35f745cef1c7442df07b0ec19469e`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de26be8b7e43a7f4d16685b7f5288b48543f6dff7f723ad150ba26fcbdafe50a`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d8fdfd9eb87b7202760b8f1341b205af54ce8bb4b1c0e71c792b003a12d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 1.3 MB (1330747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5b66bae712abebb1a5155b9073cced3fb433d527d7ae94e7932fea81f83cec`  
		Last Modified: Sat, 22 Oct 2016 07:31:17 GMT  
		Size: 31.7 MB (31704848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3cadfa25120b5c756044eea615424b85eaba4c80e6f3713015003cd837de46d`  
		Last Modified: Sat, 22 Oct 2016 07:31:08 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9.1.1`

```console
$ docker pull owncloud@sha256:bfc12b209a1d2a16b035f0847587a70dc846776e904077a78ebc111d67ef62e1
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.1.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231395705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59127cd32146485373f9cd04147399b46b440abff7077a3b6a63dab1639ea49d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:13:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:15:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:15:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:15:48 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:16:13 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:30:41 GMT
ENV OWNCLOUD_VERSION=9.1.1
# Sat, 22 Oct 2016 07:30:41 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:30:55 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:30:57 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:30:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:30:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f4a29766039aaaf9dc7fa0709699b0834fe0dc247d2cca3a77fb2e252eadc`  
		Last Modified: Sat, 22 Oct 2016 07:16:52 GMT  
		Size: 34.3 MB (34331907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade5e0ddc77cbbc3b273352ac0252c292d8f606a8b3d7cb69ca1d89abad04a6`  
		Last Modified: Sat, 22 Oct 2016 07:16:43 GMT  
		Size: 3.7 MB (3742930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4491c97404a1b01f48deef5eca9b82e1f7d35f745cef1c7442df07b0ec19469e`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de26be8b7e43a7f4d16685b7f5288b48543f6dff7f723ad150ba26fcbdafe50a`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d8fdfd9eb87b7202760b8f1341b205af54ce8bb4b1c0e71c792b003a12d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 1.3 MB (1330747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5b66bae712abebb1a5155b9073cced3fb433d527d7ae94e7932fea81f83cec`  
		Last Modified: Sat, 22 Oct 2016 07:31:17 GMT  
		Size: 31.7 MB (31704848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3cadfa25120b5c756044eea615424b85eaba4c80e6f3713015003cd837de46d`  
		Last Modified: Sat, 22 Oct 2016 07:31:08 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9.1`

```console
$ docker pull owncloud@sha256:bfc12b209a1d2a16b035f0847587a70dc846776e904077a78ebc111d67ef62e1
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231395705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59127cd32146485373f9cd04147399b46b440abff7077a3b6a63dab1639ea49d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:13:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:15:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:15:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:15:48 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:16:13 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:30:41 GMT
ENV OWNCLOUD_VERSION=9.1.1
# Sat, 22 Oct 2016 07:30:41 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:30:55 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:30:57 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:30:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:30:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f4a29766039aaaf9dc7fa0709699b0834fe0dc247d2cca3a77fb2e252eadc`  
		Last Modified: Sat, 22 Oct 2016 07:16:52 GMT  
		Size: 34.3 MB (34331907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade5e0ddc77cbbc3b273352ac0252c292d8f606a8b3d7cb69ca1d89abad04a6`  
		Last Modified: Sat, 22 Oct 2016 07:16:43 GMT  
		Size: 3.7 MB (3742930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4491c97404a1b01f48deef5eca9b82e1f7d35f745cef1c7442df07b0ec19469e`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de26be8b7e43a7f4d16685b7f5288b48543f6dff7f723ad150ba26fcbdafe50a`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d8fdfd9eb87b7202760b8f1341b205af54ce8bb4b1c0e71c792b003a12d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 1.3 MB (1330747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5b66bae712abebb1a5155b9073cced3fb433d527d7ae94e7932fea81f83cec`  
		Last Modified: Sat, 22 Oct 2016 07:31:17 GMT  
		Size: 31.7 MB (31704848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3cadfa25120b5c756044eea615424b85eaba4c80e6f3713015003cd837de46d`  
		Last Modified: Sat, 22 Oct 2016 07:31:08 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9`

```console
$ docker pull owncloud@sha256:bfc12b209a1d2a16b035f0847587a70dc846776e904077a78ebc111d67ef62e1
```

-	Platforms:
	-	linux; amd64

### `owncloud:9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231395705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59127cd32146485373f9cd04147399b46b440abff7077a3b6a63dab1639ea49d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:13:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:15:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:15:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:15:48 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:16:13 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:30:41 GMT
ENV OWNCLOUD_VERSION=9.1.1
# Sat, 22 Oct 2016 07:30:41 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:30:55 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:30:57 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:30:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:30:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f4a29766039aaaf9dc7fa0709699b0834fe0dc247d2cca3a77fb2e252eadc`  
		Last Modified: Sat, 22 Oct 2016 07:16:52 GMT  
		Size: 34.3 MB (34331907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade5e0ddc77cbbc3b273352ac0252c292d8f606a8b3d7cb69ca1d89abad04a6`  
		Last Modified: Sat, 22 Oct 2016 07:16:43 GMT  
		Size: 3.7 MB (3742930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4491c97404a1b01f48deef5eca9b82e1f7d35f745cef1c7442df07b0ec19469e`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de26be8b7e43a7f4d16685b7f5288b48543f6dff7f723ad150ba26fcbdafe50a`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d8fdfd9eb87b7202760b8f1341b205af54ce8bb4b1c0e71c792b003a12d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 1.3 MB (1330747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5b66bae712abebb1a5155b9073cced3fb433d527d7ae94e7932fea81f83cec`  
		Last Modified: Sat, 22 Oct 2016 07:31:17 GMT  
		Size: 31.7 MB (31704848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3cadfa25120b5c756044eea615424b85eaba4c80e6f3713015003cd837de46d`  
		Last Modified: Sat, 22 Oct 2016 07:31:08 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:latest`

```console
$ docker pull owncloud@sha256:bfc12b209a1d2a16b035f0847587a70dc846776e904077a78ebc111d67ef62e1
```

-	Platforms:
	-	linux; amd64

### `owncloud:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231395705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59127cd32146485373f9cd04147399b46b440abff7077a3b6a63dab1639ea49d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 07:13:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:15:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:15:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:15:48 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 07:16:13 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:30:41 GMT
ENV OWNCLOUD_VERSION=9.1.1
# Sat, 22 Oct 2016 07:30:41 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:30:55 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:30:57 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:30:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:30:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f4a29766039aaaf9dc7fa0709699b0834fe0dc247d2cca3a77fb2e252eadc`  
		Last Modified: Sat, 22 Oct 2016 07:16:52 GMT  
		Size: 34.3 MB (34331907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade5e0ddc77cbbc3b273352ac0252c292d8f606a8b3d7cb69ca1d89abad04a6`  
		Last Modified: Sat, 22 Oct 2016 07:16:43 GMT  
		Size: 3.7 MB (3742930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4491c97404a1b01f48deef5eca9b82e1f7d35f745cef1c7442df07b0ec19469e`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de26be8b7e43a7f4d16685b7f5288b48543f6dff7f723ad150ba26fcbdafe50a`  
		Last Modified: Sat, 22 Oct 2016 07:16:39 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724d8fdfd9eb87b7202760b8f1341b205af54ce8bb4b1c0e71c792b003a12d2`  
		Last Modified: Sat, 22 Oct 2016 07:16:40 GMT  
		Size: 1.3 MB (1330747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5b66bae712abebb1a5155b9073cced3fb433d527d7ae94e7932fea81f83cec`  
		Last Modified: Sat, 22 Oct 2016 07:31:17 GMT  
		Size: 31.7 MB (31704848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3cadfa25120b5c756044eea615424b85eaba4c80e6f3713015003cd837de46d`  
		Last Modified: Sat, 22 Oct 2016 07:31:08 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9.1.1-fpm`

```console
$ docker pull owncloud@sha256:c1b8f21bd641845e1dfb285aa78116196609e48379f8e8cf40069421393068dd
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.1.1-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.4 MB (221434385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ef864e1b70dce4a4ef1756216ae90f7cde9e3796235f734d0fcffbb50b526e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:10:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 21 Oct 2016 23:10:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:10:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:10:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:13:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:14:00 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:14:00 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:14:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Oct 2016 23:14:02 GMT
EXPOSE 9000/tcp
# Fri, 21 Oct 2016 23:14:02 GMT
CMD ["php-fpm"]
# Sat, 22 Oct 2016 07:18:15 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:20:02 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:20:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:20:29 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:32:47 GMT
ENV OWNCLOUD_VERSION=9.1.1
# Sat, 22 Oct 2016 07:32:47 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:33:22 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:33:23 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:33:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:33:24 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa40caf97a527ab5b58f26d26b407b55f4fae6798e1d7f89267747d74195f1b`  
		Last Modified: Fri, 21 Oct 2016 23:14:18 GMT  
		Size: 12.5 MB (12549527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064a3d3e9245dbe11fb127133ebdf3e7feb188948093feb6b1597ff1c1c2ed23`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8cd631ee525e5d7ae7dea910aa38eb0270991abc1dc5ca199d17a824383e47`  
		Last Modified: Fri, 21 Oct 2016 23:14:14 GMT  
		Size: 8.8 MB (8841952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3181f198b31f771fb106ad398e5e61380a7122b7f48ad2949ce0937eae2ff49b`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f4db8284a3c17605cf8a4b33cf8cfb43ce5e4d78c1104fea88e88b47f704af`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca292aae86f240632732ffde349c152c947ea665d31b37c80a2689a8858e394`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40083b945798329a66df3b67b2a7bf1c9dff38d58f173610cd27093313c3dc7`  
		Last Modified: Sat, 22 Oct 2016 07:21:08 GMT  
		Size: 34.3 MB (34309173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1effd34919d4300b45a7b7a4f32e358f43ce4c898bee542df608d4eaecffc6ae`  
		Last Modified: Sat, 22 Oct 2016 07:20:57 GMT  
		Size: 3.7 MB (3743106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e64f904d47b69422ab5aa4ead17a44703e480612756d137f728c91b4a26bbb`  
		Last Modified: Sat, 22 Oct 2016 07:20:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07e5fe26a64d4192bc3acac86040adcad450020178fe1f2d0a86b8b5f5f4653`  
		Last Modified: Sat, 22 Oct 2016 07:20:57 GMT  
		Size: 1.3 MB (1330674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a302f0b7302c2075c6cb03b4c84bf15c893f2fd6812e754394363be9518c488b`  
		Last Modified: Sat, 22 Oct 2016 07:33:42 GMT  
		Size: 31.7 MB (31704871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb599f622b9eaec61e45f9b22cd80f977ca5dbec1691a2af7dca7b6443fc689`  
		Last Modified: Sat, 22 Oct 2016 07:33:34 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9.1-fpm`

```console
$ docker pull owncloud@sha256:c1b8f21bd641845e1dfb285aa78116196609e48379f8e8cf40069421393068dd
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.1-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.4 MB (221434385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ef864e1b70dce4a4ef1756216ae90f7cde9e3796235f734d0fcffbb50b526e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:10:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 21 Oct 2016 23:10:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:10:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:10:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:13:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:14:00 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:14:00 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:14:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Oct 2016 23:14:02 GMT
EXPOSE 9000/tcp
# Fri, 21 Oct 2016 23:14:02 GMT
CMD ["php-fpm"]
# Sat, 22 Oct 2016 07:18:15 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:20:02 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:20:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:20:29 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:32:47 GMT
ENV OWNCLOUD_VERSION=9.1.1
# Sat, 22 Oct 2016 07:32:47 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:33:22 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:33:23 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:33:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:33:24 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa40caf97a527ab5b58f26d26b407b55f4fae6798e1d7f89267747d74195f1b`  
		Last Modified: Fri, 21 Oct 2016 23:14:18 GMT  
		Size: 12.5 MB (12549527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064a3d3e9245dbe11fb127133ebdf3e7feb188948093feb6b1597ff1c1c2ed23`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8cd631ee525e5d7ae7dea910aa38eb0270991abc1dc5ca199d17a824383e47`  
		Last Modified: Fri, 21 Oct 2016 23:14:14 GMT  
		Size: 8.8 MB (8841952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3181f198b31f771fb106ad398e5e61380a7122b7f48ad2949ce0937eae2ff49b`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f4db8284a3c17605cf8a4b33cf8cfb43ce5e4d78c1104fea88e88b47f704af`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca292aae86f240632732ffde349c152c947ea665d31b37c80a2689a8858e394`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40083b945798329a66df3b67b2a7bf1c9dff38d58f173610cd27093313c3dc7`  
		Last Modified: Sat, 22 Oct 2016 07:21:08 GMT  
		Size: 34.3 MB (34309173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1effd34919d4300b45a7b7a4f32e358f43ce4c898bee542df608d4eaecffc6ae`  
		Last Modified: Sat, 22 Oct 2016 07:20:57 GMT  
		Size: 3.7 MB (3743106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e64f904d47b69422ab5aa4ead17a44703e480612756d137f728c91b4a26bbb`  
		Last Modified: Sat, 22 Oct 2016 07:20:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07e5fe26a64d4192bc3acac86040adcad450020178fe1f2d0a86b8b5f5f4653`  
		Last Modified: Sat, 22 Oct 2016 07:20:57 GMT  
		Size: 1.3 MB (1330674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a302f0b7302c2075c6cb03b4c84bf15c893f2fd6812e754394363be9518c488b`  
		Last Modified: Sat, 22 Oct 2016 07:33:42 GMT  
		Size: 31.7 MB (31704871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb599f622b9eaec61e45f9b22cd80f977ca5dbec1691a2af7dca7b6443fc689`  
		Last Modified: Sat, 22 Oct 2016 07:33:34 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9-fpm`

```console
$ docker pull owncloud@sha256:c1b8f21bd641845e1dfb285aa78116196609e48379f8e8cf40069421393068dd
```

-	Platforms:
	-	linux; amd64

### `owncloud:9-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.4 MB (221434385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ef864e1b70dce4a4ef1756216ae90f7cde9e3796235f734d0fcffbb50b526e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:10:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 21 Oct 2016 23:10:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:10:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:10:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:13:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:14:00 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:14:00 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:14:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Oct 2016 23:14:02 GMT
EXPOSE 9000/tcp
# Fri, 21 Oct 2016 23:14:02 GMT
CMD ["php-fpm"]
# Sat, 22 Oct 2016 07:18:15 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:20:02 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:20:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:20:29 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:32:47 GMT
ENV OWNCLOUD_VERSION=9.1.1
# Sat, 22 Oct 2016 07:32:47 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:33:22 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:33:23 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:33:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:33:24 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa40caf97a527ab5b58f26d26b407b55f4fae6798e1d7f89267747d74195f1b`  
		Last Modified: Fri, 21 Oct 2016 23:14:18 GMT  
		Size: 12.5 MB (12549527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064a3d3e9245dbe11fb127133ebdf3e7feb188948093feb6b1597ff1c1c2ed23`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8cd631ee525e5d7ae7dea910aa38eb0270991abc1dc5ca199d17a824383e47`  
		Last Modified: Fri, 21 Oct 2016 23:14:14 GMT  
		Size: 8.8 MB (8841952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3181f198b31f771fb106ad398e5e61380a7122b7f48ad2949ce0937eae2ff49b`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f4db8284a3c17605cf8a4b33cf8cfb43ce5e4d78c1104fea88e88b47f704af`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca292aae86f240632732ffde349c152c947ea665d31b37c80a2689a8858e394`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40083b945798329a66df3b67b2a7bf1c9dff38d58f173610cd27093313c3dc7`  
		Last Modified: Sat, 22 Oct 2016 07:21:08 GMT  
		Size: 34.3 MB (34309173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1effd34919d4300b45a7b7a4f32e358f43ce4c898bee542df608d4eaecffc6ae`  
		Last Modified: Sat, 22 Oct 2016 07:20:57 GMT  
		Size: 3.7 MB (3743106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e64f904d47b69422ab5aa4ead17a44703e480612756d137f728c91b4a26bbb`  
		Last Modified: Sat, 22 Oct 2016 07:20:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07e5fe26a64d4192bc3acac86040adcad450020178fe1f2d0a86b8b5f5f4653`  
		Last Modified: Sat, 22 Oct 2016 07:20:57 GMT  
		Size: 1.3 MB (1330674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a302f0b7302c2075c6cb03b4c84bf15c893f2fd6812e754394363be9518c488b`  
		Last Modified: Sat, 22 Oct 2016 07:33:42 GMT  
		Size: 31.7 MB (31704871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb599f622b9eaec61e45f9b22cd80f977ca5dbec1691a2af7dca7b6443fc689`  
		Last Modified: Sat, 22 Oct 2016 07:33:34 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:fpm`

```console
$ docker pull owncloud@sha256:c1b8f21bd641845e1dfb285aa78116196609e48379f8e8cf40069421393068dd
```

-	Platforms:
	-	linux; amd64

### `owncloud:fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.4 MB (221434385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ef864e1b70dce4a4ef1756216ae90f7cde9e3796235f734d0fcffbb50b526e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:10:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 21 Oct 2016 23:10:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:10:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:10:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:13:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:14:00 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:14:00 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:14:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Oct 2016 23:14:02 GMT
EXPOSE 9000/tcp
# Fri, 21 Oct 2016 23:14:02 GMT
CMD ["php-fpm"]
# Sat, 22 Oct 2016 07:18:15 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:20:02 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 22 Oct 2016 07:20:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 07:20:29 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 22 Oct 2016 07:32:47 GMT
ENV OWNCLOUD_VERSION=9.1.1
# Sat, 22 Oct 2016 07:32:47 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 07:33:22 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 22 Oct 2016 07:33:23 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 22 Oct 2016 07:33:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 07:33:24 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa40caf97a527ab5b58f26d26b407b55f4fae6798e1d7f89267747d74195f1b`  
		Last Modified: Fri, 21 Oct 2016 23:14:18 GMT  
		Size: 12.5 MB (12549527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064a3d3e9245dbe11fb127133ebdf3e7feb188948093feb6b1597ff1c1c2ed23`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8cd631ee525e5d7ae7dea910aa38eb0270991abc1dc5ca199d17a824383e47`  
		Last Modified: Fri, 21 Oct 2016 23:14:14 GMT  
		Size: 8.8 MB (8841952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3181f198b31f771fb106ad398e5e61380a7122b7f48ad2949ce0937eae2ff49b`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f4db8284a3c17605cf8a4b33cf8cfb43ce5e4d78c1104fea88e88b47f704af`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca292aae86f240632732ffde349c152c947ea665d31b37c80a2689a8858e394`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40083b945798329a66df3b67b2a7bf1c9dff38d58f173610cd27093313c3dc7`  
		Last Modified: Sat, 22 Oct 2016 07:21:08 GMT  
		Size: 34.3 MB (34309173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1effd34919d4300b45a7b7a4f32e358f43ce4c898bee542df608d4eaecffc6ae`  
		Last Modified: Sat, 22 Oct 2016 07:20:57 GMT  
		Size: 3.7 MB (3743106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e64f904d47b69422ab5aa4ead17a44703e480612756d137f728c91b4a26bbb`  
		Last Modified: Sat, 22 Oct 2016 07:20:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07e5fe26a64d4192bc3acac86040adcad450020178fe1f2d0a86b8b5f5f4653`  
		Last Modified: Sat, 22 Oct 2016 07:20:57 GMT  
		Size: 1.3 MB (1330674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a302f0b7302c2075c6cb03b4c84bf15c893f2fd6812e754394363be9518c488b`  
		Last Modified: Sat, 22 Oct 2016 07:33:42 GMT  
		Size: 31.7 MB (31704871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb599f622b9eaec61e45f9b22cd80f977ca5dbec1691a2af7dca7b6443fc689`  
		Last Modified: Sat, 22 Oct 2016 07:33:34 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
