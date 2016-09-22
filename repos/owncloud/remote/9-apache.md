## `owncloud:9-apache`

```console
$ docker pull owncloud@sha256:3d2f1cac9c886ab40dc29ac6ad7eab6c8e95f7d9940f942482b39fb032027a62
```

-	Platforms:
	-	linux; amd64

### `owncloud:9-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.2 MB (231233617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a87352a387918fd9047500f3f42fd2b9a93ac204ca47b264586f3ca10c780bac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 23:24:49 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 19 Sep 2016 23:25:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:25:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Sep 2016 23:25:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Sep 2016 23:32:55 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 19 Sep 2016 23:32:57 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 19 Sep 2016 23:32:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 19 Sep 2016 23:32:59 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 19 Sep 2016 23:32:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 20 Sep 2016 00:03:15 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_VERSION=5.6.26
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Tue, 20 Sep 2016 00:03:20 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Tue, 20 Sep 2016 00:03:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:31 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 20 Sep 2016 00:09:32 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:32 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:33 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 00:09:33 GMT
EXPOSE 80/tcp
# Tue, 20 Sep 2016 00:09:34 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 17:01:24 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 17:03:06 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 20 Sep 2016 17:03:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 17:03:08 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 17:03:32 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Wed, 21 Sep 2016 23:15:30 GMT
ENV OWNCLOUD_VERSION=9.1.1
# Wed, 21 Sep 2016 23:15:30 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:15:43 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 21 Sep 2016 23:15:43 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:15:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:15:44 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac8ac352fc3917a1c94b6fdd01f8cd1fbb5c84ba5cf9de0827f7aeaf809f51`  
		Last Modified: Tue, 20 Sep 2016 05:25:09 GMT  
		Size: 77.6 MB (77593020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba164c22a40422293321eacfbdf325437ddb9a8e9609a60531fc819076478dd`  
		Last Modified: Tue, 20 Sep 2016 05:24:46 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a720432c5339d80623549f0d127692c83bf21eb6f698a2ae5672609f99707b`  
		Last Modified: Tue, 20 Sep 2016 05:24:47 GMT  
		Size: 2.8 MB (2848976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1793582987f0dee494f9b30b31dfb6fd7a29a59b49215efdff88f8b6e3312cc1`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce51da6ec5581808896181ffc3af6aa14bbaad8d1c2c250aa332cc40b0bbed0`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb9cc7e0202c85e01bce4a107aca54f50751a9bad44ac8283b16d76733c2557`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459cb9974ae91b15667c79441652f9f0177d860233a45e9c2513fb09f7c18ae1`  
		Last Modified: Tue, 20 Sep 2016 05:24:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a06946c9efc256736268d8bdb801b8224ddbdb86a3b81ef5bec17edae5180e3`  
		Last Modified: Tue, 20 Sep 2016 05:24:44 GMT  
		Size: 12.4 MB (12417485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82da4c5711dacbe710b9bee379619f1399aefdd25d6e8e177268946b5c237f0`  
		Last Modified: Tue, 20 Sep 2016 05:24:40 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c3b990f290e348cf63f6a5c1c62bb075bf7c474d9b0c2c62848544d3e75406`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 15.9 MB (15906465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb658f92fe225da9cf89b80d1eda8966e98e6eb78536abbbc335deb39052dad`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83852ec056413560e93d6d63c1bc46d86f1afa454123eac29b16068494119551`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6036bd3674188a38d178d0090e46535b79318dcec334b75e5d6fba460bf261f2`  
		Last Modified: Wed, 21 Sep 2016 23:18:04 GMT  
		Size: 34.3 MB (34329681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd4aeeb560a9f03b6e9c4da7bb307778bd238ab0cdba06cf49457ad6ed03707`  
		Last Modified: Wed, 21 Sep 2016 23:17:50 GMT  
		Size: 3.7 MB (3741493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622028362c313d1ca5cfb9b0f05472c5a200772f0ce70c7fb41b0cb33803a510`  
		Last Modified: Wed, 21 Sep 2016 23:17:45 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b9af4d0bf16c1b59e62fa206a311f46159bbab65c057f804d1c98219118a35`  
		Last Modified: Wed, 21 Sep 2016 23:17:47 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f7750dcc587c118880589a1838772e79f2874e6d17db14e7b371964c3022c8`  
		Last Modified: Wed, 21 Sep 2016 23:17:47 GMT  
		Size: 1.3 MB (1330746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871d4ea4dfebac50bc29795327efc04df4d5ac2cbc5bd764e3cda19d7ea4e2cc`  
		Last Modified: Wed, 21 Sep 2016 23:22:46 GMT  
		Size: 31.7 MB (31704867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a97fb6b97d2da999ce25b9ecc3435b2df2d6a50835e44451c8dedcc5a42852a`  
		Last Modified: Wed, 21 Sep 2016 23:22:38 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
