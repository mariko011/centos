<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mediawiki`

-	[`mediawiki:1.27`](#mediawiki127)
-	[`mediawiki:1.27.4`](#mediawiki1274)
-	[`mediawiki:1.29`](#mediawiki129)
-	[`mediawiki:1.29.2`](#mediawiki1292)
-	[`mediawiki:1.30`](#mediawiki130)
-	[`mediawiki:1.30.0`](#mediawiki1300)
-	[`mediawiki:latest`](#mediawikilatest)
-	[`mediawiki:legacy`](#mediawikilegacy)
-	[`mediawiki:lts`](#mediawikilts)
-	[`mediawiki:stable`](#mediawikistable)

## `mediawiki:1.27`

```console
$ docker pull mediawiki@sha256:7192d8e12531800efa735e4af118e900c90ed184ecf9055ab953ecc6fd689f8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:1.27` - linux; amd64

```console
$ docker pull mediawiki@sha256:cc258b86b4a01a5e74b7e1da89fcad0fb8642544ee312ef475b6d20567fa39f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (252958531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a2d636f5442b559c3c61b5ac8cc773a23bc1c8a3de1508e3784fca1cecc73c`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 20:02:28 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 19 Dec 2017 20:02:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 19 Dec 2017 20:03:07 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 19 Dec 2017 20:03:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 19 Dec 2017 20:03:13 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 19 Dec 2017 20:16:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Dec 2017 20:16:07 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 19 Dec 2017 20:16:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 19 Dec 2017 20:16:08 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 19 Dec 2017 20:16:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 19 Dec 2017 20:16:09 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 19 Dec 2017 20:16:10 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 19 Dec 2017 20:16:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 19 Dec 2017 21:00:10 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 19 Dec 2017 21:00:10 GMT
ENV PHP_VERSION=7.0.26
# Tue, 19 Dec 2017 21:00:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Tue, 19 Dec 2017 21:00:11 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Tue, 19 Dec 2017 21:00:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 19 Dec 2017 21:00:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 19 Dec 2017 21:03:14 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 19 Dec 2017 21:08:34 GMT
COPY multi:6c3bbfbce55efcbe7075883db5f0dba98b25830060e57a35ce066c0dc58c7f0b in /usr/local/bin/ 
# Tue, 19 Dec 2017 21:08:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 19 Dec 2017 21:08:35 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 19 Dec 2017 21:08:35 GMT
WORKDIR /var/www/html
# Tue, 19 Dec 2017 21:08:35 GMT
EXPOSE 80/tcp
# Tue, 19 Dec 2017 21:08:43 GMT
CMD ["apache2-foreground"]
# Wed, 20 Dec 2017 00:44:37 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 20 Dec 2017 00:45:53 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 20 Dec 2017 00:46:45 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 20 Dec 2017 00:50:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 20 Dec 2017 00:50:54 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 20 Dec 2017 00:50:54 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 20 Dec 2017 00:50:55 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 20 Dec 2017 00:50:55 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Wed, 20 Dec 2017 00:50:55 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Wed, 20 Dec 2017 00:51:00 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185616061386b6fbf50284203b0bfdefaca12fc92bbb65d2f65c3d51dd942ad9`  
		Last Modified: Tue, 19 Dec 2017 21:56:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4330d62fa9e0e115103c33903ce48ec4a996fbbc967d707908cca0a721695202`  
		Last Modified: Tue, 19 Dec 2017 21:57:20 GMT  
		Size: 81.9 MB (81876656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457292eacdcc16e211a85cefa9639a958bf302d7ed9a1e7f346f4bce2723e861`  
		Last Modified: Tue, 19 Dec 2017 21:56:57 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1acf2a966b64e8b15c32f92d36b2a35210f99389c5f9ed8b5ed784705eff0739`  
		Last Modified: Tue, 19 Dec 2017 21:59:13 GMT  
		Size: 3.0 MB (3011936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c8840e3cd39914b497416507810e85144c9af05d135b74c6503a3ca7803c5a`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa8917ee733ff7aa83589a561dbbc6be85b5b663486933137e4ba61b05d3c01`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3003eebbec26bf087e7b02a4da284d5d1f818a4d92a9e1f92abb625cc5dcb7db`  
		Last Modified: Tue, 19 Dec 2017 21:59:10 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2353b7ccbd51bcf0307d67fcd641e0a21531c62561901bc6e37bc206c0c6a2`  
		Last Modified: Tue, 19 Dec 2017 21:59:11 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69676eb3c14ae19c56f84fd42d46fcf2732bca86b97b1dbbd70f07df5ff9d802`  
		Last Modified: Tue, 19 Dec 2017 22:02:44 GMT  
		Size: 12.3 MB (12320073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec6915925142f3d468c3b3386093f36f55024e1bd65f830c4b24d44175a001c`  
		Last Modified: Tue, 19 Dec 2017 22:02:43 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50c9706358baec9828aa574d37f3bcfd932d8c69ea1715ed54032925ef9e5d2`  
		Last Modified: Tue, 19 Dec 2017 22:02:47 GMT  
		Size: 13.7 MB (13707883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987c24b3dfe4af516744ed24856118bab9c94bdc6f953a3dad59ae52891131b7`  
		Last Modified: Tue, 19 Dec 2017 22:02:42 GMT  
		Size: 2.2 KB (2188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed00fa6b923a90f03a5b534b4b1a2a3707a2f7ae01aea04a0b81410a3b88b8be`  
		Last Modified: Tue, 19 Dec 2017 22:02:43 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f2d6fcb342742fff982ac1fa925792d4790e4a3388f20d6dffe25f882f4019`  
		Last Modified: Wed, 20 Dec 2017 00:54:21 GMT  
		Size: 55.8 MB (55814726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4223b9d7be94ead030dc8c8fb37a5359824cccc460bff6a53a0a8a8491ac51d5`  
		Last Modified: Wed, 20 Dec 2017 00:54:07 GMT  
		Size: 1.4 MB (1396951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867085fc8191caed31c9f9651b75e0d6768dd53f6c9c29d40d971da82dd6cab0`  
		Last Modified: Wed, 20 Dec 2017 00:54:06 GMT  
		Size: 324.7 KB (324697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda225fa47fc6dc2ad30fb09f2ef7f877ead75aba17c169d593d93f1e7ee1cc5`  
		Last Modified: Wed, 20 Dec 2017 00:54:06 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5df05ad168e83ccd205208554047669b5393df312616f6596fd50649c8dcda`  
		Last Modified: Wed, 20 Dec 2017 00:54:06 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6057db41c114b9a4a828376bb7e85457dc804ddb91e29bac0d548a135c3036`  
		Last Modified: Wed, 20 Dec 2017 00:54:16 GMT  
		Size: 31.9 MB (31899040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.27.4`

```console
$ docker pull mediawiki@sha256:7192d8e12531800efa735e4af118e900c90ed184ecf9055ab953ecc6fd689f8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:1.27.4` - linux; amd64

```console
$ docker pull mediawiki@sha256:cc258b86b4a01a5e74b7e1da89fcad0fb8642544ee312ef475b6d20567fa39f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (252958531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a2d636f5442b559c3c61b5ac8cc773a23bc1c8a3de1508e3784fca1cecc73c`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 20:02:28 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 19 Dec 2017 20:02:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 19 Dec 2017 20:03:07 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 19 Dec 2017 20:03:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 19 Dec 2017 20:03:13 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 19 Dec 2017 20:16:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Dec 2017 20:16:07 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 19 Dec 2017 20:16:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 19 Dec 2017 20:16:08 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 19 Dec 2017 20:16:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 19 Dec 2017 20:16:09 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 19 Dec 2017 20:16:10 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 19 Dec 2017 20:16:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 19 Dec 2017 21:00:10 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 19 Dec 2017 21:00:10 GMT
ENV PHP_VERSION=7.0.26
# Tue, 19 Dec 2017 21:00:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Tue, 19 Dec 2017 21:00:11 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Tue, 19 Dec 2017 21:00:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 19 Dec 2017 21:00:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 19 Dec 2017 21:03:14 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 19 Dec 2017 21:08:34 GMT
COPY multi:6c3bbfbce55efcbe7075883db5f0dba98b25830060e57a35ce066c0dc58c7f0b in /usr/local/bin/ 
# Tue, 19 Dec 2017 21:08:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 19 Dec 2017 21:08:35 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 19 Dec 2017 21:08:35 GMT
WORKDIR /var/www/html
# Tue, 19 Dec 2017 21:08:35 GMT
EXPOSE 80/tcp
# Tue, 19 Dec 2017 21:08:43 GMT
CMD ["apache2-foreground"]
# Wed, 20 Dec 2017 00:44:37 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 20 Dec 2017 00:45:53 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 20 Dec 2017 00:46:45 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 20 Dec 2017 00:50:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 20 Dec 2017 00:50:54 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 20 Dec 2017 00:50:54 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 20 Dec 2017 00:50:55 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 20 Dec 2017 00:50:55 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Wed, 20 Dec 2017 00:50:55 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Wed, 20 Dec 2017 00:51:00 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185616061386b6fbf50284203b0bfdefaca12fc92bbb65d2f65c3d51dd942ad9`  
		Last Modified: Tue, 19 Dec 2017 21:56:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4330d62fa9e0e115103c33903ce48ec4a996fbbc967d707908cca0a721695202`  
		Last Modified: Tue, 19 Dec 2017 21:57:20 GMT  
		Size: 81.9 MB (81876656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457292eacdcc16e211a85cefa9639a958bf302d7ed9a1e7f346f4bce2723e861`  
		Last Modified: Tue, 19 Dec 2017 21:56:57 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1acf2a966b64e8b15c32f92d36b2a35210f99389c5f9ed8b5ed784705eff0739`  
		Last Modified: Tue, 19 Dec 2017 21:59:13 GMT  
		Size: 3.0 MB (3011936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c8840e3cd39914b497416507810e85144c9af05d135b74c6503a3ca7803c5a`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa8917ee733ff7aa83589a561dbbc6be85b5b663486933137e4ba61b05d3c01`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3003eebbec26bf087e7b02a4da284d5d1f818a4d92a9e1f92abb625cc5dcb7db`  
		Last Modified: Tue, 19 Dec 2017 21:59:10 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2353b7ccbd51bcf0307d67fcd641e0a21531c62561901bc6e37bc206c0c6a2`  
		Last Modified: Tue, 19 Dec 2017 21:59:11 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69676eb3c14ae19c56f84fd42d46fcf2732bca86b97b1dbbd70f07df5ff9d802`  
		Last Modified: Tue, 19 Dec 2017 22:02:44 GMT  
		Size: 12.3 MB (12320073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec6915925142f3d468c3b3386093f36f55024e1bd65f830c4b24d44175a001c`  
		Last Modified: Tue, 19 Dec 2017 22:02:43 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50c9706358baec9828aa574d37f3bcfd932d8c69ea1715ed54032925ef9e5d2`  
		Last Modified: Tue, 19 Dec 2017 22:02:47 GMT  
		Size: 13.7 MB (13707883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987c24b3dfe4af516744ed24856118bab9c94bdc6f953a3dad59ae52891131b7`  
		Last Modified: Tue, 19 Dec 2017 22:02:42 GMT  
		Size: 2.2 KB (2188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed00fa6b923a90f03a5b534b4b1a2a3707a2f7ae01aea04a0b81410a3b88b8be`  
		Last Modified: Tue, 19 Dec 2017 22:02:43 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f2d6fcb342742fff982ac1fa925792d4790e4a3388f20d6dffe25f882f4019`  
		Last Modified: Wed, 20 Dec 2017 00:54:21 GMT  
		Size: 55.8 MB (55814726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4223b9d7be94ead030dc8c8fb37a5359824cccc460bff6a53a0a8a8491ac51d5`  
		Last Modified: Wed, 20 Dec 2017 00:54:07 GMT  
		Size: 1.4 MB (1396951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867085fc8191caed31c9f9651b75e0d6768dd53f6c9c29d40d971da82dd6cab0`  
		Last Modified: Wed, 20 Dec 2017 00:54:06 GMT  
		Size: 324.7 KB (324697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda225fa47fc6dc2ad30fb09f2ef7f877ead75aba17c169d593d93f1e7ee1cc5`  
		Last Modified: Wed, 20 Dec 2017 00:54:06 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5df05ad168e83ccd205208554047669b5393df312616f6596fd50649c8dcda`  
		Last Modified: Wed, 20 Dec 2017 00:54:06 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6057db41c114b9a4a828376bb7e85457dc804ddb91e29bac0d548a135c3036`  
		Last Modified: Wed, 20 Dec 2017 00:54:16 GMT  
		Size: 31.9 MB (31899040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.29`

```console
$ docker pull mediawiki@sha256:183b1bb1ed3ee0d45f2a2965b5da13e12674e11948e7c2bfcf5cc7922d5462fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:1.29` - linux; amd64

```console
$ docker pull mediawiki@sha256:1fb28a3098e3b9ea5fd8894967920c0ceae26daa8b56ac2fa971f249572afff4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.9 MB (261912772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5a7c9639b3de3a93cd992518df907890ba06682fe224c758b0fd901ea603e52`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 20:02:28 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 19 Dec 2017 20:02:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 19 Dec 2017 20:03:07 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 19 Dec 2017 20:03:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 19 Dec 2017 20:03:13 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 19 Dec 2017 20:16:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Dec 2017 20:16:07 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 19 Dec 2017 20:16:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 19 Dec 2017 20:16:08 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 19 Dec 2017 20:16:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 19 Dec 2017 20:16:09 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 19 Dec 2017 20:16:10 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 19 Dec 2017 20:16:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 19 Dec 2017 20:16:11 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 19 Dec 2017 20:16:12 GMT
ENV PHP_VERSION=7.1.12
# Tue, 19 Dec 2017 20:16:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Tue, 19 Dec 2017 20:16:12 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Tue, 19 Dec 2017 20:16:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 19 Dec 2017 20:16:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 19 Dec 2017 20:19:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 19 Dec 2017 20:25:28 GMT
COPY multi:6c3bbfbce55efcbe7075883db5f0dba98b25830060e57a35ce066c0dc58c7f0b in /usr/local/bin/ 
# Tue, 19 Dec 2017 20:25:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 19 Dec 2017 20:25:28 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 19 Dec 2017 20:25:29 GMT
WORKDIR /var/www/html
# Tue, 19 Dec 2017 20:25:29 GMT
EXPOSE 80/tcp
# Tue, 19 Dec 2017 20:25:29 GMT
CMD ["apache2-foreground"]
# Wed, 20 Dec 2017 00:34:15 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 20 Dec 2017 00:35:39 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 20 Dec 2017 00:38:14 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 20 Dec 2017 00:42:40 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 20 Dec 2017 00:42:40 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 20 Dec 2017 00:43:41 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.29
# Wed, 20 Dec 2017 00:43:42 GMT
ENV MEDIAWIKI_BRANCH=REL1_29
# Wed, 20 Dec 2017 00:43:42 GMT
ENV MEDIAWIKI_VERSION=1.29.2
# Wed, 20 Dec 2017 00:43:42 GMT
ENV MEDIAWIKI_SHA512=53c6ca82280938d1e3281aa296f44c86dcfbbdf82710b7de578e73e1ef3150db145e059c8c8208859bc437f7a7f7a13eed896be9d44fd364a0ee6d78893fbe86
# Wed, 20 Dec 2017 00:43:48 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185616061386b6fbf50284203b0bfdefaca12fc92bbb65d2f65c3d51dd942ad9`  
		Last Modified: Tue, 19 Dec 2017 21:56:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4330d62fa9e0e115103c33903ce48ec4a996fbbc967d707908cca0a721695202`  
		Last Modified: Tue, 19 Dec 2017 21:57:20 GMT  
		Size: 81.9 MB (81876656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457292eacdcc16e211a85cefa9639a958bf302d7ed9a1e7f346f4bce2723e861`  
		Last Modified: Tue, 19 Dec 2017 21:56:57 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1acf2a966b64e8b15c32f92d36b2a35210f99389c5f9ed8b5ed784705eff0739`  
		Last Modified: Tue, 19 Dec 2017 21:59:13 GMT  
		Size: 3.0 MB (3011936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c8840e3cd39914b497416507810e85144c9af05d135b74c6503a3ca7803c5a`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa8917ee733ff7aa83589a561dbbc6be85b5b663486933137e4ba61b05d3c01`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3003eebbec26bf087e7b02a4da284d5d1f818a4d92a9e1f92abb625cc5dcb7db`  
		Last Modified: Tue, 19 Dec 2017 21:59:10 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2353b7ccbd51bcf0307d67fcd641e0a21531c62561901bc6e37bc206c0c6a2`  
		Last Modified: Tue, 19 Dec 2017 21:59:11 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7ab65b6c7b38477321f2df5ad5117a9c31bb21618dc71ad0cb5f6045820f7d`  
		Last Modified: Tue, 19 Dec 2017 21:59:09 GMT  
		Size: 12.5 MB (12548450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284e28fbafc6621beec102af070de51e3bcdcdea2e2868459240b97e50b2cd88`  
		Last Modified: Tue, 19 Dec 2017 21:59:08 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b93b7470f2648b119676a0f90820d2932812f2d387d413f5b1a778bfc5efef`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 14.0 MB (14021773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1651c8a3614d315f2079f24af9221fe882c24f07d46ab9eaf37d593e753e4c`  
		Last Modified: Tue, 19 Dec 2017 21:59:09 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a91132e09c2e494786e3dca4794cc0878405112aef33a3b8176a8d1e51fec68`  
		Last Modified: Tue, 19 Dec 2017 21:59:07 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80da6d891c20ccc7aca5f3934be140377ad2c1fd3df4c10c9fcfb97e569e805`  
		Last Modified: Wed, 20 Dec 2017 00:51:46 GMT  
		Size: 55.8 MB (55815236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6adfa5ce7e893d1e908c4e2db51701d250e25ea3697477035c4d44177b5d3b`  
		Last Modified: Wed, 20 Dec 2017 00:51:28 GMT  
		Size: 1.5 MB (1490721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f20e2731251b61b0f908d2bab6ad869a367c181b89e92f11ccf06538db79dc`  
		Last Modified: Wed, 20 Dec 2017 00:51:28 GMT  
		Size: 326.1 KB (326094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063109862a89498faae624154840dfed9782ef0c163babd2d0819529a0ceae99`  
		Last Modified: Wed, 20 Dec 2017 00:51:29 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f48dc0eb2282ad791b13d566144f7526b44fd0fe465cf81a30af36a1f3407f0`  
		Last Modified: Wed, 20 Dec 2017 00:51:28 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c122ac75a731b2371265db7e852fe56aa11557d7501295f43ca454366f43986`  
		Last Modified: Wed, 20 Dec 2017 00:53:19 GMT  
		Size: 40.2 MB (40215329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.29.2`

```console
$ docker pull mediawiki@sha256:183b1bb1ed3ee0d45f2a2965b5da13e12674e11948e7c2bfcf5cc7922d5462fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:1.29.2` - linux; amd64

```console
$ docker pull mediawiki@sha256:1fb28a3098e3b9ea5fd8894967920c0ceae26daa8b56ac2fa971f249572afff4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.9 MB (261912772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5a7c9639b3de3a93cd992518df907890ba06682fe224c758b0fd901ea603e52`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 20:02:28 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 19 Dec 2017 20:02:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 19 Dec 2017 20:03:07 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 19 Dec 2017 20:03:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 19 Dec 2017 20:03:13 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 19 Dec 2017 20:16:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Dec 2017 20:16:07 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 19 Dec 2017 20:16:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 19 Dec 2017 20:16:08 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 19 Dec 2017 20:16:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 19 Dec 2017 20:16:09 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 19 Dec 2017 20:16:10 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 19 Dec 2017 20:16:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 19 Dec 2017 20:16:11 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 19 Dec 2017 20:16:12 GMT
ENV PHP_VERSION=7.1.12
# Tue, 19 Dec 2017 20:16:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Tue, 19 Dec 2017 20:16:12 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Tue, 19 Dec 2017 20:16:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 19 Dec 2017 20:16:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 19 Dec 2017 20:19:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 19 Dec 2017 20:25:28 GMT
COPY multi:6c3bbfbce55efcbe7075883db5f0dba98b25830060e57a35ce066c0dc58c7f0b in /usr/local/bin/ 
# Tue, 19 Dec 2017 20:25:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 19 Dec 2017 20:25:28 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 19 Dec 2017 20:25:29 GMT
WORKDIR /var/www/html
# Tue, 19 Dec 2017 20:25:29 GMT
EXPOSE 80/tcp
# Tue, 19 Dec 2017 20:25:29 GMT
CMD ["apache2-foreground"]
# Wed, 20 Dec 2017 00:34:15 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 20 Dec 2017 00:35:39 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 20 Dec 2017 00:38:14 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 20 Dec 2017 00:42:40 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 20 Dec 2017 00:42:40 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 20 Dec 2017 00:43:41 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.29
# Wed, 20 Dec 2017 00:43:42 GMT
ENV MEDIAWIKI_BRANCH=REL1_29
# Wed, 20 Dec 2017 00:43:42 GMT
ENV MEDIAWIKI_VERSION=1.29.2
# Wed, 20 Dec 2017 00:43:42 GMT
ENV MEDIAWIKI_SHA512=53c6ca82280938d1e3281aa296f44c86dcfbbdf82710b7de578e73e1ef3150db145e059c8c8208859bc437f7a7f7a13eed896be9d44fd364a0ee6d78893fbe86
# Wed, 20 Dec 2017 00:43:48 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185616061386b6fbf50284203b0bfdefaca12fc92bbb65d2f65c3d51dd942ad9`  
		Last Modified: Tue, 19 Dec 2017 21:56:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4330d62fa9e0e115103c33903ce48ec4a996fbbc967d707908cca0a721695202`  
		Last Modified: Tue, 19 Dec 2017 21:57:20 GMT  
		Size: 81.9 MB (81876656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457292eacdcc16e211a85cefa9639a958bf302d7ed9a1e7f346f4bce2723e861`  
		Last Modified: Tue, 19 Dec 2017 21:56:57 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1acf2a966b64e8b15c32f92d36b2a35210f99389c5f9ed8b5ed784705eff0739`  
		Last Modified: Tue, 19 Dec 2017 21:59:13 GMT  
		Size: 3.0 MB (3011936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c8840e3cd39914b497416507810e85144c9af05d135b74c6503a3ca7803c5a`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa8917ee733ff7aa83589a561dbbc6be85b5b663486933137e4ba61b05d3c01`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3003eebbec26bf087e7b02a4da284d5d1f818a4d92a9e1f92abb625cc5dcb7db`  
		Last Modified: Tue, 19 Dec 2017 21:59:10 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2353b7ccbd51bcf0307d67fcd641e0a21531c62561901bc6e37bc206c0c6a2`  
		Last Modified: Tue, 19 Dec 2017 21:59:11 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7ab65b6c7b38477321f2df5ad5117a9c31bb21618dc71ad0cb5f6045820f7d`  
		Last Modified: Tue, 19 Dec 2017 21:59:09 GMT  
		Size: 12.5 MB (12548450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284e28fbafc6621beec102af070de51e3bcdcdea2e2868459240b97e50b2cd88`  
		Last Modified: Tue, 19 Dec 2017 21:59:08 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b93b7470f2648b119676a0f90820d2932812f2d387d413f5b1a778bfc5efef`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 14.0 MB (14021773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1651c8a3614d315f2079f24af9221fe882c24f07d46ab9eaf37d593e753e4c`  
		Last Modified: Tue, 19 Dec 2017 21:59:09 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a91132e09c2e494786e3dca4794cc0878405112aef33a3b8176a8d1e51fec68`  
		Last Modified: Tue, 19 Dec 2017 21:59:07 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80da6d891c20ccc7aca5f3934be140377ad2c1fd3df4c10c9fcfb97e569e805`  
		Last Modified: Wed, 20 Dec 2017 00:51:46 GMT  
		Size: 55.8 MB (55815236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6adfa5ce7e893d1e908c4e2db51701d250e25ea3697477035c4d44177b5d3b`  
		Last Modified: Wed, 20 Dec 2017 00:51:28 GMT  
		Size: 1.5 MB (1490721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f20e2731251b61b0f908d2bab6ad869a367c181b89e92f11ccf06538db79dc`  
		Last Modified: Wed, 20 Dec 2017 00:51:28 GMT  
		Size: 326.1 KB (326094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063109862a89498faae624154840dfed9782ef0c163babd2d0819529a0ceae99`  
		Last Modified: Wed, 20 Dec 2017 00:51:29 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f48dc0eb2282ad791b13d566144f7526b44fd0fe465cf81a30af36a1f3407f0`  
		Last Modified: Wed, 20 Dec 2017 00:51:28 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c122ac75a731b2371265db7e852fe56aa11557d7501295f43ca454366f43986`  
		Last Modified: Wed, 20 Dec 2017 00:53:19 GMT  
		Size: 40.2 MB (40215329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.30`

```console
$ docker pull mediawiki@sha256:7907b8025daf7ec8b5d31930c2f6e9b497028692dcada8cf058e7df39f8b44c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:1.30` - linux; amd64

```console
$ docker pull mediawiki@sha256:5c874cf357382c2d56cb42ecb4a37e8a056d626931167b6a6de79424ca01ea08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 MB (264586503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4f2d2a05c2502c92082db469503016b8f2ec7777d6c51ee824da57564a67f3`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 20:02:28 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 19 Dec 2017 20:02:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 19 Dec 2017 20:03:07 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 19 Dec 2017 20:03:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 19 Dec 2017 20:03:13 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 19 Dec 2017 20:16:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Dec 2017 20:16:07 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 19 Dec 2017 20:16:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 19 Dec 2017 20:16:08 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 19 Dec 2017 20:16:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 19 Dec 2017 20:16:09 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 19 Dec 2017 20:16:10 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 19 Dec 2017 20:16:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 19 Dec 2017 20:16:11 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 19 Dec 2017 20:16:12 GMT
ENV PHP_VERSION=7.1.12
# Tue, 19 Dec 2017 20:16:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Tue, 19 Dec 2017 20:16:12 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Tue, 19 Dec 2017 20:16:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 19 Dec 2017 20:16:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 19 Dec 2017 20:19:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 19 Dec 2017 20:25:28 GMT
COPY multi:6c3bbfbce55efcbe7075883db5f0dba98b25830060e57a35ce066c0dc58c7f0b in /usr/local/bin/ 
# Tue, 19 Dec 2017 20:25:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 19 Dec 2017 20:25:28 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 19 Dec 2017 20:25:29 GMT
WORKDIR /var/www/html
# Tue, 19 Dec 2017 20:25:29 GMT
EXPOSE 80/tcp
# Tue, 19 Dec 2017 20:25:29 GMT
CMD ["apache2-foreground"]
# Wed, 20 Dec 2017 00:34:15 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 20 Dec 2017 00:35:39 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 20 Dec 2017 00:38:14 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 20 Dec 2017 00:42:40 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 20 Dec 2017 00:42:40 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 20 Dec 2017 00:42:40 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Wed, 20 Dec 2017 00:42:41 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Wed, 20 Dec 2017 00:42:41 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Wed, 20 Dec 2017 00:42:41 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Wed, 20 Dec 2017 00:42:48 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185616061386b6fbf50284203b0bfdefaca12fc92bbb65d2f65c3d51dd942ad9`  
		Last Modified: Tue, 19 Dec 2017 21:56:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4330d62fa9e0e115103c33903ce48ec4a996fbbc967d707908cca0a721695202`  
		Last Modified: Tue, 19 Dec 2017 21:57:20 GMT  
		Size: 81.9 MB (81876656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457292eacdcc16e211a85cefa9639a958bf302d7ed9a1e7f346f4bce2723e861`  
		Last Modified: Tue, 19 Dec 2017 21:56:57 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1acf2a966b64e8b15c32f92d36b2a35210f99389c5f9ed8b5ed784705eff0739`  
		Last Modified: Tue, 19 Dec 2017 21:59:13 GMT  
		Size: 3.0 MB (3011936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c8840e3cd39914b497416507810e85144c9af05d135b74c6503a3ca7803c5a`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa8917ee733ff7aa83589a561dbbc6be85b5b663486933137e4ba61b05d3c01`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3003eebbec26bf087e7b02a4da284d5d1f818a4d92a9e1f92abb625cc5dcb7db`  
		Last Modified: Tue, 19 Dec 2017 21:59:10 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2353b7ccbd51bcf0307d67fcd641e0a21531c62561901bc6e37bc206c0c6a2`  
		Last Modified: Tue, 19 Dec 2017 21:59:11 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7ab65b6c7b38477321f2df5ad5117a9c31bb21618dc71ad0cb5f6045820f7d`  
		Last Modified: Tue, 19 Dec 2017 21:59:09 GMT  
		Size: 12.5 MB (12548450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284e28fbafc6621beec102af070de51e3bcdcdea2e2868459240b97e50b2cd88`  
		Last Modified: Tue, 19 Dec 2017 21:59:08 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b93b7470f2648b119676a0f90820d2932812f2d387d413f5b1a778bfc5efef`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 14.0 MB (14021773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1651c8a3614d315f2079f24af9221fe882c24f07d46ab9eaf37d593e753e4c`  
		Last Modified: Tue, 19 Dec 2017 21:59:09 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a91132e09c2e494786e3dca4794cc0878405112aef33a3b8176a8d1e51fec68`  
		Last Modified: Tue, 19 Dec 2017 21:59:07 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80da6d891c20ccc7aca5f3934be140377ad2c1fd3df4c10c9fcfb97e569e805`  
		Last Modified: Wed, 20 Dec 2017 00:51:46 GMT  
		Size: 55.8 MB (55815236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6adfa5ce7e893d1e908c4e2db51701d250e25ea3697477035c4d44177b5d3b`  
		Last Modified: Wed, 20 Dec 2017 00:51:28 GMT  
		Size: 1.5 MB (1490721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f20e2731251b61b0f908d2bab6ad869a367c181b89e92f11ccf06538db79dc`  
		Last Modified: Wed, 20 Dec 2017 00:51:28 GMT  
		Size: 326.1 KB (326094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063109862a89498faae624154840dfed9782ef0c163babd2d0819529a0ceae99`  
		Last Modified: Wed, 20 Dec 2017 00:51:29 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f48dc0eb2282ad791b13d566144f7526b44fd0fe465cf81a30af36a1f3407f0`  
		Last Modified: Wed, 20 Dec 2017 00:51:28 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0d7e934ca812280906e4bd5e55c94371e3c9852f8814d070ab099317fcd01b`  
		Last Modified: Wed, 20 Dec 2017 00:51:53 GMT  
		Size: 42.9 MB (42889060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.30.0`

```console
$ docker pull mediawiki@sha256:7907b8025daf7ec8b5d31930c2f6e9b497028692dcada8cf058e7df39f8b44c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:1.30.0` - linux; amd64

```console
$ docker pull mediawiki@sha256:5c874cf357382c2d56cb42ecb4a37e8a056d626931167b6a6de79424ca01ea08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 MB (264586503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4f2d2a05c2502c92082db469503016b8f2ec7777d6c51ee824da57564a67f3`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 20:02:28 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 19 Dec 2017 20:02:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 19 Dec 2017 20:03:07 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 19 Dec 2017 20:03:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 19 Dec 2017 20:03:13 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 19 Dec 2017 20:16:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Dec 2017 20:16:07 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 19 Dec 2017 20:16:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 19 Dec 2017 20:16:08 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 19 Dec 2017 20:16:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 19 Dec 2017 20:16:09 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 19 Dec 2017 20:16:10 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 19 Dec 2017 20:16:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 19 Dec 2017 20:16:11 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 19 Dec 2017 20:16:12 GMT
ENV PHP_VERSION=7.1.12
# Tue, 19 Dec 2017 20:16:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Tue, 19 Dec 2017 20:16:12 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Tue, 19 Dec 2017 20:16:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 19 Dec 2017 20:16:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 19 Dec 2017 20:19:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 19 Dec 2017 20:25:28 GMT
COPY multi:6c3bbfbce55efcbe7075883db5f0dba98b25830060e57a35ce066c0dc58c7f0b in /usr/local/bin/ 
# Tue, 19 Dec 2017 20:25:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 19 Dec 2017 20:25:28 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 19 Dec 2017 20:25:29 GMT
WORKDIR /var/www/html
# Tue, 19 Dec 2017 20:25:29 GMT
EXPOSE 80/tcp
# Tue, 19 Dec 2017 20:25:29 GMT
CMD ["apache2-foreground"]
# Wed, 20 Dec 2017 00:34:15 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 20 Dec 2017 00:35:39 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 20 Dec 2017 00:38:14 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 20 Dec 2017 00:42:40 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 20 Dec 2017 00:42:40 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 20 Dec 2017 00:42:40 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Wed, 20 Dec 2017 00:42:41 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Wed, 20 Dec 2017 00:42:41 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Wed, 20 Dec 2017 00:42:41 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Wed, 20 Dec 2017 00:42:48 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185616061386b6fbf50284203b0bfdefaca12fc92bbb65d2f65c3d51dd942ad9`  
		Last Modified: Tue, 19 Dec 2017 21:56:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4330d62fa9e0e115103c33903ce48ec4a996fbbc967d707908cca0a721695202`  
		Last Modified: Tue, 19 Dec 2017 21:57:20 GMT  
		Size: 81.9 MB (81876656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457292eacdcc16e211a85cefa9639a958bf302d7ed9a1e7f346f4bce2723e861`  
		Last Modified: Tue, 19 Dec 2017 21:56:57 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1acf2a966b64e8b15c32f92d36b2a35210f99389c5f9ed8b5ed784705eff0739`  
		Last Modified: Tue, 19 Dec 2017 21:59:13 GMT  
		Size: 3.0 MB (3011936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c8840e3cd39914b497416507810e85144c9af05d135b74c6503a3ca7803c5a`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa8917ee733ff7aa83589a561dbbc6be85b5b663486933137e4ba61b05d3c01`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3003eebbec26bf087e7b02a4da284d5d1f818a4d92a9e1f92abb625cc5dcb7db`  
		Last Modified: Tue, 19 Dec 2017 21:59:10 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2353b7ccbd51bcf0307d67fcd641e0a21531c62561901bc6e37bc206c0c6a2`  
		Last Modified: Tue, 19 Dec 2017 21:59:11 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7ab65b6c7b38477321f2df5ad5117a9c31bb21618dc71ad0cb5f6045820f7d`  
		Last Modified: Tue, 19 Dec 2017 21:59:09 GMT  
		Size: 12.5 MB (12548450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284e28fbafc6621beec102af070de51e3bcdcdea2e2868459240b97e50b2cd88`  
		Last Modified: Tue, 19 Dec 2017 21:59:08 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b93b7470f2648b119676a0f90820d2932812f2d387d413f5b1a778bfc5efef`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 14.0 MB (14021773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1651c8a3614d315f2079f24af9221fe882c24f07d46ab9eaf37d593e753e4c`  
		Last Modified: Tue, 19 Dec 2017 21:59:09 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a91132e09c2e494786e3dca4794cc0878405112aef33a3b8176a8d1e51fec68`  
		Last Modified: Tue, 19 Dec 2017 21:59:07 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80da6d891c20ccc7aca5f3934be140377ad2c1fd3df4c10c9fcfb97e569e805`  
		Last Modified: Wed, 20 Dec 2017 00:51:46 GMT  
		Size: 55.8 MB (55815236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6adfa5ce7e893d1e908c4e2db51701d250e25ea3697477035c4d44177b5d3b`  
		Last Modified: Wed, 20 Dec 2017 00:51:28 GMT  
		Size: 1.5 MB (1490721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f20e2731251b61b0f908d2bab6ad869a367c181b89e92f11ccf06538db79dc`  
		Last Modified: Wed, 20 Dec 2017 00:51:28 GMT  
		Size: 326.1 KB (326094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063109862a89498faae624154840dfed9782ef0c163babd2d0819529a0ceae99`  
		Last Modified: Wed, 20 Dec 2017 00:51:29 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f48dc0eb2282ad791b13d566144f7526b44fd0fe465cf81a30af36a1f3407f0`  
		Last Modified: Wed, 20 Dec 2017 00:51:28 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0d7e934ca812280906e4bd5e55c94371e3c9852f8814d070ab099317fcd01b`  
		Last Modified: Wed, 20 Dec 2017 00:51:53 GMT  
		Size: 42.9 MB (42889060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:latest`

```console
$ docker pull mediawiki@sha256:7907b8025daf7ec8b5d31930c2f6e9b497028692dcada8cf058e7df39f8b44c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:latest` - linux; amd64

```console
$ docker pull mediawiki@sha256:5c874cf357382c2d56cb42ecb4a37e8a056d626931167b6a6de79424ca01ea08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 MB (264586503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4f2d2a05c2502c92082db469503016b8f2ec7777d6c51ee824da57564a67f3`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 20:02:28 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 19 Dec 2017 20:02:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 19 Dec 2017 20:03:07 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 19 Dec 2017 20:03:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 19 Dec 2017 20:03:13 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 19 Dec 2017 20:16:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Dec 2017 20:16:07 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 19 Dec 2017 20:16:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 19 Dec 2017 20:16:08 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 19 Dec 2017 20:16:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 19 Dec 2017 20:16:09 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 19 Dec 2017 20:16:10 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 19 Dec 2017 20:16:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 19 Dec 2017 20:16:11 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 19 Dec 2017 20:16:12 GMT
ENV PHP_VERSION=7.1.12
# Tue, 19 Dec 2017 20:16:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Tue, 19 Dec 2017 20:16:12 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Tue, 19 Dec 2017 20:16:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 19 Dec 2017 20:16:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 19 Dec 2017 20:19:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 19 Dec 2017 20:25:28 GMT
COPY multi:6c3bbfbce55efcbe7075883db5f0dba98b25830060e57a35ce066c0dc58c7f0b in /usr/local/bin/ 
# Tue, 19 Dec 2017 20:25:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 19 Dec 2017 20:25:28 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 19 Dec 2017 20:25:29 GMT
WORKDIR /var/www/html
# Tue, 19 Dec 2017 20:25:29 GMT
EXPOSE 80/tcp
# Tue, 19 Dec 2017 20:25:29 GMT
CMD ["apache2-foreground"]
# Wed, 20 Dec 2017 00:34:15 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 20 Dec 2017 00:35:39 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 20 Dec 2017 00:38:14 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 20 Dec 2017 00:42:40 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 20 Dec 2017 00:42:40 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 20 Dec 2017 00:42:40 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Wed, 20 Dec 2017 00:42:41 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Wed, 20 Dec 2017 00:42:41 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Wed, 20 Dec 2017 00:42:41 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Wed, 20 Dec 2017 00:42:48 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185616061386b6fbf50284203b0bfdefaca12fc92bbb65d2f65c3d51dd942ad9`  
		Last Modified: Tue, 19 Dec 2017 21:56:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4330d62fa9e0e115103c33903ce48ec4a996fbbc967d707908cca0a721695202`  
		Last Modified: Tue, 19 Dec 2017 21:57:20 GMT  
		Size: 81.9 MB (81876656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457292eacdcc16e211a85cefa9639a958bf302d7ed9a1e7f346f4bce2723e861`  
		Last Modified: Tue, 19 Dec 2017 21:56:57 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1acf2a966b64e8b15c32f92d36b2a35210f99389c5f9ed8b5ed784705eff0739`  
		Last Modified: Tue, 19 Dec 2017 21:59:13 GMT  
		Size: 3.0 MB (3011936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c8840e3cd39914b497416507810e85144c9af05d135b74c6503a3ca7803c5a`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa8917ee733ff7aa83589a561dbbc6be85b5b663486933137e4ba61b05d3c01`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3003eebbec26bf087e7b02a4da284d5d1f818a4d92a9e1f92abb625cc5dcb7db`  
		Last Modified: Tue, 19 Dec 2017 21:59:10 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2353b7ccbd51bcf0307d67fcd641e0a21531c62561901bc6e37bc206c0c6a2`  
		Last Modified: Tue, 19 Dec 2017 21:59:11 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7ab65b6c7b38477321f2df5ad5117a9c31bb21618dc71ad0cb5f6045820f7d`  
		Last Modified: Tue, 19 Dec 2017 21:59:09 GMT  
		Size: 12.5 MB (12548450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284e28fbafc6621beec102af070de51e3bcdcdea2e2868459240b97e50b2cd88`  
		Last Modified: Tue, 19 Dec 2017 21:59:08 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b93b7470f2648b119676a0f90820d2932812f2d387d413f5b1a778bfc5efef`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 14.0 MB (14021773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1651c8a3614d315f2079f24af9221fe882c24f07d46ab9eaf37d593e753e4c`  
		Last Modified: Tue, 19 Dec 2017 21:59:09 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a91132e09c2e494786e3dca4794cc0878405112aef33a3b8176a8d1e51fec68`  
		Last Modified: Tue, 19 Dec 2017 21:59:07 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80da6d891c20ccc7aca5f3934be140377ad2c1fd3df4c10c9fcfb97e569e805`  
		Last Modified: Wed, 20 Dec 2017 00:51:46 GMT  
		Size: 55.8 MB (55815236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6adfa5ce7e893d1e908c4e2db51701d250e25ea3697477035c4d44177b5d3b`  
		Last Modified: Wed, 20 Dec 2017 00:51:28 GMT  
		Size: 1.5 MB (1490721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f20e2731251b61b0f908d2bab6ad869a367c181b89e92f11ccf06538db79dc`  
		Last Modified: Wed, 20 Dec 2017 00:51:28 GMT  
		Size: 326.1 KB (326094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063109862a89498faae624154840dfed9782ef0c163babd2d0819529a0ceae99`  
		Last Modified: Wed, 20 Dec 2017 00:51:29 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f48dc0eb2282ad791b13d566144f7526b44fd0fe465cf81a30af36a1f3407f0`  
		Last Modified: Wed, 20 Dec 2017 00:51:28 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0d7e934ca812280906e4bd5e55c94371e3c9852f8814d070ab099317fcd01b`  
		Last Modified: Wed, 20 Dec 2017 00:51:53 GMT  
		Size: 42.9 MB (42889060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:legacy`

```console
$ docker pull mediawiki@sha256:183b1bb1ed3ee0d45f2a2965b5da13e12674e11948e7c2bfcf5cc7922d5462fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:legacy` - linux; amd64

```console
$ docker pull mediawiki@sha256:1fb28a3098e3b9ea5fd8894967920c0ceae26daa8b56ac2fa971f249572afff4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.9 MB (261912772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5a7c9639b3de3a93cd992518df907890ba06682fe224c758b0fd901ea603e52`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 20:02:28 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 19 Dec 2017 20:02:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 19 Dec 2017 20:03:07 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 19 Dec 2017 20:03:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 19 Dec 2017 20:03:13 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 19 Dec 2017 20:16:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Dec 2017 20:16:07 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 19 Dec 2017 20:16:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 19 Dec 2017 20:16:08 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 19 Dec 2017 20:16:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 19 Dec 2017 20:16:09 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 19 Dec 2017 20:16:10 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 19 Dec 2017 20:16:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 19 Dec 2017 20:16:11 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 19 Dec 2017 20:16:12 GMT
ENV PHP_VERSION=7.1.12
# Tue, 19 Dec 2017 20:16:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Tue, 19 Dec 2017 20:16:12 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Tue, 19 Dec 2017 20:16:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 19 Dec 2017 20:16:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 19 Dec 2017 20:19:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 19 Dec 2017 20:25:28 GMT
COPY multi:6c3bbfbce55efcbe7075883db5f0dba98b25830060e57a35ce066c0dc58c7f0b in /usr/local/bin/ 
# Tue, 19 Dec 2017 20:25:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 19 Dec 2017 20:25:28 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 19 Dec 2017 20:25:29 GMT
WORKDIR /var/www/html
# Tue, 19 Dec 2017 20:25:29 GMT
EXPOSE 80/tcp
# Tue, 19 Dec 2017 20:25:29 GMT
CMD ["apache2-foreground"]
# Wed, 20 Dec 2017 00:34:15 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 20 Dec 2017 00:35:39 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 20 Dec 2017 00:38:14 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 20 Dec 2017 00:42:40 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 20 Dec 2017 00:42:40 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 20 Dec 2017 00:43:41 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.29
# Wed, 20 Dec 2017 00:43:42 GMT
ENV MEDIAWIKI_BRANCH=REL1_29
# Wed, 20 Dec 2017 00:43:42 GMT
ENV MEDIAWIKI_VERSION=1.29.2
# Wed, 20 Dec 2017 00:43:42 GMT
ENV MEDIAWIKI_SHA512=53c6ca82280938d1e3281aa296f44c86dcfbbdf82710b7de578e73e1ef3150db145e059c8c8208859bc437f7a7f7a13eed896be9d44fd364a0ee6d78893fbe86
# Wed, 20 Dec 2017 00:43:48 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185616061386b6fbf50284203b0bfdefaca12fc92bbb65d2f65c3d51dd942ad9`  
		Last Modified: Tue, 19 Dec 2017 21:56:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4330d62fa9e0e115103c33903ce48ec4a996fbbc967d707908cca0a721695202`  
		Last Modified: Tue, 19 Dec 2017 21:57:20 GMT  
		Size: 81.9 MB (81876656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457292eacdcc16e211a85cefa9639a958bf302d7ed9a1e7f346f4bce2723e861`  
		Last Modified: Tue, 19 Dec 2017 21:56:57 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1acf2a966b64e8b15c32f92d36b2a35210f99389c5f9ed8b5ed784705eff0739`  
		Last Modified: Tue, 19 Dec 2017 21:59:13 GMT  
		Size: 3.0 MB (3011936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c8840e3cd39914b497416507810e85144c9af05d135b74c6503a3ca7803c5a`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa8917ee733ff7aa83589a561dbbc6be85b5b663486933137e4ba61b05d3c01`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3003eebbec26bf087e7b02a4da284d5d1f818a4d92a9e1f92abb625cc5dcb7db`  
		Last Modified: Tue, 19 Dec 2017 21:59:10 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2353b7ccbd51bcf0307d67fcd641e0a21531c62561901bc6e37bc206c0c6a2`  
		Last Modified: Tue, 19 Dec 2017 21:59:11 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7ab65b6c7b38477321f2df5ad5117a9c31bb21618dc71ad0cb5f6045820f7d`  
		Last Modified: Tue, 19 Dec 2017 21:59:09 GMT  
		Size: 12.5 MB (12548450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284e28fbafc6621beec102af070de51e3bcdcdea2e2868459240b97e50b2cd88`  
		Last Modified: Tue, 19 Dec 2017 21:59:08 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b93b7470f2648b119676a0f90820d2932812f2d387d413f5b1a778bfc5efef`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 14.0 MB (14021773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1651c8a3614d315f2079f24af9221fe882c24f07d46ab9eaf37d593e753e4c`  
		Last Modified: Tue, 19 Dec 2017 21:59:09 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a91132e09c2e494786e3dca4794cc0878405112aef33a3b8176a8d1e51fec68`  
		Last Modified: Tue, 19 Dec 2017 21:59:07 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80da6d891c20ccc7aca5f3934be140377ad2c1fd3df4c10c9fcfb97e569e805`  
		Last Modified: Wed, 20 Dec 2017 00:51:46 GMT  
		Size: 55.8 MB (55815236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6adfa5ce7e893d1e908c4e2db51701d250e25ea3697477035c4d44177b5d3b`  
		Last Modified: Wed, 20 Dec 2017 00:51:28 GMT  
		Size: 1.5 MB (1490721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f20e2731251b61b0f908d2bab6ad869a367c181b89e92f11ccf06538db79dc`  
		Last Modified: Wed, 20 Dec 2017 00:51:28 GMT  
		Size: 326.1 KB (326094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063109862a89498faae624154840dfed9782ef0c163babd2d0819529a0ceae99`  
		Last Modified: Wed, 20 Dec 2017 00:51:29 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f48dc0eb2282ad791b13d566144f7526b44fd0fe465cf81a30af36a1f3407f0`  
		Last Modified: Wed, 20 Dec 2017 00:51:28 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c122ac75a731b2371265db7e852fe56aa11557d7501295f43ca454366f43986`  
		Last Modified: Wed, 20 Dec 2017 00:53:19 GMT  
		Size: 40.2 MB (40215329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:lts`

```console
$ docker pull mediawiki@sha256:7192d8e12531800efa735e4af118e900c90ed184ecf9055ab953ecc6fd689f8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:lts` - linux; amd64

```console
$ docker pull mediawiki@sha256:cc258b86b4a01a5e74b7e1da89fcad0fb8642544ee312ef475b6d20567fa39f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (252958531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a2d636f5442b559c3c61b5ac8cc773a23bc1c8a3de1508e3784fca1cecc73c`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 20:02:28 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 19 Dec 2017 20:02:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 19 Dec 2017 20:03:07 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 19 Dec 2017 20:03:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 19 Dec 2017 20:03:13 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 19 Dec 2017 20:16:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Dec 2017 20:16:07 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 19 Dec 2017 20:16:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 19 Dec 2017 20:16:08 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 19 Dec 2017 20:16:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 19 Dec 2017 20:16:09 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 19 Dec 2017 20:16:10 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 19 Dec 2017 20:16:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 19 Dec 2017 21:00:10 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 19 Dec 2017 21:00:10 GMT
ENV PHP_VERSION=7.0.26
# Tue, 19 Dec 2017 21:00:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Tue, 19 Dec 2017 21:00:11 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Tue, 19 Dec 2017 21:00:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 19 Dec 2017 21:00:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 19 Dec 2017 21:03:14 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 19 Dec 2017 21:08:34 GMT
COPY multi:6c3bbfbce55efcbe7075883db5f0dba98b25830060e57a35ce066c0dc58c7f0b in /usr/local/bin/ 
# Tue, 19 Dec 2017 21:08:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 19 Dec 2017 21:08:35 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 19 Dec 2017 21:08:35 GMT
WORKDIR /var/www/html
# Tue, 19 Dec 2017 21:08:35 GMT
EXPOSE 80/tcp
# Tue, 19 Dec 2017 21:08:43 GMT
CMD ["apache2-foreground"]
# Wed, 20 Dec 2017 00:44:37 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 20 Dec 2017 00:45:53 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 20 Dec 2017 00:46:45 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 20 Dec 2017 00:50:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 20 Dec 2017 00:50:54 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 20 Dec 2017 00:50:54 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 20 Dec 2017 00:50:55 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 20 Dec 2017 00:50:55 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Wed, 20 Dec 2017 00:50:55 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Wed, 20 Dec 2017 00:51:00 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185616061386b6fbf50284203b0bfdefaca12fc92bbb65d2f65c3d51dd942ad9`  
		Last Modified: Tue, 19 Dec 2017 21:56:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4330d62fa9e0e115103c33903ce48ec4a996fbbc967d707908cca0a721695202`  
		Last Modified: Tue, 19 Dec 2017 21:57:20 GMT  
		Size: 81.9 MB (81876656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457292eacdcc16e211a85cefa9639a958bf302d7ed9a1e7f346f4bce2723e861`  
		Last Modified: Tue, 19 Dec 2017 21:56:57 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1acf2a966b64e8b15c32f92d36b2a35210f99389c5f9ed8b5ed784705eff0739`  
		Last Modified: Tue, 19 Dec 2017 21:59:13 GMT  
		Size: 3.0 MB (3011936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c8840e3cd39914b497416507810e85144c9af05d135b74c6503a3ca7803c5a`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa8917ee733ff7aa83589a561dbbc6be85b5b663486933137e4ba61b05d3c01`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3003eebbec26bf087e7b02a4da284d5d1f818a4d92a9e1f92abb625cc5dcb7db`  
		Last Modified: Tue, 19 Dec 2017 21:59:10 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2353b7ccbd51bcf0307d67fcd641e0a21531c62561901bc6e37bc206c0c6a2`  
		Last Modified: Tue, 19 Dec 2017 21:59:11 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69676eb3c14ae19c56f84fd42d46fcf2732bca86b97b1dbbd70f07df5ff9d802`  
		Last Modified: Tue, 19 Dec 2017 22:02:44 GMT  
		Size: 12.3 MB (12320073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec6915925142f3d468c3b3386093f36f55024e1bd65f830c4b24d44175a001c`  
		Last Modified: Tue, 19 Dec 2017 22:02:43 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50c9706358baec9828aa574d37f3bcfd932d8c69ea1715ed54032925ef9e5d2`  
		Last Modified: Tue, 19 Dec 2017 22:02:47 GMT  
		Size: 13.7 MB (13707883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987c24b3dfe4af516744ed24856118bab9c94bdc6f953a3dad59ae52891131b7`  
		Last Modified: Tue, 19 Dec 2017 22:02:42 GMT  
		Size: 2.2 KB (2188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed00fa6b923a90f03a5b534b4b1a2a3707a2f7ae01aea04a0b81410a3b88b8be`  
		Last Modified: Tue, 19 Dec 2017 22:02:43 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f2d6fcb342742fff982ac1fa925792d4790e4a3388f20d6dffe25f882f4019`  
		Last Modified: Wed, 20 Dec 2017 00:54:21 GMT  
		Size: 55.8 MB (55814726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4223b9d7be94ead030dc8c8fb37a5359824cccc460bff6a53a0a8a8491ac51d5`  
		Last Modified: Wed, 20 Dec 2017 00:54:07 GMT  
		Size: 1.4 MB (1396951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867085fc8191caed31c9f9651b75e0d6768dd53f6c9c29d40d971da82dd6cab0`  
		Last Modified: Wed, 20 Dec 2017 00:54:06 GMT  
		Size: 324.7 KB (324697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda225fa47fc6dc2ad30fb09f2ef7f877ead75aba17c169d593d93f1e7ee1cc5`  
		Last Modified: Wed, 20 Dec 2017 00:54:06 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5df05ad168e83ccd205208554047669b5393df312616f6596fd50649c8dcda`  
		Last Modified: Wed, 20 Dec 2017 00:54:06 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6057db41c114b9a4a828376bb7e85457dc804ddb91e29bac0d548a135c3036`  
		Last Modified: Wed, 20 Dec 2017 00:54:16 GMT  
		Size: 31.9 MB (31899040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:stable`

```console
$ docker pull mediawiki@sha256:7907b8025daf7ec8b5d31930c2f6e9b497028692dcada8cf058e7df39f8b44c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:stable` - linux; amd64

```console
$ docker pull mediawiki@sha256:5c874cf357382c2d56cb42ecb4a37e8a056d626931167b6a6de79424ca01ea08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 MB (264586503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4f2d2a05c2502c92082db469503016b8f2ec7777d6c51ee824da57564a67f3`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 20:02:28 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 19 Dec 2017 20:02:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 19 Dec 2017 20:03:07 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 19 Dec 2017 20:03:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 19 Dec 2017 20:03:13 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 19 Dec 2017 20:16:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Dec 2017 20:16:07 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 19 Dec 2017 20:16:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 19 Dec 2017 20:16:08 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 19 Dec 2017 20:16:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 19 Dec 2017 20:16:09 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 19 Dec 2017 20:16:10 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 19 Dec 2017 20:16:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 20:16:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 19 Dec 2017 20:16:11 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 19 Dec 2017 20:16:12 GMT
ENV PHP_VERSION=7.1.12
# Tue, 19 Dec 2017 20:16:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Tue, 19 Dec 2017 20:16:12 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Tue, 19 Dec 2017 20:16:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 19 Dec 2017 20:16:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 19 Dec 2017 20:19:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 19 Dec 2017 20:25:28 GMT
COPY multi:6c3bbfbce55efcbe7075883db5f0dba98b25830060e57a35ce066c0dc58c7f0b in /usr/local/bin/ 
# Tue, 19 Dec 2017 20:25:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 19 Dec 2017 20:25:28 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 19 Dec 2017 20:25:29 GMT
WORKDIR /var/www/html
# Tue, 19 Dec 2017 20:25:29 GMT
EXPOSE 80/tcp
# Tue, 19 Dec 2017 20:25:29 GMT
CMD ["apache2-foreground"]
# Wed, 20 Dec 2017 00:34:15 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 20 Dec 2017 00:35:39 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 20 Dec 2017 00:38:14 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 20 Dec 2017 00:42:40 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 20 Dec 2017 00:42:40 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 20 Dec 2017 00:42:40 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Wed, 20 Dec 2017 00:42:41 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Wed, 20 Dec 2017 00:42:41 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Wed, 20 Dec 2017 00:42:41 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Wed, 20 Dec 2017 00:42:48 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185616061386b6fbf50284203b0bfdefaca12fc92bbb65d2f65c3d51dd942ad9`  
		Last Modified: Tue, 19 Dec 2017 21:56:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4330d62fa9e0e115103c33903ce48ec4a996fbbc967d707908cca0a721695202`  
		Last Modified: Tue, 19 Dec 2017 21:57:20 GMT  
		Size: 81.9 MB (81876656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457292eacdcc16e211a85cefa9639a958bf302d7ed9a1e7f346f4bce2723e861`  
		Last Modified: Tue, 19 Dec 2017 21:56:57 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1acf2a966b64e8b15c32f92d36b2a35210f99389c5f9ed8b5ed784705eff0739`  
		Last Modified: Tue, 19 Dec 2017 21:59:13 GMT  
		Size: 3.0 MB (3011936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c8840e3cd39914b497416507810e85144c9af05d135b74c6503a3ca7803c5a`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa8917ee733ff7aa83589a561dbbc6be85b5b663486933137e4ba61b05d3c01`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3003eebbec26bf087e7b02a4da284d5d1f818a4d92a9e1f92abb625cc5dcb7db`  
		Last Modified: Tue, 19 Dec 2017 21:59:10 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2353b7ccbd51bcf0307d67fcd641e0a21531c62561901bc6e37bc206c0c6a2`  
		Last Modified: Tue, 19 Dec 2017 21:59:11 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7ab65b6c7b38477321f2df5ad5117a9c31bb21618dc71ad0cb5f6045820f7d`  
		Last Modified: Tue, 19 Dec 2017 21:59:09 GMT  
		Size: 12.5 MB (12548450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284e28fbafc6621beec102af070de51e3bcdcdea2e2868459240b97e50b2cd88`  
		Last Modified: Tue, 19 Dec 2017 21:59:08 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b93b7470f2648b119676a0f90820d2932812f2d387d413f5b1a778bfc5efef`  
		Last Modified: Tue, 19 Dec 2017 21:59:12 GMT  
		Size: 14.0 MB (14021773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1651c8a3614d315f2079f24af9221fe882c24f07d46ab9eaf37d593e753e4c`  
		Last Modified: Tue, 19 Dec 2017 21:59:09 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a91132e09c2e494786e3dca4794cc0878405112aef33a3b8176a8d1e51fec68`  
		Last Modified: Tue, 19 Dec 2017 21:59:07 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80da6d891c20ccc7aca5f3934be140377ad2c1fd3df4c10c9fcfb97e569e805`  
		Last Modified: Wed, 20 Dec 2017 00:51:46 GMT  
		Size: 55.8 MB (55815236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6adfa5ce7e893d1e908c4e2db51701d250e25ea3697477035c4d44177b5d3b`  
		Last Modified: Wed, 20 Dec 2017 00:51:28 GMT  
		Size: 1.5 MB (1490721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f20e2731251b61b0f908d2bab6ad869a367c181b89e92f11ccf06538db79dc`  
		Last Modified: Wed, 20 Dec 2017 00:51:28 GMT  
		Size: 326.1 KB (326094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063109862a89498faae624154840dfed9782ef0c163babd2d0819529a0ceae99`  
		Last Modified: Wed, 20 Dec 2017 00:51:29 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f48dc0eb2282ad791b13d566144f7526b44fd0fe465cf81a30af36a1f3407f0`  
		Last Modified: Wed, 20 Dec 2017 00:51:28 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0d7e934ca812280906e4bd5e55c94371e3c9852f8814d070ab099317fcd01b`  
		Last Modified: Wed, 20 Dec 2017 00:51:53 GMT  
		Size: 42.9 MB (42889060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
