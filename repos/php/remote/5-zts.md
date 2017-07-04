## `php:5-zts`

```console
$ docker pull php@sha256:2e049043ffa4bc2f763707169745eef7b8b6b62bc0483d5d0c928833b64176c6
```

-	Platforms:
	-	linux; amd64

### `php:5-zts` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152795104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc54d142ed37c2894c5ed2e42e050d5bfc9d4daba43bdc8fd7e5a25b3b4c36e2`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:17:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts
# Wed, 21 Jun 2017 16:17:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:17:59 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:18:00 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:48:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 21 Jun 2017 16:48:19 GMT
ENV PHP_VERSION=5.6.30
# Wed, 21 Jun 2017 16:48:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 04 Jul 2017 05:12:24 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=
# Tue, 04 Jul 2017 05:12:41 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 04 Jul 2017 05:12:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 04 Jul 2017 05:16:47 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 04 Jul 2017 05:20:37 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Tue, 04 Jul 2017 05:20:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 04 Jul 2017 05:20:39 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878a27e29d8b18629adfbc90e533b53331b0909020b6c73d5b8d2a83e5fd33fb`  
		Last Modified: Tue, 04 Jul 2017 06:30:58 GMT  
		Size: 12.6 MB (12559659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38f531a749050b3417636654bd2bbcde1b9cb02b3153f7a251ff6214173efd2`  
		Last Modified: Tue, 04 Jul 2017 06:30:57 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39d8383f6b241d9343e2078c1ae2c63550197a48e4fba1852c06e63ef41f4f3`  
		Last Modified: Tue, 04 Jul 2017 06:30:59 GMT  
		Size: 5.1 MB (5121959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbe6678fbce29e460b4e44d149c1d2600a2a91a76c0dfa3860137418485d03fc`  
		Last Modified: Tue, 04 Jul 2017 06:30:56 GMT  
		Size: 2.1 KB (2118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
