## `wordpress:php7.1-fpm`

```console
$ docker pull wordpress@sha256:0b63e0d59311f01a10d72df0a0308c521acefa2ba522a8c73bfdfe21d233f4fc
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.1-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171314875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9044ae1692e5b98afa69faaea62b6d7d8004fc91b9633d7e3a6e0c16973ff801`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 23:00:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 08 Jun 2017 23:00:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 08 Jun 2017 23:00:57 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Mon, 12 Jun 2017 21:30:40 GMT
ENV PHP_VERSION=7.1.6
# Mon, 12 Jun 2017 21:30:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 12 Jun 2017 21:30:42 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 12 Jun 2017 21:31:00 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 12 Jun 2017 21:31:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:54:01 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 13 Jun 2017 21:54:11 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:54:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 13 Jun 2017 21:54:59 GMT
WORKDIR /var/www/html
# Tue, 13 Jun 2017 21:55:02 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 13 Jun 2017 21:55:03 GMT
EXPOSE 9000/tcp
# Tue, 13 Jun 2017 21:55:51 GMT
CMD ["php-fpm"]
# Wed, 14 Jun 2017 14:57:55 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 14 Jun 2017 14:58:02 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 14 Jun 2017 14:58:03 GMT
VOLUME [/var/www/html]
# Wed, 14 Jun 2017 14:58:04 GMT
ENV WORDPRESS_VERSION=4.8
# Wed, 14 Jun 2017 14:58:05 GMT
ENV WORDPRESS_SHA1=3738189a1f37a03fb9cb087160b457d7a641ccb4
# Wed, 14 Jun 2017 14:58:30 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 14 Jun 2017 14:58:54 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Wed, 14 Jun 2017 14:58:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Jun 2017 14:58:56 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a66728ddbcc65e38ed51a86286a82c1f191b9e82eb8fda15adcc62c22bc0c6e`  
		Last Modified: Mon, 12 Jun 2017 22:47:23 GMT  
		Size: 12.9 MB (12918502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b511f9bc5eba5124fc4d2ef156afbdfb6536a9a05773b4ecae30b51a36e1fb60`  
		Last Modified: Mon, 12 Jun 2017 22:47:20 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb814c55d5068c385b4d2acf56094ddfed77d37b6fc6b1e2fccf966c6c887c4`  
		Last Modified: Tue, 13 Jun 2017 23:32:17 GMT  
		Size: 13.1 MB (13081541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c8ffa1b557243692b61c29c685bb09b220c82b3e8d232c9b70e328e66e1412`  
		Last Modified: Tue, 13 Jun 2017 23:32:16 GMT  
		Size: 2.1 KB (2119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1e876d658927c0f75082dbff08b4378e3e977061d8b9894edab484112e2fed`  
		Last Modified: Tue, 13 Jun 2017 23:32:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b80f2e0665861848816f6cf7a0d52b260d8720f3977d60f7f51956dbf9ceaa`  
		Last Modified: Tue, 13 Jun 2017 23:32:14 GMT  
		Size: 7.7 KB (7672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b5bb053caaa966a265c7ab586e4a79539200f89601792e0cde41f80478490a`  
		Last Modified: Wed, 14 Jun 2017 15:42:37 GMT  
		Size: 2.2 MB (2232059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92d368b6f444d90405480b5a24021802ba2e08b7317af492092184b5787931f4`  
		Last Modified: Wed, 14 Jun 2017 15:42:37 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:977022c60fe56808ac386833cd4c0ec8e0795aefa3aea093f6d3fe8adbdcd7f9`  
		Last Modified: Wed, 14 Jun 2017 15:42:38 GMT  
		Size: 8.0 MB (8006797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d703082f2d90bb96b95abe0f404ab7428d468c14434cfe2dce61510974bcd5`  
		Last Modified: Wed, 14 Jun 2017 15:42:36 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
