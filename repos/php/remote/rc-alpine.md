## `php:rc-alpine`

```console
$ docker pull php@sha256:69fbe314d69816ac23c1bdeb06dcd1da1354e22826bb5707fbb9a2402dba7143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php:rc-alpine` - linux; amd64

```console
$ docker pull php@sha256:152f1a7f59aa1c88cecb4636f8914835e6033a083a8b6c524ea8c02eb8396571
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27751271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7f6169e2a75bc0e6faddea9c47813d993badfcee54dd48c67b077b9f3c65bf8`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 23:34:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Thu, 14 Sep 2017 23:34:48 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Thu, 14 Sep 2017 23:34:49 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 14 Sep 2017 23:34:49 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 14 Sep 2017 23:34:50 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 14 Sep 2017 23:34:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 14 Sep 2017 23:34:51 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 14 Sep 2017 23:34:51 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 14 Sep 2017 23:34:51 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 15 Sep 2017 20:28:40 GMT
ENV PHP_VERSION=7.2.0RC2
# Fri, 15 Sep 2017 20:28:40 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC2.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC2.tar.xz.asc
# Fri, 15 Sep 2017 20:28:41 GMT
ENV PHP_SHA256=0406366fcd5be4ee5e76e3c6a4279e04f93a1827a44d27c4f57fbed9e01cd281 PHP_MD5=
# Tue, 26 Sep 2017 01:18:59 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 26 Sep 2017 01:18:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:24:44 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 26 Sep 2017 01:26:50 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:26:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 26 Sep 2017 01:26:50 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c3b7866ce6be9e2abd9bab29ae7ffe2b24bc82531475e119559b7f23ed29b0`  
		Last Modified: Fri, 15 Sep 2017 01:33:50 GMT  
		Size: 1.1 MB (1083304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070470d9b259c70bf6fdf285920c3bab371489d9ccd5f3cd3ed843492d30cda7`  
		Last Modified: Fri, 15 Sep 2017 01:33:49 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede8f7cb607e46f6584b50e12836db3342ab97eea10f39c2ebc698a666c4c8cd`  
		Last Modified: Fri, 15 Sep 2017 01:33:47 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52bf4e22952c2b8e327e700942a60c0f1388a373dfe70245c5576e92a14e6df9`  
		Last Modified: Tue, 26 Sep 2017 02:30:51 GMT  
		Size: 12.2 MB (12225581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fe5b7b59454389ab3698ad704aca045848a09fd674645110541341b5f3f952`  
		Last Modified: Tue, 26 Sep 2017 02:30:50 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6989f7637812a7cec41a3f579fcbd0010af631b4ba2f40d458a183721e9bee`  
		Last Modified: Tue, 26 Sep 2017 02:30:55 GMT  
		Size: 12.4 MB (12447904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73636dbce5ab6f4ad428e89fc9d7b71a3a342816368a456c21da577d9b4ab6c`  
		Last Modified: Tue, 26 Sep 2017 02:30:50 GMT  
		Size: 2.2 KB (2160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
