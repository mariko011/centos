## `owncloud:10-apache`

```console
$ docker pull owncloud@sha256:12143d993de5bce4443e3e1db2e3ce41e6f4f193fb5a55e6f8e4f5dee1bd26ba
```

-	Platforms:
	-	linux; amd64

### `owncloud:10-apache` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.4 MB (235373920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecabcc196b92b37a2539b26e482585db53bff36ec521403236edb1635b514e68`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Mon, 24 Jul 2017 19:28:35 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 03 Aug 2017 22:25:59 GMT
ENV PHP_VERSION=7.0.22
# Thu, 03 Aug 2017 22:25:59 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.22.tar.xz.asc/from/this/mirror
# Thu, 03 Aug 2017 22:26:00 GMT
ENV PHP_SHA256=408c3fbc235ec940433bfac1f3ed4bf797f61b4a1693b9fb0b6a04b2c1832501 PHP_MD5=
# Thu, 03 Aug 2017 22:26:25 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 03 Aug 2017 22:26:25 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 03 Aug 2017 22:29:05 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 03 Aug 2017 22:29:43 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 03 Aug 2017 22:29:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 03 Aug 2017 22:29:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 03 Aug 2017 22:29:44 GMT
WORKDIR /var/www/html
# Thu, 03 Aug 2017 22:29:44 GMT
EXPOSE 80/tcp
# Thu, 03 Aug 2017 22:29:45 GMT
CMD ["apache2-foreground"]
# Mon, 21 Aug 2017 20:20:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng12-dev 		libpq-dev 		libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 21 Aug 2017 20:22:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt opcache pdo pdo_mysql pdo_pgsql pgsql zip
# Mon, 21 Aug 2017 20:22:46 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 21 Aug 2017 20:22:47 GMT
RUN a2enmod rewrite
# Mon, 21 Aug 2017 20:23:17 GMT
RUN set -ex 	&& pecl install APCu-5.1.8 	&& pecl install memcached-3.0.3 	&& pecl install redis-3.1.2 	&& docker-php-ext-enable apcu memcached redis
# Mon, 21 Aug 2017 20:23:17 GMT
ENV OWNCLOUD_VERSION=10.0.2
# Mon, 21 Aug 2017 20:23:17 GMT
VOLUME [/var/www/html]
# Mon, 21 Aug 2017 20:23:31 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Mon, 21 Aug 2017 20:23:31 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Mon, 21 Aug 2017 20:23:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Aug 2017 20:23:32 GMT
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
	-	`sha256:96b343ecd2e8af218d59fb02246352f72a384df6d0bc7da5fcc7a031b80587b6`  
		Last Modified: Thu, 03 Aug 2017 23:02:08 GMT  
		Size: 12.8 MB (12796911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e31603a3104bc9264dec7caebf7f9b22aef87300725f0f305d43085b67884c34`  
		Last Modified: Thu, 03 Aug 2017 23:02:06 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa853f8165fa104e53b80ae8c6ce4009871cb3a41e4d9f0cd84df9f41512f94a`  
		Last Modified: Thu, 03 Aug 2017 23:02:08 GMT  
		Size: 13.2 MB (13209869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf28920ddde102cef3e7380afb59f3277faa837b40f1391ec3e83d8c8c906c77`  
		Last Modified: Thu, 03 Aug 2017 23:02:04 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7af1c8f3e7f8272aa78a7817d85834c829c0a2b70e4b9bae9124c1eea53dccd`  
		Last Modified: Thu, 03 Aug 2017 23:02:03 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057005871fcba7200412d613ea676d07fd7f45e39dba2accf973d3c687d78cb9`  
		Last Modified: Mon, 21 Aug 2017 20:28:12 GMT  
		Size: 34.1 MB (34113778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f835ad40be7f14a1bff33335241d7b2c427ae76b1a5b240464d7594956b76056`  
		Last Modified: Mon, 21 Aug 2017 20:28:03 GMT  
		Size: 1.8 MB (1814050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0f19ccad5e82b2bde0f6c651a0f3181d76e765306b4015f4eaff7f2d729e3b`  
		Last Modified: Mon, 21 Aug 2017 20:28:02 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aca310161a0f989a18917421a14fbb250e4fc3141a1cb7f4732a493e118d3c7`  
		Last Modified: Mon, 21 Aug 2017 20:28:02 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b151e3d45876291c43323877ad857fa2321df91311aaac08aad1f0aacc3ce195`  
		Last Modified: Mon, 21 Aug 2017 20:28:03 GMT  
		Size: 1.3 MB (1327957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36014f77cc81a40d26a9adcc79530330714af4a2c374100b00584cbe24c3725b`  
		Last Modified: Mon, 21 Aug 2017 20:28:12 GMT  
		Size: 34.2 MB (34219606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed6e5be2ab411c4a53a1d2258395e6e3ab2d3387a708503d9194b546f7d4359`  
		Last Modified: Mon, 21 Aug 2017 20:28:02 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
