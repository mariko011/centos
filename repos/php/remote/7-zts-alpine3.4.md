## `php:7-zts-alpine3.4`

```console
$ docker pull php@sha256:e42413e7c4cd64d7070420e9cb535027c24e434d5dbc67107fc762fe38a2ed2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php:7-zts-alpine3.4` - linux; amd64

```console
$ docker pull php@sha256:ef4dd2469f93b47262218c7669fa960b0f95699454eeef16537f068b10c11e6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26745554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46531cfee728552e117d6c29ac0de65ca9c6cbf8da38b982d11bc4fc408c3214`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

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
# Sat, 04 Nov 2017 10:41:07 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts
# Sat, 04 Nov 2017 10:41:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:41:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:41:09 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 04 Nov 2017 10:41:09 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Sat, 04 Nov 2017 10:41:09 GMT
ENV PHP_VERSION=7.1.11
# Sat, 04 Nov 2017 10:41:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.11.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.11.tar.xz.asc/from/this/mirror
# Sat, 04 Nov 2017 10:41:10 GMT
ENV PHP_SHA256=074093e9d7d21afedc5106904218a80a47b854abe368d2728ed22184c884893e PHP_MD5=
# Sat, 04 Nov 2017 10:41:28 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 04 Nov 2017 10:41:29 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 04 Nov 2017 10:46:12 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 04 Nov 2017 10:46:13 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Sat, 04 Nov 2017 10:46:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 04 Nov 2017 10:46:13 GMT
CMD ["php" "-a"]
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
	-	`sha256:280f7011797edacdbf6018112e9847de56703e4b7a88078f58d57383732228c1`  
		Last Modified: Sat, 04 Nov 2017 12:00:41 GMT  
		Size: 12.2 MB (12188668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1d3444a68f855fd8fde82948a35f47e9881249d8e792db791d498254ae8ffc`  
		Last Modified: Sat, 04 Nov 2017 12:00:38 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e10178cab2a363f8d50c492c0f3b40422430b9ca8367eeb09b800665522923`  
		Last Modified: Sat, 04 Nov 2017 12:00:43 GMT  
		Size: 10.9 MB (10858839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284b85e0583880d88fa557b923423f575ac7c70f7053446ab71cd46acd581457`  
		Last Modified: Sat, 04 Nov 2017 12:00:38 GMT  
		Size: 2.2 KB (2161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
