## `nextcloud:10-fpm`

```console
$ docker pull nextcloud@sha256:ec17bdf8562181c841a33ea0d35ccd8d60d7e234e4ee728f2e7e8aa53c37a2a8
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10-fpm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.6 MB (231558657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6c91a3f92183d03fabc550c1fabaa70406c139518eb0cfef51f2b4954d972a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:53:21 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Apr 2017 02:53:59 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:54:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Apr 2017 02:54:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 25 Apr 2017 03:07:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 25 Apr 2017 03:07:47 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:07:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:07:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 25 Apr 2017 03:07:49 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 25 Apr 2017 03:08:05 GMT
ENV PHP_VERSION=5.6.30
# Tue, 25 Apr 2017 03:08:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:08:06 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 25 Apr 2017 03:08:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:08:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:12:11 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 25 Apr 2017 03:12:13 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:12:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Apr 2017 03:12:14 GMT
WORKDIR /var/www/html
# Tue, 25 Apr 2017 03:12:16 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 25 Apr 2017 03:12:17 GMT
EXPOSE 9000/tcp
# Tue, 25 Apr 2017 03:12:17 GMT
CMD ["php-fpm"]
# Wed, 26 Apr 2017 20:21:41 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 26 Apr 2017 20:24:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 26 Apr 2017 20:24:22 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 26 Apr 2017 20:24:51 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 26 Apr 2017 20:24:54 GMT
ENV NEXTCLOUD_VERSION=10.0.5
# Wed, 26 Apr 2017 20:24:55 GMT
VOLUME [/var/www/html]
# Wed, 26 Apr 2017 20:25:09 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Wed, 26 Apr 2017 20:25:10 GMT
COPY file:1e38bf87ac3d14f6a429e1817ad7b175c9b1bf9bb9e82c4c8370944880bce70d in /entrypoint.sh 
# Wed, 26 Apr 2017 20:25:11 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Wed, 26 Apr 2017 20:25:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Apr 2017 20:25:13 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b8a88a0af049efa3c92b1c96a947f501ec7c751a568b0d3881b3c757a184a3`  
		Last Modified: Tue, 25 Apr 2017 04:02:19 GMT  
		Size: 78.8 MB (78849205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78c922dd678a8a2c701087b1ac1381c50cb83d0bf5fc1c55c86f1ce22c7c49f`  
		Last Modified: Tue, 25 Apr 2017 04:01:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed16e0ed90d8267aed19ba8457fde5e72854455d8b71513d350b1a508dca071b`  
		Last Modified: Tue, 25 Apr 2017 04:25:05 GMT  
		Size: 12.6 MB (12560706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2895c191af4d8fcee844c1e1db66ada4334b72de73e2fa1a9aa3731b7dd17f`  
		Last Modified: Tue, 25 Apr 2017 04:25:00 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d575de0a5becca6127fceee010c8d5b69a51c5bf46c61019b219a3dfa0a5868d`  
		Last Modified: Tue, 25 Apr 2017 04:25:06 GMT  
		Size: 9.0 MB (8981308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b71dee130cf668a37c46b716969ea303d83aef12a30ef1a3feed46dcf962d00`  
		Last Modified: Tue, 25 Apr 2017 04:25:00 GMT  
		Size: 2.0 KB (2018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca32272d000c2546fa421288503fbbfb71b1a4bd49fcc0344c820ccc533d6206`  
		Last Modified: Tue, 25 Apr 2017 04:25:00 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4019e7ecc801a0448e76eb66358096bafa2a4b722563e7a325c759ba75a133af`  
		Last Modified: Tue, 25 Apr 2017 04:25:00 GMT  
		Size: 7.6 KB (7608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82af3517e442bdfe793a360d20c8362c56dc391068c45d3ae10e7685ce9dd8ba`  
		Last Modified: Wed, 26 Apr 2017 20:36:35 GMT  
		Size: 35.9 MB (35920025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04822eb58835992277e9f1613cc0291c6fd816d14d58cc074f770a4f474295c8`  
		Last Modified: Wed, 26 Apr 2017 20:36:28 GMT  
		Size: 1.7 MB (1740738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17b3cb289192c83b60bedee7f0a248f7579bc20aaded30764c5fabe201f3a79`  
		Last Modified: Wed, 26 Apr 2017 20:36:27 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e662a16758713f7e939a12c2fb35613bb27dd81136eb07fc25ecb998389a52af`  
		Last Modified: Wed, 26 Apr 2017 20:36:26 GMT  
		Size: 1.3 MB (1338381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386bfbfe9f36b24035e84b24b15b79add988ba6b119decc74dd0d43d1e50e9f8`  
		Last Modified: Wed, 26 Apr 2017 20:36:32 GMT  
		Size: 39.6 MB (39606116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09eb43d9c4e6c8804c1ebc53334d723d92102fd7aabd20e3b4002d581fab73d9`  
		Last Modified: Wed, 26 Apr 2017 20:36:26 GMT  
		Size: 794.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83df5a232d351fcb9a96df2b4bb45cc92c46e76f84547b0c98e498f17d0fb2`  
		Last Modified: Wed, 26 Apr 2017 20:36:25 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
