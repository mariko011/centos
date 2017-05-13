## `nextcloud:11-fpm`

```console
$ docker pull nextcloud@sha256:e34e2a968be63381ea6fa609d8bac9a93cd1521b6360e27a5e76cf3793523979
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243718899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd04d7cb45c8b5de4e30bcc32a1d6547d014b06c32e62ca99adde73354e5b80`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Fri, 12 May 2017 23:58:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 12 May 2017 23:58:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 12 May 2017 23:58:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 12 May 2017 23:59:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:14:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Sat, 13 May 2017 00:14:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:14:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:14:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:14:13 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Sat, 13 May 2017 00:14:14 GMT
ENV PHP_VERSION=7.1.5
# Sat, 13 May 2017 00:14:15 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:14:15 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Sat, 13 May 2017 00:14:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 13 May 2017 00:14:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 00:19:09 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Sat, 13 May 2017 00:22:29 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Sat, 13 May 2017 00:22:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 00:22:31 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 00:22:32 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 13 May 2017 00:22:33 GMT
EXPOSE 9000/tcp
# Sat, 13 May 2017 00:22:33 GMT
CMD ["php-fpm"]
# Sat, 13 May 2017 04:03:11 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Sat, 13 May 2017 04:05:10 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 13 May 2017 04:05:12 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 13 May 2017 04:05:40 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Sat, 13 May 2017 04:05:41 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Sat, 13 May 2017 04:05:42 GMT
VOLUME [/var/www/html]
# Sat, 13 May 2017 04:05:56 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Sat, 13 May 2017 04:05:58 GMT
COPY file:1e38bf87ac3d14f6a429e1817ad7b175c9b1bf9bb9e82c4c8370944880bce70d in /entrypoint.sh 
# Sat, 13 May 2017 04:05:59 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Sat, 13 May 2017 04:05:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 13 May 2017 04:06:00 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370377701f89cff89a25897f719848740ad95b97828c7ffdf8444bdafef6436b`  
		Last Modified: Sat, 13 May 2017 01:37:32 GMT  
		Size: 82.5 MB (82498638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455c73a122bc8a30bbb47aacf289778a636517eb5d841408435625ec4394a9c7`  
		Last Modified: Sat, 13 May 2017 01:37:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de62618f93d50c187f3fa16e661dd214bcc83e95d34f98c46669734535d47ff2`  
		Last Modified: Sat, 13 May 2017 01:43:52 GMT  
		Size: 12.9 MB (12913551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f22fecc61ccaf1b5d5184c1f47c6acb21af6bc70a5e1a20c4fce079140e6a8`  
		Last Modified: Sat, 13 May 2017 01:43:50 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84248d5c48b4fed0a9d0aba767cb6ba4c98a57d7c2cb599b9c65017aaede44c7`  
		Last Modified: Sat, 13 May 2017 01:43:55 GMT  
		Size: 13.1 MB (13084935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fbccbaebee51d27b623a0dd2680f0a981515f4e6ea05077e540b879a772cae`  
		Last Modified: Sat, 13 May 2017 01:43:50 GMT  
		Size: 2.1 KB (2121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fda988f2cb5d166ce10c6feddde6267edf2575ec505e3e5f40463e579ed20a7`  
		Last Modified: Sat, 13 May 2017 01:43:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3824726faa232c622d233e921a6ba4fd3d2bdf28023197dc46d8dd95b411e40d`  
		Last Modified: Sat, 13 May 2017 01:43:52 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d74ce1378bf179c2e969fbffc3deff9dea516b527496795a242980ef0a7f733`  
		Last Modified: Sat, 13 May 2017 04:15:48 GMT  
		Size: 35.9 MB (35871467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1bc9dd29a544a4caee429733edd1a745bf818d63f80cafb71ba3d3d525f4f9`  
		Last Modified: Sat, 13 May 2017 04:15:32 GMT  
		Size: 1.9 MB (1903753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76270ce07808694f73d2dd9e1812270f1335c43bc28452e86be925c9ec1a2e1e`  
		Last Modified: Sat, 13 May 2017 04:15:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671e3ff2a51d4caf68e0f0259f58de1881ca9ced8027d43f5b70ed9299e20b63`  
		Last Modified: Sat, 13 May 2017 04:15:32 GMT  
		Size: 1.3 MB (1321716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a4947a1aa587250af2dec57b70011b7933728a09d07fa388cf740fbf9f7035`  
		Last Modified: Sat, 13 May 2017 04:15:54 GMT  
		Size: 43.5 MB (43528752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceff21013b96df7d0b56f506be4c8f173a731cd4ad2391563bf8d3710bbf6479`  
		Last Modified: Sat, 13 May 2017 04:15:32 GMT  
		Size: 795.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3d9a5f0f13e0f7f2f07e322969c9cf819341a22f6e741e37f478a7b06a1f64`  
		Last Modified: Sat, 13 May 2017 04:15:31 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
