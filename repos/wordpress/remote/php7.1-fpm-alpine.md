## `wordpress:php7.1-fpm-alpine`

```console
$ docker pull wordpress@sha256:988bb6962d3602d8bb6c081a0ec5b26a1fed919ff4dbc2f2625d68882ecac062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `wordpress:php7.1-fpm-alpine` - linux; amd64

```console
$ docker pull wordpress@sha256:d47e0f42a98f1c71dd05aaf126d384c76cfeafc6208a6a72663e7c95fdd29924
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42569012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9c5ff9fb44600a523006cfd8200b841d9801f7a4f88d64433bf81b902e1b873`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 10:30:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Sat, 04 Nov 2017 10:30:51 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Sat, 04 Nov 2017 10:30:52 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 04 Nov 2017 10:30:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 04 Nov 2017 10:30:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 04 Nov 2017 10:35:58 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Sat, 04 Nov 2017 10:35:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:35:59 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:35:59 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 04 Nov 2017 10:35:59 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 28 Nov 2017 00:23:53 GMT
ENV PHP_VERSION=7.1.12
# Tue, 28 Nov 2017 00:23:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Tue, 28 Nov 2017 00:23:53 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Tue, 28 Nov 2017 00:24:10 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 28 Nov 2017 00:24:11 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Nov 2017 00:28:35 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 28 Nov 2017 00:28:39 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 28 Nov 2017 00:28:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Nov 2017 00:28:40 GMT
WORKDIR /var/www/html
# Tue, 28 Nov 2017 00:28:40 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Nov 2017 00:28:41 GMT
EXPOSE 9000/tcp
# Tue, 28 Nov 2017 00:28:41 GMT
CMD ["php-fpm"]
# Tue, 28 Nov 2017 02:18:19 GMT
RUN apk add --no-cache 		bash 		sed
# Tue, 28 Nov 2017 02:19:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 28 Nov 2017 02:19:12 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 28 Nov 2017 02:19:12 GMT
VOLUME [/var/www/html]
# Tue, 28 Nov 2017 02:19:12 GMT
ENV WORDPRESS_VERSION=4.9
# Tue, 28 Nov 2017 02:19:12 GMT
ENV WORDPRESS_SHA1=6127bd2aed7b7c0a2c1789c8f17a2222a9081d6c
# Tue, 28 Nov 2017 02:19:14 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 28 Nov 2017 02:19:14 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Tue, 28 Nov 2017 02:19:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Nov 2017 02:19:15 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5f7c337501eeff98e19cc2d10f4c50fd8bfcce7fe2640fa219b410b1cc2676`  
		Last Modified: Sat, 04 Nov 2017 11:58:11 GMT  
		Size: 1.3 MB (1308940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2765a1878d4da8aa3135f8e56cfa7e36daa2a263efa8fd09357aba95f6535a98`  
		Last Modified: Sat, 04 Nov 2017 11:58:09 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95785b88ca8822903609d4912df09c6ae0866313da1f6cfeb3a68b0d3bf2a14f`  
		Last Modified: Sat, 04 Nov 2017 11:58:08 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5d79392cfa03a637072ea2c7c9fd7f363ba23e35d7ba5aa9cadcb39c4c00a4`  
		Last Modified: Tue, 28 Nov 2017 01:32:24 GMT  
		Size: 12.2 MB (12213532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce990b46e2b7cbb5e337d8de5e25aa1585f68394fc7c7f9a93bde23cd7476cf`  
		Last Modified: Tue, 28 Nov 2017 01:32:20 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9295d55ad082cb541479f0e575afffe54d7c4224875f0659aa39434dfea09168`  
		Last Modified: Tue, 28 Nov 2017 01:32:24 GMT  
		Size: 15.7 MB (15731965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e0418a94a2d6c5f2f51a962f22df3f65dac7f4bd7b9bc362a19434f8a2a72e`  
		Last Modified: Tue, 28 Nov 2017 01:32:20 GMT  
		Size: 2.2 KB (2159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51880dfcf2951a12edda11144d30f3ce5dbdb2233e0e007bcca26b69d00c9b4`  
		Last Modified: Tue, 28 Nov 2017 01:32:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a76446bd9b4840685894e60f43ae4cdd4d2336a2afe7c7a2eafc89acd673cd`  
		Last Modified: Tue, 28 Nov 2017 01:32:20 GMT  
		Size: 7.7 KB (7668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c770c801d2cabb066ef53f2e3bc8eb77cfe6b07c3043e48b24b97d11c4e6bf3`  
		Last Modified: Tue, 28 Nov 2017 02:29:43 GMT  
		Size: 611.9 KB (611863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef075a4ab07acdcf71929f3aa9303acfdb7ef0138d807ba94f43ef2994f7834f`  
		Last Modified: Tue, 28 Nov 2017 02:29:42 GMT  
		Size: 831.0 KB (830983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efaf08d48eced4fb5ef87de67fdae9a1471507b4996b87ec88d405dbd5b6852`  
		Last Modified: Tue, 28 Nov 2017 02:29:41 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1475f74b102140bc81ac54848bf2345fd44515a25da15ec20d3eb1ed91927cf2`  
		Last Modified: Tue, 28 Nov 2017 02:29:45 GMT  
		Size: 9.5 MB (9471272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c63b4fe3d707d92fa021c1d437b480b2ec8b02289265a9bd6a8faa75f84642d`  
		Last Modified: Tue, 28 Nov 2017 02:29:41 GMT  
		Size: 3.2 KB (3212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
