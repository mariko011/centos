## `php:7-zts`

```console
$ docker pull php@sha256:9a9565916677ffc4852e7b2f55941450f564187684ed3726328d9e443664d512
```

-	Platforms:
	-	linux; amd64

### `php:7-zts` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.8 MB (150783486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:224e986bbc5cd6cf49316160d303f97b36e20d1f49ee28f22a308bc5aff37edb`
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
# Wed, 31 Aug 2016 00:27:38 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts
# Wed, 31 Aug 2016 00:27:38 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 31 Aug 2016 00:27:38 GMT
ENV PHP_VERSION=7.0.10
# Wed, 31 Aug 2016 00:27:39 GMT
ENV PHP_FILENAME=php-7.0.10.tar.xz
# Wed, 31 Aug 2016 00:27:39 GMT
ENV PHP_SHA256=348476ff7ba8d95a1e28e1059430c10470c5f8110f6d9133d30153dda4cdf56a
# Wed, 31 Aug 2016 00:27:42 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 31 Aug 2016 00:27:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 31 Aug 2016 00:31:21 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 31 Aug 2016 00:31:22 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Wed, 31 Aug 2016 00:31:22 GMT
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
	-	`sha256:830f7805325fce7f7f44116990bfebbe54fb3e52a984c7a3286cfbad6eceeff4`  
		Last Modified: Wed, 07 Sep 2016 19:01:38 GMT  
		Size: 12.5 MB (12479367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b5ff99911712d3fa477efab7f1fe484e32b3498f38f73f3e3987a2e9d0dbef`  
		Last Modified: Wed, 07 Sep 2016 19:01:36 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb597e6502449c07dfa8d26f7817b967912724231d89a7c56ecb1427bf8817d`  
		Last Modified: Wed, 07 Sep 2016 19:01:40 GMT  
		Size: 9.4 MB (9352325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e91ddca3a344812bae35d00845ed25ff62997314ceda9c78913fb7eed820eff0`  
		Last Modified: Wed, 07 Sep 2016 19:01:36 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
