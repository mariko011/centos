## `nextcloud:fpm`

```console
$ docker pull nextcloud@sha256:06cc3b9c322960297609d5b46fe52f80501aff0c4e290b1cf989f2e7a0c8c572
```

-	Platforms:
	-	linux; amd64

### `nextcloud:fpm` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247222784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f11293bb3e89894e30ad0cd3b1b7ac47707c9e048ddf5c0d5910d131292b9fb6`
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
# Tue, 05 Sep 2017 20:32:25 GMT
COPY multi:99b311c07a698b22a6692b4166b60bcfd373660ddaec76be28748b581bd71cc4 in /usr/src/nextcloud/config/ 
# Tue, 05 Sep 2017 20:32:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Sep 2017 20:32:25 GMT
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
	-	`sha256:f555ec6480d7a610c6c8cbf555772bb98914b36ed0b1e3835062f755c3c21b85`  
		Last Modified: Tue, 05 Sep 2017 20:35:45 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
