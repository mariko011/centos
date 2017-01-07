## `wordpress:4-php7.1-fpm-alpine`

```console
$ docker pull wordpress@sha256:cca56f58c8e2e872b77ee182a9b0369305e729b556a716189d70eb68c782e9af
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.1-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 MB (39971380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d145d13f20636e0f0dc6b94ebcc786d25d39ef1ca03582b1e44dfc0efbd5d087`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 27 Dec 2016 19:31:22 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0
# Tue, 27 Dec 2016 19:31:23 GMT
ENV PHP_VERSION=7.1.0
# Tue, 27 Dec 2016 19:31:24 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.0.tar.xz.asc/from/this/mirror
# Tue, 27 Dec 2016 19:31:24 GMT
ENV PHP_SHA256=a810b3f29c21407c24caa88f50649320d20ba6892ae1923132598b8a0ca145b6 PHP_MD5=cf36039303c47f493100afea522a8f53
# Tue, 27 Dec 2016 19:31:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 27 Dec 2016 19:31:33 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 27 Dec 2016 19:43:18 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 27 Dec 2016 19:43:19 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 27 Dec 2016 19:43:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 27 Dec 2016 19:43:20 GMT
WORKDIR /var/www/html
# Tue, 27 Dec 2016 19:43:21 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 27 Dec 2016 19:43:21 GMT
EXPOSE 9000/tcp
# Tue, 27 Dec 2016 19:43:22 GMT
CMD ["php-fpm"]
# Fri, 06 Jan 2017 23:59:41 GMT
RUN apk add --no-cache 		bash 		sed
# Sat, 07 Jan 2017 00:00:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 07 Jan 2017 00:00:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 07 Jan 2017 00:00:25 GMT
VOLUME [/var/www/html]
# Sat, 07 Jan 2017 00:00:25 GMT
ENV WORDPRESS_VERSION=4.7
# Sat, 07 Jan 2017 00:00:26 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Sat, 07 Jan 2017 00:00:29 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 07 Jan 2017 00:00:29 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Sat, 07 Jan 2017 00:00:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jan 2017 00:00:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6956a7b2abf1a50876a52967908aafd913c40ad7dc845ce563ec7cc569da483`  
		Last Modified: Tue, 27 Dec 2016 21:13:42 GMT  
		Size: 13.0 MB (12966713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bffb57e68841aeb139e518363940f0c96bb1625088782c0e7b4a681a82832a7`  
		Last Modified: Tue, 27 Dec 2016 21:13:37 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b5f9da4710ab74b585931f8cbc013c86e843dfde1f3d3093489874e1053842`  
		Last Modified: Tue, 27 Dec 2016 21:13:43 GMT  
		Size: 14.4 MB (14409719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d318698f1394bdda6688eacead181b708c6d5a232cac1e018415fddd0014b9`  
		Last Modified: Tue, 27 Dec 2016 21:13:37 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235a8e34c240ea9b983efdfea10342b0e73eea4c433620dbb65b9f4d8dac7e26`  
		Last Modified: Tue, 27 Dec 2016 21:13:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c1c986ead2b391ea306fe8c76ab5e97cdf35d74d053bdcca07a0ff6b572a51`  
		Last Modified: Tue, 27 Dec 2016 21:13:36 GMT  
		Size: 7.7 KB (7684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8f5af12e299a3d73e898d86945c552ee6bcdfe9be70169c4f98c5cb389fc7d`  
		Last Modified: Sat, 07 Jan 2017 00:15:19 GMT  
		Size: 590.0 KB (589973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a1f2adebd143cfe97a4080465bdbd1f3601d7a0da1c8b288dc91b403c73e3f`  
		Last Modified: Sat, 07 Jan 2017 00:15:20 GMT  
		Size: 806.4 KB (806419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827a9e28e39dcd6ef99a8a00c50909bdd3730d8f37ccdd40ee3455ffd62c5bb6`  
		Last Modified: Sat, 07 Jan 2017 00:15:20 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94edd455cc2ac438dfb76e73831ae9b42d3d36893a22b5fc80aa7e985f98fd1f`  
		Last Modified: Sat, 07 Jan 2017 00:15:23 GMT  
		Size: 7.8 MB (7821951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a4dd45ca28f6a247209fd34b370db7a00741ba689bed90a6a07b2a1d0d3cd92`  
		Last Modified: Sat, 07 Jan 2017 00:15:19 GMT  
		Size: 2.9 KB (2933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
