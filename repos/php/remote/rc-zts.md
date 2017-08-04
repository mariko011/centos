## `php:rc-zts`

```console
$ docker pull php@sha256:1acea72cee191c428c02a3d28f81cf042895067dd1e8c923ed8a8122fd0b5233
```

-	Platforms:
	-	linux; amd64

### `php:rc-zts` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.4 MB (127369387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fec28dae359dce02b7d5e18e51671ec8e10e775b83dde1258a81682fc411a35`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:05 GMT
ADD file:fa8dd9a679f473a9082dac89603a1ed7b6ad4cd20e8e996f0ac7b412d379761e in / 
# Mon, 24 Jul 2017 16:53:06 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:40:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Mon, 24 Jul 2017 18:40:55 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:40:55 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 24 Jul 2017 18:40:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 24 Jul 2017 18:59:33 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts
# Mon, 24 Jul 2017 18:59:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 18:59:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 18:59:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Mon, 24 Jul 2017 18:59:34 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 04 Aug 2017 18:31:52 GMT
ENV PHP_VERSION=7.2.0beta2
# Fri, 04 Aug 2017 18:31:52 GMT
ENV PHP_URL=http://downloads.php.net/~pollita/php-7.2.0beta2.tar.xz PHP_ASC_URL=http://downloads.php.net/~pollita/php-7.2.0beta2.tar.xz.asc
# Fri, 04 Aug 2017 18:31:52 GMT
ENV PHP_SHA256=0e2ac8e68c6fa92e9e14c610d78e162a711ba0e83987ecc9d02a6b898616c92d PHP_MD5=
# Fri, 04 Aug 2017 18:32:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 04 Aug 2017 18:32:10 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:37:06 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 04 Aug 2017 18:37:55 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:37:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 04 Aug 2017 18:37:55 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:94ed0c431eb58b1c824715ac158d102bc78b5eb9d690579da5d8bc96b190eb67`  
		Last Modified: Mon, 24 Jul 2017 17:00:05 GMT  
		Size: 22.5 MB (22491744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5410041793a53841210fc93a4c714d8310812f61b57e62b675dd60e828edb2`  
		Last Modified: Thu, 03 Aug 2017 23:13:19 GMT  
		Size: 82.8 MB (82751054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab2a160fa31ce699f9b0d1b20d8ec121c99ed00c03984596101736c9969a3f7`  
		Last Modified: Thu, 03 Aug 2017 23:12:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc53168acf2803d0fa24aecebfb169bd6caf78e694f8ff9a0e24fcc02a76eeb`  
		Last Modified: Fri, 04 Aug 2017 19:19:31 GMT  
		Size: 12.1 MB (12131526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a171967b2b1369bb310427b6ecdd312c5f3c5d225562594e0427099fc6d5c82c`  
		Last Modified: Fri, 04 Aug 2017 19:19:29 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9682b35087dbc9ec01a5e47e5150c7501ccb4d938fa69dd212ba56d5071ef5`  
		Last Modified: Fri, 04 Aug 2017 19:19:32 GMT  
		Size: 10.0 MB (9992273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3075e61845a06f6385d38732932d4bb2b08b96dae3b71f8aed08eb3899630da7`  
		Last Modified: Fri, 04 Aug 2017 19:19:29 GMT  
		Size: 2.1 KB (2118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
