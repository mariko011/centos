## `wordpress:4-php7.1-fpm-alpine`

```console
$ docker pull wordpress@sha256:95591757d816e3f112ba88728e5e2e2f4d2fe1171537923e90366b74a1b3a74e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.1-fpm-alpine` - linux; amd64

```console
$ docker pull wordpress@sha256:46bbef5169d946b29b7c440b39600c146252cff07855c61729d6dff01d6a88b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.7 MB (41655617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:448edb9b1a493dde22afd6dac535d3c721377bf3cd2396d74c7987476c0f1f66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:13:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 01 Dec 2017 19:13:26 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Fri, 01 Dec 2017 19:13:27 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Dec 2017 19:13:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 19:13:28 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 19:22:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 01 Dec 2017 19:22:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 19:22:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 19:22:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 19:22:21 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Dec 2017 19:22:21 GMT
ENV PHP_VERSION=7.1.12
# Fri, 01 Dec 2017 19:22:21 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 19:22:21 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Fri, 01 Dec 2017 19:22:48 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 01 Dec 2017 19:22:48 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 19:27:03 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 04 Jan 2018 03:06:55 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Thu, 04 Jan 2018 03:06:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 04 Jan 2018 03:06:55 GMT
WORKDIR /var/www/html
# Thu, 04 Jan 2018 03:06:56 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 04 Jan 2018 03:06:56 GMT
EXPOSE 9000/tcp
# Thu, 04 Jan 2018 03:06:56 GMT
CMD ["php-fpm"]
# Thu, 04 Jan 2018 07:13:04 GMT
RUN apk add --no-cache 		bash 		sed
# Thu, 04 Jan 2018 07:13:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 04 Jan 2018 07:13:52 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 04 Jan 2018 07:13:52 GMT
VOLUME [/var/www/html]
# Thu, 04 Jan 2018 07:13:53 GMT
ENV WORDPRESS_VERSION=4.9.1
# Thu, 04 Jan 2018 07:13:53 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Thu, 04 Jan 2018 07:13:55 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 04 Jan 2018 07:13:55 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Thu, 04 Jan 2018 07:13:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Jan 2018 07:13:56 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f3776db6e11947a5caa37560f77eb1e6e6bd66c4e7cfd7c0f42cdaaac9ef97`  
		Last Modified: Fri, 01 Dec 2017 20:15:06 GMT  
		Size: 1.3 MB (1309099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4aa03132010eaef600e00cc6d1634547f5d90b60af0ffda897ce78f7c73184`  
		Last Modified: Fri, 01 Dec 2017 20:15:05 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cb6bf51627dff594ce752437fdc6ecddfef0c70fa4410cf2dd9563426626bb`  
		Last Modified: Fri, 01 Dec 2017 20:15:03 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b80398c4244501a58a71836cf414d8135ea242134253e8d48f91ba14635dd1`  
		Last Modified: Fri, 01 Dec 2017 20:20:11 GMT  
		Size: 12.2 MB (12213522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7188749122e640dfcd7cf76a92cc51819ca5240bef5f8c0278c0fe6bd11e88fe`  
		Last Modified: Fri, 01 Dec 2017 20:20:08 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c30cab0f0267aebd156cf753fd97aae35b24a68b09610c02b1e14161175d1e`  
		Last Modified: Fri, 01 Dec 2017 20:20:13 GMT  
		Size: 14.8 MB (14816276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44da2b57dd6a50b4550569cd4fa497ba88f2aa54bb8bcaf073674f5d75d625bb`  
		Last Modified: Thu, 04 Jan 2018 05:02:54 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d4b0c518b8110581cea7fce4842495e0b79faa7729df464100c61b3f4e7705`  
		Last Modified: Thu, 04 Jan 2018 05:02:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db28590f35bec54a13e97e04d3acb7639fc1bf41d569b3ab1e4b43efe71a8b78`  
		Last Modified: Thu, 04 Jan 2018 05:02:54 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49aa14fb905f376290c1982af720027e2fee67c847b7ded748c2330bd8c40d18`  
		Last Modified: Thu, 04 Jan 2018 08:18:10 GMT  
		Size: 611.5 KB (611540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9bdf1c17836dda3581f2e4b25b237557c78e3b75afd8782e90fdfc1b7f4908`  
		Last Modified: Thu, 04 Jan 2018 08:18:10 GMT  
		Size: 830.8 KB (830763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15cae1c21101b13476047a547b0ad6a58e59fc58e4a401ab09ced5efc0eb3be`  
		Last Modified: Thu, 04 Jan 2018 08:18:10 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f6fe33e2204aa610d55750f77599fbea406936623c605889d050d83d300083`  
		Last Modified: Thu, 04 Jan 2018 08:18:13 GMT  
		Size: 9.5 MB (9471279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10297e944298ee4e49fce2a838befe4935bc52b2be0daf2ac176af9e09a67b22`  
		Last Modified: Thu, 04 Jan 2018 08:18:10 GMT  
		Size: 3.4 KB (3351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
