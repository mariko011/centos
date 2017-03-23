## `php:latest`

```console
$ docker pull php@sha256:6a019046ac33cf6b1f43231d50802e751a104419caff80fd5423526f43d17a66
```

-	Platforms:
	-	linux; amd64

### `php:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151460603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ea0657799b70e5be6720d8c123a1736c0d0546fc782bd0178b2189f735a9491`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 22:56:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:56:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:56:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:09:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 21 Mar 2017 23:09:25 GMT
ENV PHP_VERSION=7.1.3
# Tue, 21 Mar 2017 23:09:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.3.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:09:26 GMT
ENV PHP_SHA256=e4887c2634778e37fd962fbdf5c4a7d32cd708482fe07b448804625570cb0bb0 PHP_MD5=d604d688be17f4a05b99dbb7fb9581f4
# Tue, 21 Mar 2017 23:09:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:09:33 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:13:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:13:09 GMT
COPY multi:b2b2a1a4e3c0f0bb8ebdcd527fca158bfce5138468926263f86e5bb0cb41970f in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:13:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:13:10 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9ff69d477f811f5f2fa92aa6abc20c20f1b664a13bfbda7e69098ca41321b5`  
		Last Modified: Thu, 23 Mar 2017 18:15:10 GMT  
		Size: 12.9 MB (12900220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca97128c57ba1a16def6906377df8d6debdb5e51ae82145a5c0640c6cbff126`  
		Last Modified: Thu, 23 Mar 2017 18:15:07 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36883f7b6ed42c65b2c6cccb2ddb575acd79a9e7c823919ae6eb3b699b5e4bdb`  
		Last Modified: Thu, 23 Mar 2017 18:15:12 GMT  
		Size: 9.4 MB (9437249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43178e8e972205795002d024cfdf415ca8ff89419b8efb1fe99ca8af5298a7b8`  
		Last Modified: Thu, 23 Mar 2017 18:15:07 GMT  
		Size: 2.0 KB (2007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
