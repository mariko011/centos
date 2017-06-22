## `drupal:8-fpm-alpine`

```console
$ docker pull drupal@sha256:a9a85c0baf1470de13b71cce74cf9173ef76cbed30e8ff4afbc36b37db6d9347
```

-	Platforms:
	-	linux; amd64

### `drupal:8-fpm-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46910330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49d32e94f98407029393af90264114cec046120a111354f38bfa8831e96e6f55`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 19 Jun 2017 16:54:49 GMT
ADD file:cf1b74f7af8abcfbe58722467970b39b3ef9c8343665ef2d175f058f734a7f6e in / 
# Mon, 19 Jun 2017 16:55:12 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:46:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Mon, 19 Jun 2017 22:46:48 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Mon, 19 Jun 2017 22:46:50 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Mon, 19 Jun 2017 22:46:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Jun 2017 22:46:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Jun 2017 22:58:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Mon, 19 Jun 2017 22:58:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 19 Jun 2017 22:58:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 19 Jun 2017 22:58:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Mon, 19 Jun 2017 22:58:55 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Mon, 19 Jun 2017 22:58:55 GMT
ENV PHP_VERSION=7.1.6
# Mon, 19 Jun 2017 22:58:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 19 Jun 2017 22:58:58 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 19 Jun 2017 22:59:07 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 19 Jun 2017 22:59:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Jun 2017 23:05:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 19 Jun 2017 23:05:42 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 19 Jun 2017 23:06:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Jun 2017 23:06:29 GMT
WORKDIR /var/www/html
# Mon, 19 Jun 2017 23:06:53 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Jun 2017 23:07:16 GMT
EXPOSE 9000/tcp
# Mon, 19 Jun 2017 23:07:40 GMT
CMD ["php-fpm"]
# Tue, 20 Jun 2017 17:55:07 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Tue, 20 Jun 2017 17:55:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Jun 2017 17:55:09 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:13:19 GMT
ENV DRUPAL_VERSION=8.3.4
# Thu, 22 Jun 2017 20:13:20 GMT
ENV DRUPAL_MD5=243a2e10032abaf55c10a96555315727
# Thu, 22 Jun 2017 20:13:26 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:acb474fa89565f9f79ee5ddaaaad12c59954e2694d005ec120d6b11825bad191`  
		Last Modified: Mon, 19 Jun 2017 17:06:54 GMT  
		Size: 2.4 MB (2385060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dabaad5e9926028cc146660baf944edb2684f3920faf2156ebf44ed92cf44133`  
		Last Modified: Tue, 20 Jun 2017 14:35:02 GMT  
		Size: 1.1 MB (1081308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33401fdb9aa65db74d315ebb85f68ae379f28e026bdbc5b9ce92224bccefc95`  
		Last Modified: Tue, 20 Jun 2017 14:34:59 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad83aa6d5dabea040da9162ce26e4da6e8212756b4f1279068078313bfa16d6`  
		Last Modified: Tue, 20 Jun 2017 14:34:59 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6c504d0025ac0c8fc2faf8c176a92ca79af79ad53cbd6d3ab90c82a86c79fe`  
		Last Modified: Tue, 20 Jun 2017 14:44:02 GMT  
		Size: 13.0 MB (12982376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d343b6b369dc763bdb10c866743fd0876246d7cc695306e12adbb6c5e474983d`  
		Last Modified: Tue, 20 Jun 2017 14:44:00 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186c0b7e39bbfec42520d3204e137223c13144afddc632c96205bc264f36b247`  
		Last Modified: Tue, 20 Jun 2017 14:44:07 GMT  
		Size: 14.5 MB (14457971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2b7a3db8b8e5726970970708d09e47d1e6da8bec483f3b350fa94fea7532fb`  
		Last Modified: Tue, 20 Jun 2017 14:44:01 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2200f6801c3daeee0b537713678365bee875c365fac9b822965d7eb8538accf`  
		Last Modified: Tue, 20 Jun 2017 14:44:00 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4494ce4715ec9a3fb1475345666806784e0107afebd5ae69ad8ded46106ce902`  
		Last Modified: Tue, 20 Jun 2017 14:44:00 GMT  
		Size: 7.7 KB (7661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6cfb3f8fb6a4a49ad26c28527574a1d52215faab780e0a71c90a72a14c8ecf`  
		Last Modified: Thu, 22 Jun 2017 20:22:55 GMT  
		Size: 3.2 MB (3163746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee170ee49bc0bbe83645f333940351e31b9dc1d910616af3ad8150360bcbfe6`  
		Last Modified: Thu, 22 Jun 2017 20:22:54 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b26ba35d138e198262a6511c33ab50e054a1aaab68776cf26ce4b9121147aab`  
		Last Modified: Thu, 22 Jun 2017 20:22:58 GMT  
		Size: 12.8 MB (12827724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
