## `wordpress:php7.2`

```console
$ docker pull wordpress@sha256:755dd2dad10435322cfc2b330c6c147096bda886fed4a0bc9224a09e27d34f31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `wordpress:php7.2` - linux; amd64

```console
$ docker pull wordpress@sha256:e5a41a3229fcc54a2a50419a80aaf9786e499a796642ed24f8a2bdbe8ca98c91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145370190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:667fd02ce9644611804b2df2ac65cbcfe316e827e03bce4e290b841a8a2e6171`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:39:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 05:39:44 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 05:39:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 05:39:45 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 05:45:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 05:45:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 12 Dec 2017 05:45:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 12 Dec 2017 05:45:14 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 12 Dec 2017 05:45:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 12 Dec 2017 05:45:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 12 Dec 2017 05:45:22 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 12 Dec 2017 05:45:28 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 12 Dec 2017 05:45:28 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 12 Dec 2017 05:45:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 05:45:28 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 05:45:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 05:45:29 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 12 Dec 2017 05:45:29 GMT
ENV PHP_VERSION=7.2.0
# Tue, 12 Dec 2017 05:45:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 05:45:29 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Tue, 12 Dec 2017 05:45:42 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 05:45:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 05:48:44 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 13 Dec 2017 22:59:10 GMT
COPY multi:6c3bbfbce55efcbe7075883db5f0dba98b25830060e57a35ce066c0dc58c7f0b in /usr/local/bin/ 
# Wed, 13 Dec 2017 22:59:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 13 Dec 2017 22:59:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 13 Dec 2017 22:59:10 GMT
WORKDIR /var/www/html
# Wed, 13 Dec 2017 22:59:11 GMT
EXPOSE 80/tcp
# Wed, 13 Dec 2017 22:59:11 GMT
CMD ["apache2-foreground"]
# Thu, 14 Dec 2017 01:54:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Thu, 14 Dec 2017 01:54:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 14 Dec 2017 01:54:45 GMT
RUN a2enmod rewrite expires
# Thu, 14 Dec 2017 01:54:46 GMT
VOLUME [/var/www/html]
# Thu, 14 Dec 2017 01:54:46 GMT
ENV WORDPRESS_VERSION=4.9.1
# Thu, 14 Dec 2017 01:54:46 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Thu, 14 Dec 2017 01:54:49 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 14 Dec 2017 01:54:49 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Thu, 14 Dec 2017 01:54:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 01:54:50 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2580aa42d1b63554a107884a25eb093e2cac76e26bd5621a86ac41a86c485be4`  
		Last Modified: Tue, 12 Dec 2017 07:10:39 GMT  
		Size: 81.8 MB (81775657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8abb84c6a33d964efa39951812f914a1fd7785e1e6bee95523008f1cd193a2`  
		Last Modified: Tue, 12 Dec 2017 07:10:18 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bff113cc3d6f9a9323bf16501dfad4440535e5bfd4b1ff337cfbdec48636afe`  
		Last Modified: Tue, 12 Dec 2017 07:13:26 GMT  
		Size: 2.9 MB (2920632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd1a4dcbc4ec022188e2500f408dda8fc07f48aae0be5c21133130ba20bac383`  
		Last Modified: Tue, 12 Dec 2017 07:13:24 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab893328ce8496da827e702d238f709984dcc8d0c9f97f95a38ed8715fc92256`  
		Last Modified: Tue, 12 Dec 2017 07:13:22 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13367be12a3fbd894bdaa6b7dd12c9ac18670f1c8e37ce011b6b0a3fc0195508`  
		Last Modified: Tue, 12 Dec 2017 07:13:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892f2a2b8c32b218c122525bbd29fa4e342ad3f70c7e73bcaff6a36f18484aee`  
		Last Modified: Tue, 12 Dec 2017 07:13:22 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17d3f3dc1afe59b6378bddf4c9310580a09f37d6236bc24122eae117dacd02e`  
		Last Modified: Tue, 12 Dec 2017 07:13:21 GMT  
		Size: 12.4 MB (12366218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e71bdb20601e4e6c917754778f35cde9673b041822f2462e8ab49be6333191`  
		Last Modified: Tue, 12 Dec 2017 07:13:20 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ee5f422b46e0dea0ca1f6a28d0fe888b614e47ca09bd90826d8221162a0aba`  
		Last Modified: Tue, 12 Dec 2017 07:13:25 GMT  
		Size: 14.8 MB (14811796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61428faa007e9b7c10236fe0a04d986818ff9f9d549062353a9ec927e1a520d7`  
		Last Modified: Wed, 13 Dec 2017 23:37:56 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1bd98549deec00ef498d5afda7e188f5213319a755344e234683897be4455c`  
		Last Modified: Wed, 13 Dec 2017 23:37:56 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c821ed1c3f3a086ea74d49d8cb3969e2f3cc69cf1b664ef7b83063c8d30b7e0`  
		Last Modified: Thu, 14 Dec 2017 02:28:26 GMT  
		Size: 1.5 MB (1528806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a5cc88ba055a9dc1f2d3d38a7e3d6fa357bbeac3972491a016a4ac2387b2e9`  
		Last Modified: Thu, 14 Dec 2017 02:28:24 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd460fa0d1d080b20f8c256902e8966525373b585b8ad769305c142e3364304b`  
		Last Modified: Thu, 14 Dec 2017 02:28:24 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fbaffe5abe407b2b5aa9bbf62d342886e10e8845515ebea52e7df95481ddd4`  
		Last Modified: Thu, 14 Dec 2017 02:28:26 GMT  
		Size: 9.5 MB (9471277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5ce7b8f1326be6ffa8db0f79c56a5aa087d5973c10dc2ea95f6daf7986679b`  
		Last Modified: Thu, 14 Dec 2017 02:28:24 GMT  
		Size: 3.2 KB (3220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.2` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:80b870ee513f470c82c33e4f3873ee33945725ed8d9e9f45c6ecd29589075445
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.7 MB (132744397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c967ad0990f9889a2ee5529c7f3716bae23dfe158c561e6cf552f965391c641`
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
# Tue, 12 Dec 2017 23:33:17 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 12 Dec 2017 23:33:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 23:33:18 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 12 Dec 2017 23:33:18 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 23:33:18 GMT
EXPOSE 80/tcp
# Tue, 12 Dec 2017 23:33:18 GMT
CMD ["apache2-foreground"]
# Wed, 13 Dec 2017 03:46:23 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 13 Dec 2017 03:46:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 13 Dec 2017 03:46:25 GMT
RUN a2enmod rewrite expires
# Wed, 13 Dec 2017 03:46:26 GMT
VOLUME [/var/www/html]
# Wed, 13 Dec 2017 03:46:26 GMT
ENV WORDPRESS_VERSION=4.9.1
# Wed, 13 Dec 2017 03:46:26 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Wed, 13 Dec 2017 03:46:30 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 13 Dec 2017 03:46:31 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Wed, 13 Dec 2017 03:46:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 03:46:31 GMT
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
	-	`sha256:e780e03fe1b67b099ade1c3543e35e36daf4fd3998645651c90e3a935b0a5dc5`  
		Last Modified: Wed, 13 Dec 2017 00:37:42 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11dc909cb3890cdff57757328f3f2dcd1093e3a632e6c740f1fb75ec126cb16`  
		Last Modified: Wed, 13 Dec 2017 00:37:42 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2610a72c8b8f7151a16cc73d5b8750a657a41addf9e54c6f7fd7b501ac8bb2`  
		Last Modified: Wed, 13 Dec 2017 03:57:41 GMT  
		Size: 1.4 MB (1446315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c4b721cf6353fb5bfec893bc9d7f5c9891c600dd0b7015a1fea85ff4e9142b`  
		Last Modified: Wed, 13 Dec 2017 03:57:40 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab4588b93c41532216f42aaebbf9f89e06b810b53dc237a648a4298978cf058`  
		Last Modified: Wed, 13 Dec 2017 03:57:41 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51612e1f2c6bdc548a6c304100ab81701fef2c4b6fc2e508a8588fd25ba599a9`  
		Last Modified: Wed, 13 Dec 2017 03:57:44 GMT  
		Size: 9.5 MB (9471280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b875419926cb9a8121b777728d23b879dcc475c956031159887b36ee5e0ce439`  
		Last Modified: Wed, 13 Dec 2017 03:57:40 GMT  
		Size: 3.2 KB (3221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.2` - linux; arm variant v7

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

### `wordpress:php7.2` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:fe47e5cd57ea3b9e564c18c4e1f3481d63da336607894841ba32179e6b5deb9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131940721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a8f6a35ca854478ee03aaba8af7df6a2ef3aef11eeb43a0b61a3bbe286c943c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Fri, 01 Dec 2017 02:57:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 01 Dec 2017 02:58:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 01 Dec 2017 02:58:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 02:58:54 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 03:01:22 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Dec 2017 03:01:23 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 01 Dec 2017 03:01:24 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 01 Dec 2017 03:01:26 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 01 Dec 2017 03:01:28 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 01 Dec 2017 03:01:30 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 01 Dec 2017 03:01:32 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 01 Dec 2017 03:01:33 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 01 Dec 2017 03:01:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 01 Dec 2017 03:01:34 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 03:01:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 03:01:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 03:01:36 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 01 Dec 2017 03:01:37 GMT
ENV PHP_VERSION=7.2.0
# Fri, 01 Dec 2017 03:01:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 03:01:39 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Fri, 01 Dec 2017 03:02:10 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Dec 2017 03:02:11 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 03:07:53 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 03:07:55 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Fri, 01 Dec 2017 03:07:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 03:07:56 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 01 Dec 2017 03:07:57 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 03:07:58 GMT
EXPOSE 80/tcp
# Fri, 01 Dec 2017 03:07:59 GMT
CMD ["apache2-foreground"]
# Sat, 09 Dec 2017 21:07:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Sat, 09 Dec 2017 21:07:50 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 09 Dec 2017 21:07:52 GMT
RUN a2enmod rewrite expires
# Sat, 09 Dec 2017 21:07:52 GMT
VOLUME [/var/www/html]
# Sat, 09 Dec 2017 21:07:53 GMT
ENV WORDPRESS_VERSION=4.9.1
# Sat, 09 Dec 2017 21:07:54 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Sat, 09 Dec 2017 21:08:00 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 09 Dec 2017 21:08:01 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Sat, 09 Dec 2017 21:08:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 21:08:03 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3912d578b2a2749c2f3feb412600b0957f0224536731224e4b5f189948267283`  
		Last Modified: Fri, 01 Dec 2017 05:19:26 GMT  
		Size: 71.8 MB (71759515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3a6b16780944d2e043d122671360da00e8da1d4c6ebf8dbf896aa5ddfb77cc`  
		Last Modified: Fri, 01 Dec 2017 05:18:59 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689bb70b2593a753416156e0af59efdea3eceda4e433e1fef1d494da0adf96d6`  
		Last Modified: Fri, 01 Dec 2017 05:19:01 GMT  
		Size: 2.7 MB (2711377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0a25037a2bf09d813608c81ae8a0bd44f5ee3fc1422c3ee587df73d755d5a7`  
		Last Modified: Fri, 01 Dec 2017 05:18:59 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91ec2d58793b7033012f1daab97f49a72af568be98f2f736b55166bf1fa3f65`  
		Last Modified: Fri, 01 Dec 2017 05:18:58 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011e7a9b8512b5eeb8d5f9a40fcfbac63c81ac543bf61076c299757503a0cbe8`  
		Last Modified: Fri, 01 Dec 2017 05:18:57 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111daaa4072b9898d08593fda1bd70ae799ccc8e5b50b52cdca17926d6065f01`  
		Last Modified: Fri, 01 Dec 2017 05:18:57 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac8c756588788650ddb91120175088173b0c183b5ff125d28a66e16b937e467`  
		Last Modified: Fri, 01 Dec 2017 05:18:57 GMT  
		Size: 12.4 MB (12364334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8a32f224f7b28b5757ec257636f818d1f622d23a2c18a368c72ac0fe3785e8`  
		Last Modified: Fri, 01 Dec 2017 05:18:55 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49db30f80e8a51d2519fb80513c0560edc21f56f5057f6fac1318df442e4a07`  
		Last Modified: Fri, 01 Dec 2017 05:19:01 GMT  
		Size: 13.9 MB (13862991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2e740bd77374096b7375af1f8b30f06494caee8af1ab18604b9a8096b967e7`  
		Last Modified: Fri, 01 Dec 2017 05:18:56 GMT  
		Size: 2.2 KB (2185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d9dcf834011ae8933e242b1ae6ad347fc1b07d15a534dec4a7c1213cdc7584`  
		Last Modified: Fri, 01 Dec 2017 05:18:55 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac86b519babe44d1ac8dc4a5f027ca231d03df265192e5fd7d3435bf73394340`  
		Last Modified: Sat, 09 Dec 2017 21:17:31 GMT  
		Size: 1.4 MB (1423963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271c40426c355ae13ff77dec23aad9653ae6261f0c8ee3be94724a04a63aa2c3`  
		Last Modified: Sat, 09 Dec 2017 21:17:30 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c8bc8e19232ebe44af9694ff68b016a042359e01802ecfcb8c90ada6106026`  
		Last Modified: Sat, 09 Dec 2017 21:17:30 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9785bf9b2b0fe4487488ced36fb1515f387022aa3972ba184e7dfb905faeaa1d`  
		Last Modified: Sat, 09 Dec 2017 21:17:33 GMT  
		Size: 9.5 MB (9471277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345eea22dad24ba211c16104bbd044fdbfce2521727245f8c3579c1032a0e938`  
		Last Modified: Sat, 09 Dec 2017 21:17:30 GMT  
		Size: 3.2 KB (3226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.2` - linux; 386

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

### `wordpress:php7.2` - linux; ppc64le

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
