## `php:cli`

```console
$ docker pull php@sha256:2df4061d745b06a188dd2c750c8caa15fd36e6dd5fd269aacf79127471401fe3
```

-	Platforms:
	-	linux; amd64

### `php:cli` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.7 MB (150722294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a24b2cedce05adc51407d4d634f184d857a71d8fdc61cb6178459d3c87e1191`
-	Default Command: `["php","-a"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:36:25 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 14 Oct 2016 23:15:25 GMT
ENV PHP_VERSION=7.0.12
# Fri, 14 Oct 2016 23:15:25 GMT
ENV PHP_FILENAME=php-7.0.12.tar.xz
# Fri, 14 Oct 2016 23:15:26 GMT
ENV PHP_SHA256=f3d6c49e1c242e5995dec15e503fde996c327eb86cd7ec45c690e93c971b83ff
# Fri, 14 Oct 2016 23:15:29 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 14 Oct 2016 23:15:29 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 14 Oct 2016 23:19:07 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 14 Oct 2016 23:19:08 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 14 Oct 2016 23:19:09 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb61106310f8c09698c408782335ae8075fbf8c04d63abf3bafec629e3e18df9`  
		Last Modified: Fri, 14 Oct 2016 23:44:42 GMT  
		Size: 12.5 MB (12524544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663c3d54e52b683423b71b96180c23f1737f4af19454aba251cea4c87439f283`  
		Last Modified: Fri, 14 Oct 2016 23:44:41 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d9c10013bf630e8161279de7fbb953f2bbd6df732c913f10b3545a4843a9e1`  
		Last Modified: Fri, 14 Oct 2016 23:44:43 GMT  
		Size: 9.2 MB (9248746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2259a60f242758463bc1d90f34d5ef69248d6b8c272fa539b7318645c6b14f27`  
		Last Modified: Fri, 14 Oct 2016 23:44:40 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
