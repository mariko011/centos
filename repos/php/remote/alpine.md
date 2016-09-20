## `php:alpine`

```console
$ docker pull php@sha256:683dc2967869e9010ef52d73ed4adbac40079068856d3b536c03dfc43b4ad3f1
```

-	Platforms:
	-	linux; amd64

### `php:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26382355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a9dd9c608367f4f52dce6ca87a8488416365887dfa20a9d855760b75b2b104f`
-	Default Command: `["php","-a"]`

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
# Tue, 20 Sep 2016 01:14:22 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 20 Sep 2016 01:14:23 GMT
ENV PHP_VERSION=7.0.11
# Tue, 20 Sep 2016 01:14:23 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Tue, 20 Sep 2016 01:14:23 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Tue, 20 Sep 2016 01:14:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 	&& mkdir -p /usr/src 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME" 	&& apk del .fetch-deps
# Tue, 20 Sep 2016 01:14:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 20 Sep 2016 01:22:33 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 20 Sep 2016 01:22:34 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 20 Sep 2016 01:22:34 GMT
CMD ["php" "-a"]
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
	-	`sha256:2203338db2c2b8ef8d9e4a827977f148ce44ef5d56190c6487a0262b733c7bad`  
		Last Modified: Tue, 20 Sep 2016 01:22:46 GMT  
		Size: 12.3 MB (12277050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5346a7e0a749ac5580b6b4271c89d0b52d3d89e99d6f07fe1b3fe9a7922aea08`  
		Last Modified: Tue, 20 Sep 2016 01:22:45 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5029c8d00c6203d94b4769694c473c303604a5ca471341018b2e70bb0bf999b`  
		Last Modified: Tue, 20 Sep 2016 01:22:50 GMT  
		Size: 10.7 MB (10742377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895ac041c396948592c34c4d45c432344f3dce7510c546269250c8c86180854b`  
		Last Modified: Tue, 20 Sep 2016 01:22:43 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
