## `php:7-zts-alpine`

```console
$ docker pull php@sha256:e4c43567a1a480a3126a6f44998ee702a2d071b8fb4e43d38a49fca71d5d4285
```

-	Platforms:
	-	linux; amd64

### `php:7-zts-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27289355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f0b9432b3dc37f39c4ac362b9875b0c20e2269b50e1ffb3799619cc91ec8f9e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 19 Jun 2017 16:54:49 GMT
ADD file:cf1b74f7af8abcfbe58722467970b39b3ef9c8343665ef2d175f058f734a7f6e in / 
# Mon, 19 Jun 2017 16:55:12 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:46:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Mon, 19 Jun 2017 22:46:48 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Mon, 19 Jun 2017 22:46:50 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Mon, 19 Jun 2017 22:46:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Jun 2017 22:46:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Jun 2017 23:11:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts
# Mon, 19 Jun 2017 23:12:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 19 Jun 2017 23:12:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 19 Jun 2017 23:12:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Mon, 19 Jun 2017 23:12:43 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Mon, 19 Jun 2017 23:12:44 GMT
ENV PHP_VERSION=7.1.6
# Mon, 19 Jun 2017 23:13:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 19 Jun 2017 23:13:08 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 19 Jun 2017 23:13:16 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 19 Jun 2017 23:13:37 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Jun 2017 23:17:59 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 19 Jun 2017 23:18:20 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Mon, 19 Jun 2017 23:18:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Jun 2017 23:18:45 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:acb474fa89565f9f79ee5ddaaaad12c59954e2694d005ec120d6b11825bad191`  
		Last Modified: Mon, 19 Jun 2017 17:06:54 GMT  
		Size: 2.4 MB (2385060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dabaad5e9926028cc146660baf944edb2684f3920faf2156ebf44ed92cf44133`  
		Last Modified: Tue, 20 Jun 2017 14:35:02 GMT  
		Size: 1.1 MB (1081308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33401fdb9aa65db74d315ebb85f68ae379f28e026bdbc5b9ce92224bccefc95`  
		Last Modified: Tue, 20 Jun 2017 14:34:59 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad83aa6d5dabea040da9162ce26e4da6e8212756b4f1279068078313bfa16d6`  
		Last Modified: Tue, 20 Jun 2017 14:34:59 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a792d0904e3b8acbe6087637b8f2c41e5a3da8f54fb88ea8f2caeca9cff1c4e8`  
		Last Modified: Tue, 20 Jun 2017 14:49:22 GMT  
		Size: 13.0 MB (12982383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af7a32ddcc70ecd46efe473fa6f2cd1d9d1a46c4766a8623a630645d9f53215`  
		Last Modified: Tue, 20 Jun 2017 14:49:20 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6e40b55238cecf54c29020928b55173d8d85e183ecf60b7f4402fc295bccc3`  
		Last Modified: Tue, 20 Jun 2017 14:49:25 GMT  
		Size: 10.8 MB (10836568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5601eeb8107f5db11553290d6d4a4a965f4878b0b067bd468781dcaed99ae3`  
		Last Modified: Tue, 20 Jun 2017 14:49:20 GMT  
		Size: 2.1 KB (2109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
