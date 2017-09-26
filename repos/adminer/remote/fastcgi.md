## `adminer:fastcgi`

```console
$ docker pull adminer@sha256:c2313c1e390eb3d17dc03c7a7c7e5bcdc777e132b4093dbd3b9be8dc91b07c13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:fastcgi` - linux; amd64

```console
$ docker pull adminer@sha256:b08c9d1725356f252021c59ec088277a58bbdf01c4eec2fdea516135ecb8eae3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31318237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d52559131a218783d8bced270bd79b592efcb5b743f8cf6d8154de38c0a301f`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
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
# Fri, 15 Sep 2017 00:47:21 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 15 Sep 2017 00:47:21 GMT
ENV PHP_VERSION=7.0.23
# Fri, 15 Sep 2017 00:47:21 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 00:47:21 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Fri, 15 Sep 2017 00:47:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 15 Sep 2017 00:47:33 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 26 Sep 2017 02:09:06 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 26 Sep 2017 02:11:25 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 26 Sep 2017 02:11:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 26 Sep 2017 02:11:25 GMT
WORKDIR /var/www/html
# Tue, 26 Sep 2017 02:11:26 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 26 Sep 2017 02:11:26 GMT
EXPOSE 9000/tcp
# Tue, 26 Sep 2017 02:11:26 GMT
CMD ["php-fpm"]
# Tue, 26 Sep 2017 03:02:12 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Tue, 26 Sep 2017 03:02:16 GMT
RUN apk add --no-cache libpq
# Tue, 26 Sep 2017 03:02:34 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Tue, 26 Sep 2017 03:05:44 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Tue, 26 Sep 2017 03:05:44 GMT
ENV ADMINER_VERSION=4.3.1
# Tue, 26 Sep 2017 03:05:44 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Tue, 26 Sep 2017 03:05:44 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Tue, 26 Sep 2017 03:05:47 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Tue, 26 Sep 2017 03:05:51 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Tue, 26 Sep 2017 03:05:51 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 26 Sep 2017 03:05:52 GMT
USER [adminer]
# Tue, 26 Sep 2017 03:05:52 GMT
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
	-	`sha256:582aa00764aca1539e37e52dcaf8f9320dcadd771f16ce9806d2d3b4ba1204f2`  
		Last Modified: Fri, 15 Sep 2017 01:39:40 GMT  
		Size: 12.1 MB (12126600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f2e2294e58415776f341bb97b8d1f620130de4c2794e20a8db1da28d08ffc0`  
		Last Modified: Fri, 15 Sep 2017 01:39:34 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d412f409baa8904214d9a3612e6b0a502ff5d837482f8285e61eed845a2d87`  
		Last Modified: Tue, 26 Sep 2017 02:33:47 GMT  
		Size: 14.1 MB (14055354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec93d1b4c2eeef134a57d4a1927ec934b56908a66cad2daf021a2230e3b56d2b`  
		Last Modified: Tue, 26 Sep 2017 02:33:42 GMT  
		Size: 2.2 KB (2162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3389ede3f588640901242cea5c071721aa08ed4068255797c5d68dd83334208a`  
		Last Modified: Tue, 26 Sep 2017 02:33:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700d225cac1d8959f81bb91a5bb80d870e3ec5f7bd0f5c2c036352d33d9a38b9`  
		Last Modified: Tue, 26 Sep 2017 02:33:42 GMT  
		Size: 7.7 KB (7664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b481e6cd481d807fe37ba46319705de65d6841b5cb867165465e0a916052b3f4`  
		Last Modified: Tue, 26 Sep 2017 03:07:08 GMT  
		Size: 1.4 KB (1391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a8ec5358a1ad401e02c5f44d7e61a44933068dd11c2d9be553281cf0e35838`  
		Last Modified: Tue, 26 Sep 2017 03:07:06 GMT  
		Size: 1.2 MB (1210689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95620416637e0862dd9a2726180ed518a6993c5832ed94d4fcf0339b210a7ceb`  
		Last Modified: Tue, 26 Sep 2017 03:07:07 GMT  
		Size: 118.0 KB (118038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6045d8e0fba3d3e62802c4b43949b334bc9059c750e02276791f980ed7b4e12`  
		Last Modified: Tue, 26 Sep 2017 03:07:06 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:361c78bc64e5046573a0289109e54be2a0350b289e063b50528fe663ef65e1bc`  
		Last Modified: Tue, 26 Sep 2017 03:07:06 GMT  
		Size: 319.1 KB (319106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c66f2692a3a1fb71c466651f657c8385eea3bc748a247e799d171a3afb97f5`  
		Last Modified: Tue, 26 Sep 2017 03:07:06 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
