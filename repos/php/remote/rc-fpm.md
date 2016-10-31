## `php:rc-fpm`

```console
$ docker pull php@sha256:26e3731559f8b97a6834dbce233f03d2782a633dae816105c9266dcbec8f30b0
```

-	Platforms:
	-	linux; amd64

### `php:rc-fpm` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155292824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c25c5085178f090fbfe41c48d98e90a49656dee11f4711b65a29a76b28e992f1`
-	Default Command: `["php-fpm"]`

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
# Fri, 21 Oct 2016 23:10:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Sat, 22 Oct 2016 00:07:09 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0
# Mon, 31 Oct 2016 22:37:56 GMT
ENV PHP_VERSION=7.1.0RC5
# Mon, 31 Oct 2016 22:37:56 GMT
ENV PHP_URL=http://downloads.php.net/~krakjoe/php-7.1.0RC5.tar.xz PHP_ASC_URL=
# Mon, 31 Oct 2016 22:37:57 GMT
ENV PHP_SHA256=55a1b47cfa090760bb26438eb4faa7c62cd16eca4e527759e3941b38941f8f14 PHP_MD5=1d195b0aeb63914a308fb215671445a5
# Mon, 31 Oct 2016 22:38:08 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 31 Oct 2016 22:38:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:42:11 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 31 Oct 2016 22:42:12 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:42:13 GMT
WORKDIR /var/www/html
# Mon, 31 Oct 2016 22:42:14 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 31 Oct 2016 22:42:14 GMT
EXPOSE 9000/tcp
# Mon, 31 Oct 2016 22:42:14 GMT
CMD ["php-fpm"]
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
	-	`sha256:b4e67761ad3f44fdd32595bf55c9f5e684e8017e720eb0246be074b2c151fe6d`  
		Last Modified: Mon, 31 Oct 2016 22:58:19 GMT  
		Size: 12.8 MB (12810530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8deead2ced5c8ac3463183501b1e797e09a89d0949463e63fefd682f333f586d`  
		Last Modified: Mon, 31 Oct 2016 22:58:14 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21615faad39cdffdfce55abb37dbdb8caec7b9bd400b1b770feb9e3085b46995`  
		Last Modified: Mon, 31 Oct 2016 22:58:18 GMT  
		Size: 13.5 MB (13527733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ceb05a31cba2d9411ee5556cc8ab199ff49646a6e78b3e2b6cbf5fd26fee00c`  
		Last Modified: Mon, 31 Oct 2016 22:58:14 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5686b5d28ca2330f827a9496372ef1da18379efc3ea67c70aadd3578e3fdd8f`  
		Last Modified: Mon, 31 Oct 2016 22:58:13 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3661d8bf1353c3acf164224634835620a813d9a9e21e184a5af61dffbe138e96`  
		Last Modified: Mon, 31 Oct 2016 22:58:14 GMT  
		Size: 7.7 KB (7695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
