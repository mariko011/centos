## `php:rc-cli`

```console
$ docker pull php@sha256:87089f54dc6827eb3b6cc3c916dc782cbae66ec321dee5b06c5c7eea89fd2540
```

-	Platforms:
	-	linux; amd64

### `php:rc-cli` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.7 MB (151747976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b771272123ceb90eb2ce296acce2234cf1f451775517f2b0162e45b888a099ae`
-	Default Command: `["php","-a"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:58:17 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0
# Mon, 31 Oct 2016 22:26:28 GMT
ENV PHP_VERSION=7.1.0RC5
# Mon, 31 Oct 2016 22:26:28 GMT
ENV PHP_URL=http://downloads.php.net/~krakjoe/php-7.1.0RC5.tar.xz PHP_ASC_URL=
# Mon, 31 Oct 2016 22:26:28 GMT
ENV PHP_SHA256=55a1b47cfa090760bb26438eb4faa7c62cd16eca4e527759e3941b38941f8f14 PHP_MD5=1d195b0aeb63914a308fb215671445a5
# Mon, 31 Oct 2016 22:26:42 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 31 Oct 2016 22:26:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:30:30 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 31 Oct 2016 22:30:31 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:30:32 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24b4e5386b2cc47a4356f4951ca110b316474edcb2a7a6830ffa192137c2003`  
		Last Modified: Mon, 31 Oct 2016 22:55:18 GMT  
		Size: 12.8 MB (12810544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3aab1c78994f7ac95da61c73f967849b527bebb0ea61fd4dbc9792d2ff76d72`  
		Last Modified: Mon, 31 Oct 2016 22:55:16 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4c3d1d0947c484f587b14b61de2656357644e68cfced42b933d865da2b1593`  
		Last Modified: Mon, 31 Oct 2016 22:55:21 GMT  
		Size: 10.0 MB (9990691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3103c8f8abad12445d67b02a6443963275ba7e8bc13f5f64562b630f7537d255`  
		Last Modified: Mon, 31 Oct 2016 22:55:20 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
