## `wordpress:fpm-alpine`

```console
$ docker pull wordpress@sha256:afeed913afeaee486c2ea36dd00331306aae6ef64879f54b7eb80662eb5677cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `wordpress:fpm-alpine` - linux; amd64

```console
$ docker pull wordpress@sha256:02312768a729871bed0d8ecd74340c0b4846401338bb8a932256859340ba2f9a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35472230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e2868416339a8c224bb9540c3a41fa34b7044630f324fb5f0d8ff3d368ef18c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Fri, 15 Sep 2017 00:03:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Fri, 15 Sep 2017 00:03:15 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 15 Sep 2017 00:03:15 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 15 Sep 2017 00:03:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 15 Sep 2017 00:03:18 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 15 Sep 2017 00:16:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 15 Sep 2017 00:16:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:16:32 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:16:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 15 Sep 2017 01:18:06 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 15 Sep 2017 01:18:06 GMT
ENV PHP_VERSION=5.6.31
# Fri, 15 Sep 2017 01:18:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 01:18:06 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Fri, 15 Sep 2017 01:18:23 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 15 Sep 2017 01:18:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 15 Sep 2017 01:22:00 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 20:09:58 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:09:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 20:09:59 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 20:09:59 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 21 Sep 2017 20:10:02 GMT
EXPOSE 9000/tcp
# Thu, 21 Sep 2017 20:10:02 GMT
CMD ["php-fpm"]
# Thu, 21 Sep 2017 21:05:45 GMT
RUN apk add --no-cache 		bash 		sed
# Tue, 26 Sep 2017 01:39:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 26 Sep 2017 01:39:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 26 Sep 2017 01:39:45 GMT
VOLUME [/var/www/html]
# Tue, 26 Sep 2017 01:39:45 GMT
ENV WORDPRESS_VERSION=4.8.2
# Tue, 26 Sep 2017 01:39:45 GMT
ENV WORDPRESS_SHA1=a99115b3b6d6d7a1eb6c5617d4e8e704ed50f450
# Tue, 26 Sep 2017 01:39:48 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 26 Sep 2017 01:39:48 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:39:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 01:39:49 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d492840e685267737473e580fa6f2db2646efbc5848a63b81bc8997307d7f4`  
		Last Modified: Fri, 15 Sep 2017 01:35:16 GMT  
		Size: 1.1 MB (1088226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac280ce7349e48c4493554b99b2c7cfe6b12b3d2b8d23eaef70a74c136bb527`  
		Last Modified: Fri, 15 Sep 2017 01:35:16 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90a95acfcd76e204e7bcc540738c88476e2046bfc3c773813239c36bc5503ba`  
		Last Modified: Fri, 15 Sep 2017 01:35:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad81b21ab15ec3004a421d21e384ed7341a890832fa12c13c2cb07a56f1bb4e`  
		Last Modified: Fri, 15 Sep 2017 01:42:28 GMT  
		Size: 12.6 MB (12634897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca0b40199422a3b2729982d05fc50fcd9ee2518435091b5f5dd9498f6466838`  
		Last Modified: Fri, 15 Sep 2017 01:42:25 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3eb8d898f0fa16353645df260ef2f433bd2ce04501a2cc852a74ca1e1935c9`  
		Last Modified: Fri, 15 Sep 2017 01:42:29 GMT  
		Size: 10.0 MB (9992659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073a3af8c9cabb7812fe4bbf73aa723a4e1f14bf6b8f08adf2bd23574e580600`  
		Last Modified: Thu, 21 Sep 2017 20:21:59 GMT  
		Size: 2.2 KB (2160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9eea15132cbea3399fe4b487a1963c8847d982b61d635218a9e31f5c3624ffc`  
		Last Modified: Thu, 21 Sep 2017 20:21:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca041b7fb8c8c229b9048fff52075efcb7e222f5cc7cabcad2f19b9a52cf1ff`  
		Last Modified: Thu, 21 Sep 2017 20:21:59 GMT  
		Size: 7.6 KB (7607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f620a3805a880f8a9b7ea3e88601c9af4d994ccab3405babed52f6896b19715`  
		Last Modified: Thu, 21 Sep 2017 21:31:19 GMT  
		Size: 610.6 KB (610580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6db4e055df43df94025432df33ba139392821f6bc4899e5cae337c6fc2608e0`  
		Last Modified: Tue, 26 Sep 2017 01:58:47 GMT  
		Size: 732.2 KB (732186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81dbeb27f9a617aac305956b8da763c590e62d883b186c4161b917b8fdede0a`  
		Last Modified: Tue, 26 Sep 2017 01:58:47 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b9797941f82c02fcc84a65de3b252a0af9a242201cd7f2f3e17962f8395cd8`  
		Last Modified: Tue, 26 Sep 2017 01:58:51 GMT  
		Size: 8.0 MB (8013280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daacdf9cff80d501e78b7228e8261168a0df39f79da885dfc7dd2c1c621e59d0`  
		Last Modified: Tue, 26 Sep 2017 01:58:48 GMT  
		Size: 3.2 KB (3214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
