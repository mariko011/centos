## `wordpress:4-php7.1-fpm`

```console
$ docker pull wordpress@sha256:9ed7a30f78f9fc4fa58ca7748f595acbfd34cb4381a4512527b138188d67fe52
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.1-fpm` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171378907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd1aa04ec3ae204e71016f90a15ea1c803663868ae3fe367ad87e65c5535ca9`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Mon, 24 Jul 2017 19:15:31 GMT
ENV PHP_VERSION=7.1.7
# Mon, 24 Jul 2017 19:15:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.7.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.7.tar.xz.asc/from/this/mirror
# Mon, 24 Jul 2017 19:15:32 GMT
ENV PHP_SHA256=0d42089729be7b2bb0308cbe189c2782f9cb4b07078c8a235495be5874fff729 PHP_MD5=
# Mon, 24 Jul 2017 19:15:52 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Mon, 24 Jul 2017 19:15:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 24 Jul 2017 19:20:23 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 24 Jul 2017 19:20:23 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 24 Jul 2017 19:20:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 24 Jul 2017 19:20:24 GMT
WORKDIR /var/www/html
# Mon, 24 Jul 2017 19:20:25 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 24 Jul 2017 19:20:25 GMT
EXPOSE 9000/tcp
# Mon, 24 Jul 2017 19:20:25 GMT
CMD ["php-fpm"]
# Wed, 26 Jul 2017 16:24:06 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 26 Jul 2017 16:24:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 26 Jul 2017 16:24:07 GMT
VOLUME [/var/www/html]
# Wed, 26 Jul 2017 16:24:07 GMT
ENV WORDPRESS_VERSION=4.8
# Wed, 26 Jul 2017 16:24:07 GMT
ENV WORDPRESS_SHA1=3738189a1f37a03fb9cb087160b457d7a641ccb4
# Wed, 26 Jul 2017 16:24:09 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 26 Jul 2017 16:24:11 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Wed, 26 Jul 2017 16:24:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 16:24:12 GMT
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
	-	`sha256:15c43a40955ec4c002bd32f0ec9f28c10796a02fbc7fe743c8be37cbd8a5178d`  
		Last Modified: Tue, 25 Jul 2017 00:40:22 GMT  
		Size: 12.9 MB (12942412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6affafcdc67d67db1d141468d3909facd4c1258f36bbf70e9913a33946a7f008`  
		Last Modified: Tue, 25 Jul 2017 00:40:21 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9fcb6b508fc460322faa2878bc7888f9e847e43330f80bcd6cb6cd8fd35efc`  
		Last Modified: Tue, 25 Jul 2017 00:40:23 GMT  
		Size: 13.1 MB (13083569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a990ccf48021e4631c0041a6208ad38b345b6a6784230b8e5b02b4b1a613ae9d`  
		Last Modified: Tue, 25 Jul 2017 00:40:18 GMT  
		Size: 2.1 KB (2116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d5dafe7629a21c5ff4af2431e4c9b197d7cae9ae522ef469126a9785b57aa8`  
		Last Modified: Tue, 25 Jul 2017 00:40:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440df9a4a646c631e8658af6137afe0d93cc270e0bed4633236af4aa9dcf75ad`  
		Last Modified: Tue, 25 Jul 2017 00:40:18 GMT  
		Size: 7.7 KB (7672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5b4e77fb1e1b77307d35b29f8f57117a6382abd9391cb25a004a9719a05eac`  
		Last Modified: Wed, 26 Jul 2017 16:29:55 GMT  
		Size: 2.2 MB (2232201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b77207b772f6a4ee7934a3d9c0a0447aa103ab9a285b5cf0d33d33bc070ca1`  
		Last Modified: Wed, 26 Jul 2017 16:29:53 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d1c9f499c770b75a6f04f3195505b61095711fc1d7ddb159e7a370e20944fa`  
		Last Modified: Wed, 26 Jul 2017 16:29:55 GMT  
		Size: 8.0 MB (8006794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66335aba526b71c2c080e35dc43ebeef73ca18056086aa2d5a8fa7883a0baed9`  
		Last Modified: Wed, 26 Jul 2017 16:29:53 GMT  
		Size: 3.1 KB (3149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
