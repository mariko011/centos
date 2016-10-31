## `backdrop:1-fpm`

```console
$ docker pull backdrop@sha256:5fe24acab42a8f8069d0dd5ab62042c5a771e751e29b67f7e987e8b6b9436639
```

-	Platforms:
	-	linux; amd64

### `backdrop:1-fpm` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.6 MB (166649017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f6ff9935b815d31d97c333dc7cf2b856e633e5c7e3496f97dc9625124ac8e21`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Fri, 21 Oct 2016 23:10:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:10:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:10:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:13:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:14:00 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:14:00 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:14:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Oct 2016 23:14:02 GMT
EXPOSE 9000/tcp
# Fri, 21 Oct 2016 23:14:02 GMT
CMD ["php-fpm"]
# Sat, 22 Oct 2016 02:33:29 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Sat, 22 Oct 2016 02:33:29 GMT
WORKDIR /var/www/html
# Mon, 31 Oct 2016 22:36:16 GMT
ENV BACKDROP_VERSION=1.5.1
# Mon, 31 Oct 2016 22:36:16 GMT
ENV BACKDROP_MD5=59481db12d492c9579807f670803fa20
# Mon, 31 Oct 2016 22:36:20 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Mon, 31 Oct 2016 22:36:21 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh 
# Mon, 31 Oct 2016 22:36:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 31 Oct 2016 22:36:21 GMT
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
	-	`sha256:caa40caf97a527ab5b58f26d26b407b55f4fae6798e1d7f89267747d74195f1b`  
		Last Modified: Fri, 21 Oct 2016 23:14:18 GMT  
		Size: 12.5 MB (12549527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064a3d3e9245dbe11fb127133ebdf3e7feb188948093feb6b1597ff1c1c2ed23`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8cd631ee525e5d7ae7dea910aa38eb0270991abc1dc5ca199d17a824383e47`  
		Last Modified: Fri, 21 Oct 2016 23:14:14 GMT  
		Size: 8.8 MB (8841952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3181f198b31f771fb106ad398e5e61380a7122b7f48ad2949ce0937eae2ff49b`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f4db8284a3c17605cf8a4b33cf8cfb43ce5e4d78c1104fea88e88b47f704af`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca292aae86f240632732ffde349c152c947ea665d31b37c80a2689a8858e394`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25e920f8ac2d2449b689010e633ae2dafb442d5a4b23fa4e2c8f422e02482d1`  
		Last Modified: Sat, 22 Oct 2016 02:33:51 GMT  
		Size: 8.2 MB (8231336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fe99800c5854323dce41fea5b19fd0bc21b7541efd8ac859ee6961b2109ddf`  
		Last Modified: Mon, 31 Oct 2016 22:38:37 GMT  
		Size: 8.1 MB (8070753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6bce8fb2fa13514d7ee91637687dbf42caceef843fd766cff568e005c02786`  
		Last Modified: Mon, 31 Oct 2016 22:38:34 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
