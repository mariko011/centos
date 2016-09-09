## `php:cli`

```console
$ docker pull php@sha256:e1455715b8a6accff988355820880f2e5c6577d777f1ad056c5baac90321b54c
```

-	Platforms:
	-	linux; amd64

### `php:cli` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.7 MB (150669919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ee4f5e22df3bc739b00faf3e6b09adc63a91cad7fdb487f6ab187fd0e88f031`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:17:25 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 31 Aug 2016 00:17:26 GMT
ENV PHP_VERSION=7.0.10
# Wed, 31 Aug 2016 00:17:26 GMT
ENV PHP_FILENAME=php-7.0.10.tar.xz
# Wed, 31 Aug 2016 00:17:26 GMT
ENV PHP_SHA256=348476ff7ba8d95a1e28e1059430c10470c5f8110f6d9133d30153dda4cdf56a
# Wed, 31 Aug 2016 00:17:29 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 31 Aug 2016 00:17:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 31 Aug 2016 00:21:10 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 31 Aug 2016 00:21:11 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Wed, 31 Aug 2016 00:21:11 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59aced99cc297c4a3da6620f75e1ba64e1a43bf04beaf305a2787be5bff1e028`  
		Last Modified: Wed, 07 Sep 2016 18:58:02 GMT  
		Size: 12.5 MB (12479371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041b258241e3874467b249ee6c954802dc984572f25eb5758622a9dda52ad979`  
		Last Modified: Wed, 07 Sep 2016 18:58:00 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604805a8686f0190b2a90531e6c2059815db899f9f4c5d5d698589bd81457f66`  
		Last Modified: Wed, 07 Sep 2016 18:58:04 GMT  
		Size: 9.2 MB (9238755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3baaa159651086c333529af5566d59ec1b78dc2c4ee9e523f36eb50f15aca92`  
		Last Modified: Wed, 07 Sep 2016 18:58:00 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
