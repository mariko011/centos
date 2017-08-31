## `php:rc-fpm-alpine`

```console
$ docker pull php@sha256:12e16164ed520dafb09fb2ff0b9c0cc2a9c88ce442b0690b14dd2781de644120
```

-	Platforms:
	-	linux; amd64

### `php:rc-fpm-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32239233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9558de5fe301de2a00580a6b18cdae368c4b41ec02d2b39083b9f67a93da5616`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Thu, 13 Jul 2017 16:49:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Thu, 13 Jul 2017 16:49:51 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Thu, 13 Jul 2017 16:50:03 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 13 Jul 2017 16:50:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 13 Jul 2017 16:50:17 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 13 Jul 2017 17:12:04 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 13 Jul 2017 17:12:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 13 Jul 2017 17:12:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 13 Jul 2017 17:12:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 13 Jul 2017 17:12:07 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 31 Aug 2017 18:27:15 GMT
ENV PHP_VERSION=7.2.0RC1
# Thu, 31 Aug 2017 18:27:15 GMT
ENV PHP_URL=https://downloads.php.net/~remi/php-7.2.0RC1.tar.xz PHP_ASC_URL=https://downloads.php.net/~remi/php-7.2.0RC1.tar.xz.asc
# Thu, 31 Aug 2017 18:27:16 GMT
ENV PHP_SHA256=04f68d9accb60e56adecc34a80b84bde16edb255a13eef701ea2d6c2b13dc15b PHP_MD5=
# Thu, 31 Aug 2017 18:27:23 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 31 Aug 2017 18:27:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 31 Aug 2017 18:33:35 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 31 Aug 2017 18:33:36 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Thu, 31 Aug 2017 18:33:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 Aug 2017 18:33:37 GMT
WORKDIR /var/www/html
# Thu, 31 Aug 2017 18:33:38 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 31 Aug 2017 18:33:38 GMT
EXPOSE 9000/tcp
# Thu, 31 Aug 2017 18:33:39 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7912273bbdfa0b4768d6b6aa4229323b0f27e44553a9450fed8059a3b7da94e`  
		Last Modified: Thu, 13 Jul 2017 18:58:16 GMT  
		Size: 1.1 MB (1081518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac4d095e297d2d3b6ef3b780c647358caa8aff1c2fe3bc38f1323016445acf1`  
		Last Modified: Thu, 13 Jul 2017 18:58:14 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad1a82a0c541fe98ec4c80236a682cd9dfd3139a72dcd010be5087b1bf4e211`  
		Last Modified: Thu, 13 Jul 2017 18:58:14 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605ed58c9a934b5805d2a86524ebd66a4e785307bc433f5ca583d8afc91ed4bb`  
		Last Modified: Thu, 31 Aug 2017 19:16:11 GMT  
		Size: 12.1 MB (12144943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6ddc0b25a61a2ca8c343d61e5ce7f84f33f32acc3284f4ed195b6e1f5b4373`  
		Last Modified: Thu, 31 Aug 2017 19:16:09 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc547ea3525567f82d6494ee3eaea18b9d4153c781902a454563d2e7729c2379`  
		Last Modified: Thu, 31 Aug 2017 19:16:12 GMT  
		Size: 17.0 MB (17010543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1367cf37ad9a626b4bbe0d205c4826b2e4c421a42a5a6f6e5b3726dff7f357e2`  
		Last Modified: Thu, 31 Aug 2017 19:16:09 GMT  
		Size: 2.1 KB (2111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3142827fcf8fde13c241f0b9880a0a1c53282009ebab5e5fcf421fcf9dae3ad`  
		Last Modified: Thu, 31 Aug 2017 19:16:09 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1133a68b540d217ad5b86b19f2f02100094a79e248bd07a1c9301d892681f826`  
		Last Modified: Thu, 31 Aug 2017 19:16:09 GMT  
		Size: 7.7 KB (7688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
