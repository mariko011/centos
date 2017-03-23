## `php:5-cli`

```console
$ docker pull php@sha256:9d7884383657553eb11bf1df4776776b8cafb2274e21bead43edf99573349107
```

-	Platforms:
	-	linux; amd64

### `php:5-cli` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146787135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9054a11bc5cd4d1f92a2512ba1fa00590afc6b39b7bb6962b348e2fcb1cffb94`
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
# Tue, 21 Mar 2017 22:56:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 22:56:19 GMT
ENV PHP_VERSION=5.6.30
# Tue, 21 Mar 2017 22:56:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 22:56:20 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 21 Mar 2017 22:56:29 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 22:56:29 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 22:59:38 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 22:59:39 GMT
COPY multi:b2b2a1a4e3c0f0bb8ebdcd527fca158bfce5138468926263f86e5bb0cb41970f in /usr/local/bin/ 
# Tue, 21 Mar 2017 22:59:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 22:59:40 GMT
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
	-	`sha256:cf5aebe6b9f1a385736da813472c0f5697ee619520263c9c642faf05981f8e9a`  
		Last Modified: Thu, 23 Mar 2017 18:38:56 GMT  
		Size: 12.6 MB (12560771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c2181e3ac36e8d8513fd6a0eabf1147163562702ab3e252a5ed764f5f556de`  
		Last Modified: Thu, 23 Mar 2017 18:38:54 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bba3e5bcc1fbbed806e299916d90d8272d6a9c9e88d38f7639c01642edeeba`  
		Last Modified: Thu, 23 Mar 2017 18:39:00 GMT  
		Size: 5.1 MB (5103228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a424044457ca85a801bea3825e9becaa57bfbb66b49f9df026990b4e84c0571`  
		Last Modified: Thu, 23 Mar 2017 18:38:54 GMT  
		Size: 2.0 KB (2008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
