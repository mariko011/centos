## `php:fpm-alpine`

```console
$ docker pull php@sha256:cdfc3b8c9fbbc1df0eadfb9bcf90321fa8711d2b44beaa804657be7024098244
```

-	Platforms:
	-	linux; amd64

### `php:fpm-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30905659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee61daf5f1f530032e24017dfbad682f3ae8350ae2e2b7281d14e63756be7266`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 25 May 2017 23:31:54 GMT
ADD file:c34582524a7c4fa2ccb67d48efaa6edacff8bc8115a26a511b2385a03f56aa8e in / 
# Thu, 25 May 2017 23:31:55 GMT
CMD ["/bin/sh"]
# Fri, 26 May 2017 14:39:18 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Fri, 26 May 2017 14:39:22 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 26 May 2017 14:39:24 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 26 May 2017 14:39:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 26 May 2017 14:39:26 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 26 May 2017 14:49:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 26 May 2017 14:49:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 26 May 2017 14:49:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 26 May 2017 14:49:59 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 26 May 2017 14:50:00 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 26 May 2017 14:50:00 GMT
ENV PHP_VERSION=7.1.5
# Fri, 26 May 2017 14:50:01 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Fri, 26 May 2017 14:50:02 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Fri, 26 May 2017 14:50:10 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 26 May 2017 14:50:11 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 26 May 2017 14:53:48 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 26 May 2017 14:53:50 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 26 May 2017 14:53:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 26 May 2017 14:53:52 GMT
WORKDIR /var/www/html
# Fri, 26 May 2017 14:53:53 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 26 May 2017 14:53:54 GMT
EXPOSE 9000/tcp
# Fri, 26 May 2017 14:53:55 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:486a8e636d6250a74d15cdb3582f4dd198271a80118f5a2f59de3d9cd8433611`  
		Last Modified: Thu, 25 May 2017 23:35:56 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41812ec2cb654115fad6678a89cace781f0cf539e2316efe2005438e428db6df`  
		Last Modified: Fri, 26 May 2017 15:25:24 GMT  
		Size: 1.1 MB (1081315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e095add676785194f9c4d180e50bdeb9eac882406547f0428cf26be373adff6b`  
		Last Modified: Fri, 26 May 2017 15:25:21 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286dbb174b8d2bb248dcfc542bb4edd08165b8fd2d01f9fbf7ff36c68c8ee43c`  
		Last Modified: Fri, 26 May 2017 15:25:21 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090454f070b4b91912442c0a37fa40b39d22cefaa1a6c14af082b3f6223ed5cb`  
		Last Modified: Fri, 26 May 2017 15:30:06 GMT  
		Size: 13.0 MB (12971396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1b6188ee697e4c09a3899b5d658b0667d30e49899e73a96b2d962c7f119b1b`  
		Last Modified: Fri, 26 May 2017 15:30:07 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992b8139304768449e0f4b87b574be6b2509a8da6730c006ebc66ca078c80f58`  
		Last Modified: Fri, 26 May 2017 15:30:07 GMT  
		Size: 14.5 MB (14458059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:208ab362ff604368937a67b05b20e6c44de6cc920d3b95cec0ff843f241ce706`  
		Last Modified: Fri, 26 May 2017 15:30:05 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68849ee28dc39f944523b08d12612305985adda38d1191304eb93a7a916b3729`  
		Last Modified: Fri, 26 May 2017 15:30:05 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ceb2ad8fc8f66ec8d53fa96941b85fc5e17ad88d9a4fc752f814533aad9ceb`  
		Last Modified: Fri, 26 May 2017 15:30:06 GMT  
		Size: 7.7 KB (7662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
