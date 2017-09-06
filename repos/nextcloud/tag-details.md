<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nextcloud`

-	[`nextcloud:11.0.4-apache`](#nextcloud1104-apache)
-	[`nextcloud:11.0-apache`](#nextcloud110-apache)
-	[`nextcloud:11-apache`](#nextcloud11-apache)
-	[`nextcloud:11.0.4`](#nextcloud1104)
-	[`nextcloud:11.0`](#nextcloud110)
-	[`nextcloud:11`](#nextcloud11)
-	[`nextcloud:11.0.4-fpm`](#nextcloud1104-fpm)
-	[`nextcloud:11.0-fpm`](#nextcloud110-fpm)
-	[`nextcloud:11-fpm`](#nextcloud11-fpm)
-	[`nextcloud:12.0.2-apache`](#nextcloud1202-apache)
-	[`nextcloud:12.0-apache`](#nextcloud120-apache)
-	[`nextcloud:12-apache`](#nextcloud12-apache)
-	[`nextcloud:apache`](#nextcloudapache)
-	[`nextcloud:12.0.2`](#nextcloud1202)
-	[`nextcloud:12.0`](#nextcloud120)
-	[`nextcloud:12`](#nextcloud12)
-	[`nextcloud:latest`](#nextcloudlatest)
-	[`nextcloud:12.0.2-fpm`](#nextcloud1202-fpm)
-	[`nextcloud:12.0-fpm`](#nextcloud120-fpm)
-	[`nextcloud:12-fpm`](#nextcloud12-fpm)
-	[`nextcloud:fpm`](#nextcloudfpm)

## `nextcloud:11.0.4-apache`

```console
$ docker pull nextcloud@sha256:b3487459f4174ff61e04f9fbbbc29fcfc703d82225472f9cc4dc7e4e73c8ae81
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0.4-apache` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249896203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae179c7ff7c67f3699b92e32253852a9abf36fb22246a97d6f14e5ff0873a98d`
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
# Mon, 24 Jul 2017 19:12:13 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Sep 2017 20:28:26 GMT
ENV PHP_VERSION=7.1.9
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 01 Sep 2017 20:28:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Sep 2017 20:28:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Sep 2017 20:31:38 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Sep 2017 20:31:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:39 GMT
WORKDIR /var/www/html
# Fri, 01 Sep 2017 20:31:39 GMT
EXPOSE 80/tcp
# Fri, 01 Sep 2017 20:31:39 GMT
CMD ["apache2-foreground"]
# Tue, 05 Sep 2017 20:20:17 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Sep 2017 20:22:20 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Tue, 05 Sep 2017 20:22:21 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 05 Sep 2017 20:22:22 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:22:50 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Sep 2017 20:22:51 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:22:51 GMT
ENV NEXTCLOUD_VERSION=11.0.4
# Tue, 05 Sep 2017 20:22:52 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Sep 2017 20:22:52 GMT
VOLUME [/var/www/html]
# Tue, 05 Sep 2017 20:23:06 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Sep 2017 20:23:07 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 06 Sep 2017 23:01:05 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 06 Sep 2017 23:01:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 23:01:06 GMT
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
	-	`sha256:da90a622bde93c770f1f7f95490020f2c95f74c4bc3ec94e41ce17d374185017`  
		Last Modified: Fri, 01 Sep 2017 20:49:56 GMT  
		Size: 12.3 MB (12284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736b61dfc7937d7186f87d9687af08420d065c07b24d268aa6765d1cd0ab72fa`  
		Last Modified: Fri, 01 Sep 2017 20:49:55 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d78a3aec5a5778bee7cc9db44fccf7d354548600488fe47ce341191a8c45982`  
		Last Modified: Fri, 01 Sep 2017 20:49:57 GMT  
		Size: 14.5 MB (14467245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d7e51fed35bcda6a283f4cac1b10830e0b3359592cc4118851cb98ae416d78`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a050e50a6f8be62407c3aabe4d40fea9c32e57ac69dd9a4523805c35d44e34c5`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c38939a494896c2ebe5b39c1bcb61099a0be50b149aaf331bc2db956c7386b`  
		Last Modified: Tue, 05 Sep 2017 20:32:48 GMT  
		Size: 35.9 MB (35887584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0540cda8b718769f36791a18443749875f297da8b8a56aff55820cd966e0737`  
		Last Modified: Tue, 05 Sep 2017 20:32:39 GMT  
		Size: 1.9 MB (1919514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d727829f9f96b9fbccf7aec2c8410fe518dc172cd7d0fbed3a8064122c5d170d`  
		Last Modified: Tue, 05 Sep 2017 20:32:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46e4e7cd8ee18bace47632516831e07e8bb3d97ffceb2bed72b6a0b5b2b974b`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f78580f2b46dfd500ff10e7dfe406fd48705262e4e2dbb242a5fc3e997346d6`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 1.3 MB (1284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84d421f390336c964cd7950c976c7c1ec7a9c2942f43e31706f8236cb79321c`  
		Last Modified: Tue, 05 Sep 2017 20:32:35 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e029019e4a3924bf564cd622435937cef3d456cdf4aa9d9a9aa99da7d82314`  
		Last Modified: Tue, 05 Sep 2017 20:32:53 GMT  
		Size: 46.2 MB (46159182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ee883c757a15d1c8b8a7671e690e82b5fec4295a7621cb45d33a0cd7b396ed`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2cc60898ae987ac8472314dc271f806b2f00c994e7cbcf1fefcfcdb204af7e3`  
		Last Modified: Wed, 06 Sep 2017 23:01:38 GMT  
		Size: 770.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0-apache`

```console
$ docker pull nextcloud@sha256:b3487459f4174ff61e04f9fbbbc29fcfc703d82225472f9cc4dc7e4e73c8ae81
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0-apache` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249896203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae179c7ff7c67f3699b92e32253852a9abf36fb22246a97d6f14e5ff0873a98d`
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
# Mon, 24 Jul 2017 19:12:13 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Sep 2017 20:28:26 GMT
ENV PHP_VERSION=7.1.9
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 01 Sep 2017 20:28:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Sep 2017 20:28:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Sep 2017 20:31:38 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Sep 2017 20:31:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:39 GMT
WORKDIR /var/www/html
# Fri, 01 Sep 2017 20:31:39 GMT
EXPOSE 80/tcp
# Fri, 01 Sep 2017 20:31:39 GMT
CMD ["apache2-foreground"]
# Tue, 05 Sep 2017 20:20:17 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Sep 2017 20:22:20 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Tue, 05 Sep 2017 20:22:21 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 05 Sep 2017 20:22:22 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:22:50 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Sep 2017 20:22:51 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:22:51 GMT
ENV NEXTCLOUD_VERSION=11.0.4
# Tue, 05 Sep 2017 20:22:52 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Sep 2017 20:22:52 GMT
VOLUME [/var/www/html]
# Tue, 05 Sep 2017 20:23:06 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Sep 2017 20:23:07 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 06 Sep 2017 23:01:05 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 06 Sep 2017 23:01:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 23:01:06 GMT
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
	-	`sha256:da90a622bde93c770f1f7f95490020f2c95f74c4bc3ec94e41ce17d374185017`  
		Last Modified: Fri, 01 Sep 2017 20:49:56 GMT  
		Size: 12.3 MB (12284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736b61dfc7937d7186f87d9687af08420d065c07b24d268aa6765d1cd0ab72fa`  
		Last Modified: Fri, 01 Sep 2017 20:49:55 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d78a3aec5a5778bee7cc9db44fccf7d354548600488fe47ce341191a8c45982`  
		Last Modified: Fri, 01 Sep 2017 20:49:57 GMT  
		Size: 14.5 MB (14467245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d7e51fed35bcda6a283f4cac1b10830e0b3359592cc4118851cb98ae416d78`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a050e50a6f8be62407c3aabe4d40fea9c32e57ac69dd9a4523805c35d44e34c5`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c38939a494896c2ebe5b39c1bcb61099a0be50b149aaf331bc2db956c7386b`  
		Last Modified: Tue, 05 Sep 2017 20:32:48 GMT  
		Size: 35.9 MB (35887584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0540cda8b718769f36791a18443749875f297da8b8a56aff55820cd966e0737`  
		Last Modified: Tue, 05 Sep 2017 20:32:39 GMT  
		Size: 1.9 MB (1919514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d727829f9f96b9fbccf7aec2c8410fe518dc172cd7d0fbed3a8064122c5d170d`  
		Last Modified: Tue, 05 Sep 2017 20:32:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46e4e7cd8ee18bace47632516831e07e8bb3d97ffceb2bed72b6a0b5b2b974b`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f78580f2b46dfd500ff10e7dfe406fd48705262e4e2dbb242a5fc3e997346d6`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 1.3 MB (1284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84d421f390336c964cd7950c976c7c1ec7a9c2942f43e31706f8236cb79321c`  
		Last Modified: Tue, 05 Sep 2017 20:32:35 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e029019e4a3924bf564cd622435937cef3d456cdf4aa9d9a9aa99da7d82314`  
		Last Modified: Tue, 05 Sep 2017 20:32:53 GMT  
		Size: 46.2 MB (46159182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ee883c757a15d1c8b8a7671e690e82b5fec4295a7621cb45d33a0cd7b396ed`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2cc60898ae987ac8472314dc271f806b2f00c994e7cbcf1fefcfcdb204af7e3`  
		Last Modified: Wed, 06 Sep 2017 23:01:38 GMT  
		Size: 770.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11-apache`

```console
$ docker pull nextcloud@sha256:b3487459f4174ff61e04f9fbbbc29fcfc703d82225472f9cc4dc7e4e73c8ae81
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11-apache` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249896203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae179c7ff7c67f3699b92e32253852a9abf36fb22246a97d6f14e5ff0873a98d`
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
# Mon, 24 Jul 2017 19:12:13 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Sep 2017 20:28:26 GMT
ENV PHP_VERSION=7.1.9
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 01 Sep 2017 20:28:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Sep 2017 20:28:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Sep 2017 20:31:38 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Sep 2017 20:31:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:39 GMT
WORKDIR /var/www/html
# Fri, 01 Sep 2017 20:31:39 GMT
EXPOSE 80/tcp
# Fri, 01 Sep 2017 20:31:39 GMT
CMD ["apache2-foreground"]
# Tue, 05 Sep 2017 20:20:17 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Sep 2017 20:22:20 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Tue, 05 Sep 2017 20:22:21 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 05 Sep 2017 20:22:22 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:22:50 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Sep 2017 20:22:51 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:22:51 GMT
ENV NEXTCLOUD_VERSION=11.0.4
# Tue, 05 Sep 2017 20:22:52 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Sep 2017 20:22:52 GMT
VOLUME [/var/www/html]
# Tue, 05 Sep 2017 20:23:06 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Sep 2017 20:23:07 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 06 Sep 2017 23:01:05 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 06 Sep 2017 23:01:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 23:01:06 GMT
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
	-	`sha256:da90a622bde93c770f1f7f95490020f2c95f74c4bc3ec94e41ce17d374185017`  
		Last Modified: Fri, 01 Sep 2017 20:49:56 GMT  
		Size: 12.3 MB (12284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736b61dfc7937d7186f87d9687af08420d065c07b24d268aa6765d1cd0ab72fa`  
		Last Modified: Fri, 01 Sep 2017 20:49:55 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d78a3aec5a5778bee7cc9db44fccf7d354548600488fe47ce341191a8c45982`  
		Last Modified: Fri, 01 Sep 2017 20:49:57 GMT  
		Size: 14.5 MB (14467245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d7e51fed35bcda6a283f4cac1b10830e0b3359592cc4118851cb98ae416d78`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a050e50a6f8be62407c3aabe4d40fea9c32e57ac69dd9a4523805c35d44e34c5`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c38939a494896c2ebe5b39c1bcb61099a0be50b149aaf331bc2db956c7386b`  
		Last Modified: Tue, 05 Sep 2017 20:32:48 GMT  
		Size: 35.9 MB (35887584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0540cda8b718769f36791a18443749875f297da8b8a56aff55820cd966e0737`  
		Last Modified: Tue, 05 Sep 2017 20:32:39 GMT  
		Size: 1.9 MB (1919514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d727829f9f96b9fbccf7aec2c8410fe518dc172cd7d0fbed3a8064122c5d170d`  
		Last Modified: Tue, 05 Sep 2017 20:32:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46e4e7cd8ee18bace47632516831e07e8bb3d97ffceb2bed72b6a0b5b2b974b`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f78580f2b46dfd500ff10e7dfe406fd48705262e4e2dbb242a5fc3e997346d6`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 1.3 MB (1284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84d421f390336c964cd7950c976c7c1ec7a9c2942f43e31706f8236cb79321c`  
		Last Modified: Tue, 05 Sep 2017 20:32:35 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e029019e4a3924bf564cd622435937cef3d456cdf4aa9d9a9aa99da7d82314`  
		Last Modified: Tue, 05 Sep 2017 20:32:53 GMT  
		Size: 46.2 MB (46159182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ee883c757a15d1c8b8a7671e690e82b5fec4295a7621cb45d33a0cd7b396ed`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2cc60898ae987ac8472314dc271f806b2f00c994e7cbcf1fefcfcdb204af7e3`  
		Last Modified: Wed, 06 Sep 2017 23:01:38 GMT  
		Size: 770.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0.4`

```console
$ docker pull nextcloud@sha256:b3487459f4174ff61e04f9fbbbc29fcfc703d82225472f9cc4dc7e4e73c8ae81
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249896203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae179c7ff7c67f3699b92e32253852a9abf36fb22246a97d6f14e5ff0873a98d`
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
# Mon, 24 Jul 2017 19:12:13 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Sep 2017 20:28:26 GMT
ENV PHP_VERSION=7.1.9
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 01 Sep 2017 20:28:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Sep 2017 20:28:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Sep 2017 20:31:38 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Sep 2017 20:31:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:39 GMT
WORKDIR /var/www/html
# Fri, 01 Sep 2017 20:31:39 GMT
EXPOSE 80/tcp
# Fri, 01 Sep 2017 20:31:39 GMT
CMD ["apache2-foreground"]
# Tue, 05 Sep 2017 20:20:17 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Sep 2017 20:22:20 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Tue, 05 Sep 2017 20:22:21 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 05 Sep 2017 20:22:22 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:22:50 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Sep 2017 20:22:51 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:22:51 GMT
ENV NEXTCLOUD_VERSION=11.0.4
# Tue, 05 Sep 2017 20:22:52 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Sep 2017 20:22:52 GMT
VOLUME [/var/www/html]
# Tue, 05 Sep 2017 20:23:06 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Sep 2017 20:23:07 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 06 Sep 2017 23:01:05 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 06 Sep 2017 23:01:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 23:01:06 GMT
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
	-	`sha256:da90a622bde93c770f1f7f95490020f2c95f74c4bc3ec94e41ce17d374185017`  
		Last Modified: Fri, 01 Sep 2017 20:49:56 GMT  
		Size: 12.3 MB (12284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736b61dfc7937d7186f87d9687af08420d065c07b24d268aa6765d1cd0ab72fa`  
		Last Modified: Fri, 01 Sep 2017 20:49:55 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d78a3aec5a5778bee7cc9db44fccf7d354548600488fe47ce341191a8c45982`  
		Last Modified: Fri, 01 Sep 2017 20:49:57 GMT  
		Size: 14.5 MB (14467245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d7e51fed35bcda6a283f4cac1b10830e0b3359592cc4118851cb98ae416d78`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a050e50a6f8be62407c3aabe4d40fea9c32e57ac69dd9a4523805c35d44e34c5`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c38939a494896c2ebe5b39c1bcb61099a0be50b149aaf331bc2db956c7386b`  
		Last Modified: Tue, 05 Sep 2017 20:32:48 GMT  
		Size: 35.9 MB (35887584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0540cda8b718769f36791a18443749875f297da8b8a56aff55820cd966e0737`  
		Last Modified: Tue, 05 Sep 2017 20:32:39 GMT  
		Size: 1.9 MB (1919514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d727829f9f96b9fbccf7aec2c8410fe518dc172cd7d0fbed3a8064122c5d170d`  
		Last Modified: Tue, 05 Sep 2017 20:32:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46e4e7cd8ee18bace47632516831e07e8bb3d97ffceb2bed72b6a0b5b2b974b`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f78580f2b46dfd500ff10e7dfe406fd48705262e4e2dbb242a5fc3e997346d6`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 1.3 MB (1284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84d421f390336c964cd7950c976c7c1ec7a9c2942f43e31706f8236cb79321c`  
		Last Modified: Tue, 05 Sep 2017 20:32:35 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e029019e4a3924bf564cd622435937cef3d456cdf4aa9d9a9aa99da7d82314`  
		Last Modified: Tue, 05 Sep 2017 20:32:53 GMT  
		Size: 46.2 MB (46159182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ee883c757a15d1c8b8a7671e690e82b5fec4295a7621cb45d33a0cd7b396ed`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2cc60898ae987ac8472314dc271f806b2f00c994e7cbcf1fefcfcdb204af7e3`  
		Last Modified: Wed, 06 Sep 2017 23:01:38 GMT  
		Size: 770.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0`

```console
$ docker pull nextcloud@sha256:b3487459f4174ff61e04f9fbbbc29fcfc703d82225472f9cc4dc7e4e73c8ae81
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249896203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae179c7ff7c67f3699b92e32253852a9abf36fb22246a97d6f14e5ff0873a98d`
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
# Mon, 24 Jul 2017 19:12:13 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Sep 2017 20:28:26 GMT
ENV PHP_VERSION=7.1.9
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 01 Sep 2017 20:28:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Sep 2017 20:28:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Sep 2017 20:31:38 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Sep 2017 20:31:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:39 GMT
WORKDIR /var/www/html
# Fri, 01 Sep 2017 20:31:39 GMT
EXPOSE 80/tcp
# Fri, 01 Sep 2017 20:31:39 GMT
CMD ["apache2-foreground"]
# Tue, 05 Sep 2017 20:20:17 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Sep 2017 20:22:20 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Tue, 05 Sep 2017 20:22:21 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 05 Sep 2017 20:22:22 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:22:50 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Sep 2017 20:22:51 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:22:51 GMT
ENV NEXTCLOUD_VERSION=11.0.4
# Tue, 05 Sep 2017 20:22:52 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Sep 2017 20:22:52 GMT
VOLUME [/var/www/html]
# Tue, 05 Sep 2017 20:23:06 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Sep 2017 20:23:07 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 06 Sep 2017 23:01:05 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 06 Sep 2017 23:01:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 23:01:06 GMT
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
	-	`sha256:da90a622bde93c770f1f7f95490020f2c95f74c4bc3ec94e41ce17d374185017`  
		Last Modified: Fri, 01 Sep 2017 20:49:56 GMT  
		Size: 12.3 MB (12284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736b61dfc7937d7186f87d9687af08420d065c07b24d268aa6765d1cd0ab72fa`  
		Last Modified: Fri, 01 Sep 2017 20:49:55 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d78a3aec5a5778bee7cc9db44fccf7d354548600488fe47ce341191a8c45982`  
		Last Modified: Fri, 01 Sep 2017 20:49:57 GMT  
		Size: 14.5 MB (14467245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d7e51fed35bcda6a283f4cac1b10830e0b3359592cc4118851cb98ae416d78`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a050e50a6f8be62407c3aabe4d40fea9c32e57ac69dd9a4523805c35d44e34c5`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c38939a494896c2ebe5b39c1bcb61099a0be50b149aaf331bc2db956c7386b`  
		Last Modified: Tue, 05 Sep 2017 20:32:48 GMT  
		Size: 35.9 MB (35887584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0540cda8b718769f36791a18443749875f297da8b8a56aff55820cd966e0737`  
		Last Modified: Tue, 05 Sep 2017 20:32:39 GMT  
		Size: 1.9 MB (1919514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d727829f9f96b9fbccf7aec2c8410fe518dc172cd7d0fbed3a8064122c5d170d`  
		Last Modified: Tue, 05 Sep 2017 20:32:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46e4e7cd8ee18bace47632516831e07e8bb3d97ffceb2bed72b6a0b5b2b974b`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f78580f2b46dfd500ff10e7dfe406fd48705262e4e2dbb242a5fc3e997346d6`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 1.3 MB (1284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84d421f390336c964cd7950c976c7c1ec7a9c2942f43e31706f8236cb79321c`  
		Last Modified: Tue, 05 Sep 2017 20:32:35 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e029019e4a3924bf564cd622435937cef3d456cdf4aa9d9a9aa99da7d82314`  
		Last Modified: Tue, 05 Sep 2017 20:32:53 GMT  
		Size: 46.2 MB (46159182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ee883c757a15d1c8b8a7671e690e82b5fec4295a7621cb45d33a0cd7b396ed`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2cc60898ae987ac8472314dc271f806b2f00c994e7cbcf1fefcfcdb204af7e3`  
		Last Modified: Wed, 06 Sep 2017 23:01:38 GMT  
		Size: 770.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11`

```console
$ docker pull nextcloud@sha256:b3487459f4174ff61e04f9fbbbc29fcfc703d82225472f9cc4dc7e4e73c8ae81
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249896203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae179c7ff7c67f3699b92e32253852a9abf36fb22246a97d6f14e5ff0873a98d`
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
# Mon, 24 Jul 2017 19:12:13 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Sep 2017 20:28:26 GMT
ENV PHP_VERSION=7.1.9
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 01 Sep 2017 20:28:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Sep 2017 20:28:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Sep 2017 20:31:38 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Sep 2017 20:31:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:39 GMT
WORKDIR /var/www/html
# Fri, 01 Sep 2017 20:31:39 GMT
EXPOSE 80/tcp
# Fri, 01 Sep 2017 20:31:39 GMT
CMD ["apache2-foreground"]
# Tue, 05 Sep 2017 20:20:17 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Sep 2017 20:22:20 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Tue, 05 Sep 2017 20:22:21 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 05 Sep 2017 20:22:22 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:22:50 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Sep 2017 20:22:51 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:22:51 GMT
ENV NEXTCLOUD_VERSION=11.0.4
# Tue, 05 Sep 2017 20:22:52 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Sep 2017 20:22:52 GMT
VOLUME [/var/www/html]
# Tue, 05 Sep 2017 20:23:06 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Sep 2017 20:23:07 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 06 Sep 2017 23:01:05 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 06 Sep 2017 23:01:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 23:01:06 GMT
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
	-	`sha256:da90a622bde93c770f1f7f95490020f2c95f74c4bc3ec94e41ce17d374185017`  
		Last Modified: Fri, 01 Sep 2017 20:49:56 GMT  
		Size: 12.3 MB (12284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736b61dfc7937d7186f87d9687af08420d065c07b24d268aa6765d1cd0ab72fa`  
		Last Modified: Fri, 01 Sep 2017 20:49:55 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d78a3aec5a5778bee7cc9db44fccf7d354548600488fe47ce341191a8c45982`  
		Last Modified: Fri, 01 Sep 2017 20:49:57 GMT  
		Size: 14.5 MB (14467245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d7e51fed35bcda6a283f4cac1b10830e0b3359592cc4118851cb98ae416d78`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a050e50a6f8be62407c3aabe4d40fea9c32e57ac69dd9a4523805c35d44e34c5`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c38939a494896c2ebe5b39c1bcb61099a0be50b149aaf331bc2db956c7386b`  
		Last Modified: Tue, 05 Sep 2017 20:32:48 GMT  
		Size: 35.9 MB (35887584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0540cda8b718769f36791a18443749875f297da8b8a56aff55820cd966e0737`  
		Last Modified: Tue, 05 Sep 2017 20:32:39 GMT  
		Size: 1.9 MB (1919514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d727829f9f96b9fbccf7aec2c8410fe518dc172cd7d0fbed3a8064122c5d170d`  
		Last Modified: Tue, 05 Sep 2017 20:32:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46e4e7cd8ee18bace47632516831e07e8bb3d97ffceb2bed72b6a0b5b2b974b`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f78580f2b46dfd500ff10e7dfe406fd48705262e4e2dbb242a5fc3e997346d6`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 1.3 MB (1284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84d421f390336c964cd7950c976c7c1ec7a9c2942f43e31706f8236cb79321c`  
		Last Modified: Tue, 05 Sep 2017 20:32:35 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e029019e4a3924bf564cd622435937cef3d456cdf4aa9d9a9aa99da7d82314`  
		Last Modified: Tue, 05 Sep 2017 20:32:53 GMT  
		Size: 46.2 MB (46159182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ee883c757a15d1c8b8a7671e690e82b5fec4295a7621cb45d33a0cd7b396ed`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2cc60898ae987ac8472314dc271f806b2f00c994e7cbcf1fefcfcdb204af7e3`  
		Last Modified: Wed, 06 Sep 2017 23:01:38 GMT  
		Size: 770.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0.4-fpm`

```console
$ docker pull nextcloud@sha256:43824dbd7d10cecb8c3e636a8cd431754ce80618d50b54369781f9a339b41e9a
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0.4-fpm` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246642810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e831778a0a963b8ee90de8e4656eb2754c5dcb825d721ea8303f3c0b6b9b43e5`
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
# Mon, 24 Jul 2017 19:15:31 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Sep 2017 20:31:45 GMT
ENV PHP_VERSION=7.1.9
# Fri, 01 Sep 2017 20:31:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 01 Sep 2017 20:31:45 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 01 Sep 2017 20:32:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Sep 2017 20:32:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:35:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Sep 2017 20:35:50 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:35:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Sep 2017 20:35:51 GMT
WORKDIR /var/www/html
# Fri, 01 Sep 2017 20:35:52 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 01 Sep 2017 20:35:52 GMT
EXPOSE 9000/tcp
# Fri, 01 Sep 2017 20:35:52 GMT
CMD ["php-fpm"]
# Tue, 05 Sep 2017 20:23:34 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Sep 2017 20:25:37 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Tue, 05 Sep 2017 20:25:38 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 05 Sep 2017 20:26:07 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Sep 2017 20:26:07 GMT
ENV NEXTCLOUD_VERSION=11.0.4
# Tue, 05 Sep 2017 20:26:08 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Sep 2017 20:26:08 GMT
VOLUME [/var/www/html]
# Tue, 05 Sep 2017 20:26:22 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Sep 2017 20:26:23 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 06 Sep 2017 23:01:13 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 06 Sep 2017 23:01:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 23:01:14 GMT
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
	-	`sha256:8d1f0456aaf45d9053ca7819c7949a3c772e7b71a2f67dbaf5e5773ce1069e1b`  
		Last Modified: Fri, 01 Sep 2017 20:50:31 GMT  
		Size: 12.3 MB (12267502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3851c86160ed87f846c04776b7670a5807df0ed947d65720d17b4f789d4307e9`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52429f843b71a9b0bd527b14d7487b16be720c6aa3e999573859977dbbd0ff1c`  
		Last Modified: Fri, 01 Sep 2017 20:50:32 GMT  
		Size: 14.0 MB (14032065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5376fb3781d1cb118613d808612676ae8144f06100f976b6518d76fee81c675`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 2.1 KB (2116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087cc9e30ebd29bd29374227961ee70cde9d048358ffd7a20f8117bd51f5c083`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3eb82271b43f6f60ab146ab4ef094c50fd6b3d1c46de0b0b956e85aaceae08`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 7.7 KB (7672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1458e4daf6a2ca6c99db229dacfcc8c2fa360e1273b32862f37d38f65fa01505`  
		Last Modified: Tue, 05 Sep 2017 20:33:56 GMT  
		Size: 35.9 MB (35867098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d167af1aea18e7e5d2b11bedb28e229738b5bc0daf0d7aacad2deead02f743`  
		Last Modified: Tue, 05 Sep 2017 20:33:47 GMT  
		Size: 1.9 MB (1919620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c383730e6a1b713fdbfdfd94e3a6d3ff78be58da291f50a391cb67a2d2a36b`  
		Last Modified: Tue, 05 Sep 2017 20:33:44 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee19ef119818d816352b716e7d2f4c21f5be3fc31af82b3ea4854747b5e56458`  
		Last Modified: Tue, 05 Sep 2017 20:33:45 GMT  
		Size: 1.3 MB (1284726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b6edbbc9198fb814efa9e6a5e43546ba196046573148739a5a18d3476552e9`  
		Last Modified: Tue, 05 Sep 2017 20:33:44 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54503d1a0b28efb9ddce983a3c302b99804d351c620377126cdf05a4497609d`  
		Last Modified: Tue, 05 Sep 2017 20:34:00 GMT  
		Size: 46.2 MB (46159165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4694d6fc7bd70382945767a60d1b670a4b2e7151bcb4234006a9257dcbe7da4`  
		Last Modified: Tue, 05 Sep 2017 20:33:44 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b23dd1c6cc1dfa0870aa7cf1f2b116c6c737d0ee68945621fb6a617f5faeab`  
		Last Modified: Wed, 06 Sep 2017 23:02:33 GMT  
		Size: 769.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0-fpm`

```console
$ docker pull nextcloud@sha256:43824dbd7d10cecb8c3e636a8cd431754ce80618d50b54369781f9a339b41e9a
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0-fpm` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246642810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e831778a0a963b8ee90de8e4656eb2754c5dcb825d721ea8303f3c0b6b9b43e5`
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
# Mon, 24 Jul 2017 19:15:31 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Sep 2017 20:31:45 GMT
ENV PHP_VERSION=7.1.9
# Fri, 01 Sep 2017 20:31:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 01 Sep 2017 20:31:45 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 01 Sep 2017 20:32:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Sep 2017 20:32:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:35:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Sep 2017 20:35:50 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:35:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Sep 2017 20:35:51 GMT
WORKDIR /var/www/html
# Fri, 01 Sep 2017 20:35:52 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 01 Sep 2017 20:35:52 GMT
EXPOSE 9000/tcp
# Fri, 01 Sep 2017 20:35:52 GMT
CMD ["php-fpm"]
# Tue, 05 Sep 2017 20:23:34 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Sep 2017 20:25:37 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Tue, 05 Sep 2017 20:25:38 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 05 Sep 2017 20:26:07 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Sep 2017 20:26:07 GMT
ENV NEXTCLOUD_VERSION=11.0.4
# Tue, 05 Sep 2017 20:26:08 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Sep 2017 20:26:08 GMT
VOLUME [/var/www/html]
# Tue, 05 Sep 2017 20:26:22 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Sep 2017 20:26:23 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 06 Sep 2017 23:01:13 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 06 Sep 2017 23:01:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 23:01:14 GMT
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
	-	`sha256:8d1f0456aaf45d9053ca7819c7949a3c772e7b71a2f67dbaf5e5773ce1069e1b`  
		Last Modified: Fri, 01 Sep 2017 20:50:31 GMT  
		Size: 12.3 MB (12267502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3851c86160ed87f846c04776b7670a5807df0ed947d65720d17b4f789d4307e9`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52429f843b71a9b0bd527b14d7487b16be720c6aa3e999573859977dbbd0ff1c`  
		Last Modified: Fri, 01 Sep 2017 20:50:32 GMT  
		Size: 14.0 MB (14032065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5376fb3781d1cb118613d808612676ae8144f06100f976b6518d76fee81c675`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 2.1 KB (2116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087cc9e30ebd29bd29374227961ee70cde9d048358ffd7a20f8117bd51f5c083`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3eb82271b43f6f60ab146ab4ef094c50fd6b3d1c46de0b0b956e85aaceae08`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 7.7 KB (7672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1458e4daf6a2ca6c99db229dacfcc8c2fa360e1273b32862f37d38f65fa01505`  
		Last Modified: Tue, 05 Sep 2017 20:33:56 GMT  
		Size: 35.9 MB (35867098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d167af1aea18e7e5d2b11bedb28e229738b5bc0daf0d7aacad2deead02f743`  
		Last Modified: Tue, 05 Sep 2017 20:33:47 GMT  
		Size: 1.9 MB (1919620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c383730e6a1b713fdbfdfd94e3a6d3ff78be58da291f50a391cb67a2d2a36b`  
		Last Modified: Tue, 05 Sep 2017 20:33:44 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee19ef119818d816352b716e7d2f4c21f5be3fc31af82b3ea4854747b5e56458`  
		Last Modified: Tue, 05 Sep 2017 20:33:45 GMT  
		Size: 1.3 MB (1284726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b6edbbc9198fb814efa9e6a5e43546ba196046573148739a5a18d3476552e9`  
		Last Modified: Tue, 05 Sep 2017 20:33:44 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54503d1a0b28efb9ddce983a3c302b99804d351c620377126cdf05a4497609d`  
		Last Modified: Tue, 05 Sep 2017 20:34:00 GMT  
		Size: 46.2 MB (46159165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4694d6fc7bd70382945767a60d1b670a4b2e7151bcb4234006a9257dcbe7da4`  
		Last Modified: Tue, 05 Sep 2017 20:33:44 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b23dd1c6cc1dfa0870aa7cf1f2b116c6c737d0ee68945621fb6a617f5faeab`  
		Last Modified: Wed, 06 Sep 2017 23:02:33 GMT  
		Size: 769.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11-fpm`

```console
$ docker pull nextcloud@sha256:43824dbd7d10cecb8c3e636a8cd431754ce80618d50b54369781f9a339b41e9a
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11-fpm` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246642810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e831778a0a963b8ee90de8e4656eb2754c5dcb825d721ea8303f3c0b6b9b43e5`
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
# Mon, 24 Jul 2017 19:15:31 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Sep 2017 20:31:45 GMT
ENV PHP_VERSION=7.1.9
# Fri, 01 Sep 2017 20:31:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 01 Sep 2017 20:31:45 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 01 Sep 2017 20:32:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Sep 2017 20:32:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:35:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Sep 2017 20:35:50 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:35:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Sep 2017 20:35:51 GMT
WORKDIR /var/www/html
# Fri, 01 Sep 2017 20:35:52 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 01 Sep 2017 20:35:52 GMT
EXPOSE 9000/tcp
# Fri, 01 Sep 2017 20:35:52 GMT
CMD ["php-fpm"]
# Tue, 05 Sep 2017 20:23:34 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Sep 2017 20:25:37 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Tue, 05 Sep 2017 20:25:38 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 05 Sep 2017 20:26:07 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Sep 2017 20:26:07 GMT
ENV NEXTCLOUD_VERSION=11.0.4
# Tue, 05 Sep 2017 20:26:08 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Sep 2017 20:26:08 GMT
VOLUME [/var/www/html]
# Tue, 05 Sep 2017 20:26:22 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Sep 2017 20:26:23 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 06 Sep 2017 23:01:13 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 06 Sep 2017 23:01:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 23:01:14 GMT
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
	-	`sha256:8d1f0456aaf45d9053ca7819c7949a3c772e7b71a2f67dbaf5e5773ce1069e1b`  
		Last Modified: Fri, 01 Sep 2017 20:50:31 GMT  
		Size: 12.3 MB (12267502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3851c86160ed87f846c04776b7670a5807df0ed947d65720d17b4f789d4307e9`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52429f843b71a9b0bd527b14d7487b16be720c6aa3e999573859977dbbd0ff1c`  
		Last Modified: Fri, 01 Sep 2017 20:50:32 GMT  
		Size: 14.0 MB (14032065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5376fb3781d1cb118613d808612676ae8144f06100f976b6518d76fee81c675`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 2.1 KB (2116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087cc9e30ebd29bd29374227961ee70cde9d048358ffd7a20f8117bd51f5c083`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3eb82271b43f6f60ab146ab4ef094c50fd6b3d1c46de0b0b956e85aaceae08`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 7.7 KB (7672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1458e4daf6a2ca6c99db229dacfcc8c2fa360e1273b32862f37d38f65fa01505`  
		Last Modified: Tue, 05 Sep 2017 20:33:56 GMT  
		Size: 35.9 MB (35867098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d167af1aea18e7e5d2b11bedb28e229738b5bc0daf0d7aacad2deead02f743`  
		Last Modified: Tue, 05 Sep 2017 20:33:47 GMT  
		Size: 1.9 MB (1919620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c383730e6a1b713fdbfdfd94e3a6d3ff78be58da291f50a391cb67a2d2a36b`  
		Last Modified: Tue, 05 Sep 2017 20:33:44 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee19ef119818d816352b716e7d2f4c21f5be3fc31af82b3ea4854747b5e56458`  
		Last Modified: Tue, 05 Sep 2017 20:33:45 GMT  
		Size: 1.3 MB (1284726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b6edbbc9198fb814efa9e6a5e43546ba196046573148739a5a18d3476552e9`  
		Last Modified: Tue, 05 Sep 2017 20:33:44 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54503d1a0b28efb9ddce983a3c302b99804d351c620377126cdf05a4497609d`  
		Last Modified: Tue, 05 Sep 2017 20:34:00 GMT  
		Size: 46.2 MB (46159165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4694d6fc7bd70382945767a60d1b670a4b2e7151bcb4234006a9257dcbe7da4`  
		Last Modified: Tue, 05 Sep 2017 20:33:44 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b23dd1c6cc1dfa0870aa7cf1f2b116c6c737d0ee68945621fb6a617f5faeab`  
		Last Modified: Wed, 06 Sep 2017 23:02:33 GMT  
		Size: 769.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0.2-apache`

```console
$ docker pull nextcloud@sha256:784863333bdd5cac13a6ab51710002c38563a55b4f69215700336d33202214df
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0.2-apache` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250476549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b664a26f8cf55209ad58f11a2d4caed80551a86a5304fbcaf4ccfd0456bd31`
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
# Mon, 24 Jul 2017 19:12:13 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Sep 2017 20:28:26 GMT
ENV PHP_VERSION=7.1.9
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 01 Sep 2017 20:28:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Sep 2017 20:28:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Sep 2017 20:31:38 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Sep 2017 20:31:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:39 GMT
WORKDIR /var/www/html
# Fri, 01 Sep 2017 20:31:39 GMT
EXPOSE 80/tcp
# Fri, 01 Sep 2017 20:31:39 GMT
CMD ["apache2-foreground"]
# Tue, 05 Sep 2017 20:20:17 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Sep 2017 20:22:20 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Tue, 05 Sep 2017 20:22:21 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 05 Sep 2017 20:22:22 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:22:50 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Sep 2017 20:22:51 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:26:29 GMT
ENV NEXTCLOUD_VERSION=12.0.2
# Tue, 05 Sep 2017 20:26:30 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Sep 2017 20:26:30 GMT
VOLUME [/var/www/html]
# Tue, 05 Sep 2017 20:26:44 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Sep 2017 20:26:45 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 06 Sep 2017 23:01:20 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 06 Sep 2017 23:01:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 23:01:21 GMT
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
	-	`sha256:da90a622bde93c770f1f7f95490020f2c95f74c4bc3ec94e41ce17d374185017`  
		Last Modified: Fri, 01 Sep 2017 20:49:56 GMT  
		Size: 12.3 MB (12284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736b61dfc7937d7186f87d9687af08420d065c07b24d268aa6765d1cd0ab72fa`  
		Last Modified: Fri, 01 Sep 2017 20:49:55 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d78a3aec5a5778bee7cc9db44fccf7d354548600488fe47ce341191a8c45982`  
		Last Modified: Fri, 01 Sep 2017 20:49:57 GMT  
		Size: 14.5 MB (14467245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d7e51fed35bcda6a283f4cac1b10830e0b3359592cc4118851cb98ae416d78`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a050e50a6f8be62407c3aabe4d40fea9c32e57ac69dd9a4523805c35d44e34c5`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c38939a494896c2ebe5b39c1bcb61099a0be50b149aaf331bc2db956c7386b`  
		Last Modified: Tue, 05 Sep 2017 20:32:48 GMT  
		Size: 35.9 MB (35887584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0540cda8b718769f36791a18443749875f297da8b8a56aff55820cd966e0737`  
		Last Modified: Tue, 05 Sep 2017 20:32:39 GMT  
		Size: 1.9 MB (1919514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d727829f9f96b9fbccf7aec2c8410fe518dc172cd7d0fbed3a8064122c5d170d`  
		Last Modified: Tue, 05 Sep 2017 20:32:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46e4e7cd8ee18bace47632516831e07e8bb3d97ffceb2bed72b6a0b5b2b974b`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f78580f2b46dfd500ff10e7dfe406fd48705262e4e2dbb242a5fc3e997346d6`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 1.3 MB (1284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7821c0011a40b498f709c254d4d6de2033e86db16db0de11ed75ddcb148c1783`  
		Last Modified: Tue, 05 Sep 2017 20:34:27 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d4e973864c4ba1e4d57406adca387eadde152f429d66a876e84eda4cd5b749`  
		Last Modified: Tue, 05 Sep 2017 20:34:36 GMT  
		Size: 46.7 MB (46739527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fc7d4c13db229ad893a939b73c47e9d20a072ec95f28970416fc90b9ea511`  
		Last Modified: Tue, 05 Sep 2017 20:34:27 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cfad16d2042ac4d72be411a9daaab0600dfc599344f49a8dfe38e3d51d00d4`  
		Last Modified: Wed, 06 Sep 2017 23:03:00 GMT  
		Size: 772.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0-apache`

```console
$ docker pull nextcloud@sha256:784863333bdd5cac13a6ab51710002c38563a55b4f69215700336d33202214df
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0-apache` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250476549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b664a26f8cf55209ad58f11a2d4caed80551a86a5304fbcaf4ccfd0456bd31`
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
# Mon, 24 Jul 2017 19:12:13 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Sep 2017 20:28:26 GMT
ENV PHP_VERSION=7.1.9
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 01 Sep 2017 20:28:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Sep 2017 20:28:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Sep 2017 20:31:38 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Sep 2017 20:31:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:39 GMT
WORKDIR /var/www/html
# Fri, 01 Sep 2017 20:31:39 GMT
EXPOSE 80/tcp
# Fri, 01 Sep 2017 20:31:39 GMT
CMD ["apache2-foreground"]
# Tue, 05 Sep 2017 20:20:17 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Sep 2017 20:22:20 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Tue, 05 Sep 2017 20:22:21 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 05 Sep 2017 20:22:22 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:22:50 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Sep 2017 20:22:51 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:26:29 GMT
ENV NEXTCLOUD_VERSION=12.0.2
# Tue, 05 Sep 2017 20:26:30 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Sep 2017 20:26:30 GMT
VOLUME [/var/www/html]
# Tue, 05 Sep 2017 20:26:44 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Sep 2017 20:26:45 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 06 Sep 2017 23:01:20 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 06 Sep 2017 23:01:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 23:01:21 GMT
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
	-	`sha256:da90a622bde93c770f1f7f95490020f2c95f74c4bc3ec94e41ce17d374185017`  
		Last Modified: Fri, 01 Sep 2017 20:49:56 GMT  
		Size: 12.3 MB (12284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736b61dfc7937d7186f87d9687af08420d065c07b24d268aa6765d1cd0ab72fa`  
		Last Modified: Fri, 01 Sep 2017 20:49:55 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d78a3aec5a5778bee7cc9db44fccf7d354548600488fe47ce341191a8c45982`  
		Last Modified: Fri, 01 Sep 2017 20:49:57 GMT  
		Size: 14.5 MB (14467245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d7e51fed35bcda6a283f4cac1b10830e0b3359592cc4118851cb98ae416d78`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a050e50a6f8be62407c3aabe4d40fea9c32e57ac69dd9a4523805c35d44e34c5`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c38939a494896c2ebe5b39c1bcb61099a0be50b149aaf331bc2db956c7386b`  
		Last Modified: Tue, 05 Sep 2017 20:32:48 GMT  
		Size: 35.9 MB (35887584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0540cda8b718769f36791a18443749875f297da8b8a56aff55820cd966e0737`  
		Last Modified: Tue, 05 Sep 2017 20:32:39 GMT  
		Size: 1.9 MB (1919514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d727829f9f96b9fbccf7aec2c8410fe518dc172cd7d0fbed3a8064122c5d170d`  
		Last Modified: Tue, 05 Sep 2017 20:32:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46e4e7cd8ee18bace47632516831e07e8bb3d97ffceb2bed72b6a0b5b2b974b`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f78580f2b46dfd500ff10e7dfe406fd48705262e4e2dbb242a5fc3e997346d6`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 1.3 MB (1284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7821c0011a40b498f709c254d4d6de2033e86db16db0de11ed75ddcb148c1783`  
		Last Modified: Tue, 05 Sep 2017 20:34:27 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d4e973864c4ba1e4d57406adca387eadde152f429d66a876e84eda4cd5b749`  
		Last Modified: Tue, 05 Sep 2017 20:34:36 GMT  
		Size: 46.7 MB (46739527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fc7d4c13db229ad893a939b73c47e9d20a072ec95f28970416fc90b9ea511`  
		Last Modified: Tue, 05 Sep 2017 20:34:27 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cfad16d2042ac4d72be411a9daaab0600dfc599344f49a8dfe38e3d51d00d4`  
		Last Modified: Wed, 06 Sep 2017 23:03:00 GMT  
		Size: 772.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12-apache`

```console
$ docker pull nextcloud@sha256:784863333bdd5cac13a6ab51710002c38563a55b4f69215700336d33202214df
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12-apache` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250476549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b664a26f8cf55209ad58f11a2d4caed80551a86a5304fbcaf4ccfd0456bd31`
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
# Mon, 24 Jul 2017 19:12:13 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Sep 2017 20:28:26 GMT
ENV PHP_VERSION=7.1.9
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 01 Sep 2017 20:28:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Sep 2017 20:28:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Sep 2017 20:31:38 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Sep 2017 20:31:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:39 GMT
WORKDIR /var/www/html
# Fri, 01 Sep 2017 20:31:39 GMT
EXPOSE 80/tcp
# Fri, 01 Sep 2017 20:31:39 GMT
CMD ["apache2-foreground"]
# Tue, 05 Sep 2017 20:20:17 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Sep 2017 20:22:20 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Tue, 05 Sep 2017 20:22:21 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 05 Sep 2017 20:22:22 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:22:50 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Sep 2017 20:22:51 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:26:29 GMT
ENV NEXTCLOUD_VERSION=12.0.2
# Tue, 05 Sep 2017 20:26:30 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Sep 2017 20:26:30 GMT
VOLUME [/var/www/html]
# Tue, 05 Sep 2017 20:26:44 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Sep 2017 20:26:45 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 06 Sep 2017 23:01:20 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 06 Sep 2017 23:01:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 23:01:21 GMT
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
	-	`sha256:da90a622bde93c770f1f7f95490020f2c95f74c4bc3ec94e41ce17d374185017`  
		Last Modified: Fri, 01 Sep 2017 20:49:56 GMT  
		Size: 12.3 MB (12284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736b61dfc7937d7186f87d9687af08420d065c07b24d268aa6765d1cd0ab72fa`  
		Last Modified: Fri, 01 Sep 2017 20:49:55 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d78a3aec5a5778bee7cc9db44fccf7d354548600488fe47ce341191a8c45982`  
		Last Modified: Fri, 01 Sep 2017 20:49:57 GMT  
		Size: 14.5 MB (14467245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d7e51fed35bcda6a283f4cac1b10830e0b3359592cc4118851cb98ae416d78`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a050e50a6f8be62407c3aabe4d40fea9c32e57ac69dd9a4523805c35d44e34c5`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c38939a494896c2ebe5b39c1bcb61099a0be50b149aaf331bc2db956c7386b`  
		Last Modified: Tue, 05 Sep 2017 20:32:48 GMT  
		Size: 35.9 MB (35887584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0540cda8b718769f36791a18443749875f297da8b8a56aff55820cd966e0737`  
		Last Modified: Tue, 05 Sep 2017 20:32:39 GMT  
		Size: 1.9 MB (1919514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d727829f9f96b9fbccf7aec2c8410fe518dc172cd7d0fbed3a8064122c5d170d`  
		Last Modified: Tue, 05 Sep 2017 20:32:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46e4e7cd8ee18bace47632516831e07e8bb3d97ffceb2bed72b6a0b5b2b974b`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f78580f2b46dfd500ff10e7dfe406fd48705262e4e2dbb242a5fc3e997346d6`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 1.3 MB (1284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7821c0011a40b498f709c254d4d6de2033e86db16db0de11ed75ddcb148c1783`  
		Last Modified: Tue, 05 Sep 2017 20:34:27 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d4e973864c4ba1e4d57406adca387eadde152f429d66a876e84eda4cd5b749`  
		Last Modified: Tue, 05 Sep 2017 20:34:36 GMT  
		Size: 46.7 MB (46739527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fc7d4c13db229ad893a939b73c47e9d20a072ec95f28970416fc90b9ea511`  
		Last Modified: Tue, 05 Sep 2017 20:34:27 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cfad16d2042ac4d72be411a9daaab0600dfc599344f49a8dfe38e3d51d00d4`  
		Last Modified: Wed, 06 Sep 2017 23:03:00 GMT  
		Size: 772.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:apache`

```console
$ docker pull nextcloud@sha256:784863333bdd5cac13a6ab51710002c38563a55b4f69215700336d33202214df
```

-	Platforms:
	-	linux; amd64

### `nextcloud:apache` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250476549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b664a26f8cf55209ad58f11a2d4caed80551a86a5304fbcaf4ccfd0456bd31`
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
# Mon, 24 Jul 2017 19:12:13 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Sep 2017 20:28:26 GMT
ENV PHP_VERSION=7.1.9
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 01 Sep 2017 20:28:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Sep 2017 20:28:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Sep 2017 20:31:38 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Sep 2017 20:31:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:39 GMT
WORKDIR /var/www/html
# Fri, 01 Sep 2017 20:31:39 GMT
EXPOSE 80/tcp
# Fri, 01 Sep 2017 20:31:39 GMT
CMD ["apache2-foreground"]
# Tue, 05 Sep 2017 20:20:17 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Sep 2017 20:22:20 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Tue, 05 Sep 2017 20:22:21 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 05 Sep 2017 20:22:22 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:22:50 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Sep 2017 20:22:51 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:26:29 GMT
ENV NEXTCLOUD_VERSION=12.0.2
# Tue, 05 Sep 2017 20:26:30 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Sep 2017 20:26:30 GMT
VOLUME [/var/www/html]
# Tue, 05 Sep 2017 20:26:44 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Sep 2017 20:26:45 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 06 Sep 2017 23:01:20 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 06 Sep 2017 23:01:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 23:01:21 GMT
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
	-	`sha256:da90a622bde93c770f1f7f95490020f2c95f74c4bc3ec94e41ce17d374185017`  
		Last Modified: Fri, 01 Sep 2017 20:49:56 GMT  
		Size: 12.3 MB (12284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736b61dfc7937d7186f87d9687af08420d065c07b24d268aa6765d1cd0ab72fa`  
		Last Modified: Fri, 01 Sep 2017 20:49:55 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d78a3aec5a5778bee7cc9db44fccf7d354548600488fe47ce341191a8c45982`  
		Last Modified: Fri, 01 Sep 2017 20:49:57 GMT  
		Size: 14.5 MB (14467245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d7e51fed35bcda6a283f4cac1b10830e0b3359592cc4118851cb98ae416d78`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a050e50a6f8be62407c3aabe4d40fea9c32e57ac69dd9a4523805c35d44e34c5`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c38939a494896c2ebe5b39c1bcb61099a0be50b149aaf331bc2db956c7386b`  
		Last Modified: Tue, 05 Sep 2017 20:32:48 GMT  
		Size: 35.9 MB (35887584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0540cda8b718769f36791a18443749875f297da8b8a56aff55820cd966e0737`  
		Last Modified: Tue, 05 Sep 2017 20:32:39 GMT  
		Size: 1.9 MB (1919514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d727829f9f96b9fbccf7aec2c8410fe518dc172cd7d0fbed3a8064122c5d170d`  
		Last Modified: Tue, 05 Sep 2017 20:32:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46e4e7cd8ee18bace47632516831e07e8bb3d97ffceb2bed72b6a0b5b2b974b`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f78580f2b46dfd500ff10e7dfe406fd48705262e4e2dbb242a5fc3e997346d6`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 1.3 MB (1284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7821c0011a40b498f709c254d4d6de2033e86db16db0de11ed75ddcb148c1783`  
		Last Modified: Tue, 05 Sep 2017 20:34:27 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d4e973864c4ba1e4d57406adca387eadde152f429d66a876e84eda4cd5b749`  
		Last Modified: Tue, 05 Sep 2017 20:34:36 GMT  
		Size: 46.7 MB (46739527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fc7d4c13db229ad893a939b73c47e9d20a072ec95f28970416fc90b9ea511`  
		Last Modified: Tue, 05 Sep 2017 20:34:27 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cfad16d2042ac4d72be411a9daaab0600dfc599344f49a8dfe38e3d51d00d4`  
		Last Modified: Wed, 06 Sep 2017 23:03:00 GMT  
		Size: 772.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0.2`

```console
$ docker pull nextcloud@sha256:784863333bdd5cac13a6ab51710002c38563a55b4f69215700336d33202214df
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250476549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b664a26f8cf55209ad58f11a2d4caed80551a86a5304fbcaf4ccfd0456bd31`
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
# Mon, 24 Jul 2017 19:12:13 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Sep 2017 20:28:26 GMT
ENV PHP_VERSION=7.1.9
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 01 Sep 2017 20:28:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Sep 2017 20:28:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Sep 2017 20:31:38 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Sep 2017 20:31:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:39 GMT
WORKDIR /var/www/html
# Fri, 01 Sep 2017 20:31:39 GMT
EXPOSE 80/tcp
# Fri, 01 Sep 2017 20:31:39 GMT
CMD ["apache2-foreground"]
# Tue, 05 Sep 2017 20:20:17 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Sep 2017 20:22:20 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Tue, 05 Sep 2017 20:22:21 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 05 Sep 2017 20:22:22 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:22:50 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Sep 2017 20:22:51 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:26:29 GMT
ENV NEXTCLOUD_VERSION=12.0.2
# Tue, 05 Sep 2017 20:26:30 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Sep 2017 20:26:30 GMT
VOLUME [/var/www/html]
# Tue, 05 Sep 2017 20:26:44 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Sep 2017 20:26:45 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 06 Sep 2017 23:01:20 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 06 Sep 2017 23:01:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 23:01:21 GMT
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
	-	`sha256:da90a622bde93c770f1f7f95490020f2c95f74c4bc3ec94e41ce17d374185017`  
		Last Modified: Fri, 01 Sep 2017 20:49:56 GMT  
		Size: 12.3 MB (12284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736b61dfc7937d7186f87d9687af08420d065c07b24d268aa6765d1cd0ab72fa`  
		Last Modified: Fri, 01 Sep 2017 20:49:55 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d78a3aec5a5778bee7cc9db44fccf7d354548600488fe47ce341191a8c45982`  
		Last Modified: Fri, 01 Sep 2017 20:49:57 GMT  
		Size: 14.5 MB (14467245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d7e51fed35bcda6a283f4cac1b10830e0b3359592cc4118851cb98ae416d78`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a050e50a6f8be62407c3aabe4d40fea9c32e57ac69dd9a4523805c35d44e34c5`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c38939a494896c2ebe5b39c1bcb61099a0be50b149aaf331bc2db956c7386b`  
		Last Modified: Tue, 05 Sep 2017 20:32:48 GMT  
		Size: 35.9 MB (35887584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0540cda8b718769f36791a18443749875f297da8b8a56aff55820cd966e0737`  
		Last Modified: Tue, 05 Sep 2017 20:32:39 GMT  
		Size: 1.9 MB (1919514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d727829f9f96b9fbccf7aec2c8410fe518dc172cd7d0fbed3a8064122c5d170d`  
		Last Modified: Tue, 05 Sep 2017 20:32:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46e4e7cd8ee18bace47632516831e07e8bb3d97ffceb2bed72b6a0b5b2b974b`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f78580f2b46dfd500ff10e7dfe406fd48705262e4e2dbb242a5fc3e997346d6`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 1.3 MB (1284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7821c0011a40b498f709c254d4d6de2033e86db16db0de11ed75ddcb148c1783`  
		Last Modified: Tue, 05 Sep 2017 20:34:27 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d4e973864c4ba1e4d57406adca387eadde152f429d66a876e84eda4cd5b749`  
		Last Modified: Tue, 05 Sep 2017 20:34:36 GMT  
		Size: 46.7 MB (46739527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fc7d4c13db229ad893a939b73c47e9d20a072ec95f28970416fc90b9ea511`  
		Last Modified: Tue, 05 Sep 2017 20:34:27 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cfad16d2042ac4d72be411a9daaab0600dfc599344f49a8dfe38e3d51d00d4`  
		Last Modified: Wed, 06 Sep 2017 23:03:00 GMT  
		Size: 772.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0`

```console
$ docker pull nextcloud@sha256:784863333bdd5cac13a6ab51710002c38563a55b4f69215700336d33202214df
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250476549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b664a26f8cf55209ad58f11a2d4caed80551a86a5304fbcaf4ccfd0456bd31`
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
# Mon, 24 Jul 2017 19:12:13 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Sep 2017 20:28:26 GMT
ENV PHP_VERSION=7.1.9
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 01 Sep 2017 20:28:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Sep 2017 20:28:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Sep 2017 20:31:38 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Sep 2017 20:31:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:39 GMT
WORKDIR /var/www/html
# Fri, 01 Sep 2017 20:31:39 GMT
EXPOSE 80/tcp
# Fri, 01 Sep 2017 20:31:39 GMT
CMD ["apache2-foreground"]
# Tue, 05 Sep 2017 20:20:17 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Sep 2017 20:22:20 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Tue, 05 Sep 2017 20:22:21 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 05 Sep 2017 20:22:22 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:22:50 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Sep 2017 20:22:51 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:26:29 GMT
ENV NEXTCLOUD_VERSION=12.0.2
# Tue, 05 Sep 2017 20:26:30 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Sep 2017 20:26:30 GMT
VOLUME [/var/www/html]
# Tue, 05 Sep 2017 20:26:44 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Sep 2017 20:26:45 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 06 Sep 2017 23:01:20 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 06 Sep 2017 23:01:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 23:01:21 GMT
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
	-	`sha256:da90a622bde93c770f1f7f95490020f2c95f74c4bc3ec94e41ce17d374185017`  
		Last Modified: Fri, 01 Sep 2017 20:49:56 GMT  
		Size: 12.3 MB (12284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736b61dfc7937d7186f87d9687af08420d065c07b24d268aa6765d1cd0ab72fa`  
		Last Modified: Fri, 01 Sep 2017 20:49:55 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d78a3aec5a5778bee7cc9db44fccf7d354548600488fe47ce341191a8c45982`  
		Last Modified: Fri, 01 Sep 2017 20:49:57 GMT  
		Size: 14.5 MB (14467245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d7e51fed35bcda6a283f4cac1b10830e0b3359592cc4118851cb98ae416d78`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a050e50a6f8be62407c3aabe4d40fea9c32e57ac69dd9a4523805c35d44e34c5`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c38939a494896c2ebe5b39c1bcb61099a0be50b149aaf331bc2db956c7386b`  
		Last Modified: Tue, 05 Sep 2017 20:32:48 GMT  
		Size: 35.9 MB (35887584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0540cda8b718769f36791a18443749875f297da8b8a56aff55820cd966e0737`  
		Last Modified: Tue, 05 Sep 2017 20:32:39 GMT  
		Size: 1.9 MB (1919514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d727829f9f96b9fbccf7aec2c8410fe518dc172cd7d0fbed3a8064122c5d170d`  
		Last Modified: Tue, 05 Sep 2017 20:32:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46e4e7cd8ee18bace47632516831e07e8bb3d97ffceb2bed72b6a0b5b2b974b`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f78580f2b46dfd500ff10e7dfe406fd48705262e4e2dbb242a5fc3e997346d6`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 1.3 MB (1284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7821c0011a40b498f709c254d4d6de2033e86db16db0de11ed75ddcb148c1783`  
		Last Modified: Tue, 05 Sep 2017 20:34:27 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d4e973864c4ba1e4d57406adca387eadde152f429d66a876e84eda4cd5b749`  
		Last Modified: Tue, 05 Sep 2017 20:34:36 GMT  
		Size: 46.7 MB (46739527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fc7d4c13db229ad893a939b73c47e9d20a072ec95f28970416fc90b9ea511`  
		Last Modified: Tue, 05 Sep 2017 20:34:27 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cfad16d2042ac4d72be411a9daaab0600dfc599344f49a8dfe38e3d51d00d4`  
		Last Modified: Wed, 06 Sep 2017 23:03:00 GMT  
		Size: 772.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12`

```console
$ docker pull nextcloud@sha256:784863333bdd5cac13a6ab51710002c38563a55b4f69215700336d33202214df
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250476549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b664a26f8cf55209ad58f11a2d4caed80551a86a5304fbcaf4ccfd0456bd31`
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
# Mon, 24 Jul 2017 19:12:13 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Sep 2017 20:28:26 GMT
ENV PHP_VERSION=7.1.9
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 01 Sep 2017 20:28:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Sep 2017 20:28:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Sep 2017 20:31:38 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Sep 2017 20:31:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:39 GMT
WORKDIR /var/www/html
# Fri, 01 Sep 2017 20:31:39 GMT
EXPOSE 80/tcp
# Fri, 01 Sep 2017 20:31:39 GMT
CMD ["apache2-foreground"]
# Tue, 05 Sep 2017 20:20:17 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Sep 2017 20:22:20 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Tue, 05 Sep 2017 20:22:21 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 05 Sep 2017 20:22:22 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:22:50 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Sep 2017 20:22:51 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:26:29 GMT
ENV NEXTCLOUD_VERSION=12.0.2
# Tue, 05 Sep 2017 20:26:30 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Sep 2017 20:26:30 GMT
VOLUME [/var/www/html]
# Tue, 05 Sep 2017 20:26:44 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Sep 2017 20:26:45 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 06 Sep 2017 23:01:20 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 06 Sep 2017 23:01:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 23:01:21 GMT
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
	-	`sha256:da90a622bde93c770f1f7f95490020f2c95f74c4bc3ec94e41ce17d374185017`  
		Last Modified: Fri, 01 Sep 2017 20:49:56 GMT  
		Size: 12.3 MB (12284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736b61dfc7937d7186f87d9687af08420d065c07b24d268aa6765d1cd0ab72fa`  
		Last Modified: Fri, 01 Sep 2017 20:49:55 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d78a3aec5a5778bee7cc9db44fccf7d354548600488fe47ce341191a8c45982`  
		Last Modified: Fri, 01 Sep 2017 20:49:57 GMT  
		Size: 14.5 MB (14467245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d7e51fed35bcda6a283f4cac1b10830e0b3359592cc4118851cb98ae416d78`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a050e50a6f8be62407c3aabe4d40fea9c32e57ac69dd9a4523805c35d44e34c5`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c38939a494896c2ebe5b39c1bcb61099a0be50b149aaf331bc2db956c7386b`  
		Last Modified: Tue, 05 Sep 2017 20:32:48 GMT  
		Size: 35.9 MB (35887584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0540cda8b718769f36791a18443749875f297da8b8a56aff55820cd966e0737`  
		Last Modified: Tue, 05 Sep 2017 20:32:39 GMT  
		Size: 1.9 MB (1919514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d727829f9f96b9fbccf7aec2c8410fe518dc172cd7d0fbed3a8064122c5d170d`  
		Last Modified: Tue, 05 Sep 2017 20:32:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46e4e7cd8ee18bace47632516831e07e8bb3d97ffceb2bed72b6a0b5b2b974b`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f78580f2b46dfd500ff10e7dfe406fd48705262e4e2dbb242a5fc3e997346d6`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 1.3 MB (1284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7821c0011a40b498f709c254d4d6de2033e86db16db0de11ed75ddcb148c1783`  
		Last Modified: Tue, 05 Sep 2017 20:34:27 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d4e973864c4ba1e4d57406adca387eadde152f429d66a876e84eda4cd5b749`  
		Last Modified: Tue, 05 Sep 2017 20:34:36 GMT  
		Size: 46.7 MB (46739527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fc7d4c13db229ad893a939b73c47e9d20a072ec95f28970416fc90b9ea511`  
		Last Modified: Tue, 05 Sep 2017 20:34:27 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cfad16d2042ac4d72be411a9daaab0600dfc599344f49a8dfe38e3d51d00d4`  
		Last Modified: Wed, 06 Sep 2017 23:03:00 GMT  
		Size: 772.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:latest`

```console
$ docker pull nextcloud@sha256:784863333bdd5cac13a6ab51710002c38563a55b4f69215700336d33202214df
```

-	Platforms:
	-	linux; amd64

### `nextcloud:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250476549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b664a26f8cf55209ad58f11a2d4caed80551a86a5304fbcaf4ccfd0456bd31`
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
# Mon, 24 Jul 2017 19:12:13 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Sep 2017 20:28:26 GMT
ENV PHP_VERSION=7.1.9
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 01 Sep 2017 20:28:27 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 01 Sep 2017 20:28:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Sep 2017 20:28:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Sep 2017 20:31:38 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Sep 2017 20:31:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:31:39 GMT
WORKDIR /var/www/html
# Fri, 01 Sep 2017 20:31:39 GMT
EXPOSE 80/tcp
# Fri, 01 Sep 2017 20:31:39 GMT
CMD ["apache2-foreground"]
# Tue, 05 Sep 2017 20:20:17 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Sep 2017 20:22:20 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Tue, 05 Sep 2017 20:22:21 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 05 Sep 2017 20:22:22 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:22:50 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Sep 2017 20:22:51 GMT
RUN a2enmod rewrite
# Tue, 05 Sep 2017 20:26:29 GMT
ENV NEXTCLOUD_VERSION=12.0.2
# Tue, 05 Sep 2017 20:26:30 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Sep 2017 20:26:30 GMT
VOLUME [/var/www/html]
# Tue, 05 Sep 2017 20:26:44 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Sep 2017 20:26:45 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 06 Sep 2017 23:01:20 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 06 Sep 2017 23:01:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 23:01:21 GMT
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
	-	`sha256:da90a622bde93c770f1f7f95490020f2c95f74c4bc3ec94e41ce17d374185017`  
		Last Modified: Fri, 01 Sep 2017 20:49:56 GMT  
		Size: 12.3 MB (12284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736b61dfc7937d7186f87d9687af08420d065c07b24d268aa6765d1cd0ab72fa`  
		Last Modified: Fri, 01 Sep 2017 20:49:55 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d78a3aec5a5778bee7cc9db44fccf7d354548600488fe47ce341191a8c45982`  
		Last Modified: Fri, 01 Sep 2017 20:49:57 GMT  
		Size: 14.5 MB (14467245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d7e51fed35bcda6a283f4cac1b10830e0b3359592cc4118851cb98ae416d78`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a050e50a6f8be62407c3aabe4d40fea9c32e57ac69dd9a4523805c35d44e34c5`  
		Last Modified: Fri, 01 Sep 2017 20:49:54 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c38939a494896c2ebe5b39c1bcb61099a0be50b149aaf331bc2db956c7386b`  
		Last Modified: Tue, 05 Sep 2017 20:32:48 GMT  
		Size: 35.9 MB (35887584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0540cda8b718769f36791a18443749875f297da8b8a56aff55820cd966e0737`  
		Last Modified: Tue, 05 Sep 2017 20:32:39 GMT  
		Size: 1.9 MB (1919514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d727829f9f96b9fbccf7aec2c8410fe518dc172cd7d0fbed3a8064122c5d170d`  
		Last Modified: Tue, 05 Sep 2017 20:32:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46e4e7cd8ee18bace47632516831e07e8bb3d97ffceb2bed72b6a0b5b2b974b`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f78580f2b46dfd500ff10e7dfe406fd48705262e4e2dbb242a5fc3e997346d6`  
		Last Modified: Tue, 05 Sep 2017 20:32:36 GMT  
		Size: 1.3 MB (1284702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7821c0011a40b498f709c254d4d6de2033e86db16db0de11ed75ddcb148c1783`  
		Last Modified: Tue, 05 Sep 2017 20:34:27 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d4e973864c4ba1e4d57406adca387eadde152f429d66a876e84eda4cd5b749`  
		Last Modified: Tue, 05 Sep 2017 20:34:36 GMT  
		Size: 46.7 MB (46739527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fc7d4c13db229ad893a939b73c47e9d20a072ec95f28970416fc90b9ea511`  
		Last Modified: Tue, 05 Sep 2017 20:34:27 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cfad16d2042ac4d72be411a9daaab0600dfc599344f49a8dfe38e3d51d00d4`  
		Last Modified: Wed, 06 Sep 2017 23:03:00 GMT  
		Size: 772.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0.2-fpm`

```console
$ docker pull nextcloud@sha256:5cd64d434a314bd79168de37e90fb9894f1d80e860f90542b3c8098f9e734683
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0.2-fpm` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247223154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0062ed97f5ea62fabdcdd82a509cafd298dd70033db1467b3240af65008f4eab`
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
# Mon, 24 Jul 2017 19:15:31 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Sep 2017 20:31:45 GMT
ENV PHP_VERSION=7.1.9
# Fri, 01 Sep 2017 20:31:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 01 Sep 2017 20:31:45 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 01 Sep 2017 20:32:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Sep 2017 20:32:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:35:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Sep 2017 20:35:50 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:35:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Sep 2017 20:35:51 GMT
WORKDIR /var/www/html
# Fri, 01 Sep 2017 20:35:52 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 01 Sep 2017 20:35:52 GMT
EXPOSE 9000/tcp
# Fri, 01 Sep 2017 20:35:52 GMT
CMD ["php-fpm"]
# Tue, 05 Sep 2017 20:23:34 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Sep 2017 20:25:37 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Tue, 05 Sep 2017 20:25:38 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 05 Sep 2017 20:26:07 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Sep 2017 20:32:08 GMT
ENV NEXTCLOUD_VERSION=12.0.2
# Tue, 05 Sep 2017 20:32:08 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Sep 2017 20:32:09 GMT
VOLUME [/var/www/html]
# Tue, 05 Sep 2017 20:32:24 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Sep 2017 20:32:24 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 06 Sep 2017 23:01:27 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 06 Sep 2017 23:01:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 23:01:28 GMT
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
	-	`sha256:8d1f0456aaf45d9053ca7819c7949a3c772e7b71a2f67dbaf5e5773ce1069e1b`  
		Last Modified: Fri, 01 Sep 2017 20:50:31 GMT  
		Size: 12.3 MB (12267502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3851c86160ed87f846c04776b7670a5807df0ed947d65720d17b4f789d4307e9`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52429f843b71a9b0bd527b14d7487b16be720c6aa3e999573859977dbbd0ff1c`  
		Last Modified: Fri, 01 Sep 2017 20:50:32 GMT  
		Size: 14.0 MB (14032065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5376fb3781d1cb118613d808612676ae8144f06100f976b6518d76fee81c675`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 2.1 KB (2116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087cc9e30ebd29bd29374227961ee70cde9d048358ffd7a20f8117bd51f5c083`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3eb82271b43f6f60ab146ab4ef094c50fd6b3d1c46de0b0b956e85aaceae08`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 7.7 KB (7672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1458e4daf6a2ca6c99db229dacfcc8c2fa360e1273b32862f37d38f65fa01505`  
		Last Modified: Tue, 05 Sep 2017 20:33:56 GMT  
		Size: 35.9 MB (35867098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d167af1aea18e7e5d2b11bedb28e229738b5bc0daf0d7aacad2deead02f743`  
		Last Modified: Tue, 05 Sep 2017 20:33:47 GMT  
		Size: 1.9 MB (1919620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c383730e6a1b713fdbfdfd94e3a6d3ff78be58da291f50a391cb67a2d2a36b`  
		Last Modified: Tue, 05 Sep 2017 20:33:44 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee19ef119818d816352b716e7d2f4c21f5be3fc31af82b3ea4854747b5e56458`  
		Last Modified: Tue, 05 Sep 2017 20:33:45 GMT  
		Size: 1.3 MB (1284726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179bfc60b124b2eed3618ecf6af59ea858ab3be620a53b0322a64bb1347d1b3e`  
		Last Modified: Tue, 05 Sep 2017 20:35:44 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568b72e3378d644d27e2738c4be4c11876bd089d87566669d977fc9ecdc76b9a`  
		Last Modified: Tue, 05 Sep 2017 20:35:57 GMT  
		Size: 46.7 MB (46739509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908053f46bf3e830451b23c16507ccd8a3cc0664c145b13c9d04652d04427167`  
		Last Modified: Tue, 05 Sep 2017 20:35:44 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a163bd7b9a7d408846347b4f94cb41d1b281dc1f571476bae84124588c657ccf`  
		Last Modified: Wed, 06 Sep 2017 23:04:42 GMT  
		Size: 768.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0-fpm`

```console
$ docker pull nextcloud@sha256:5cd64d434a314bd79168de37e90fb9894f1d80e860f90542b3c8098f9e734683
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0-fpm` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247223154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0062ed97f5ea62fabdcdd82a509cafd298dd70033db1467b3240af65008f4eab`
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
# Mon, 24 Jul 2017 19:15:31 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Sep 2017 20:31:45 GMT
ENV PHP_VERSION=7.1.9
# Fri, 01 Sep 2017 20:31:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 01 Sep 2017 20:31:45 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 01 Sep 2017 20:32:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Sep 2017 20:32:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:35:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Sep 2017 20:35:50 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:35:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Sep 2017 20:35:51 GMT
WORKDIR /var/www/html
# Fri, 01 Sep 2017 20:35:52 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 01 Sep 2017 20:35:52 GMT
EXPOSE 9000/tcp
# Fri, 01 Sep 2017 20:35:52 GMT
CMD ["php-fpm"]
# Tue, 05 Sep 2017 20:23:34 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Sep 2017 20:25:37 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Tue, 05 Sep 2017 20:25:38 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 05 Sep 2017 20:26:07 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Sep 2017 20:32:08 GMT
ENV NEXTCLOUD_VERSION=12.0.2
# Tue, 05 Sep 2017 20:32:08 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Sep 2017 20:32:09 GMT
VOLUME [/var/www/html]
# Tue, 05 Sep 2017 20:32:24 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Sep 2017 20:32:24 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 06 Sep 2017 23:01:27 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 06 Sep 2017 23:01:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 23:01:28 GMT
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
	-	`sha256:8d1f0456aaf45d9053ca7819c7949a3c772e7b71a2f67dbaf5e5773ce1069e1b`  
		Last Modified: Fri, 01 Sep 2017 20:50:31 GMT  
		Size: 12.3 MB (12267502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3851c86160ed87f846c04776b7670a5807df0ed947d65720d17b4f789d4307e9`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52429f843b71a9b0bd527b14d7487b16be720c6aa3e999573859977dbbd0ff1c`  
		Last Modified: Fri, 01 Sep 2017 20:50:32 GMT  
		Size: 14.0 MB (14032065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5376fb3781d1cb118613d808612676ae8144f06100f976b6518d76fee81c675`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 2.1 KB (2116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087cc9e30ebd29bd29374227961ee70cde9d048358ffd7a20f8117bd51f5c083`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3eb82271b43f6f60ab146ab4ef094c50fd6b3d1c46de0b0b956e85aaceae08`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 7.7 KB (7672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1458e4daf6a2ca6c99db229dacfcc8c2fa360e1273b32862f37d38f65fa01505`  
		Last Modified: Tue, 05 Sep 2017 20:33:56 GMT  
		Size: 35.9 MB (35867098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d167af1aea18e7e5d2b11bedb28e229738b5bc0daf0d7aacad2deead02f743`  
		Last Modified: Tue, 05 Sep 2017 20:33:47 GMT  
		Size: 1.9 MB (1919620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c383730e6a1b713fdbfdfd94e3a6d3ff78be58da291f50a391cb67a2d2a36b`  
		Last Modified: Tue, 05 Sep 2017 20:33:44 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee19ef119818d816352b716e7d2f4c21f5be3fc31af82b3ea4854747b5e56458`  
		Last Modified: Tue, 05 Sep 2017 20:33:45 GMT  
		Size: 1.3 MB (1284726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179bfc60b124b2eed3618ecf6af59ea858ab3be620a53b0322a64bb1347d1b3e`  
		Last Modified: Tue, 05 Sep 2017 20:35:44 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568b72e3378d644d27e2738c4be4c11876bd089d87566669d977fc9ecdc76b9a`  
		Last Modified: Tue, 05 Sep 2017 20:35:57 GMT  
		Size: 46.7 MB (46739509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908053f46bf3e830451b23c16507ccd8a3cc0664c145b13c9d04652d04427167`  
		Last Modified: Tue, 05 Sep 2017 20:35:44 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a163bd7b9a7d408846347b4f94cb41d1b281dc1f571476bae84124588c657ccf`  
		Last Modified: Wed, 06 Sep 2017 23:04:42 GMT  
		Size: 768.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12-fpm`

```console
$ docker pull nextcloud@sha256:5cd64d434a314bd79168de37e90fb9894f1d80e860f90542b3c8098f9e734683
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12-fpm` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247223154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0062ed97f5ea62fabdcdd82a509cafd298dd70033db1467b3240af65008f4eab`
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
# Mon, 24 Jul 2017 19:15:31 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Sep 2017 20:31:45 GMT
ENV PHP_VERSION=7.1.9
# Fri, 01 Sep 2017 20:31:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 01 Sep 2017 20:31:45 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 01 Sep 2017 20:32:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Sep 2017 20:32:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:35:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Sep 2017 20:35:50 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:35:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Sep 2017 20:35:51 GMT
WORKDIR /var/www/html
# Fri, 01 Sep 2017 20:35:52 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 01 Sep 2017 20:35:52 GMT
EXPOSE 9000/tcp
# Fri, 01 Sep 2017 20:35:52 GMT
CMD ["php-fpm"]
# Tue, 05 Sep 2017 20:23:34 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Sep 2017 20:25:37 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Tue, 05 Sep 2017 20:25:38 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 05 Sep 2017 20:26:07 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Sep 2017 20:32:08 GMT
ENV NEXTCLOUD_VERSION=12.0.2
# Tue, 05 Sep 2017 20:32:08 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Sep 2017 20:32:09 GMT
VOLUME [/var/www/html]
# Tue, 05 Sep 2017 20:32:24 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Sep 2017 20:32:24 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 06 Sep 2017 23:01:27 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 06 Sep 2017 23:01:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 23:01:28 GMT
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
	-	`sha256:8d1f0456aaf45d9053ca7819c7949a3c772e7b71a2f67dbaf5e5773ce1069e1b`  
		Last Modified: Fri, 01 Sep 2017 20:50:31 GMT  
		Size: 12.3 MB (12267502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3851c86160ed87f846c04776b7670a5807df0ed947d65720d17b4f789d4307e9`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52429f843b71a9b0bd527b14d7487b16be720c6aa3e999573859977dbbd0ff1c`  
		Last Modified: Fri, 01 Sep 2017 20:50:32 GMT  
		Size: 14.0 MB (14032065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5376fb3781d1cb118613d808612676ae8144f06100f976b6518d76fee81c675`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 2.1 KB (2116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087cc9e30ebd29bd29374227961ee70cde9d048358ffd7a20f8117bd51f5c083`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3eb82271b43f6f60ab146ab4ef094c50fd6b3d1c46de0b0b956e85aaceae08`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 7.7 KB (7672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1458e4daf6a2ca6c99db229dacfcc8c2fa360e1273b32862f37d38f65fa01505`  
		Last Modified: Tue, 05 Sep 2017 20:33:56 GMT  
		Size: 35.9 MB (35867098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d167af1aea18e7e5d2b11bedb28e229738b5bc0daf0d7aacad2deead02f743`  
		Last Modified: Tue, 05 Sep 2017 20:33:47 GMT  
		Size: 1.9 MB (1919620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c383730e6a1b713fdbfdfd94e3a6d3ff78be58da291f50a391cb67a2d2a36b`  
		Last Modified: Tue, 05 Sep 2017 20:33:44 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee19ef119818d816352b716e7d2f4c21f5be3fc31af82b3ea4854747b5e56458`  
		Last Modified: Tue, 05 Sep 2017 20:33:45 GMT  
		Size: 1.3 MB (1284726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179bfc60b124b2eed3618ecf6af59ea858ab3be620a53b0322a64bb1347d1b3e`  
		Last Modified: Tue, 05 Sep 2017 20:35:44 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568b72e3378d644d27e2738c4be4c11876bd089d87566669d977fc9ecdc76b9a`  
		Last Modified: Tue, 05 Sep 2017 20:35:57 GMT  
		Size: 46.7 MB (46739509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908053f46bf3e830451b23c16507ccd8a3cc0664c145b13c9d04652d04427167`  
		Last Modified: Tue, 05 Sep 2017 20:35:44 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a163bd7b9a7d408846347b4f94cb41d1b281dc1f571476bae84124588c657ccf`  
		Last Modified: Wed, 06 Sep 2017 23:04:42 GMT  
		Size: 768.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:fpm`

```console
$ docker pull nextcloud@sha256:5cd64d434a314bd79168de37e90fb9894f1d80e860f90542b3c8098f9e734683
```

-	Platforms:
	-	linux; amd64

### `nextcloud:fpm` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247223154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0062ed97f5ea62fabdcdd82a509cafd298dd70033db1467b3240af65008f4eab`
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
# Mon, 24 Jul 2017 19:15:31 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Sep 2017 20:31:45 GMT
ENV PHP_VERSION=7.1.9
# Fri, 01 Sep 2017 20:31:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 01 Sep 2017 20:31:45 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 01 Sep 2017 20:32:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Sep 2017 20:32:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:35:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Sep 2017 20:35:50 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 01 Sep 2017 20:35:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Sep 2017 20:35:51 GMT
WORKDIR /var/www/html
# Fri, 01 Sep 2017 20:35:52 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 01 Sep 2017 20:35:52 GMT
EXPOSE 9000/tcp
# Fri, 01 Sep 2017 20:35:52 GMT
CMD ["php-fpm"]
# Tue, 05 Sep 2017 20:23:34 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Sep 2017 20:25:37 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Tue, 05 Sep 2017 20:25:38 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 05 Sep 2017 20:26:07 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Sep 2017 20:32:08 GMT
ENV NEXTCLOUD_VERSION=12.0.2
# Tue, 05 Sep 2017 20:32:08 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Sep 2017 20:32:09 GMT
VOLUME [/var/www/html]
# Tue, 05 Sep 2017 20:32:24 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Sep 2017 20:32:24 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 06 Sep 2017 23:01:27 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 06 Sep 2017 23:01:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 23:01:28 GMT
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
	-	`sha256:8d1f0456aaf45d9053ca7819c7949a3c772e7b71a2f67dbaf5e5773ce1069e1b`  
		Last Modified: Fri, 01 Sep 2017 20:50:31 GMT  
		Size: 12.3 MB (12267502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3851c86160ed87f846c04776b7670a5807df0ed947d65720d17b4f789d4307e9`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52429f843b71a9b0bd527b14d7487b16be720c6aa3e999573859977dbbd0ff1c`  
		Last Modified: Fri, 01 Sep 2017 20:50:32 GMT  
		Size: 14.0 MB (14032065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5376fb3781d1cb118613d808612676ae8144f06100f976b6518d76fee81c675`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 2.1 KB (2116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087cc9e30ebd29bd29374227961ee70cde9d048358ffd7a20f8117bd51f5c083`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3eb82271b43f6f60ab146ab4ef094c50fd6b3d1c46de0b0b956e85aaceae08`  
		Last Modified: Fri, 01 Sep 2017 20:50:29 GMT  
		Size: 7.7 KB (7672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1458e4daf6a2ca6c99db229dacfcc8c2fa360e1273b32862f37d38f65fa01505`  
		Last Modified: Tue, 05 Sep 2017 20:33:56 GMT  
		Size: 35.9 MB (35867098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d167af1aea18e7e5d2b11bedb28e229738b5bc0daf0d7aacad2deead02f743`  
		Last Modified: Tue, 05 Sep 2017 20:33:47 GMT  
		Size: 1.9 MB (1919620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c383730e6a1b713fdbfdfd94e3a6d3ff78be58da291f50a391cb67a2d2a36b`  
		Last Modified: Tue, 05 Sep 2017 20:33:44 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee19ef119818d816352b716e7d2f4c21f5be3fc31af82b3ea4854747b5e56458`  
		Last Modified: Tue, 05 Sep 2017 20:33:45 GMT  
		Size: 1.3 MB (1284726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179bfc60b124b2eed3618ecf6af59ea858ab3be620a53b0322a64bb1347d1b3e`  
		Last Modified: Tue, 05 Sep 2017 20:35:44 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568b72e3378d644d27e2738c4be4c11876bd089d87566669d977fc9ecdc76b9a`  
		Last Modified: Tue, 05 Sep 2017 20:35:57 GMT  
		Size: 46.7 MB (46739509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908053f46bf3e830451b23c16507ccd8a3cc0664c145b13c9d04652d04427167`  
		Last Modified: Tue, 05 Sep 2017 20:35:44 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a163bd7b9a7d408846347b4f94cb41d1b281dc1f571476bae84124588c657ccf`  
		Last Modified: Wed, 06 Sep 2017 23:04:42 GMT  
		Size: 768.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
