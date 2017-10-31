## `wordpress:php7.1-fpm`

```console
$ docker pull wordpress@sha256:c62d1b65e660d63b0261b5e72010a0a02a9d92d4122082b498ec2651c636c01d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `wordpress:php7.1-fpm` - linux; amd64

```console
$ docker pull wordpress@sha256:88483c9a069aab96daa26748b69f50493424b1623e05461f0329fd6495865e02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.9 MB (171921535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80a90efb2586d9b900b6e278e2b1c36c69590460569acf1a392b7f03ad23e4c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:12:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Tue, 10 Oct 2017 01:13:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:13:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 10 Oct 2017 01:13:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 10 Oct 2017 01:27:12 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Mon, 30 Oct 2017 22:19:10 GMT
ENV PHP_VERSION=7.1.11
# Mon, 30 Oct 2017 22:19:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.11.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.11.tar.xz.asc/from/this/mirror
# Mon, 30 Oct 2017 22:19:10 GMT
ENV PHP_SHA256=074093e9d7d21afedc5106904218a80a47b854abe368d2728ed22184c884893e PHP_MD5=
# Mon, 30 Oct 2017 22:19:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Mon, 30 Oct 2017 22:19:33 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 30 Oct 2017 22:23:23 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 30 Oct 2017 22:27:18 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Mon, 30 Oct 2017 22:27:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 30 Oct 2017 22:27:19 GMT
WORKDIR /var/www/html
# Mon, 30 Oct 2017 22:27:20 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 30 Oct 2017 22:27:20 GMT
EXPOSE 9000/tcp
# Mon, 30 Oct 2017 22:27:20 GMT
CMD ["php-fpm"]
# Tue, 31 Oct 2017 00:44:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 31 Oct 2017 00:44:28 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 31 Oct 2017 00:44:35 GMT
VOLUME [/var/www/html]
# Tue, 31 Oct 2017 23:05:18 GMT
ENV WORDPRESS_VERSION=4.8.3
# Tue, 31 Oct 2017 23:05:18 GMT
ENV WORDPRESS_SHA1=8efc0b9f6146e143ed419b5419d7bb8400a696fc
# Tue, 31 Oct 2017 23:05:19 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 31 Oct 2017 23:05:20 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Tue, 31 Oct 2017 23:05:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Oct 2017 23:05:20 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e22dddbf921907e82e3dbea870be475c0d58274774f04af85407e06ae4c6ba`  
		Last Modified: Tue, 10 Oct 2017 02:33:19 GMT  
		Size: 82.5 MB (82497677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf0df491fd2e905203a9dd11b8efc67a152337cdea7168cbece4e430d13d05f6`  
		Last Modified: Tue, 10 Oct 2017 02:33:00 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf400f69f9bdaf563c4f549f6d4bef6feb8fc6387ac79a83412b34d196568aea`  
		Last Modified: Mon, 30 Oct 2017 23:52:09 GMT  
		Size: 12.5 MB (12506599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ebad45d70ad2219cfcab3a7f899470d5bd6e99eb22c8ffde9a42dc6c10d6324`  
		Last Modified: Mon, 30 Oct 2017 23:52:07 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc790732ca0cefaa3cdcecb2a77ce74bd72ff6f94b06970106bb348f511ca68`  
		Last Modified: Mon, 30 Oct 2017 23:52:09 GMT  
		Size: 13.8 MB (13831289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44def4cccf32d5a350b9f03945e04ec2bb93636e13f024420dd0b94d940cf154`  
		Last Modified: Mon, 30 Oct 2017 23:52:06 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e54c9a638de6e9200fd4616fa99e13d538b968e713e9fa974f533179e5ec76`  
		Last Modified: Mon, 30 Oct 2017 23:52:05 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f41260e56c4f0ffb767eadfeba47c7a5e8b96c440d095e518a42c1785a53d2`  
		Last Modified: Mon, 30 Oct 2017 23:52:05 GMT  
		Size: 7.7 KB (7681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fd2d2661f1ff861370c9ac486fd857a271a28033aff8f0ad581d5f66c9e7ab`  
		Last Modified: Tue, 31 Oct 2017 01:25:55 GMT  
		Size: 2.5 MB (2460145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934b8c5ccbc75801c8c707856e194e783dc79272bcf02d1274a5d61b78a7b317`  
		Last Modified: Tue, 31 Oct 2017 01:25:54 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:539d5bfeff361aabdde319226682762c1ed01bafcf93498cc529c73166b5b616`  
		Last Modified: Tue, 31 Oct 2017 23:15:38 GMT  
		Size: 8.0 MB (8016461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00854dfe579f79c3ed599aae650a2649f9303e9970182aefdff61538624d2546`  
		Last Modified: Tue, 31 Oct 2017 23:15:38 GMT  
		Size: 3.2 KB (3220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
