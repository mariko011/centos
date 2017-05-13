## `nextcloud:10-fpm`

```console
$ docker pull nextcloud@sha256:7d841569bc136180633a226e9a860eea337545e051da0389ef0d8f83f8909963
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.8 MB (234844418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6d374845a0999d64a722ab3522716b082df9d01ab563f831887426f8f2d5dd0`
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
# Sat, 13 May 2017 01:21:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 13 May 2017 01:21:58 GMT
ENV PHP_VERSION=5.6.30
# Sat, 13 May 2017 01:21:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 01:21:59 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Sat, 13 May 2017 01:22:11 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 13 May 2017 01:22:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 01:25:19 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Sat, 13 May 2017 01:25:20 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Sat, 13 May 2017 01:25:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 01:25:22 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 01:25:23 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 13 May 2017 01:25:23 GMT
EXPOSE 9000/tcp
# Sat, 13 May 2017 01:25:24 GMT
CMD ["php-fpm"]
# Sat, 13 May 2017 03:56:29 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Sat, 13 May 2017 03:58:17 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 13 May 2017 03:58:18 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 13 May 2017 03:58:45 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Sat, 13 May 2017 03:58:45 GMT
ENV NEXTCLOUD_VERSION=10.0.5
# Sat, 13 May 2017 03:58:46 GMT
VOLUME [/var/www/html]
# Sat, 13 May 2017 03:59:00 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Sat, 13 May 2017 03:59:02 GMT
COPY file:1e38bf87ac3d14f6a429e1817ad7b175c9b1bf9bb9e82c4c8370944880bce70d in /entrypoint.sh 
# Sat, 13 May 2017 03:59:03 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Sat, 13 May 2017 03:59:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 13 May 2017 03:59:04 GMT
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
	-	`sha256:13a648f6b6ab6845cd7746a4edbc32ac75aa2496bf9d7d86f879cb87c5fd22ff`  
		Last Modified: Sat, 13 May 2017 02:01:54 GMT  
		Size: 12.6 MB (12564600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458d1f0186d7b815dda616474bd8d16bd6d2354c43cd654ae7b3912e7246f940`  
		Last Modified: Sat, 13 May 2017 02:01:52 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ac8b21f160872d034619836e0d9389fd8391efd9524c503f47aa955b32ca2d`  
		Last Modified: Sat, 13 May 2017 02:01:54 GMT  
		Size: 8.6 MB (8628396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0085a2a05ff44b6a35651fc8998064491afb9df5420e5e6a432c60c0111ae67c`  
		Last Modified: Sat, 13 May 2017 02:01:52 GMT  
		Size: 2.1 KB (2123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd31727290ba0d5df4960e611f1e6a7b608d407aed0f54547438d61c3b25319`  
		Last Modified: Sat, 13 May 2017 02:01:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b38b7d92019592d59aff34a6231680addb3e2d639106ba9493db69fad34fc`  
		Last Modified: Sat, 13 May 2017 02:01:52 GMT  
		Size: 7.6 KB (7607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f47afac79a9ea8c4c8deaa6ceee506908d083400134e92a17b6ddf95d97d4a4`  
		Last Modified: Sat, 13 May 2017 04:10:48 GMT  
		Size: 35.9 MB (35871491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf1cb3d43bda5a027a63afc033401bff3b3eea525d4cdc74c6817dbd39744d7`  
		Last Modified: Sat, 13 May 2017 04:10:32 GMT  
		Size: 1.7 MB (1740760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed4af300b3eeac21e08006a4c05fbc96efd1fef6786602ce8ef162a26baa4272`  
		Last Modified: Sat, 13 May 2017 04:10:32 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921afe38bddb391887646c6026a9c0a8996f728bafb38a976f9964b18d7b1270`  
		Last Modified: Sat, 13 May 2017 04:10:32 GMT  
		Size: 1.3 MB (1338386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b6b9f548c6653899e7c619ae77c4dca3949a37c5b3b91d80534a511ab080b8`  
		Last Modified: Sat, 13 May 2017 04:10:51 GMT  
		Size: 39.6 MB (39606123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d57451e43b238d0c87f258dcffaf761568d1c7a8a5bda159d501ab58dbdc34e`  
		Last Modified: Sat, 13 May 2017 04:10:31 GMT  
		Size: 796.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607b751a152c3213de785218c400861c8805a7baa80c8167ab8800efdd2c4e85`  
		Last Modified: Sat, 13 May 2017 04:10:32 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
