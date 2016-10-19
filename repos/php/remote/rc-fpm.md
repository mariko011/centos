## `php:rc-fpm`

```console
$ docker pull php@sha256:e828d7b6c331e63779111cdd8acc4c29e7629565e2df3888823a07f95f97a192
```

-	Platforms:
	-	linux; amd64

### `php:rc-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155311614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7e45344b6026cc18541e272a318163a44d1a7a2458cb47f29faa0396ebc5a42`
-	Default Command: `["php-fpm"]`

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
# Fri, 23 Sep 2016 21:28:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 23 Sep 2016 22:01:28 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0
# Fri, 30 Sep 2016 23:57:15 GMT
ENV PHP_VERSION=7.1.0RC3
# Tue, 18 Oct 2016 21:24:45 GMT
ENV PHP_URL=http://downloads.php.net/~davey/php-7.1.0RC3.tar.xz PHP_ASC_URL=http://downloads.php.net/~davey/php-7.1.0RC3.tar.xz.asc
# Tue, 18 Oct 2016 21:24:45 GMT
ENV PHP_SHA256= PHP_MD5=2bfa0ad51de4fce87d0175d655f6bf69
# Tue, 18 Oct 2016 21:24:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 21:24:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:28:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 21:28:51 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:28:51 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 21:28:52 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 18 Oct 2016 21:28:53 GMT
EXPOSE 9000/tcp
# Tue, 18 Oct 2016 21:28:53 GMT
CMD ["php-fpm"]
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
	-	`sha256:12604ebd72e76f90ac9dae58efbbfc6c43d2448a4ddbf1dd3a8cba0dd87e6384`  
		Last Modified: Tue, 18 Oct 2016 22:39:01 GMT  
		Size: 12.9 MB (12867438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe4315b10ccab215890bfadb380defd7422ab3d49f98713aff33f77c5e0eb7b`  
		Last Modified: Tue, 18 Oct 2016 22:38:55 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310a4bee7d63f8ea2f19c1b8f50c909b5216c7cc2478dba1bc64c6e7354e931e`  
		Last Modified: Tue, 18 Oct 2016 22:38:58 GMT  
		Size: 13.5 MB (13487351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c302c7382e931726bd28a3b59e4c879d08160b48f4cf29d79bba9a1f155fb8`  
		Last Modified: Tue, 18 Oct 2016 22:38:55 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adac40932211f1f831975c50ad10518974a61583f370c3c24c043b8dd1d5193`  
		Last Modified: Tue, 18 Oct 2016 22:38:55 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e01b8936c1a556e93fe3d89a87155224ed840f683283c2a25919c2a70bc8915`  
		Last Modified: Tue, 18 Oct 2016 22:38:55 GMT  
		Size: 7.7 KB (7695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
