## `wordpress:4-apache`

```console
$ docker pull wordpress@sha256:6e43cc8a66a61355e177a1662e9bdfcdafaecbc7cdf4fe73f14901bb28a6dfc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `wordpress:4-apache` - linux; amd64

```console
$ docker pull wordpress@sha256:3f51b59a2e923be8583f8a7e32db849c719ddc7e104bb9b237c775d2238c5704
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145370684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0905f52a6d67ade14af0fb0d482df191d883d3993bd1ddd90127a9e32b0fe2e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 19:03:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 19 Dec 2017 19:03:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 19 Dec 2017 19:03:46 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 19 Dec 2017 19:03:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 19 Dec 2017 19:03:47 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 19 Dec 2017 19:16:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Dec 2017 19:16:28 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 19 Dec 2017 19:16:29 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 19 Dec 2017 19:16:37 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 19 Dec 2017 19:16:37 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 19 Dec 2017 19:16:38 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 19 Dec 2017 19:16:39 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 19 Dec 2017 19:16:39 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 19 Dec 2017 19:16:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 19 Dec 2017 19:16:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 19:16:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 19:16:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 19 Dec 2017 19:16:40 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 19 Dec 2017 19:16:40 GMT
ENV PHP_VERSION=7.2.0
# Tue, 19 Dec 2017 19:16:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Tue, 19 Dec 2017 19:16:41 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Tue, 19 Dec 2017 19:17:21 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 19 Dec 2017 19:17:22 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 19 Dec 2017 19:20:23 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 19 Dec 2017 19:27:40 GMT
COPY multi:6c3bbfbce55efcbe7075883db5f0dba98b25830060e57a35ce066c0dc58c7f0b in /usr/local/bin/ 
# Tue, 19 Dec 2017 19:27:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 19 Dec 2017 19:28:55 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 19 Dec 2017 19:28:56 GMT
WORKDIR /var/www/html
# Tue, 19 Dec 2017 19:28:56 GMT
EXPOSE 80/tcp
# Tue, 19 Dec 2017 19:28:56 GMT
CMD ["apache2-foreground"]
# Wed, 20 Dec 2017 00:24:32 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 20 Dec 2017 00:24:37 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 20 Dec 2017 00:24:38 GMT
RUN a2enmod rewrite expires
# Wed, 20 Dec 2017 00:24:38 GMT
VOLUME [/var/www/html]
# Wed, 20 Dec 2017 00:24:38 GMT
ENV WORDPRESS_VERSION=4.9.1
# Wed, 20 Dec 2017 00:24:39 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Wed, 20 Dec 2017 00:24:41 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 20 Dec 2017 00:24:41 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Wed, 20 Dec 2017 00:24:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Dec 2017 00:24:41 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75651f24782724147b4affe1885dbd9db84995cb19bc250712f4d2e1474180c9`  
		Last Modified: Tue, 19 Dec 2017 21:48:12 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b186f8edb2b08f73cab36051f89838997f560c2426e465426e62bb8c6b2682`  
		Last Modified: Tue, 19 Dec 2017 21:48:30 GMT  
		Size: 81.8 MB (81775761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c007e2f556a4ca6f13aad1eaa97240baaef56113f68dd90c79ed7c873babf4`  
		Last Modified: Tue, 19 Dec 2017 21:48:09 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4da9c43c0b37a88a68501e4a52854b0e2df35eb89c2a37cc4355ee2be8fbb2`  
		Last Modified: Tue, 19 Dec 2017 21:51:49 GMT  
		Size: 2.9 MB (2920642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11843d906ebbe0561559df2505fe1bf99d2c8482fdb0cb71253086e719d37138`  
		Last Modified: Tue, 19 Dec 2017 21:51:46 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03cc73ddbffa3d279ed2c5b6bb92570c8525d39803a074eba4698a8d978e91d`  
		Last Modified: Tue, 19 Dec 2017 21:51:45 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2aa59447fc233ff10e98bbcd2ff34852544891925381e3652a1be1a2c3a028`  
		Last Modified: Tue, 19 Dec 2017 21:51:45 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0cb82aa7441d1bc7bc88bc5d0664b428f2addc4eb3c72ee69220f730dd6c989`  
		Last Modified: Tue, 19 Dec 2017 21:51:45 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bc00055bf00380d7db9a0370e7671b7ab83036ef2707748d5829d810df2aa4`  
		Last Modified: Tue, 19 Dec 2017 21:51:44 GMT  
		Size: 12.4 MB (12366277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd2ec5caa93cdc1145cfa0fd056c503984091bee079d60afea667ac45e2cd2f`  
		Last Modified: Tue, 19 Dec 2017 21:51:42 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12401bccfd2382b80746a3972370de42012c6d7e30b00000d967ed88498ee4e`  
		Last Modified: Tue, 19 Dec 2017 21:51:46 GMT  
		Size: 14.8 MB (14811902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f60c678b107f2a03fc59c055f9d11f04ec919c677e1f0da16aa57ee6bc3138`  
		Last Modified: Tue, 19 Dec 2017 21:51:42 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553cecaae4ff9cb973edc6e067562cfc5e6ae19406f044b1e32fab22abf78778`  
		Last Modified: Tue, 19 Dec 2017 21:51:42 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6635d3bfe1820b8ea07fcda65337b18c783edfd32e478b36571ccc8c452807`  
		Last Modified: Wed, 20 Dec 2017 00:51:20 GMT  
		Size: 1.5 MB (1528794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfaa71d658c63a53628c1771876bbebd08689b3983f9b361f5c436d9ad158778`  
		Last Modified: Wed, 20 Dec 2017 00:51:19 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d404fdbf47676fd4159ad0f819e0a44d390cc65b2338ac42ca2c3ffd9198cc42`  
		Last Modified: Wed, 20 Dec 2017 00:51:19 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ec420c6f19920caa523bbd7c94e9cac60cadd65583053ec9817cf2031c5a56`  
		Last Modified: Wed, 20 Dec 2017 00:51:22 GMT  
		Size: 9.5 MB (9471271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abe34175a223d5e0be328729d9a417d4522ac64acc51253f41c8de78fd3999c`  
		Last Modified: Wed, 20 Dec 2017 00:51:19 GMT  
		Size: 3.2 KB (3224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-apache` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:ad46e049e095c582b77c45f772ee5a1c9be6759dbcfcc1abaa0ee1d9a33fde3b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.7 MB (132744408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfc8f29b01ce673ca21a2d4c322adaf2cf5a9d3705fc9520332064db5bbe025`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:24:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 23:25:05 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:25:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 23:25:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 23:29:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:29:37 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 12 Dec 2017 23:29:37 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 12 Dec 2017 23:29:39 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 12 Dec 2017 23:29:40 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 12 Dec 2017 23:29:41 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 12 Dec 2017 23:29:42 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 12 Dec 2017 23:29:42 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 12 Dec 2017 23:29:42 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 12 Dec 2017 23:29:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 23:29:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 23:29:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 23:29:43 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 12 Dec 2017 23:29:44 GMT
ENV PHP_VERSION=7.2.0
# Tue, 12 Dec 2017 23:29:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 23:29:44 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Tue, 12 Dec 2017 23:30:36 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 23:30:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 23:33:15 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 14 Dec 2017 14:37:58 GMT
COPY multi:6c3bbfbce55efcbe7075883db5f0dba98b25830060e57a35ce066c0dc58c7f0b in /usr/local/bin/ 
# Thu, 14 Dec 2017 14:37:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 14 Dec 2017 14:37:59 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 14 Dec 2017 14:37:59 GMT
WORKDIR /var/www/html
# Thu, 14 Dec 2017 14:38:00 GMT
EXPOSE 80/tcp
# Thu, 14 Dec 2017 14:38:00 GMT
CMD ["apache2-foreground"]
# Thu, 14 Dec 2017 15:45:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Thu, 14 Dec 2017 15:45:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 14 Dec 2017 15:45:46 GMT
RUN a2enmod rewrite expires
# Thu, 14 Dec 2017 15:45:46 GMT
VOLUME [/var/www/html]
# Thu, 14 Dec 2017 15:45:46 GMT
ENV WORDPRESS_VERSION=4.9.1
# Thu, 14 Dec 2017 15:45:47 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Thu, 14 Dec 2017 15:45:50 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 14 Dec 2017 15:45:51 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Thu, 14 Dec 2017 15:45:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 15:45:52 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf77d5ec6be7dba8e8a779deb8d34708c74de2b77c50fbee4c3b8a5faa19838`  
		Last Modified: Wed, 13 Dec 2017 00:35:23 GMT  
		Size: 71.5 MB (71490007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630d95b3fda46424c7d52fe0d1140d12603a0f8341e8376ca3c9a3cc82b19a9c`  
		Last Modified: Wed, 13 Dec 2017 00:35:01 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6c2ea9ab7ee981be6fe05ea89e03a5df56428f463849c12e9e1b9efa81221d`  
		Last Modified: Wed, 13 Dec 2017 00:37:46 GMT  
		Size: 2.8 MB (2799157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8b13c02834fc00bfe1c309a69c7bee287048d23f69b2c8fd6971fc3f9caa14`  
		Last Modified: Wed, 13 Dec 2017 00:37:44 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1cf3433f650c67c3075e5f9d636601b73917d0acc14f940a21faca770d7169`  
		Last Modified: Wed, 13 Dec 2017 00:37:44 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de38915ff7e5d01fbcf25ef39b2926561addf4bf264937e104e12449aadf9ea1`  
		Last Modified: Wed, 13 Dec 2017 00:37:44 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab727b5bbd73d05ae801c2966d0d891f0dbb3986a4ec1bf04bac25a6fb608f84`  
		Last Modified: Wed, 13 Dec 2017 00:37:43 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee06bfb90c5acc7ac667435b15f33f9e72e34e883ed6f380681a5a5152e503e`  
		Last Modified: Wed, 13 Dec 2017 00:37:44 GMT  
		Size: 12.4 MB (12363953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd52f95963d079aeac0b209f670f6b13fa6ed5e3d572ab0af680bbfc2dea1b56`  
		Last Modified: Wed, 13 Dec 2017 00:37:43 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9d74e3ce98faa3e19c62da5d6aef15d4d151558cb47dd0f81ad27f07c2ac34`  
		Last Modified: Wed, 13 Dec 2017 00:37:47 GMT  
		Size: 14.0 MB (14002849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e24eb6e28c646fa2e9963594b5d64c0788fe0302ff833e176a32c1e495ce31`  
		Last Modified: Thu, 14 Dec 2017 14:44:07 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6abc943be74f0a7524727da7ddba53b127b787aa9c810c7dbb2281488396984`  
		Last Modified: Thu, 14 Dec 2017 14:44:07 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e80b6f2a11b171e31706651da82a7093fc2fbb233befce03dd07d890fd331318`  
		Last Modified: Thu, 14 Dec 2017 15:55:05 GMT  
		Size: 1.4 MB (1446307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5dd0c3de127e80a421c05bfc288ae703c3681d9b62890902eda5af05aebf8b`  
		Last Modified: Thu, 14 Dec 2017 15:55:04 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3b163bf8c7cb16e904b6470eb5469ee93b7a15e70b729fa04091b5fa02efb8`  
		Last Modified: Thu, 14 Dec 2017 15:55:04 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20decdd455af6b2a11a3aaf874a3a58a3e5c710c89dbc09e08e731f63669d179`  
		Last Modified: Thu, 14 Dec 2017 15:55:08 GMT  
		Size: 9.5 MB (9471280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adb84a0e5115d1ab7374be92bdf6a217fbacb52ec2b07b961eb2b9b3d7ff2e6`  
		Last Modified: Thu, 14 Dec 2017 15:55:04 GMT  
		Size: 3.2 KB (3225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-apache` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:d0b6c35d8d5af083c3946d1d891e5ef6fc63fc540a0c64a9f82afdb9ae1ebaf0
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125550427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:631d0c8ef468cb3e944b481dcec5f087cf93f220e7fb212b748724303a0f6a40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 15:03:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 15:03:50 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:03:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 15:03:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 15:08:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:08:37 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 12 Dec 2017 15:08:38 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 12 Dec 2017 15:08:39 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 12 Dec 2017 15:08:40 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 12 Dec 2017 15:08:41 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 12 Dec 2017 15:08:42 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 12 Dec 2017 15:08:43 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 12 Dec 2017 15:08:43 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 12 Dec 2017 15:08:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 15:08:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 15:08:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 15:08:44 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 12 Dec 2017 15:08:44 GMT
ENV PHP_VERSION=7.2.0
# Tue, 12 Dec 2017 15:08:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 15:08:45 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Tue, 12 Dec 2017 15:08:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 15:08:58 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 15:11:19 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 14 Dec 2017 12:49:13 GMT
COPY multi:6c3bbfbce55efcbe7075883db5f0dba98b25830060e57a35ce066c0dc58c7f0b in /usr/local/bin/ 
# Thu, 14 Dec 2017 12:49:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 14 Dec 2017 12:49:14 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 14 Dec 2017 12:49:14 GMT
WORKDIR /var/www/html
# Thu, 14 Dec 2017 12:49:15 GMT
EXPOSE 80/tcp
# Thu, 14 Dec 2017 12:49:15 GMT
CMD ["apache2-foreground"]
# Thu, 14 Dec 2017 13:49:13 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Thu, 14 Dec 2017 13:49:15 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 14 Dec 2017 13:49:17 GMT
RUN a2enmod rewrite expires
# Thu, 14 Dec 2017 13:49:17 GMT
VOLUME [/var/www/html]
# Thu, 14 Dec 2017 13:49:17 GMT
ENV WORDPRESS_VERSION=4.9.1
# Thu, 14 Dec 2017 13:49:18 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Thu, 14 Dec 2017 13:49:22 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 14 Dec 2017 13:49:22 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Thu, 14 Dec 2017 13:49:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 13:49:23 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ec78f2047564e610564c20cca47a364b72135f2ceec7e6f0c196b76186bc1c`  
		Last Modified: Tue, 12 Dec 2017 16:12:37 GMT  
		Size: 67.3 MB (67310137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1935d15cd28eb3748735b1c13580004124f486e1e8aa2f31a23e6d4746960d`  
		Last Modified: Tue, 12 Dec 2017 16:12:16 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d1f425486043fdf6fc4aea3b7c0ce8512180b6dfe88668a3e0ce4adca18c608`  
		Last Modified: Tue, 12 Dec 2017 16:15:45 GMT  
		Size: 2.6 MB (2592849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b787fa569452774767eac2cd223c42fcddeffc2c13e58c69743cacc10f13c80`  
		Last Modified: Tue, 12 Dec 2017 16:15:43 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab95fcaa0f438ffc1ffb10410c50b7f9289f6c4dfcb894c7490c1df93933c7d9`  
		Last Modified: Tue, 12 Dec 2017 16:15:43 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545e81f9490b100bd85c06525bba5380ef8e94aeb7345c4bd4cfd3568e962ea2`  
		Last Modified: Tue, 12 Dec 2017 16:15:42 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee32142e21cd79ea46a1058aaeb69ea2c0462027315f903a89bdfe0f09c6c98`  
		Last Modified: Tue, 12 Dec 2017 16:15:42 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d59fcf486ba7503596d4c6787348b2d4792cbc35b6d59279b922e90600bc8de1`  
		Last Modified: Tue, 12 Dec 2017 16:15:42 GMT  
		Size: 12.4 MB (12363925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280660be1ba0b5e020607faee49c42016de0909bf1845096611d5a9faae886ef`  
		Last Modified: Tue, 12 Dec 2017 16:15:41 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a3ba9195593859e087c203e3400a511035f2a751d77f03daa44ccc81c8b76e`  
		Last Modified: Tue, 12 Dec 2017 16:15:45 GMT  
		Size: 13.2 MB (13181735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ffaa2023511a2b93c91f7cd4ee71156141f72dd62909b6523160ef5e3043f01`  
		Last Modified: Thu, 14 Dec 2017 12:57:00 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1445666bda2228ffb55b7eff23507b4d31afd029a632fcd5195ce05ba952b7`  
		Last Modified: Thu, 14 Dec 2017 12:57:00 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd9783cd15c96d28fdd9da48e5d96e152480a42bafc11e44716e740900c6155`  
		Last Modified: Thu, 14 Dec 2017 14:03:25 GMT  
		Size: 1.3 MB (1349271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1bfcfb03edab9781852eaa8692dfb9052d05fe0f1936b681bded218aa26b49`  
		Last Modified: Thu, 14 Dec 2017 14:03:24 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d3ed55c2528838b092f73914774dab4d188f9123d157b1cb600c6e07ca94f0`  
		Last Modified: Thu, 14 Dec 2017 14:03:23 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b04490b4e820d388dd557a217acce321410787f5293f0186f81088255519b8`  
		Last Modified: Thu, 14 Dec 2017 14:03:38 GMT  
		Size: 9.5 MB (9471278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d508b011cfe32bba72e935562b12dc333e4b20f7e02f0b23025e628cbce75a`  
		Last Modified: Thu, 14 Dec 2017 14:03:23 GMT  
		Size: 3.2 KB (3220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-apache` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:e56ba6481ebb927b46aaf4ac208cc0ac78a0e343f83ca454ffbe5300ddf506a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131934482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28e52eb0d39ee8cda317a231fd9aafa25c673f3b6803f78299706143c9cdd6bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 02:56:47 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 20 Dec 2017 02:56:47 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 20 Dec 2017 02:58:05 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 20 Dec 2017 02:58:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 20 Dec 2017 02:58:08 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 20 Dec 2017 03:07:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 20 Dec 2017 03:07:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 20 Dec 2017 03:07:40 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 20 Dec 2017 03:07:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 20 Dec 2017 03:07:44 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 20 Dec 2017 03:07:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 20 Dec 2017 03:07:47 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 20 Dec 2017 03:07:48 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 20 Dec 2017 03:07:48 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 20 Dec 2017 03:07:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 20 Dec 2017 03:07:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 20 Dec 2017 03:07:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 20 Dec 2017 03:07:51 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 20 Dec 2017 03:07:52 GMT
ENV PHP_VERSION=7.2.0
# Wed, 20 Dec 2017 03:07:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Wed, 20 Dec 2017 03:07:53 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Wed, 20 Dec 2017 03:08:29 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 20 Dec 2017 03:08:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 20 Dec 2017 03:14:07 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 20 Dec 2017 03:14:08 GMT
COPY multi:6c3bbfbce55efcbe7075883db5f0dba98b25830060e57a35ce066c0dc58c7f0b in /usr/local/bin/ 
# Wed, 20 Dec 2017 03:14:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 20 Dec 2017 03:14:09 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 20 Dec 2017 03:14:10 GMT
WORKDIR /var/www/html
# Wed, 20 Dec 2017 03:14:11 GMT
EXPOSE 80/tcp
# Wed, 20 Dec 2017 03:14:11 GMT
CMD ["apache2-foreground"]
# Wed, 20 Dec 2017 05:53:49 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 20 Dec 2017 05:53:50 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 20 Dec 2017 05:53:52 GMT
RUN a2enmod rewrite expires
# Wed, 20 Dec 2017 05:53:53 GMT
VOLUME [/var/www/html]
# Wed, 20 Dec 2017 05:53:53 GMT
ENV WORDPRESS_VERSION=4.9.1
# Wed, 20 Dec 2017 05:53:54 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Wed, 20 Dec 2017 05:54:01 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 20 Dec 2017 05:54:02 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Wed, 20 Dec 2017 05:54:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Dec 2017 05:54:04 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6258639ee0c8534948f447e3c9ffebb5f124906bb7fb637bbc8fad3c3e091b21`  
		Last Modified: Wed, 20 Dec 2017 05:07:16 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c05d3ba3c017e6325dd88fd1835d22fdb0baadb018d08754c57e671589e0018`  
		Last Modified: Wed, 20 Dec 2017 05:07:42 GMT  
		Size: 71.8 MB (71758911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa85dcb7d7dc8facdc9718a96b358f6fd1fe57bc223e21255c4deca04fed27fa`  
		Last Modified: Wed, 20 Dec 2017 05:07:14 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898533e16fbbbbe0dcea5319f478ee056106479e62ca87f8b23c92fc20af8c04`  
		Last Modified: Wed, 20 Dec 2017 05:09:25 GMT  
		Size: 2.7 MB (2711377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2cc2b70e5d3ad564db29fb5003a6392d4242d0bed170e6853dfbfcd4c19036b`  
		Last Modified: Wed, 20 Dec 2017 05:09:23 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6b710440618ba8db1e65ba3ba115d39f956c04cc2e9b342ac93a452e08fd12`  
		Last Modified: Wed, 20 Dec 2017 05:09:22 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1c0a56e441f0d8997aeba9ae944498fa7acaf4e1aecb989e590ce674462069`  
		Last Modified: Wed, 20 Dec 2017 05:09:22 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71bcfb629c7ca15f4f851110ebc5e3205cdaff0c451ac95734e3db315086dba9`  
		Last Modified: Wed, 20 Dec 2017 05:09:21 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9333cba7d7aa843c856a39f3b2af14df6dea233287adec9baeea2e5ee26530d0`  
		Last Modified: Wed, 20 Dec 2017 05:09:20 GMT  
		Size: 12.4 MB (12364277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e26fd99f14c02274fde1bc1fd0c2b4289262e21bf94f7f4797997e97d8c00f2`  
		Last Modified: Wed, 20 Dec 2017 05:09:19 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a093cbc0f05cea2657500da1ed701606fdfffe3aac1b6ecf529df49c465a8aaa`  
		Last Modified: Wed, 20 Dec 2017 05:09:25 GMT  
		Size: 13.9 MB (13863030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5c1db3803b9b8b21482ceb13d4985724015a236d738689f01f1ce694d5c066`  
		Last Modified: Wed, 20 Dec 2017 05:09:21 GMT  
		Size: 2.2 KB (2190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e746037acd785b3f137016ad3724e01970d9d893735d421a43ca358c50fba9`  
		Last Modified: Wed, 20 Dec 2017 05:09:19 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3960b3f2f016cf9d40494cc8213824d37bcaa5319d6c7d3a3ed273b555faf84`  
		Last Modified: Wed, 20 Dec 2017 06:03:30 GMT  
		Size: 1.4 MB (1424013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e096b01e26107d7b51218079109043ce897935b134c1820bd580b34f771166f`  
		Last Modified: Wed, 20 Dec 2017 06:03:30 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2c63376a8a360b96722e381d8cd440256f16d10b48a28c77a1c7308c0b2a1d`  
		Last Modified: Wed, 20 Dec 2017 06:03:30 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dd93d060586e62a88386219ea31ccd930e761a5f8adca3e0e58270bf9369c8`  
		Last Modified: Wed, 20 Dec 2017 06:03:35 GMT  
		Size: 9.5 MB (9471274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf8daa1b85a00ea67d4b45e9b9104597209be4b4f1d4c7b94181be6282d082f`  
		Last Modified: Wed, 20 Dec 2017 06:03:30 GMT  
		Size: 3.2 KB (3222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-apache` - linux; 386

```console
$ docker pull wordpress@sha256:132ad543886d62f664dbf9d0cd6529402024ffbd6ed55852d031549bef8ae95e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (151027122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b274015001209cc271b29472716de5bc1757d48a87ab0c79ca548c5b130b8ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:19:22 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 22:20:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 22:20:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 22:40:41 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:40:42 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 12 Dec 2017 22:40:42 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 12 Dec 2017 22:40:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 12 Dec 2017 22:40:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 12 Dec 2017 22:40:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 12 Dec 2017 22:40:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 12 Dec 2017 22:40:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 12 Dec 2017 22:40:45 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 12 Dec 2017 22:40:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 22:40:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 22:40:46 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 22:40:46 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 12 Dec 2017 22:40:46 GMT
ENV PHP_VERSION=7.2.0
# Tue, 12 Dec 2017 22:40:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 22:40:47 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Tue, 12 Dec 2017 22:41:21 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 22:41:21 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 22:45:26 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 14 Dec 2017 09:37:13 GMT
COPY multi:6c3bbfbce55efcbe7075883db5f0dba98b25830060e57a35ce066c0dc58c7f0b in /usr/local/bin/ 
# Thu, 14 Dec 2017 09:37:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 14 Dec 2017 09:37:14 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 14 Dec 2017 09:37:14 GMT
WORKDIR /var/www/html
# Thu, 14 Dec 2017 09:37:14 GMT
EXPOSE 80/tcp
# Thu, 14 Dec 2017 09:37:15 GMT
CMD ["apache2-foreground"]
# Thu, 14 Dec 2017 12:15:49 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Thu, 14 Dec 2017 12:21:57 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 14 Dec 2017 12:21:59 GMT
RUN a2enmod rewrite expires
# Thu, 14 Dec 2017 12:21:59 GMT
VOLUME [/var/www/html]
# Thu, 14 Dec 2017 12:21:59 GMT
ENV WORDPRESS_VERSION=4.9.1
# Thu, 14 Dec 2017 12:22:00 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Thu, 14 Dec 2017 12:22:04 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 14 Dec 2017 12:22:04 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Thu, 14 Dec 2017 12:22:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 12:22:04 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd1f46be349d3a28327cff92bc8447a84a4a042b93a89d27ce926a38879eb1f`  
		Last Modified: Wed, 13 Dec 2017 01:23:54 GMT  
		Size: 86.2 MB (86160804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbdeff0022781197525eacc3e11301ff0ec7d12ec93ed333c571c6cbcc78a4f4`  
		Last Modified: Wed, 13 Dec 2017 01:23:19 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e202227771a8511b693e2491428540a4437e41f228899dce444b71da0729d53`  
		Last Modified: Wed, 13 Dec 2017 01:29:22 GMT  
		Size: 3.1 MB (3075579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac53a6fdce076957a66d081a1c4b496f17d8b19e605c0b6f2beeeb2e6474d61`  
		Last Modified: Wed, 13 Dec 2017 01:29:19 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b3e42f0a93911dfc6a86bf00c45f388fb13b26caeca7b6527489a7bb984c99`  
		Last Modified: Wed, 13 Dec 2017 01:29:19 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2891d87831815f2b58e4c5333bbd40746be763504ac601d2b75f2ad0eaee44`  
		Last Modified: Wed, 13 Dec 2017 01:29:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8106156c7a0ea01d02c1e47f4465ef04de72626e3834d6285d01016fbfa6dccc`  
		Last Modified: Wed, 13 Dec 2017 01:29:19 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76131f7074232949ea3882ad36b7c7649a58e879edb4ed9080891e061239a833`  
		Last Modified: Wed, 13 Dec 2017 01:29:22 GMT  
		Size: 12.4 MB (12365725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e39714ba14805c41de259817bba790bfa596eabb861c705b05dd430ddd5069f`  
		Last Modified: Wed, 13 Dec 2017 01:29:19 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3484a46b9bd1b4c15633b0d83765d7257668e94579c3aef62810052849f053`  
		Last Modified: Wed, 13 Dec 2017 01:29:25 GMT  
		Size: 15.2 MB (15221873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:533aecebc29607aec36b4b88a0ca94db0d16f33a749d659ac0f2604c6f879cf5`  
		Last Modified: Thu, 14 Dec 2017 10:25:16 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7a0041e8d2c3d767342403e267be80783f6fc989f2bceeb70d0ae6ae87c16d`  
		Last Modified: Thu, 14 Dec 2017 10:25:15 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026a7a52088ce63fe0bcc51f74697dfcaee1fcae317b99fadb50a8a6d5f9cb0d`  
		Last Modified: Thu, 14 Dec 2017 13:34:52 GMT  
		Size: 1.6 MB (1599322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f5fce396d8b2c6ee40378cd6ab5269ef58365e106b78ce1ee9f73f236a2dd6`  
		Last Modified: Thu, 14 Dec 2017 13:34:51 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7758b1f42b21f403c51268e5ff2807b92d47de8e709e1b39104814869766af6d`  
		Last Modified: Thu, 14 Dec 2017 13:34:51 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e11f781d9f664daabb093de536145c9728550506e3cfcce66888f10782313d`  
		Last Modified: Thu, 14 Dec 2017 13:34:56 GMT  
		Size: 9.5 MB (9471277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e337f2b0777a313252918bc0bcc8537d5ec9a29bbb2ca6d0678b49010e6d385`  
		Last Modified: Thu, 14 Dec 2017 13:34:51 GMT  
		Size: 3.2 KB (3226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-apache` - linux; ppc64le

```console
$ docker pull wordpress@sha256:4ec2559e02c44d013edc1b355235900faad35cfb2fa827264c4289ad5a3ddad0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.1 MB (140114486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6edf65f03fe320a3901de31cecf0379be17cf5d2b75f5b84ea6b816fba0d6df1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 04:25:51 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 04:29:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 04:29:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 04:29:36 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 04:38:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 04:38:36 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 12 Dec 2017 04:38:37 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 12 Dec 2017 04:38:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 12 Dec 2017 04:38:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 12 Dec 2017 04:38:50 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 12 Dec 2017 04:38:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 12 Dec 2017 04:38:56 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 12 Dec 2017 04:38:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 12 Dec 2017 04:38:59 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 04:39:00 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 04:39:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 04:39:03 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 12 Dec 2017 04:39:07 GMT
ENV PHP_VERSION=7.2.0
# Tue, 12 Dec 2017 04:39:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 04:39:10 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Tue, 12 Dec 2017 04:40:20 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 04:40:21 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 04:46:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 14 Dec 2017 09:48:53 GMT
COPY multi:6c3bbfbce55efcbe7075883db5f0dba98b25830060e57a35ce066c0dc58c7f0b in /usr/local/bin/ 
# Thu, 14 Dec 2017 09:48:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 14 Dec 2017 09:48:55 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 14 Dec 2017 09:48:56 GMT
WORKDIR /var/www/html
# Thu, 14 Dec 2017 09:48:57 GMT
EXPOSE 80/tcp
# Thu, 14 Dec 2017 09:48:58 GMT
CMD ["apache2-foreground"]
# Thu, 14 Dec 2017 11:24:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Thu, 14 Dec 2017 11:24:42 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 14 Dec 2017 11:24:47 GMT
RUN a2enmod rewrite expires
# Thu, 14 Dec 2017 11:24:52 GMT
VOLUME [/var/www/html]
# Thu, 14 Dec 2017 11:24:54 GMT
ENV WORDPRESS_VERSION=4.9.1
# Thu, 14 Dec 2017 11:24:55 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Thu, 14 Dec 2017 11:25:03 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 14 Dec 2017 11:25:05 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Thu, 14 Dec 2017 11:25:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 11:25:07 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e94387b059051e70aa103a00e5e7b9513818bfd61951a89911bf02423ac205`  
		Last Modified: Tue, 12 Dec 2017 06:16:34 GMT  
		Size: 76.3 MB (76302733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab8e1e546d66d742f64a7aaa7c241ed8124367d177cf80d156c8f528099cf79`  
		Last Modified: Tue, 12 Dec 2017 06:15:58 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51c3366014450b73fb1d57ac00b341fa898c3bec36ed5b90c11f97d72cb1b77`  
		Last Modified: Tue, 12 Dec 2017 06:18:17 GMT  
		Size: 3.0 MB (3043446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c7d9e159f54f3323411237d2eb81a0bde8dd1aa020380cd028da1913316625`  
		Last Modified: Tue, 12 Dec 2017 06:18:11 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e356549cec8b6c75535ee328a016b5fb85a496c2abbaa5d2f3d28fb07a84e30f`  
		Last Modified: Tue, 12 Dec 2017 06:18:11 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377e5a102f4376b41317e50c8babe19edcc8922d3eb5a014e29ebce679b862ad`  
		Last Modified: Tue, 12 Dec 2017 06:18:10 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c07148d978bd79cc3ae02f8eb9738c4b798e58d1bd556931371e3a16933ce2`  
		Last Modified: Tue, 12 Dec 2017 06:18:13 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e1b48e0eeadc25c553d80e94e835ea2fab73c3a7de8907ead5aa7b4a13259f`  
		Last Modified: Tue, 12 Dec 2017 06:18:06 GMT  
		Size: 12.4 MB (12365239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dcbb1546b0bc5c29bcf19285f4806e3552a9ddf654b67d6f8740b089f9299f`  
		Last Modified: Tue, 12 Dec 2017 06:18:04 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68e45262ddbdf45c636c4a3261391447a5be638bf6bb9abb1cbfca8b55c5d0d`  
		Last Modified: Tue, 12 Dec 2017 06:18:11 GMT  
		Size: 14.6 MB (14628280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d444a3c057407f6ba5348bee7fd3d89266aeb659491e89ec9a6586b6c315785f`  
		Last Modified: Thu, 14 Dec 2017 10:11:21 GMT  
		Size: 2.2 KB (2188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e46af3a905ef9623b882024c0e4333c79eeeef35cf05418d4e3cfd0e93bd16`  
		Last Modified: Thu, 14 Dec 2017 10:11:21 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93248e169b6df99e733a8eea3348535abc217acbbe46210849cd88ab0bcc93fb`  
		Last Modified: Thu, 14 Dec 2017 11:36:52 GMT  
		Size: 1.6 MB (1553565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776219832c302bc5d58870e8ab72d59c8e0bdbd704de8793ba80ea697ae0423f`  
		Last Modified: Thu, 14 Dec 2017 11:36:51 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4f81f61022a62826c1581dcfea57ef9259639bb744b24f4d45136ccff067970`  
		Last Modified: Thu, 14 Dec 2017 11:36:51 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30294d93c87e081679cece092668866f6a0b15e7bebf3eea690654ce8d458acc`  
		Last Modified: Thu, 14 Dec 2017 11:36:54 GMT  
		Size: 9.5 MB (9471280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf9cbfcd6be42964d463114570b6c4e942159be6a38b7966cb7185dc51b1588`  
		Last Modified: Thu, 14 Dec 2017 11:36:51 GMT  
		Size: 3.2 KB (3225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
