## `php:rc-alpine`

```console
$ docker pull php@sha256:df44644ada9a5c7f461859b71bd081e60623b7942a179ef8657795eb1dc47e10
```

-	Platforms:
	-	linux; amd64

### `php:rc-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27840932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f787882f29d271d70917bed4ba42738e28b24976fbbd9e6da613471d1480a090`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 21:17:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 18 Oct 2016 21:17:35 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 18 Oct 2016 21:17:36 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 18 Oct 2016 21:17:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 18 Oct 2016 21:17:37 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 18 Oct 2016 21:17:37 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0
# Tue, 18 Oct 2016 21:17:38 GMT
ENV PHP_VERSION=7.1.0RC3
# Tue, 18 Oct 2016 21:17:38 GMT
ENV PHP_URL=http://downloads.php.net/~davey/php-7.1.0RC3.tar.xz PHP_ASC_URL=http://downloads.php.net/~davey/php-7.1.0RC3.tar.xz.asc
# Tue, 18 Oct 2016 21:17:38 GMT
ENV PHP_SHA256= PHP_MD5=2bfa0ad51de4fce87d0175d655f6bf69
# Tue, 18 Oct 2016 21:17:49 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 18 Oct 2016 21:17:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:21:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 18 Oct 2016 21:21:53 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:21:54 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67654b7bd8a6f817e849f77cd102331617f4e2394feeae4f77f8683b9b466ed9`  
		Last Modified: Tue, 18 Oct 2016 22:37:25 GMT  
		Size: 1.0 MB (1048149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c453327105c5d394a206069893aa1527b7cc4e58699b4a4b0c2453f5b02a7f`  
		Last Modified: Tue, 18 Oct 2016 22:37:23 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:481e68959c15a56029b84021fca8cce378aaa0aa08837e08878bbddc694e798c`  
		Last Modified: Tue, 18 Oct 2016 22:37:22 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c7743f03e38b2c24e387a901171d3f36439a0c6d160ca3054ea35370229346`  
		Last Modified: Tue, 18 Oct 2016 22:37:24 GMT  
		Size: 12.9 MB (12929119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a9b986f35a414d7352771003fa0d1f7935ce3c44e545f6ce16a9536f8543ca`  
		Last Modified: Tue, 18 Oct 2016 22:37:21 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6693b63838568ce63758f7724c12331c00c2c5c273ff5e7ee5ae3a2a53565556`  
		Last Modified: Tue, 18 Oct 2016 22:37:25 GMT  
		Size: 11.5 MB (11546969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03de13ae7407580774c275a62acaee3fa02fa30d4f7b0e8cf770f236129802d5`  
		Last Modified: Tue, 18 Oct 2016 22:37:21 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
