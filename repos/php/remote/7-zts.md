## `php:7-zts`

```console
$ docker pull php@sha256:c64cbc19407083318f83cc78624c627369122c3fb0e427cddd7a776862024041
```

-	Platforms:
	-	linux; amd64

### `php:7-zts` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151442608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7be3dfafe0eaa354187debef657164d8c8d62ccfad2b39ab767995d4512d2d`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:37:38 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts
# Tue, 28 Feb 2017 17:37:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:37:38 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:37:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:51:25 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 28 Feb 2017 17:51:26 GMT
ENV PHP_VERSION=7.1.2
# Tue, 28 Feb 2017 17:51:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.2.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:51:26 GMT
ENV PHP_SHA256=d815a0c39fd57bab1434a77ff0610fb507c22f790c66cd6f26e27030c4b3e971 PHP_MD5=d79afea1870277c86fac903566fb6c5d
# Tue, 28 Feb 2017 17:51:35 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:51:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:55:17 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:55:18 GMT
COPY multi:b2b2a1a4e3c0f0bb8ebdcd527fca158bfce5138468926263f86e5bb0cb41970f in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:55:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:55:19 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7943dd04c2c81c2c3be4de553862534fbe1f374710c88b64df1f606c61644bd`  
		Last Modified: Wed, 01 Mar 2017 16:58:58 GMT  
		Size: 12.9 MB (12891548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29673d2672b9c4785e40e17308ba3e9d17b412ac5fdea34cbbe778499d54f9b8`  
		Last Modified: Wed, 01 Mar 2017 16:58:56 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81ee5814ce1973b4573b820a6145ca1a3920b6a633db8da4835451b0be1aa3a`  
		Last Modified: Wed, 01 Mar 2017 16:59:00 GMT  
		Size: 9.6 MB (9577486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9fa8979fb35bc53480c9484cd9afac38f03087727c35759b827a9a79943bed`  
		Last Modified: Wed, 01 Mar 2017 16:58:56 GMT  
		Size: 2.0 KB (2010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
