## `php:5-fpm-alpine`

```console
$ docker pull php@sha256:165d38177cf3c326dca102c364c2fed6f9213ef00b0293dbd737744fe91d39bf
```

-	Platforms:
	-	linux; amd64

### `php:5-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26555436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be61692625c08fd7aecaea31e8967de260ca64136f1d1dfc58484824cd3715e`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 16:38:39 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 30 Aug 2016 16:38:40 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 30 Aug 2016 16:38:41 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 30 Aug 2016 16:38:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 30 Aug 2016 16:38:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 30 Aug 2016 16:49:03 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 30 Aug 2016 17:13:56 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 30 Aug 2016 17:13:56 GMT
ENV PHP_VERSION=5.6.25
# Tue, 30 Aug 2016 17:13:56 GMT
ENV PHP_FILENAME=php-5.6.25.tar.xz
# Tue, 30 Aug 2016 17:13:57 GMT
ENV PHP_SHA256=7535cd6e20040ccec4594cc386c6f15c3f2c88f24163294a31068cf7dfe7f644
# Tue, 30 Aug 2016 17:14:04 GMT
RUN set -xe 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 	&& mkdir -p /usr/src 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME" 	&& apk del .fetch-deps
# Tue, 30 Aug 2016 17:14:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 30 Aug 2016 17:17:42 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 30 Aug 2016 17:17:43 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 30 Aug 2016 17:17:43 GMT
WORKDIR /var/www/html
# Tue, 30 Aug 2016 17:17:44 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 30 Aug 2016 17:17:44 GMT
EXPOSE 9000/tcp
# Tue, 30 Aug 2016 17:17:45 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e161e9d6929b9a7736e565c6bb73c386617d410c1acb38b1f444b51c2d623b4`  
		Last Modified: Wed, 07 Sep 2016 18:55:33 GMT  
		Size: 1.0 MB (1047590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d196bef415b6de51bf0b60843ff47d9875d6cbbdd8d12a54c61d3849bdefae4`  
		Last Modified: Wed, 07 Sep 2016 18:55:33 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b12a7178d880fd91653abf89153c0eaf2372868943c2f4fc2346677b424a56`  
		Last Modified: Wed, 07 Sep 2016 18:55:30 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a21f9b4234cdd1e470127274d46c6329f079c4f2e127e98b5ba25991c74157`  
		Last Modified: Wed, 07 Sep 2016 19:05:27 GMT  
		Size: 12.4 MB (12423804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b144fcd18198a0b7491c266896034325da1430ac837a763d6acae3a24c9c46a2`  
		Last Modified: Wed, 07 Sep 2016 19:05:23 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c79e28365571a0994698bd7e7ebb6586c79f9ea7328fc6fd777154e7212ccb`  
		Last Modified: Wed, 07 Sep 2016 19:05:30 GMT  
		Size: 10.8 MB (10762267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90493e978ba0ed408d736abafc8d77fb55e4b5cd4d652f4dd2b1f3237578a73`  
		Last Modified: Wed, 07 Sep 2016 19:05:22 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee338daca955bc1e2409fec8d5848ef7f0c1f64f42ba7942451d6e6d9c23ae9`  
		Last Modified: Wed, 07 Sep 2016 19:05:24 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971c4e10e2d1a40f51a8cd26d609283b81231c378fd9ca0ce35cadccc865b822`  
		Last Modified: Wed, 07 Sep 2016 19:05:22 GMT  
		Size: 7.6 KB (7615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
