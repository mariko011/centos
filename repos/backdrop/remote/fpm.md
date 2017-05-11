## `backdrop:fpm`

```console
$ docker pull backdrop@sha256:92fd7ac79c84794b84a6413601564af4abc25bb8d1be73382e39852a10eb0997
```

-	Platforms:
	-	linux; amd64

### `backdrop:fpm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168206253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a700dd912e33ebc18c3fd7173962d079942c11fddc88df81a3bc583401d263`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 18:26:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 09 May 2017 18:27:28 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 09 May 2017 18:27:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 09 May 2017 18:27:30 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 09 May 2017 18:35:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 09 May 2017 18:35:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 09 May 2017 18:35:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 09 May 2017 18:35:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 09 May 2017 19:06:15 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 09 May 2017 19:06:16 GMT
ENV PHP_VERSION=5.6.30
# Tue, 09 May 2017 19:06:16 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 09 May 2017 19:06:17 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 09 May 2017 19:06:29 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 May 2017 19:06:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 09 May 2017 19:09:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 09 May 2017 19:09:49 GMT
COPY multi:6f0472135e558ecb6e8d4994f3ad7153def074d5ddc522114a95b3132d9e14ae in /usr/local/bin/ 
# Tue, 09 May 2017 19:09:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 09 May 2017 19:09:51 GMT
WORKDIR /var/www/html
# Tue, 09 May 2017 19:09:52 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 09 May 2017 19:09:53 GMT
EXPOSE 9000/tcp
# Tue, 09 May 2017 19:09:53 GMT
CMD ["php-fpm"]
# Wed, 10 May 2017 23:59:59 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Thu, 11 May 2017 00:00:00 GMT
WORKDIR /var/www/html
# Thu, 11 May 2017 00:00:01 GMT
ENV BACKDROP_VERSION=1.6.3
# Thu, 11 May 2017 00:00:01 GMT
ENV BACKDROP_MD5=1a7b9ed36d7b873252c6dfa7d26578e6
# Thu, 11 May 2017 00:00:05 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Thu, 11 May 2017 00:00:07 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh 
# Thu, 11 May 2017 00:00:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 11 May 2017 00:00:08 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1e8fcfc9d2aa08b74d21fce36b6a3c0b0dc77ccbf7ce578e33151eb6ae2d14`  
		Last Modified: Wed, 10 May 2017 02:14:36 GMT  
		Size: 78.9 MB (78862515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703b0ccc9dc53c4184de6e414865c779acf7af6fd5fefa6f92bab7504b3a1a8d`  
		Last Modified: Wed, 10 May 2017 02:14:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f398cad8f97ccd698f0cdcdee7db4934fdc58f17aa1d926fc99b4fef759ea53`  
		Last Modified: Wed, 10 May 2017 02:36:26 GMT  
		Size: 12.6 MB (12560280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc0c8ca02d98ffccd87fa364a11ce6ef862cf86e7e59555055c5eae72978694`  
		Last Modified: Wed, 10 May 2017 02:36:25 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c686176662341c68de9ea3a193ae61e4298b7215744dcecc84ee3562b404e9e`  
		Last Modified: Wed, 10 May 2017 02:36:27 GMT  
		Size: 9.0 MB (8980866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425aaff6d64b88f83eb633d3ca3963db7fe46c1aedc3ef0e8a5e84dc9076e043`  
		Last Modified: Wed, 10 May 2017 02:36:25 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ddba90208e623bcc619ae038207f20e7cb5ec742b13020ec246185b0e156fa9`  
		Last Modified: Wed, 10 May 2017 02:36:24 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38c10eb3d817c928c605a8f9892c5af346178f3f81d407813b0727896785409`  
		Last Modified: Wed, 10 May 2017 02:36:24 GMT  
		Size: 7.6 KB (7607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75e96b7d340c4cb03b590dc3a2175fb8a6af3e44731d5a0df90423527b3cb88`  
		Last Modified: Thu, 11 May 2017 14:36:29 GMT  
		Size: 6.9 MB (6948936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153b5a1de4ef13372d7f89365e3509f77306aeab4a21b88dd2f3dfa64e5c24f2`  
		Last Modified: Thu, 11 May 2017 14:36:30 GMT  
		Size: 8.3 MB (8258242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8618439b169201e784b842dd0ffd9801b9a9883659741d64584070bb09326778`  
		Last Modified: Thu, 11 May 2017 14:36:27 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
