<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `piwik`

-	[`piwik:3.0.4-apache`](#piwik304-apache)
-	[`piwik:3.0-apache`](#piwik30-apache)
-	[`piwik:3-apache`](#piwik3-apache)
-	[`piwik:apache`](#piwikapache)
-	[`piwik:3.0.4`](#piwik304)
-	[`piwik:3.0`](#piwik30)
-	[`piwik:3`](#piwik3)
-	[`piwik:latest`](#piwiklatest)
-	[`piwik:3.0.4-fpm`](#piwik304-fpm)
-	[`piwik:3.0-fpm`](#piwik30-fpm)
-	[`piwik:3-fpm`](#piwik3-fpm)
-	[`piwik:fpm`](#piwikfpm)

## `piwik:3.0.4-apache`

```console
$ docker pull piwik@sha256:1703ef805c505e6f7c954e938c07b45d292a9321603a7942a71c2669e3b730c2
```

-	Platforms:
	-	linux; amd64

### `piwik:3.0.4-apache` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195271656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa59a31b66943ac32543c3944eafc550a5d491236b87f838a4b61c64502a288`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 19:05:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Mon, 24 Jul 2017 19:06:19 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:06:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 24 Jul 2017 19:06:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 24 Jul 2017 19:12:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:12:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 24 Jul 2017 19:12:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 24 Jul 2017 19:12:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 24 Jul 2017 19:12:11 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 24 Jul 2017 19:12:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 24 Jul 2017 19:12:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 24 Jul 2017 19:12:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 24 Jul 2017 19:12:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 03 Aug 2017 22:58:38 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_VERSION=5.6.31
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Thu, 03 Aug 2017 22:59:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 03 Aug 2017 22:59:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:01:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 03 Aug 2017 23:02:01 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:02:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 03 Aug 2017 23:02:05 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:02:05 GMT
WORKDIR /var/www/html
# Thu, 03 Aug 2017 23:02:05 GMT
EXPOSE 80/tcp
# Thu, 03 Aug 2017 23:02:06 GMT
CMD ["apache2-foreground"]
# Mon, 21 Aug 2017 22:57:35 GMT
MAINTAINER pierre@piwik.org
# Mon, 21 Aug 2017 22:57:55 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Mon, 21 Aug 2017 22:58:42 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Mon, 21 Aug 2017 22:58:49 GMT
RUN pecl install APCu geoip
# Mon, 21 Aug 2017 22:58:49 GMT
ENV PIWIK_VERSION=3.0.4
# Mon, 21 Aug 2017 22:58:56 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Mon, 21 Aug 2017 22:58:57 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Mon, 21 Aug 2017 22:58:58 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Mon, 21 Aug 2017 22:58:59 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Mon, 21 Aug 2017 22:58:59 GMT
VOLUME [/var/www/html]
# Mon, 21 Aug 2017 22:58:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 21 Aug 2017 22:58:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e75557f2447b87ddaca5925efb047b777da4e78479e18edcc01e8f1cbf5a5d`  
		Last Modified: Tue, 25 Jul 2017 00:39:30 GMT  
		Size: 82.5 MB (82494229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab4f72a86ad9272e97babb639ea792490d3212f0eb4b87a31696ee599903a81`  
		Last Modified: Tue, 25 Jul 2017 00:39:14 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e3508d42cad2382baef3952c55677e3672ede2793cebe9b1b3ed64c924703d`  
		Last Modified: Tue, 25 Jul 2017 00:39:14 GMT  
		Size: 2.8 MB (2784883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88792c88e1bc5fb371d7de6ec88fa6b402195052ed95a113dd03f1586fa56382`  
		Last Modified: Tue, 25 Jul 2017 00:39:13 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8a48cffe593c7a341fd72da06f482f94a58b277e9482ed151710c2e0c0fbca`  
		Last Modified: Tue, 25 Jul 2017 00:39:12 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c30cf9b42335519ba9c919fc9ddbed37817ed899e412f1a08ebdfd513006170`  
		Last Modified: Tue, 25 Jul 2017 00:39:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ec3cd3c9fb4aec4556f908ec396139adda55c655825a4e4002ce3f3a0df8de`  
		Last Modified: Tue, 25 Jul 2017 00:39:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dc58f8c255e5aebdaa50ed2d6ff495ec7525472c330cbcbb7fd86fd91689be`  
		Last Modified: Thu, 03 Aug 2017 23:24:21 GMT  
		Size: 12.6 MB (12588421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa29f24bd0765597b60440dae0d6a39e01ab800918b68844add9243d8feebc8`  
		Last Modified: Thu, 03 Aug 2017 23:24:19 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619d91d8685d217877f7c1f5974c2693365cbbe1f62a96d40543d978457efb96`  
		Last Modified: Thu, 03 Aug 2017 23:24:22 GMT  
		Size: 9.2 MB (9175263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f13c5627babb6538a28f616d489bb47d680068b0f01672b835e398df679077c`  
		Last Modified: Thu, 03 Aug 2017 23:24:20 GMT  
		Size: 2.1 KB (2123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81dca82331cd4c0de00d7593e47d9a38379fb3a0388fd4e78e613bdae19a7b50`  
		Last Modified: Thu, 03 Aug 2017 23:24:19 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f09fdded82006fded629e70473c51df6bf3fe1944b4f3d7a2b6b1e72c9b671d`  
		Last Modified: Mon, 21 Aug 2017 23:00:41 GMT  
		Size: 7.1 MB (7094173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52dfbff7f1339c466caea3c6421e2b54559186428b437f3a0e6e2c8cba0aaa5a`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 1.1 MB (1128818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff596ceda8a5a4945204b46ca8971fe620f1c1ad55ef4f90a8c7fc6b3a5ddd5`  
		Last Modified: Mon, 21 Aug 2017 23:00:37 GMT  
		Size: 46.6 KB (46649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3361d117e42e6a351c0c2c70e9d211196d6e8b457d103892a75cc1b59882dd`  
		Last Modified: Mon, 21 Aug 2017 23:00:38 GMT  
		Size: 14.2 MB (14241025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61c539bfd45c3b0b74ea896e4830e43aeed2cc72f53c8aebeae51490e8eedc2`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67320589f1ce7ba654f9415e95958a65401d8f1a1fde3ace25708bdf452bbcad`  
		Last Modified: Mon, 21 Aug 2017 23:00:37 GMT  
		Size: 13.1 MB (13106010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95b40079009a4fe09a86cf043a2c4ac885b2402cba3e129c2fb3b0e265c3225`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.0-apache`

```console
$ docker pull piwik@sha256:1703ef805c505e6f7c954e938c07b45d292a9321603a7942a71c2669e3b730c2
```

-	Platforms:
	-	linux; amd64

### `piwik:3.0-apache` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195271656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa59a31b66943ac32543c3944eafc550a5d491236b87f838a4b61c64502a288`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 19:05:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Mon, 24 Jul 2017 19:06:19 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:06:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 24 Jul 2017 19:06:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 24 Jul 2017 19:12:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:12:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 24 Jul 2017 19:12:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 24 Jul 2017 19:12:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 24 Jul 2017 19:12:11 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 24 Jul 2017 19:12:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 24 Jul 2017 19:12:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 24 Jul 2017 19:12:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 24 Jul 2017 19:12:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 03 Aug 2017 22:58:38 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_VERSION=5.6.31
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Thu, 03 Aug 2017 22:59:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 03 Aug 2017 22:59:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:01:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 03 Aug 2017 23:02:01 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:02:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 03 Aug 2017 23:02:05 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:02:05 GMT
WORKDIR /var/www/html
# Thu, 03 Aug 2017 23:02:05 GMT
EXPOSE 80/tcp
# Thu, 03 Aug 2017 23:02:06 GMT
CMD ["apache2-foreground"]
# Mon, 21 Aug 2017 22:57:35 GMT
MAINTAINER pierre@piwik.org
# Mon, 21 Aug 2017 22:57:55 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Mon, 21 Aug 2017 22:58:42 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Mon, 21 Aug 2017 22:58:49 GMT
RUN pecl install APCu geoip
# Mon, 21 Aug 2017 22:58:49 GMT
ENV PIWIK_VERSION=3.0.4
# Mon, 21 Aug 2017 22:58:56 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Mon, 21 Aug 2017 22:58:57 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Mon, 21 Aug 2017 22:58:58 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Mon, 21 Aug 2017 22:58:59 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Mon, 21 Aug 2017 22:58:59 GMT
VOLUME [/var/www/html]
# Mon, 21 Aug 2017 22:58:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 21 Aug 2017 22:58:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e75557f2447b87ddaca5925efb047b777da4e78479e18edcc01e8f1cbf5a5d`  
		Last Modified: Tue, 25 Jul 2017 00:39:30 GMT  
		Size: 82.5 MB (82494229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab4f72a86ad9272e97babb639ea792490d3212f0eb4b87a31696ee599903a81`  
		Last Modified: Tue, 25 Jul 2017 00:39:14 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e3508d42cad2382baef3952c55677e3672ede2793cebe9b1b3ed64c924703d`  
		Last Modified: Tue, 25 Jul 2017 00:39:14 GMT  
		Size: 2.8 MB (2784883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88792c88e1bc5fb371d7de6ec88fa6b402195052ed95a113dd03f1586fa56382`  
		Last Modified: Tue, 25 Jul 2017 00:39:13 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8a48cffe593c7a341fd72da06f482f94a58b277e9482ed151710c2e0c0fbca`  
		Last Modified: Tue, 25 Jul 2017 00:39:12 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c30cf9b42335519ba9c919fc9ddbed37817ed899e412f1a08ebdfd513006170`  
		Last Modified: Tue, 25 Jul 2017 00:39:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ec3cd3c9fb4aec4556f908ec396139adda55c655825a4e4002ce3f3a0df8de`  
		Last Modified: Tue, 25 Jul 2017 00:39:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dc58f8c255e5aebdaa50ed2d6ff495ec7525472c330cbcbb7fd86fd91689be`  
		Last Modified: Thu, 03 Aug 2017 23:24:21 GMT  
		Size: 12.6 MB (12588421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa29f24bd0765597b60440dae0d6a39e01ab800918b68844add9243d8feebc8`  
		Last Modified: Thu, 03 Aug 2017 23:24:19 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619d91d8685d217877f7c1f5974c2693365cbbe1f62a96d40543d978457efb96`  
		Last Modified: Thu, 03 Aug 2017 23:24:22 GMT  
		Size: 9.2 MB (9175263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f13c5627babb6538a28f616d489bb47d680068b0f01672b835e398df679077c`  
		Last Modified: Thu, 03 Aug 2017 23:24:20 GMT  
		Size: 2.1 KB (2123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81dca82331cd4c0de00d7593e47d9a38379fb3a0388fd4e78e613bdae19a7b50`  
		Last Modified: Thu, 03 Aug 2017 23:24:19 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f09fdded82006fded629e70473c51df6bf3fe1944b4f3d7a2b6b1e72c9b671d`  
		Last Modified: Mon, 21 Aug 2017 23:00:41 GMT  
		Size: 7.1 MB (7094173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52dfbff7f1339c466caea3c6421e2b54559186428b437f3a0e6e2c8cba0aaa5a`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 1.1 MB (1128818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff596ceda8a5a4945204b46ca8971fe620f1c1ad55ef4f90a8c7fc6b3a5ddd5`  
		Last Modified: Mon, 21 Aug 2017 23:00:37 GMT  
		Size: 46.6 KB (46649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3361d117e42e6a351c0c2c70e9d211196d6e8b457d103892a75cc1b59882dd`  
		Last Modified: Mon, 21 Aug 2017 23:00:38 GMT  
		Size: 14.2 MB (14241025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61c539bfd45c3b0b74ea896e4830e43aeed2cc72f53c8aebeae51490e8eedc2`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67320589f1ce7ba654f9415e95958a65401d8f1a1fde3ace25708bdf452bbcad`  
		Last Modified: Mon, 21 Aug 2017 23:00:37 GMT  
		Size: 13.1 MB (13106010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95b40079009a4fe09a86cf043a2c4ac885b2402cba3e129c2fb3b0e265c3225`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3-apache`

```console
$ docker pull piwik@sha256:1703ef805c505e6f7c954e938c07b45d292a9321603a7942a71c2669e3b730c2
```

-	Platforms:
	-	linux; amd64

### `piwik:3-apache` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195271656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa59a31b66943ac32543c3944eafc550a5d491236b87f838a4b61c64502a288`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 19:05:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Mon, 24 Jul 2017 19:06:19 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:06:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 24 Jul 2017 19:06:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 24 Jul 2017 19:12:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:12:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 24 Jul 2017 19:12:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 24 Jul 2017 19:12:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 24 Jul 2017 19:12:11 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 24 Jul 2017 19:12:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 24 Jul 2017 19:12:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 24 Jul 2017 19:12:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 24 Jul 2017 19:12:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 03 Aug 2017 22:58:38 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_VERSION=5.6.31
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Thu, 03 Aug 2017 22:59:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 03 Aug 2017 22:59:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:01:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 03 Aug 2017 23:02:01 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:02:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 03 Aug 2017 23:02:05 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:02:05 GMT
WORKDIR /var/www/html
# Thu, 03 Aug 2017 23:02:05 GMT
EXPOSE 80/tcp
# Thu, 03 Aug 2017 23:02:06 GMT
CMD ["apache2-foreground"]
# Mon, 21 Aug 2017 22:57:35 GMT
MAINTAINER pierre@piwik.org
# Mon, 21 Aug 2017 22:57:55 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Mon, 21 Aug 2017 22:58:42 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Mon, 21 Aug 2017 22:58:49 GMT
RUN pecl install APCu geoip
# Mon, 21 Aug 2017 22:58:49 GMT
ENV PIWIK_VERSION=3.0.4
# Mon, 21 Aug 2017 22:58:56 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Mon, 21 Aug 2017 22:58:57 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Mon, 21 Aug 2017 22:58:58 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Mon, 21 Aug 2017 22:58:59 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Mon, 21 Aug 2017 22:58:59 GMT
VOLUME [/var/www/html]
# Mon, 21 Aug 2017 22:58:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 21 Aug 2017 22:58:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e75557f2447b87ddaca5925efb047b777da4e78479e18edcc01e8f1cbf5a5d`  
		Last Modified: Tue, 25 Jul 2017 00:39:30 GMT  
		Size: 82.5 MB (82494229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab4f72a86ad9272e97babb639ea792490d3212f0eb4b87a31696ee599903a81`  
		Last Modified: Tue, 25 Jul 2017 00:39:14 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e3508d42cad2382baef3952c55677e3672ede2793cebe9b1b3ed64c924703d`  
		Last Modified: Tue, 25 Jul 2017 00:39:14 GMT  
		Size: 2.8 MB (2784883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88792c88e1bc5fb371d7de6ec88fa6b402195052ed95a113dd03f1586fa56382`  
		Last Modified: Tue, 25 Jul 2017 00:39:13 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8a48cffe593c7a341fd72da06f482f94a58b277e9482ed151710c2e0c0fbca`  
		Last Modified: Tue, 25 Jul 2017 00:39:12 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c30cf9b42335519ba9c919fc9ddbed37817ed899e412f1a08ebdfd513006170`  
		Last Modified: Tue, 25 Jul 2017 00:39:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ec3cd3c9fb4aec4556f908ec396139adda55c655825a4e4002ce3f3a0df8de`  
		Last Modified: Tue, 25 Jul 2017 00:39:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dc58f8c255e5aebdaa50ed2d6ff495ec7525472c330cbcbb7fd86fd91689be`  
		Last Modified: Thu, 03 Aug 2017 23:24:21 GMT  
		Size: 12.6 MB (12588421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa29f24bd0765597b60440dae0d6a39e01ab800918b68844add9243d8feebc8`  
		Last Modified: Thu, 03 Aug 2017 23:24:19 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619d91d8685d217877f7c1f5974c2693365cbbe1f62a96d40543d978457efb96`  
		Last Modified: Thu, 03 Aug 2017 23:24:22 GMT  
		Size: 9.2 MB (9175263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f13c5627babb6538a28f616d489bb47d680068b0f01672b835e398df679077c`  
		Last Modified: Thu, 03 Aug 2017 23:24:20 GMT  
		Size: 2.1 KB (2123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81dca82331cd4c0de00d7593e47d9a38379fb3a0388fd4e78e613bdae19a7b50`  
		Last Modified: Thu, 03 Aug 2017 23:24:19 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f09fdded82006fded629e70473c51df6bf3fe1944b4f3d7a2b6b1e72c9b671d`  
		Last Modified: Mon, 21 Aug 2017 23:00:41 GMT  
		Size: 7.1 MB (7094173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52dfbff7f1339c466caea3c6421e2b54559186428b437f3a0e6e2c8cba0aaa5a`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 1.1 MB (1128818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff596ceda8a5a4945204b46ca8971fe620f1c1ad55ef4f90a8c7fc6b3a5ddd5`  
		Last Modified: Mon, 21 Aug 2017 23:00:37 GMT  
		Size: 46.6 KB (46649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3361d117e42e6a351c0c2c70e9d211196d6e8b457d103892a75cc1b59882dd`  
		Last Modified: Mon, 21 Aug 2017 23:00:38 GMT  
		Size: 14.2 MB (14241025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61c539bfd45c3b0b74ea896e4830e43aeed2cc72f53c8aebeae51490e8eedc2`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67320589f1ce7ba654f9415e95958a65401d8f1a1fde3ace25708bdf452bbcad`  
		Last Modified: Mon, 21 Aug 2017 23:00:37 GMT  
		Size: 13.1 MB (13106010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95b40079009a4fe09a86cf043a2c4ac885b2402cba3e129c2fb3b0e265c3225`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:apache`

```console
$ docker pull piwik@sha256:1703ef805c505e6f7c954e938c07b45d292a9321603a7942a71c2669e3b730c2
```

-	Platforms:
	-	linux; amd64

### `piwik:apache` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195271656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa59a31b66943ac32543c3944eafc550a5d491236b87f838a4b61c64502a288`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 19:05:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Mon, 24 Jul 2017 19:06:19 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:06:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 24 Jul 2017 19:06:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 24 Jul 2017 19:12:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:12:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 24 Jul 2017 19:12:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 24 Jul 2017 19:12:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 24 Jul 2017 19:12:11 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 24 Jul 2017 19:12:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 24 Jul 2017 19:12:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 24 Jul 2017 19:12:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 24 Jul 2017 19:12:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 03 Aug 2017 22:58:38 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_VERSION=5.6.31
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Thu, 03 Aug 2017 22:59:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 03 Aug 2017 22:59:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:01:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 03 Aug 2017 23:02:01 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:02:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 03 Aug 2017 23:02:05 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:02:05 GMT
WORKDIR /var/www/html
# Thu, 03 Aug 2017 23:02:05 GMT
EXPOSE 80/tcp
# Thu, 03 Aug 2017 23:02:06 GMT
CMD ["apache2-foreground"]
# Mon, 21 Aug 2017 22:57:35 GMT
MAINTAINER pierre@piwik.org
# Mon, 21 Aug 2017 22:57:55 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Mon, 21 Aug 2017 22:58:42 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Mon, 21 Aug 2017 22:58:49 GMT
RUN pecl install APCu geoip
# Mon, 21 Aug 2017 22:58:49 GMT
ENV PIWIK_VERSION=3.0.4
# Mon, 21 Aug 2017 22:58:56 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Mon, 21 Aug 2017 22:58:57 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Mon, 21 Aug 2017 22:58:58 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Mon, 21 Aug 2017 22:58:59 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Mon, 21 Aug 2017 22:58:59 GMT
VOLUME [/var/www/html]
# Mon, 21 Aug 2017 22:58:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 21 Aug 2017 22:58:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e75557f2447b87ddaca5925efb047b777da4e78479e18edcc01e8f1cbf5a5d`  
		Last Modified: Tue, 25 Jul 2017 00:39:30 GMT  
		Size: 82.5 MB (82494229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab4f72a86ad9272e97babb639ea792490d3212f0eb4b87a31696ee599903a81`  
		Last Modified: Tue, 25 Jul 2017 00:39:14 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e3508d42cad2382baef3952c55677e3672ede2793cebe9b1b3ed64c924703d`  
		Last Modified: Tue, 25 Jul 2017 00:39:14 GMT  
		Size: 2.8 MB (2784883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88792c88e1bc5fb371d7de6ec88fa6b402195052ed95a113dd03f1586fa56382`  
		Last Modified: Tue, 25 Jul 2017 00:39:13 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8a48cffe593c7a341fd72da06f482f94a58b277e9482ed151710c2e0c0fbca`  
		Last Modified: Tue, 25 Jul 2017 00:39:12 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c30cf9b42335519ba9c919fc9ddbed37817ed899e412f1a08ebdfd513006170`  
		Last Modified: Tue, 25 Jul 2017 00:39:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ec3cd3c9fb4aec4556f908ec396139adda55c655825a4e4002ce3f3a0df8de`  
		Last Modified: Tue, 25 Jul 2017 00:39:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dc58f8c255e5aebdaa50ed2d6ff495ec7525472c330cbcbb7fd86fd91689be`  
		Last Modified: Thu, 03 Aug 2017 23:24:21 GMT  
		Size: 12.6 MB (12588421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa29f24bd0765597b60440dae0d6a39e01ab800918b68844add9243d8feebc8`  
		Last Modified: Thu, 03 Aug 2017 23:24:19 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619d91d8685d217877f7c1f5974c2693365cbbe1f62a96d40543d978457efb96`  
		Last Modified: Thu, 03 Aug 2017 23:24:22 GMT  
		Size: 9.2 MB (9175263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f13c5627babb6538a28f616d489bb47d680068b0f01672b835e398df679077c`  
		Last Modified: Thu, 03 Aug 2017 23:24:20 GMT  
		Size: 2.1 KB (2123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81dca82331cd4c0de00d7593e47d9a38379fb3a0388fd4e78e613bdae19a7b50`  
		Last Modified: Thu, 03 Aug 2017 23:24:19 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f09fdded82006fded629e70473c51df6bf3fe1944b4f3d7a2b6b1e72c9b671d`  
		Last Modified: Mon, 21 Aug 2017 23:00:41 GMT  
		Size: 7.1 MB (7094173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52dfbff7f1339c466caea3c6421e2b54559186428b437f3a0e6e2c8cba0aaa5a`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 1.1 MB (1128818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff596ceda8a5a4945204b46ca8971fe620f1c1ad55ef4f90a8c7fc6b3a5ddd5`  
		Last Modified: Mon, 21 Aug 2017 23:00:37 GMT  
		Size: 46.6 KB (46649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3361d117e42e6a351c0c2c70e9d211196d6e8b457d103892a75cc1b59882dd`  
		Last Modified: Mon, 21 Aug 2017 23:00:38 GMT  
		Size: 14.2 MB (14241025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61c539bfd45c3b0b74ea896e4830e43aeed2cc72f53c8aebeae51490e8eedc2`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67320589f1ce7ba654f9415e95958a65401d8f1a1fde3ace25708bdf452bbcad`  
		Last Modified: Mon, 21 Aug 2017 23:00:37 GMT  
		Size: 13.1 MB (13106010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95b40079009a4fe09a86cf043a2c4ac885b2402cba3e129c2fb3b0e265c3225`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.0.4`

```console
$ docker pull piwik@sha256:1703ef805c505e6f7c954e938c07b45d292a9321603a7942a71c2669e3b730c2
```

-	Platforms:
	-	linux; amd64

### `piwik:3.0.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195271656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa59a31b66943ac32543c3944eafc550a5d491236b87f838a4b61c64502a288`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 19:05:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Mon, 24 Jul 2017 19:06:19 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:06:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 24 Jul 2017 19:06:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 24 Jul 2017 19:12:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:12:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 24 Jul 2017 19:12:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 24 Jul 2017 19:12:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 24 Jul 2017 19:12:11 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 24 Jul 2017 19:12:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 24 Jul 2017 19:12:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 24 Jul 2017 19:12:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 24 Jul 2017 19:12:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 03 Aug 2017 22:58:38 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_VERSION=5.6.31
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Thu, 03 Aug 2017 22:59:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 03 Aug 2017 22:59:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:01:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 03 Aug 2017 23:02:01 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:02:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 03 Aug 2017 23:02:05 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:02:05 GMT
WORKDIR /var/www/html
# Thu, 03 Aug 2017 23:02:05 GMT
EXPOSE 80/tcp
# Thu, 03 Aug 2017 23:02:06 GMT
CMD ["apache2-foreground"]
# Mon, 21 Aug 2017 22:57:35 GMT
MAINTAINER pierre@piwik.org
# Mon, 21 Aug 2017 22:57:55 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Mon, 21 Aug 2017 22:58:42 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Mon, 21 Aug 2017 22:58:49 GMT
RUN pecl install APCu geoip
# Mon, 21 Aug 2017 22:58:49 GMT
ENV PIWIK_VERSION=3.0.4
# Mon, 21 Aug 2017 22:58:56 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Mon, 21 Aug 2017 22:58:57 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Mon, 21 Aug 2017 22:58:58 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Mon, 21 Aug 2017 22:58:59 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Mon, 21 Aug 2017 22:58:59 GMT
VOLUME [/var/www/html]
# Mon, 21 Aug 2017 22:58:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 21 Aug 2017 22:58:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e75557f2447b87ddaca5925efb047b777da4e78479e18edcc01e8f1cbf5a5d`  
		Last Modified: Tue, 25 Jul 2017 00:39:30 GMT  
		Size: 82.5 MB (82494229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab4f72a86ad9272e97babb639ea792490d3212f0eb4b87a31696ee599903a81`  
		Last Modified: Tue, 25 Jul 2017 00:39:14 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e3508d42cad2382baef3952c55677e3672ede2793cebe9b1b3ed64c924703d`  
		Last Modified: Tue, 25 Jul 2017 00:39:14 GMT  
		Size: 2.8 MB (2784883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88792c88e1bc5fb371d7de6ec88fa6b402195052ed95a113dd03f1586fa56382`  
		Last Modified: Tue, 25 Jul 2017 00:39:13 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8a48cffe593c7a341fd72da06f482f94a58b277e9482ed151710c2e0c0fbca`  
		Last Modified: Tue, 25 Jul 2017 00:39:12 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c30cf9b42335519ba9c919fc9ddbed37817ed899e412f1a08ebdfd513006170`  
		Last Modified: Tue, 25 Jul 2017 00:39:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ec3cd3c9fb4aec4556f908ec396139adda55c655825a4e4002ce3f3a0df8de`  
		Last Modified: Tue, 25 Jul 2017 00:39:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dc58f8c255e5aebdaa50ed2d6ff495ec7525472c330cbcbb7fd86fd91689be`  
		Last Modified: Thu, 03 Aug 2017 23:24:21 GMT  
		Size: 12.6 MB (12588421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa29f24bd0765597b60440dae0d6a39e01ab800918b68844add9243d8feebc8`  
		Last Modified: Thu, 03 Aug 2017 23:24:19 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619d91d8685d217877f7c1f5974c2693365cbbe1f62a96d40543d978457efb96`  
		Last Modified: Thu, 03 Aug 2017 23:24:22 GMT  
		Size: 9.2 MB (9175263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f13c5627babb6538a28f616d489bb47d680068b0f01672b835e398df679077c`  
		Last Modified: Thu, 03 Aug 2017 23:24:20 GMT  
		Size: 2.1 KB (2123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81dca82331cd4c0de00d7593e47d9a38379fb3a0388fd4e78e613bdae19a7b50`  
		Last Modified: Thu, 03 Aug 2017 23:24:19 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f09fdded82006fded629e70473c51df6bf3fe1944b4f3d7a2b6b1e72c9b671d`  
		Last Modified: Mon, 21 Aug 2017 23:00:41 GMT  
		Size: 7.1 MB (7094173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52dfbff7f1339c466caea3c6421e2b54559186428b437f3a0e6e2c8cba0aaa5a`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 1.1 MB (1128818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff596ceda8a5a4945204b46ca8971fe620f1c1ad55ef4f90a8c7fc6b3a5ddd5`  
		Last Modified: Mon, 21 Aug 2017 23:00:37 GMT  
		Size: 46.6 KB (46649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3361d117e42e6a351c0c2c70e9d211196d6e8b457d103892a75cc1b59882dd`  
		Last Modified: Mon, 21 Aug 2017 23:00:38 GMT  
		Size: 14.2 MB (14241025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61c539bfd45c3b0b74ea896e4830e43aeed2cc72f53c8aebeae51490e8eedc2`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67320589f1ce7ba654f9415e95958a65401d8f1a1fde3ace25708bdf452bbcad`  
		Last Modified: Mon, 21 Aug 2017 23:00:37 GMT  
		Size: 13.1 MB (13106010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95b40079009a4fe09a86cf043a2c4ac885b2402cba3e129c2fb3b0e265c3225`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.0`

```console
$ docker pull piwik@sha256:1703ef805c505e6f7c954e938c07b45d292a9321603a7942a71c2669e3b730c2
```

-	Platforms:
	-	linux; amd64

### `piwik:3.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195271656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa59a31b66943ac32543c3944eafc550a5d491236b87f838a4b61c64502a288`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 19:05:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Mon, 24 Jul 2017 19:06:19 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:06:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 24 Jul 2017 19:06:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 24 Jul 2017 19:12:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:12:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 24 Jul 2017 19:12:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 24 Jul 2017 19:12:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 24 Jul 2017 19:12:11 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 24 Jul 2017 19:12:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 24 Jul 2017 19:12:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 24 Jul 2017 19:12:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 24 Jul 2017 19:12:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 03 Aug 2017 22:58:38 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_VERSION=5.6.31
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Thu, 03 Aug 2017 22:59:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 03 Aug 2017 22:59:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:01:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 03 Aug 2017 23:02:01 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:02:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 03 Aug 2017 23:02:05 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:02:05 GMT
WORKDIR /var/www/html
# Thu, 03 Aug 2017 23:02:05 GMT
EXPOSE 80/tcp
# Thu, 03 Aug 2017 23:02:06 GMT
CMD ["apache2-foreground"]
# Mon, 21 Aug 2017 22:57:35 GMT
MAINTAINER pierre@piwik.org
# Mon, 21 Aug 2017 22:57:55 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Mon, 21 Aug 2017 22:58:42 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Mon, 21 Aug 2017 22:58:49 GMT
RUN pecl install APCu geoip
# Mon, 21 Aug 2017 22:58:49 GMT
ENV PIWIK_VERSION=3.0.4
# Mon, 21 Aug 2017 22:58:56 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Mon, 21 Aug 2017 22:58:57 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Mon, 21 Aug 2017 22:58:58 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Mon, 21 Aug 2017 22:58:59 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Mon, 21 Aug 2017 22:58:59 GMT
VOLUME [/var/www/html]
# Mon, 21 Aug 2017 22:58:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 21 Aug 2017 22:58:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e75557f2447b87ddaca5925efb047b777da4e78479e18edcc01e8f1cbf5a5d`  
		Last Modified: Tue, 25 Jul 2017 00:39:30 GMT  
		Size: 82.5 MB (82494229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab4f72a86ad9272e97babb639ea792490d3212f0eb4b87a31696ee599903a81`  
		Last Modified: Tue, 25 Jul 2017 00:39:14 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e3508d42cad2382baef3952c55677e3672ede2793cebe9b1b3ed64c924703d`  
		Last Modified: Tue, 25 Jul 2017 00:39:14 GMT  
		Size: 2.8 MB (2784883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88792c88e1bc5fb371d7de6ec88fa6b402195052ed95a113dd03f1586fa56382`  
		Last Modified: Tue, 25 Jul 2017 00:39:13 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8a48cffe593c7a341fd72da06f482f94a58b277e9482ed151710c2e0c0fbca`  
		Last Modified: Tue, 25 Jul 2017 00:39:12 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c30cf9b42335519ba9c919fc9ddbed37817ed899e412f1a08ebdfd513006170`  
		Last Modified: Tue, 25 Jul 2017 00:39:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ec3cd3c9fb4aec4556f908ec396139adda55c655825a4e4002ce3f3a0df8de`  
		Last Modified: Tue, 25 Jul 2017 00:39:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dc58f8c255e5aebdaa50ed2d6ff495ec7525472c330cbcbb7fd86fd91689be`  
		Last Modified: Thu, 03 Aug 2017 23:24:21 GMT  
		Size: 12.6 MB (12588421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa29f24bd0765597b60440dae0d6a39e01ab800918b68844add9243d8feebc8`  
		Last Modified: Thu, 03 Aug 2017 23:24:19 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619d91d8685d217877f7c1f5974c2693365cbbe1f62a96d40543d978457efb96`  
		Last Modified: Thu, 03 Aug 2017 23:24:22 GMT  
		Size: 9.2 MB (9175263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f13c5627babb6538a28f616d489bb47d680068b0f01672b835e398df679077c`  
		Last Modified: Thu, 03 Aug 2017 23:24:20 GMT  
		Size: 2.1 KB (2123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81dca82331cd4c0de00d7593e47d9a38379fb3a0388fd4e78e613bdae19a7b50`  
		Last Modified: Thu, 03 Aug 2017 23:24:19 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f09fdded82006fded629e70473c51df6bf3fe1944b4f3d7a2b6b1e72c9b671d`  
		Last Modified: Mon, 21 Aug 2017 23:00:41 GMT  
		Size: 7.1 MB (7094173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52dfbff7f1339c466caea3c6421e2b54559186428b437f3a0e6e2c8cba0aaa5a`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 1.1 MB (1128818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff596ceda8a5a4945204b46ca8971fe620f1c1ad55ef4f90a8c7fc6b3a5ddd5`  
		Last Modified: Mon, 21 Aug 2017 23:00:37 GMT  
		Size: 46.6 KB (46649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3361d117e42e6a351c0c2c70e9d211196d6e8b457d103892a75cc1b59882dd`  
		Last Modified: Mon, 21 Aug 2017 23:00:38 GMT  
		Size: 14.2 MB (14241025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61c539bfd45c3b0b74ea896e4830e43aeed2cc72f53c8aebeae51490e8eedc2`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67320589f1ce7ba654f9415e95958a65401d8f1a1fde3ace25708bdf452bbcad`  
		Last Modified: Mon, 21 Aug 2017 23:00:37 GMT  
		Size: 13.1 MB (13106010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95b40079009a4fe09a86cf043a2c4ac885b2402cba3e129c2fb3b0e265c3225`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3`

```console
$ docker pull piwik@sha256:1703ef805c505e6f7c954e938c07b45d292a9321603a7942a71c2669e3b730c2
```

-	Platforms:
	-	linux; amd64

### `piwik:3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195271656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa59a31b66943ac32543c3944eafc550a5d491236b87f838a4b61c64502a288`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 19:05:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Mon, 24 Jul 2017 19:06:19 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:06:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 24 Jul 2017 19:06:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 24 Jul 2017 19:12:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:12:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 24 Jul 2017 19:12:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 24 Jul 2017 19:12:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 24 Jul 2017 19:12:11 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 24 Jul 2017 19:12:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 24 Jul 2017 19:12:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 24 Jul 2017 19:12:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 24 Jul 2017 19:12:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 03 Aug 2017 22:58:38 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_VERSION=5.6.31
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Thu, 03 Aug 2017 22:59:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 03 Aug 2017 22:59:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:01:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 03 Aug 2017 23:02:01 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:02:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 03 Aug 2017 23:02:05 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:02:05 GMT
WORKDIR /var/www/html
# Thu, 03 Aug 2017 23:02:05 GMT
EXPOSE 80/tcp
# Thu, 03 Aug 2017 23:02:06 GMT
CMD ["apache2-foreground"]
# Mon, 21 Aug 2017 22:57:35 GMT
MAINTAINER pierre@piwik.org
# Mon, 21 Aug 2017 22:57:55 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Mon, 21 Aug 2017 22:58:42 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Mon, 21 Aug 2017 22:58:49 GMT
RUN pecl install APCu geoip
# Mon, 21 Aug 2017 22:58:49 GMT
ENV PIWIK_VERSION=3.0.4
# Mon, 21 Aug 2017 22:58:56 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Mon, 21 Aug 2017 22:58:57 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Mon, 21 Aug 2017 22:58:58 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Mon, 21 Aug 2017 22:58:59 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Mon, 21 Aug 2017 22:58:59 GMT
VOLUME [/var/www/html]
# Mon, 21 Aug 2017 22:58:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 21 Aug 2017 22:58:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e75557f2447b87ddaca5925efb047b777da4e78479e18edcc01e8f1cbf5a5d`  
		Last Modified: Tue, 25 Jul 2017 00:39:30 GMT  
		Size: 82.5 MB (82494229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab4f72a86ad9272e97babb639ea792490d3212f0eb4b87a31696ee599903a81`  
		Last Modified: Tue, 25 Jul 2017 00:39:14 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e3508d42cad2382baef3952c55677e3672ede2793cebe9b1b3ed64c924703d`  
		Last Modified: Tue, 25 Jul 2017 00:39:14 GMT  
		Size: 2.8 MB (2784883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88792c88e1bc5fb371d7de6ec88fa6b402195052ed95a113dd03f1586fa56382`  
		Last Modified: Tue, 25 Jul 2017 00:39:13 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8a48cffe593c7a341fd72da06f482f94a58b277e9482ed151710c2e0c0fbca`  
		Last Modified: Tue, 25 Jul 2017 00:39:12 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c30cf9b42335519ba9c919fc9ddbed37817ed899e412f1a08ebdfd513006170`  
		Last Modified: Tue, 25 Jul 2017 00:39:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ec3cd3c9fb4aec4556f908ec396139adda55c655825a4e4002ce3f3a0df8de`  
		Last Modified: Tue, 25 Jul 2017 00:39:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dc58f8c255e5aebdaa50ed2d6ff495ec7525472c330cbcbb7fd86fd91689be`  
		Last Modified: Thu, 03 Aug 2017 23:24:21 GMT  
		Size: 12.6 MB (12588421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa29f24bd0765597b60440dae0d6a39e01ab800918b68844add9243d8feebc8`  
		Last Modified: Thu, 03 Aug 2017 23:24:19 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619d91d8685d217877f7c1f5974c2693365cbbe1f62a96d40543d978457efb96`  
		Last Modified: Thu, 03 Aug 2017 23:24:22 GMT  
		Size: 9.2 MB (9175263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f13c5627babb6538a28f616d489bb47d680068b0f01672b835e398df679077c`  
		Last Modified: Thu, 03 Aug 2017 23:24:20 GMT  
		Size: 2.1 KB (2123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81dca82331cd4c0de00d7593e47d9a38379fb3a0388fd4e78e613bdae19a7b50`  
		Last Modified: Thu, 03 Aug 2017 23:24:19 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f09fdded82006fded629e70473c51df6bf3fe1944b4f3d7a2b6b1e72c9b671d`  
		Last Modified: Mon, 21 Aug 2017 23:00:41 GMT  
		Size: 7.1 MB (7094173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52dfbff7f1339c466caea3c6421e2b54559186428b437f3a0e6e2c8cba0aaa5a`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 1.1 MB (1128818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff596ceda8a5a4945204b46ca8971fe620f1c1ad55ef4f90a8c7fc6b3a5ddd5`  
		Last Modified: Mon, 21 Aug 2017 23:00:37 GMT  
		Size: 46.6 KB (46649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3361d117e42e6a351c0c2c70e9d211196d6e8b457d103892a75cc1b59882dd`  
		Last Modified: Mon, 21 Aug 2017 23:00:38 GMT  
		Size: 14.2 MB (14241025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61c539bfd45c3b0b74ea896e4830e43aeed2cc72f53c8aebeae51490e8eedc2`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67320589f1ce7ba654f9415e95958a65401d8f1a1fde3ace25708bdf452bbcad`  
		Last Modified: Mon, 21 Aug 2017 23:00:37 GMT  
		Size: 13.1 MB (13106010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95b40079009a4fe09a86cf043a2c4ac885b2402cba3e129c2fb3b0e265c3225`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:latest`

```console
$ docker pull piwik@sha256:1703ef805c505e6f7c954e938c07b45d292a9321603a7942a71c2669e3b730c2
```

-	Platforms:
	-	linux; amd64

### `piwik:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195271656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa59a31b66943ac32543c3944eafc550a5d491236b87f838a4b61c64502a288`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 19:05:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Mon, 24 Jul 2017 19:06:19 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:06:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 24 Jul 2017 19:06:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 24 Jul 2017 19:12:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:12:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 24 Jul 2017 19:12:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 24 Jul 2017 19:12:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 24 Jul 2017 19:12:11 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 24 Jul 2017 19:12:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 24 Jul 2017 19:12:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 24 Jul 2017 19:12:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 24 Jul 2017 19:12:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:12:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 03 Aug 2017 22:58:38 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_VERSION=5.6.31
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Thu, 03 Aug 2017 22:58:38 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Thu, 03 Aug 2017 22:59:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 03 Aug 2017 22:59:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:01:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 03 Aug 2017 23:02:01 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:02:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 03 Aug 2017 23:02:05 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:02:05 GMT
WORKDIR /var/www/html
# Thu, 03 Aug 2017 23:02:05 GMT
EXPOSE 80/tcp
# Thu, 03 Aug 2017 23:02:06 GMT
CMD ["apache2-foreground"]
# Mon, 21 Aug 2017 22:57:35 GMT
MAINTAINER pierre@piwik.org
# Mon, 21 Aug 2017 22:57:55 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Mon, 21 Aug 2017 22:58:42 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Mon, 21 Aug 2017 22:58:49 GMT
RUN pecl install APCu geoip
# Mon, 21 Aug 2017 22:58:49 GMT
ENV PIWIK_VERSION=3.0.4
# Mon, 21 Aug 2017 22:58:56 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Mon, 21 Aug 2017 22:58:57 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Mon, 21 Aug 2017 22:58:58 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Mon, 21 Aug 2017 22:58:59 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Mon, 21 Aug 2017 22:58:59 GMT
VOLUME [/var/www/html]
# Mon, 21 Aug 2017 22:58:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 21 Aug 2017 22:58:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e75557f2447b87ddaca5925efb047b777da4e78479e18edcc01e8f1cbf5a5d`  
		Last Modified: Tue, 25 Jul 2017 00:39:30 GMT  
		Size: 82.5 MB (82494229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab4f72a86ad9272e97babb639ea792490d3212f0eb4b87a31696ee599903a81`  
		Last Modified: Tue, 25 Jul 2017 00:39:14 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e3508d42cad2382baef3952c55677e3672ede2793cebe9b1b3ed64c924703d`  
		Last Modified: Tue, 25 Jul 2017 00:39:14 GMT  
		Size: 2.8 MB (2784883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88792c88e1bc5fb371d7de6ec88fa6b402195052ed95a113dd03f1586fa56382`  
		Last Modified: Tue, 25 Jul 2017 00:39:13 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8a48cffe593c7a341fd72da06f482f94a58b277e9482ed151710c2e0c0fbca`  
		Last Modified: Tue, 25 Jul 2017 00:39:12 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c30cf9b42335519ba9c919fc9ddbed37817ed899e412f1a08ebdfd513006170`  
		Last Modified: Tue, 25 Jul 2017 00:39:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ec3cd3c9fb4aec4556f908ec396139adda55c655825a4e4002ce3f3a0df8de`  
		Last Modified: Tue, 25 Jul 2017 00:39:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dc58f8c255e5aebdaa50ed2d6ff495ec7525472c330cbcbb7fd86fd91689be`  
		Last Modified: Thu, 03 Aug 2017 23:24:21 GMT  
		Size: 12.6 MB (12588421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa29f24bd0765597b60440dae0d6a39e01ab800918b68844add9243d8feebc8`  
		Last Modified: Thu, 03 Aug 2017 23:24:19 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619d91d8685d217877f7c1f5974c2693365cbbe1f62a96d40543d978457efb96`  
		Last Modified: Thu, 03 Aug 2017 23:24:22 GMT  
		Size: 9.2 MB (9175263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f13c5627babb6538a28f616d489bb47d680068b0f01672b835e398df679077c`  
		Last Modified: Thu, 03 Aug 2017 23:24:20 GMT  
		Size: 2.1 KB (2123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81dca82331cd4c0de00d7593e47d9a38379fb3a0388fd4e78e613bdae19a7b50`  
		Last Modified: Thu, 03 Aug 2017 23:24:19 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f09fdded82006fded629e70473c51df6bf3fe1944b4f3d7a2b6b1e72c9b671d`  
		Last Modified: Mon, 21 Aug 2017 23:00:41 GMT  
		Size: 7.1 MB (7094173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52dfbff7f1339c466caea3c6421e2b54559186428b437f3a0e6e2c8cba0aaa5a`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 1.1 MB (1128818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff596ceda8a5a4945204b46ca8971fe620f1c1ad55ef4f90a8c7fc6b3a5ddd5`  
		Last Modified: Mon, 21 Aug 2017 23:00:37 GMT  
		Size: 46.6 KB (46649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3361d117e42e6a351c0c2c70e9d211196d6e8b457d103892a75cc1b59882dd`  
		Last Modified: Mon, 21 Aug 2017 23:00:38 GMT  
		Size: 14.2 MB (14241025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61c539bfd45c3b0b74ea896e4830e43aeed2cc72f53c8aebeae51490e8eedc2`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67320589f1ce7ba654f9415e95958a65401d8f1a1fde3ace25708bdf452bbcad`  
		Last Modified: Mon, 21 Aug 2017 23:00:37 GMT  
		Size: 13.1 MB (13106010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95b40079009a4fe09a86cf043a2c4ac885b2402cba3e129c2fb3b0e265c3225`  
		Last Modified: Mon, 21 Aug 2017 23:00:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.0.4-fpm`

```console
$ docker pull piwik@sha256:3a1ce6f818f8ab94ee19a83f1c23fcbb13f2e3a9c490ae2d1e7c01e1b1c2d86e
```

-	Platforms:
	-	linux; amd64

### `piwik:3.0.4-fpm` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.9 MB (191901755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc0a2f43bd3231ba97909f36a9119a48cc0b9ea710459979bb82c4dce1feba64`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 19:05:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Mon, 24 Jul 2017 19:06:19 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:06:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 24 Jul 2017 19:06:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 24 Jul 2017 19:15:30 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Mon, 24 Jul 2017 19:15:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:15:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:15:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 03 Aug 2017 23:02:09 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 03 Aug 2017 23:02:09 GMT
ENV PHP_VERSION=5.6.31
# Thu, 03 Aug 2017 23:02:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Thu, 03 Aug 2017 23:02:10 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Thu, 03 Aug 2017 23:02:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 03 Aug 2017 23:02:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:06:26 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 03 Aug 2017 23:06:27 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:06:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 03 Aug 2017 23:06:27 GMT
WORKDIR /var/www/html
# Thu, 03 Aug 2017 23:06:28 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 03 Aug 2017 23:06:31 GMT
EXPOSE 9000/tcp
# Thu, 03 Aug 2017 23:06:31 GMT
CMD ["php-fpm"]
# Mon, 21 Aug 2017 22:59:04 GMT
MAINTAINER pierre@piwik.org
# Mon, 21 Aug 2017 22:59:23 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Mon, 21 Aug 2017 23:00:10 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Mon, 21 Aug 2017 23:00:17 GMT
RUN pecl install APCu geoip
# Mon, 21 Aug 2017 23:00:17 GMT
ENV PIWIK_VERSION=3.0.4
# Mon, 21 Aug 2017 23:00:24 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Mon, 21 Aug 2017 23:00:25 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Mon, 21 Aug 2017 23:00:26 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Mon, 21 Aug 2017 23:00:26 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Mon, 21 Aug 2017 23:00:27 GMT
VOLUME [/var/www/html]
# Mon, 21 Aug 2017 23:00:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 21 Aug 2017 23:00:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e75557f2447b87ddaca5925efb047b777da4e78479e18edcc01e8f1cbf5a5d`  
		Last Modified: Tue, 25 Jul 2017 00:39:30 GMT  
		Size: 82.5 MB (82494229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab4f72a86ad9272e97babb639ea792490d3212f0eb4b87a31696ee599903a81`  
		Last Modified: Tue, 25 Jul 2017 00:39:14 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0264c0f93144cf9628cf47aeb0d01685983e5e9172f0f3f3feb18d523fdf02`  
		Last Modified: Thu, 03 Aug 2017 23:24:48 GMT  
		Size: 12.6 MB (12571275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784a054f54cde63182c630e15474935ff126e3475d0b62eca0c37973520be3b9`  
		Last Modified: Thu, 03 Aug 2017 23:24:46 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385cbcd18b197a933aaef6bd80ec7a5e83e9271d356a8be16dd89677b6dbcdcc`  
		Last Modified: Thu, 03 Aug 2017 23:24:50 GMT  
		Size: 8.6 MB (8623537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005a5d29752d647b946361670319968716ba988079dab6d35a8e23227dcd9048`  
		Last Modified: Thu, 03 Aug 2017 23:24:46 GMT  
		Size: 2.1 KB (2120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1853ae631cefa8b9baf6cc0451042427ef639d5843fb387e6f99bd119fceacb4`  
		Last Modified: Thu, 03 Aug 2017 23:24:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ac0a3bbe628377e2497812ae5248cfc9549d85186e6022702a5d5f44cd35a7`  
		Last Modified: Thu, 03 Aug 2017 23:24:47 GMT  
		Size: 7.6 KB (7606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689f13704e7847e1c240fb2e8584b2cef888a20587eb2fbdf80938ae33133e5f`  
		Last Modified: Mon, 21 Aug 2017 23:01:51 GMT  
		Size: 7.1 MB (7073490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a47ca9ece818529551d8c9fa080ed3059e6ccffecc0bad7ed45f5541d76a0a`  
		Last Modified: Mon, 21 Aug 2017 23:01:47 GMT  
		Size: 1.1 MB (1128892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66b939e4ceae767c180f9fcab045886e45a939f6d227eb7ec2e23f354b46f54`  
		Last Modified: Mon, 21 Aug 2017 23:01:47 GMT  
		Size: 46.6 KB (46650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c57f3ce478a66ecbb9959281a4527b8d4e35ec9f8cf0d8f89fcdf8e77f6a472`  
		Last Modified: Mon, 21 Aug 2017 23:01:50 GMT  
		Size: 14.2 MB (14241009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee6770fb174a19e520234f2b021e1037b240c46cf1c79ae96277f8dec8f1f7a`  
		Last Modified: Mon, 21 Aug 2017 23:01:47 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a778e821759bec7a41c18a75f0e820da584be35dd93997cb51099b298c7fea7`  
		Last Modified: Mon, 21 Aug 2017 23:01:49 GMT  
		Size: 13.1 MB (13106014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a58e4a4bf12c6a772c9220401feb714025410aca8e5dc2c4eac7f6cfeb44d3`  
		Last Modified: Mon, 21 Aug 2017 23:01:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.0-fpm`

```console
$ docker pull piwik@sha256:3a1ce6f818f8ab94ee19a83f1c23fcbb13f2e3a9c490ae2d1e7c01e1b1c2d86e
```

-	Platforms:
	-	linux; amd64

### `piwik:3.0-fpm` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.9 MB (191901755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc0a2f43bd3231ba97909f36a9119a48cc0b9ea710459979bb82c4dce1feba64`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 19:05:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Mon, 24 Jul 2017 19:06:19 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:06:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 24 Jul 2017 19:06:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 24 Jul 2017 19:15:30 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Mon, 24 Jul 2017 19:15:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:15:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:15:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 03 Aug 2017 23:02:09 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 03 Aug 2017 23:02:09 GMT
ENV PHP_VERSION=5.6.31
# Thu, 03 Aug 2017 23:02:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Thu, 03 Aug 2017 23:02:10 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Thu, 03 Aug 2017 23:02:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 03 Aug 2017 23:02:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:06:26 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 03 Aug 2017 23:06:27 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:06:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 03 Aug 2017 23:06:27 GMT
WORKDIR /var/www/html
# Thu, 03 Aug 2017 23:06:28 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 03 Aug 2017 23:06:31 GMT
EXPOSE 9000/tcp
# Thu, 03 Aug 2017 23:06:31 GMT
CMD ["php-fpm"]
# Mon, 21 Aug 2017 22:59:04 GMT
MAINTAINER pierre@piwik.org
# Mon, 21 Aug 2017 22:59:23 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Mon, 21 Aug 2017 23:00:10 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Mon, 21 Aug 2017 23:00:17 GMT
RUN pecl install APCu geoip
# Mon, 21 Aug 2017 23:00:17 GMT
ENV PIWIK_VERSION=3.0.4
# Mon, 21 Aug 2017 23:00:24 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Mon, 21 Aug 2017 23:00:25 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Mon, 21 Aug 2017 23:00:26 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Mon, 21 Aug 2017 23:00:26 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Mon, 21 Aug 2017 23:00:27 GMT
VOLUME [/var/www/html]
# Mon, 21 Aug 2017 23:00:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 21 Aug 2017 23:00:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e75557f2447b87ddaca5925efb047b777da4e78479e18edcc01e8f1cbf5a5d`  
		Last Modified: Tue, 25 Jul 2017 00:39:30 GMT  
		Size: 82.5 MB (82494229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab4f72a86ad9272e97babb639ea792490d3212f0eb4b87a31696ee599903a81`  
		Last Modified: Tue, 25 Jul 2017 00:39:14 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0264c0f93144cf9628cf47aeb0d01685983e5e9172f0f3f3feb18d523fdf02`  
		Last Modified: Thu, 03 Aug 2017 23:24:48 GMT  
		Size: 12.6 MB (12571275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784a054f54cde63182c630e15474935ff126e3475d0b62eca0c37973520be3b9`  
		Last Modified: Thu, 03 Aug 2017 23:24:46 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385cbcd18b197a933aaef6bd80ec7a5e83e9271d356a8be16dd89677b6dbcdcc`  
		Last Modified: Thu, 03 Aug 2017 23:24:50 GMT  
		Size: 8.6 MB (8623537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005a5d29752d647b946361670319968716ba988079dab6d35a8e23227dcd9048`  
		Last Modified: Thu, 03 Aug 2017 23:24:46 GMT  
		Size: 2.1 KB (2120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1853ae631cefa8b9baf6cc0451042427ef639d5843fb387e6f99bd119fceacb4`  
		Last Modified: Thu, 03 Aug 2017 23:24:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ac0a3bbe628377e2497812ae5248cfc9549d85186e6022702a5d5f44cd35a7`  
		Last Modified: Thu, 03 Aug 2017 23:24:47 GMT  
		Size: 7.6 KB (7606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689f13704e7847e1c240fb2e8584b2cef888a20587eb2fbdf80938ae33133e5f`  
		Last Modified: Mon, 21 Aug 2017 23:01:51 GMT  
		Size: 7.1 MB (7073490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a47ca9ece818529551d8c9fa080ed3059e6ccffecc0bad7ed45f5541d76a0a`  
		Last Modified: Mon, 21 Aug 2017 23:01:47 GMT  
		Size: 1.1 MB (1128892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66b939e4ceae767c180f9fcab045886e45a939f6d227eb7ec2e23f354b46f54`  
		Last Modified: Mon, 21 Aug 2017 23:01:47 GMT  
		Size: 46.6 KB (46650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c57f3ce478a66ecbb9959281a4527b8d4e35ec9f8cf0d8f89fcdf8e77f6a472`  
		Last Modified: Mon, 21 Aug 2017 23:01:50 GMT  
		Size: 14.2 MB (14241009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee6770fb174a19e520234f2b021e1037b240c46cf1c79ae96277f8dec8f1f7a`  
		Last Modified: Mon, 21 Aug 2017 23:01:47 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a778e821759bec7a41c18a75f0e820da584be35dd93997cb51099b298c7fea7`  
		Last Modified: Mon, 21 Aug 2017 23:01:49 GMT  
		Size: 13.1 MB (13106014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a58e4a4bf12c6a772c9220401feb714025410aca8e5dc2c4eac7f6cfeb44d3`  
		Last Modified: Mon, 21 Aug 2017 23:01:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3-fpm`

```console
$ docker pull piwik@sha256:3a1ce6f818f8ab94ee19a83f1c23fcbb13f2e3a9c490ae2d1e7c01e1b1c2d86e
```

-	Platforms:
	-	linux; amd64

### `piwik:3-fpm` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.9 MB (191901755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc0a2f43bd3231ba97909f36a9119a48cc0b9ea710459979bb82c4dce1feba64`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 19:05:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Mon, 24 Jul 2017 19:06:19 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:06:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 24 Jul 2017 19:06:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 24 Jul 2017 19:15:30 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Mon, 24 Jul 2017 19:15:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:15:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:15:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 03 Aug 2017 23:02:09 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 03 Aug 2017 23:02:09 GMT
ENV PHP_VERSION=5.6.31
# Thu, 03 Aug 2017 23:02:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Thu, 03 Aug 2017 23:02:10 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Thu, 03 Aug 2017 23:02:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 03 Aug 2017 23:02:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:06:26 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 03 Aug 2017 23:06:27 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:06:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 03 Aug 2017 23:06:27 GMT
WORKDIR /var/www/html
# Thu, 03 Aug 2017 23:06:28 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 03 Aug 2017 23:06:31 GMT
EXPOSE 9000/tcp
# Thu, 03 Aug 2017 23:06:31 GMT
CMD ["php-fpm"]
# Mon, 21 Aug 2017 22:59:04 GMT
MAINTAINER pierre@piwik.org
# Mon, 21 Aug 2017 22:59:23 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Mon, 21 Aug 2017 23:00:10 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Mon, 21 Aug 2017 23:00:17 GMT
RUN pecl install APCu geoip
# Mon, 21 Aug 2017 23:00:17 GMT
ENV PIWIK_VERSION=3.0.4
# Mon, 21 Aug 2017 23:00:24 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Mon, 21 Aug 2017 23:00:25 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Mon, 21 Aug 2017 23:00:26 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Mon, 21 Aug 2017 23:00:26 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Mon, 21 Aug 2017 23:00:27 GMT
VOLUME [/var/www/html]
# Mon, 21 Aug 2017 23:00:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 21 Aug 2017 23:00:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e75557f2447b87ddaca5925efb047b777da4e78479e18edcc01e8f1cbf5a5d`  
		Last Modified: Tue, 25 Jul 2017 00:39:30 GMT  
		Size: 82.5 MB (82494229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab4f72a86ad9272e97babb639ea792490d3212f0eb4b87a31696ee599903a81`  
		Last Modified: Tue, 25 Jul 2017 00:39:14 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0264c0f93144cf9628cf47aeb0d01685983e5e9172f0f3f3feb18d523fdf02`  
		Last Modified: Thu, 03 Aug 2017 23:24:48 GMT  
		Size: 12.6 MB (12571275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784a054f54cde63182c630e15474935ff126e3475d0b62eca0c37973520be3b9`  
		Last Modified: Thu, 03 Aug 2017 23:24:46 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385cbcd18b197a933aaef6bd80ec7a5e83e9271d356a8be16dd89677b6dbcdcc`  
		Last Modified: Thu, 03 Aug 2017 23:24:50 GMT  
		Size: 8.6 MB (8623537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005a5d29752d647b946361670319968716ba988079dab6d35a8e23227dcd9048`  
		Last Modified: Thu, 03 Aug 2017 23:24:46 GMT  
		Size: 2.1 KB (2120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1853ae631cefa8b9baf6cc0451042427ef639d5843fb387e6f99bd119fceacb4`  
		Last Modified: Thu, 03 Aug 2017 23:24:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ac0a3bbe628377e2497812ae5248cfc9549d85186e6022702a5d5f44cd35a7`  
		Last Modified: Thu, 03 Aug 2017 23:24:47 GMT  
		Size: 7.6 KB (7606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689f13704e7847e1c240fb2e8584b2cef888a20587eb2fbdf80938ae33133e5f`  
		Last Modified: Mon, 21 Aug 2017 23:01:51 GMT  
		Size: 7.1 MB (7073490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a47ca9ece818529551d8c9fa080ed3059e6ccffecc0bad7ed45f5541d76a0a`  
		Last Modified: Mon, 21 Aug 2017 23:01:47 GMT  
		Size: 1.1 MB (1128892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66b939e4ceae767c180f9fcab045886e45a939f6d227eb7ec2e23f354b46f54`  
		Last Modified: Mon, 21 Aug 2017 23:01:47 GMT  
		Size: 46.6 KB (46650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c57f3ce478a66ecbb9959281a4527b8d4e35ec9f8cf0d8f89fcdf8e77f6a472`  
		Last Modified: Mon, 21 Aug 2017 23:01:50 GMT  
		Size: 14.2 MB (14241009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee6770fb174a19e520234f2b021e1037b240c46cf1c79ae96277f8dec8f1f7a`  
		Last Modified: Mon, 21 Aug 2017 23:01:47 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a778e821759bec7a41c18a75f0e820da584be35dd93997cb51099b298c7fea7`  
		Last Modified: Mon, 21 Aug 2017 23:01:49 GMT  
		Size: 13.1 MB (13106014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a58e4a4bf12c6a772c9220401feb714025410aca8e5dc2c4eac7f6cfeb44d3`  
		Last Modified: Mon, 21 Aug 2017 23:01:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:fpm`

```console
$ docker pull piwik@sha256:3a1ce6f818f8ab94ee19a83f1c23fcbb13f2e3a9c490ae2d1e7c01e1b1c2d86e
```

-	Platforms:
	-	linux; amd64

### `piwik:fpm` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.9 MB (191901755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc0a2f43bd3231ba97909f36a9119a48cc0b9ea710459979bb82c4dce1feba64`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 19:05:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Mon, 24 Jul 2017 19:06:19 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:06:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 24 Jul 2017 19:06:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 24 Jul 2017 19:15:30 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Mon, 24 Jul 2017 19:15:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:15:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 19:15:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 03 Aug 2017 23:02:09 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 03 Aug 2017 23:02:09 GMT
ENV PHP_VERSION=5.6.31
# Thu, 03 Aug 2017 23:02:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Thu, 03 Aug 2017 23:02:10 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Thu, 03 Aug 2017 23:02:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 03 Aug 2017 23:02:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:06:26 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 03 Aug 2017 23:06:27 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Thu, 03 Aug 2017 23:06:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 03 Aug 2017 23:06:27 GMT
WORKDIR /var/www/html
# Thu, 03 Aug 2017 23:06:28 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 03 Aug 2017 23:06:31 GMT
EXPOSE 9000/tcp
# Thu, 03 Aug 2017 23:06:31 GMT
CMD ["php-fpm"]
# Mon, 21 Aug 2017 22:59:04 GMT
MAINTAINER pierre@piwik.org
# Mon, 21 Aug 2017 22:59:23 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Mon, 21 Aug 2017 23:00:10 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Mon, 21 Aug 2017 23:00:17 GMT
RUN pecl install APCu geoip
# Mon, 21 Aug 2017 23:00:17 GMT
ENV PIWIK_VERSION=3.0.4
# Mon, 21 Aug 2017 23:00:24 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Mon, 21 Aug 2017 23:00:25 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Mon, 21 Aug 2017 23:00:26 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Mon, 21 Aug 2017 23:00:26 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Mon, 21 Aug 2017 23:00:27 GMT
VOLUME [/var/www/html]
# Mon, 21 Aug 2017 23:00:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 21 Aug 2017 23:00:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e75557f2447b87ddaca5925efb047b777da4e78479e18edcc01e8f1cbf5a5d`  
		Last Modified: Tue, 25 Jul 2017 00:39:30 GMT  
		Size: 82.5 MB (82494229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab4f72a86ad9272e97babb639ea792490d3212f0eb4b87a31696ee599903a81`  
		Last Modified: Tue, 25 Jul 2017 00:39:14 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0264c0f93144cf9628cf47aeb0d01685983e5e9172f0f3f3feb18d523fdf02`  
		Last Modified: Thu, 03 Aug 2017 23:24:48 GMT  
		Size: 12.6 MB (12571275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784a054f54cde63182c630e15474935ff126e3475d0b62eca0c37973520be3b9`  
		Last Modified: Thu, 03 Aug 2017 23:24:46 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385cbcd18b197a933aaef6bd80ec7a5e83e9271d356a8be16dd89677b6dbcdcc`  
		Last Modified: Thu, 03 Aug 2017 23:24:50 GMT  
		Size: 8.6 MB (8623537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005a5d29752d647b946361670319968716ba988079dab6d35a8e23227dcd9048`  
		Last Modified: Thu, 03 Aug 2017 23:24:46 GMT  
		Size: 2.1 KB (2120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1853ae631cefa8b9baf6cc0451042427ef639d5843fb387e6f99bd119fceacb4`  
		Last Modified: Thu, 03 Aug 2017 23:24:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ac0a3bbe628377e2497812ae5248cfc9549d85186e6022702a5d5f44cd35a7`  
		Last Modified: Thu, 03 Aug 2017 23:24:47 GMT  
		Size: 7.6 KB (7606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689f13704e7847e1c240fb2e8584b2cef888a20587eb2fbdf80938ae33133e5f`  
		Last Modified: Mon, 21 Aug 2017 23:01:51 GMT  
		Size: 7.1 MB (7073490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a47ca9ece818529551d8c9fa080ed3059e6ccffecc0bad7ed45f5541d76a0a`  
		Last Modified: Mon, 21 Aug 2017 23:01:47 GMT  
		Size: 1.1 MB (1128892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66b939e4ceae767c180f9fcab045886e45a939f6d227eb7ec2e23f354b46f54`  
		Last Modified: Mon, 21 Aug 2017 23:01:47 GMT  
		Size: 46.6 KB (46650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c57f3ce478a66ecbb9959281a4527b8d4e35ec9f8cf0d8f89fcdf8e77f6a472`  
		Last Modified: Mon, 21 Aug 2017 23:01:50 GMT  
		Size: 14.2 MB (14241009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee6770fb174a19e520234f2b021e1037b240c46cf1c79ae96277f8dec8f1f7a`  
		Last Modified: Mon, 21 Aug 2017 23:01:47 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a778e821759bec7a41c18a75f0e820da584be35dd93997cb51099b298c7fea7`  
		Last Modified: Mon, 21 Aug 2017 23:01:49 GMT  
		Size: 13.1 MB (13106014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a58e4a4bf12c6a772c9220401feb714025410aca8e5dc2c4eac7f6cfeb44d3`  
		Last Modified: Mon, 21 Aug 2017 23:01:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
