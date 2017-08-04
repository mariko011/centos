## `php:rc-zts-alpine`

```console
$ docker pull php@sha256:a73708b411f16ff745824b1ab9a11809d3edeb934c663eb3e6208634a6e0eec3
```

-	Platforms:
	-	linux; amd64

### `php:rc-zts-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28260751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fbdb19eedc15476d3f86ea48fee10684b80f7dea0de19909227e7ed31f482a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

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
# Thu, 13 Jul 2017 17:21:44 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts
# Thu, 13 Jul 2017 17:21:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 13 Jul 2017 17:21:45 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 13 Jul 2017 17:21:45 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 13 Jul 2017 17:21:45 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 04 Aug 2017 18:37:59 GMT
ENV PHP_VERSION=7.2.0beta2
# Fri, 04 Aug 2017 18:37:59 GMT
ENV PHP_URL=http://downloads.php.net/~pollita/php-7.2.0beta2.tar.xz PHP_ASC_URL=http://downloads.php.net/~pollita/php-7.2.0beta2.tar.xz.asc
# Fri, 04 Aug 2017 18:37:59 GMT
ENV PHP_SHA256=0e2ac8e68c6fa92e9e14c610d78e162a711ba0e83987ecc9d02a6b898616c92d PHP_MD5=
# Fri, 04 Aug 2017 18:38:16 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 04 Aug 2017 18:38:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:43:20 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 04 Aug 2017 18:43:23 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:43:23 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 04 Aug 2017 18:43:23 GMT
CMD ["php" "-a"]
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
	-	`sha256:03bca230659d0f59918d096a4fa0fb684495098da04cd1c7b1fa4fbd2b29f818`  
		Last Modified: Fri, 04 Aug 2017 19:19:54 GMT  
		Size: 12.2 MB (12195981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10fdc3cacc02d780e343893494fc0c1377c071044b1c3fb297319c6ecf332cef`  
		Last Modified: Fri, 04 Aug 2017 19:19:53 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e3a54de981ecc3ca231f6dcffe8db45c7f057e11cd3dbce286a5d53f7b1dcc`  
		Last Modified: Fri, 04 Aug 2017 19:19:57 GMT  
		Size: 13.0 MB (12988841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb1186aefebd7f6930167cefe8b691d7eaafd42df81e9188ba55b25f29a27b0`  
		Last Modified: Fri, 04 Aug 2017 19:19:53 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
