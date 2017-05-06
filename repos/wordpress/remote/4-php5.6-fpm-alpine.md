## `wordpress:4-php5.6-fpm-alpine`

```console
$ docker pull wordpress@sha256:6f4df02970def1c9a850ab8d396a8ba72245f02cf66c094bbb14d142a961bf98
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php5.6-fpm-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35201760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd44d580cc737168b19877b2bf3dc62028a2a40f51a5e55dbf655022293e4edc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:42:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 22:42:36 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 22:42:36 GMT
ENV PHP_VERSION=5.6.30
# Fri, 03 Mar 2017 22:42:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 22:42:37 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 03 Mar 2017 22:42:42 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 22:42:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:45:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 05 May 2017 20:44:16 GMT
COPY multi:6f0472135e558ecb6e8d4994f3ad7153def074d5ddc522114a95b3132d9e14ae in /usr/local/bin/ 
# Fri, 05 May 2017 20:44:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 05 May 2017 20:44:18 GMT
WORKDIR /var/www/html
# Fri, 05 May 2017 20:44:19 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 05 May 2017 20:44:20 GMT
EXPOSE 9000/tcp
# Fri, 05 May 2017 20:44:21 GMT
CMD ["php-fpm"]
# Sat, 06 May 2017 00:02:46 GMT
RUN apk add --no-cache 		bash 		sed
# Sat, 06 May 2017 00:03:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 06 May 2017 00:03:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 06 May 2017 00:03:30 GMT
VOLUME [/var/www/html]
# Sat, 06 May 2017 00:03:31 GMT
ENV WORDPRESS_VERSION=4.7.4
# Sat, 06 May 2017 00:03:32 GMT
ENV WORDPRESS_SHA1=153592ccbb838cafa1220de9174ec965df2e9e1a
# Sat, 06 May 2017 00:03:34 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 06 May 2017 00:03:35 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Sat, 06 May 2017 00:03:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 May 2017 00:03:37 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7770354fce78faaac6e3d29cc16167871d16e08bc01d3736afde8dea9f31de`  
		Last Modified: Sat, 04 Mar 2017 06:18:35 GMT  
		Size: 12.6 MB (12624834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be277856d20038f1ef7742741ad126be133ab9d6439c8fa3b1ea63a1e4c5e8a3`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffa80d6c3a18602760fdedd728ab24a46c25e046757707b2fd2f0d22623df74`  
		Last Modified: Sat, 04 Mar 2017 06:18:46 GMT  
		Size: 10.0 MB (9960478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d615a7ed4e6ebac68f335342e1bb2a542470668e8199b4bc3c9837f33ad7f84`  
		Last Modified: Fri, 05 May 2017 21:07:23 GMT  
		Size: 2.0 KB (2031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6776dce339a459ef7e3c082057ca2ae5f15e54e7f77dc5581b6c84056ded511a`  
		Last Modified: Fri, 05 May 2017 21:07:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1474b932caff5c4226998d7f10824ef9dae7dd371252f301585a2194763013c8`  
		Last Modified: Fri, 05 May 2017 21:07:23 GMT  
		Size: 7.6 KB (7593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198f55bf5a252a277a7c6092be9c96bed8afd56521b54b2b0f4dcf3c5bd12b5f`  
		Last Modified: Sat, 06 May 2017 00:35:54 GMT  
		Size: 610.2 KB (610176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e636f4bfd77313afb3f843eb5667f1e6c5403acf7a51ad59ac5cdf8d31cce5e`  
		Last Modified: Sat, 06 May 2017 00:35:54 GMT  
		Size: 731.7 KB (731717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e872553ea01edc1c35ea52f1180ceecd2c10e87d80c2dad792d1f22a9dfba90`  
		Last Modified: Sat, 06 May 2017 00:35:53 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff11a322c14f7bb718956259bf6330eca42e3e7d883db15f34c4483f8b4a33cb`  
		Last Modified: Sat, 06 May 2017 00:35:55 GMT  
		Size: 7.9 MB (7886459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfce9b601607af2e7186eedf14c8fcf3865a6033667dfce190b2fe36a820fad`  
		Last Modified: Sat, 06 May 2017 00:35:54 GMT  
		Size: 3.1 KB (3137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
