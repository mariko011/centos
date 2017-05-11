## `drupal:fpm-alpine`

```console
$ docker pull drupal@sha256:0abc92d0914aecf6dc4e20007f01bcb74d193093447c61ff0c9cc07b2af94855
```

-	Platforms:
	-	linux; amd64

### `drupal:fpm-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47225107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d944bcbeac9b3aef264f9956f928b18c615ef9d50ccaf3cda171c6045e7412`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 17:05:49 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 May 2017 17:05:52 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Wed, 10 May 2017 17:05:55 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 May 2017 17:05:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 May 2017 17:05:59 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 10 May 2017 17:12:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 10 May 2017 17:13:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:13:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:13:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 May 2017 17:13:02 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 10 May 2017 17:13:03 GMT
ENV PHP_VERSION=7.1.4
# Wed, 10 May 2017 17:13:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.4.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.4.tar.xz.asc/from/this/mirror
# Wed, 10 May 2017 17:13:04 GMT
ENV PHP_SHA256=71514386adf3e963df087c2044a0b3747900b8b1fc8da3a99f0a0ae9180d300b PHP_MD5=a74c13f8779349872b365e6732e8c98e
# Wed, 10 May 2017 17:13:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 10 May 2017 17:13:13 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 10 May 2017 17:19:18 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Wed, 10 May 2017 17:37:34 GMT
COPY multi:6f0472135e558ecb6e8d4994f3ad7153def074d5ddc522114a95b3132d9e14ae in /usr/local/bin/ 
# Wed, 10 May 2017 17:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 May 2017 17:38:33 GMT
WORKDIR /var/www/html
# Wed, 10 May 2017 17:38:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 May 2017 17:38:37 GMT
EXPOSE 9000/tcp
# Wed, 10 May 2017 17:38:37 GMT
CMD ["php-fpm"]
# Thu, 11 May 2017 00:24:03 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Thu, 11 May 2017 00:24:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 May 2017 00:24:06 GMT
WORKDIR /var/www/html
# Thu, 11 May 2017 00:24:06 GMT
ENV DRUPAL_VERSION=8.3.2
# Thu, 11 May 2017 00:24:07 GMT
ENV DRUPAL_MD5=d1fce1ec78ca1bcde4a346f4c06531b4
# Thu, 11 May 2017 00:24:13 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8542ac106e5f245acc49badae773303b3477c2ae382f0e0574f9f554d31b5d77`  
		Last Modified: Wed, 10 May 2017 18:59:56 GMT  
		Size: 1.1 MB (1081294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d07d3c34873b50d13491e454cc6fe6fdce8d46b120083ea5c9661e54494b26a`  
		Last Modified: Wed, 10 May 2017 18:59:53 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53823f85d007cce828881cd3dc2afdb28251eddb1b73a965511bdf2f9fb955f3`  
		Last Modified: Wed, 10 May 2017 18:59:54 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35962b9dff49aa4a05d596e6683456d2c1a0977d94b1d529881e84ce91928b83`  
		Last Modified: Wed, 10 May 2017 19:11:53 GMT  
		Size: 13.0 MB (12967399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a64972fb3d0bd1204717a4c877d2793715f7912ff55169abd8fbe744c22dff`  
		Last Modified: Wed, 10 May 2017 19:11:51 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ae8e057fded7da981d78c2f4e450850c509d14aada871598bc0c2a0ed3d7c3`  
		Last Modified: Wed, 10 May 2017 19:11:57 GMT  
		Size: 14.8 MB (14816084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56912301abb554cb11fea3055ece13e8ba27cacff4292662513f577109a1759c`  
		Last Modified: Wed, 10 May 2017 19:11:51 GMT  
		Size: 2.0 KB (2030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00055b0228d9d9f139cffa9866ae93cda4b8d04f720c5e4fe1985e4cbdd9895f`  
		Last Modified: Wed, 10 May 2017 19:11:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7292d643c958d02b1a99ab920a1341bd4c80c2ae68e12cd3be92587b66aa9e0`  
		Last Modified: Wed, 10 May 2017 19:11:52 GMT  
		Size: 7.7 KB (7662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0265660889a9c6759f2ae32ccaed68ff52ca0639f4642db249abd1a3ba8bdf`  
		Last Modified: Thu, 11 May 2017 15:22:59 GMT  
		Size: 3.2 MB (3162577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a502b986b70f2c83f5d456efa815d5267c56232bbf652d4926efecbabd5c401`  
		Last Modified: Thu, 11 May 2017 15:22:58 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6129057e8ce09b2270990ba4b01de2fcd7978e17dbade6750ffc92f0aeaee87f`  
		Last Modified: Thu, 11 May 2017 15:29:10 GMT  
		Size: 12.8 MB (12802654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
