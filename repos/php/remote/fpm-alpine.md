## `php:fpm-alpine`

```console
$ docker pull php@sha256:fad1a28187248d277c43cb24ca052423f6ba41c17d4ee895359d8476cd639186
```

-	Platforms:
	-	linux; amd64

### `php:fpm-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (30028117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1753bc88e8e62d743eab7cb8a7bc64093c06b5452f64dce3d1789d036448dbe2`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:41:12 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 20 Sep 2016 00:41:14 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 20 Sep 2016 00:41:15 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 20 Sep 2016 00:41:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 20 Sep 2016 00:41:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 20 Sep 2016 00:58:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 20 Sep 2016 01:23:28 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 20 Sep 2016 01:23:28 GMT
ENV PHP_VERSION=7.0.11
# Tue, 20 Sep 2016 01:23:28 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Tue, 20 Sep 2016 01:23:29 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Tue, 20 Sep 2016 01:23:37 GMT
RUN set -xe 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 	&& mkdir -p /usr/src 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME" 	&& apk del .fetch-deps
# Tue, 20 Sep 2016 01:23:38 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 20 Sep 2016 01:32:46 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 20 Sep 2016 01:32:47 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 20 Sep 2016 01:32:48 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 01:32:49 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 20 Sep 2016 01:32:49 GMT
EXPOSE 9000/tcp
# Tue, 20 Sep 2016 01:32:49 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e905669d79189807383cde88aa717d760d971d2dd242141a849401cf22bc69`  
		Last Modified: Tue, 20 Sep 2016 00:50:00 GMT  
		Size: 1.0 MB (1048132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bbacb34662bc058f4276ec056feb7dce2a89c9027790a2adf0de68d1e002daf`  
		Last Modified: Tue, 20 Sep 2016 00:49:59 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2cdd21a06ad3ec7f1aec5a1fdcfe784c594da32ef92c45e9d7a4e9577ddff2e`  
		Last Modified: Tue, 20 Sep 2016 00:49:57 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0b4a2de187fada26d554bbbfbdb69fe171889b03deb8c26f67b39748e63323`  
		Last Modified: Tue, 20 Sep 2016 01:33:06 GMT  
		Size: 12.3 MB (12277044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7887db5abe3335441d245a010c57d6cbf65f8bf7cac799bad65c8453d04e9354`  
		Last Modified: Tue, 20 Sep 2016 01:32:58 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b201899ca2e11ccbe6cc9e2955dfdff260126bd684f375a0b7fcc65dbd1610e7`  
		Last Modified: Tue, 20 Sep 2016 01:33:05 GMT  
		Size: 14.4 MB (14380343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546edea80662313ae3b08f1375cd0549b5ace7a5ef816466b38307da4d3cc4fb`  
		Last Modified: Tue, 20 Sep 2016 01:32:58 GMT  
		Size: 1.8 KB (1823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84811dd6d66f9232fb2555d3aa5634a305ce4fffa503f7d5959713ac31e4154`  
		Last Modified: Tue, 20 Sep 2016 01:32:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209aca6562aec6a88cf8e0cb263635e210d74ab1026edee240b66c4ff2d0f4e6`  
		Last Modified: Tue, 20 Sep 2016 01:32:59 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
