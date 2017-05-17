## `wordpress:4-php5.6-fpm-alpine`

```console
$ docker pull wordpress@sha256:55ead6dcd83b243315e7931aa3b6d938be335d84649bbd7e57707a26a2464327
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php5.6-fpm-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 MB (35321198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c29dc92551f1a7f06f3f64376df4f6f2ec4aa8156fecf6f57548e9a659b25d91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Sat, 13 May 2017 00:05:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Sat, 13 May 2017 00:05:40 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Sat, 13 May 2017 00:05:43 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 13 May 2017 00:05:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 13 May 2017 00:05:45 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:22:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Sat, 13 May 2017 00:22:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:22:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:22:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 01:25:45 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 13 May 2017 01:25:45 GMT
ENV PHP_VERSION=5.6.30
# Sat, 13 May 2017 01:25:46 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 01:25:46 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Sat, 13 May 2017 01:25:54 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 13 May 2017 01:25:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 01:29:03 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Sat, 13 May 2017 01:29:05 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Sat, 13 May 2017 01:29:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 01:29:07 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 01:29:08 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 13 May 2017 01:29:08 GMT
EXPOSE 9000/tcp
# Sat, 13 May 2017 01:29:09 GMT
CMD ["php-fpm"]
# Sat, 13 May 2017 05:07:02 GMT
RUN apk add --no-cache 		bash 		sed
# Sat, 13 May 2017 05:07:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 13 May 2017 05:07:40 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 13 May 2017 05:07:41 GMT
VOLUME [/var/www/html]
# Wed, 17 May 2017 21:57:13 GMT
ENV WORDPRESS_VERSION=4.7.5
# Wed, 17 May 2017 21:57:14 GMT
ENV WORDPRESS_SHA1=fbe0ee1d9010265be200fe50b86f341587187302
# Wed, 17 May 2017 21:57:17 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 17 May 2017 21:57:18 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Wed, 17 May 2017 21:57:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 17 May 2017 21:57:20 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f0bf25c22e185588f5556af1e7b9d67bdc2879f6173fd516350f73a2deb29f`  
		Last Modified: Sat, 13 May 2017 01:40:36 GMT  
		Size: 1.1 MB (1081302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80549166a18f9060850abdc57136a60481cb83b1fa5dd7b8816907cb5bb7b611`  
		Last Modified: Sat, 13 May 2017 01:40:32 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a30cf12edf726e91cf3093d0c7aa86497903a99d4b0aca5589b746aeffeed3`  
		Last Modified: Sat, 13 May 2017 01:40:34 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea57333872dfc5820edff0041a6a7d9dcf53b942c3d9be8711b73942086e3d31`  
		Last Modified: Sat, 13 May 2017 02:03:08 GMT  
		Size: 12.6 MB (12623137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e942c94fdc4f3340a162abcd3b477b4e14079c52cb1b9dc06f8c9a9f4135050`  
		Last Modified: Sat, 13 May 2017 02:03:06 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c485e2c82a9d633f529570de7d6d2aca7d7cdbd288b556589d3853a4eca45de2`  
		Last Modified: Sat, 13 May 2017 02:03:08 GMT  
		Size: 10.0 MB (9995731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0751576242a2c5b70069574fa2554b49f7d3846401fbd13a1749f7ffb06f3f87`  
		Last Modified: Sat, 13 May 2017 02:03:07 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56f0d02736448a99ab31931bfc6443390cbdd90c1822e8ff177a1cae32f2f86`  
		Last Modified: Sat, 13 May 2017 02:03:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7b3b0afddc383c5ff3278657abf0e32966f4bea32f67ca099499e5cd72e07b`  
		Last Modified: Sat, 13 May 2017 02:03:06 GMT  
		Size: 7.6 KB (7594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c80f5fb16af2c850f121f81958723093997ca64beafa93c7f9405c10f52969`  
		Last Modified: Sat, 13 May 2017 05:29:14 GMT  
		Size: 610.5 KB (610490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b187a1dc91be99308b66ee5262c12fd6fbcb709181bac79481a8e0651eeecf`  
		Last Modified: Sat, 13 May 2017 05:29:15 GMT  
		Size: 732.1 KB (732093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e20770cbe1fe5ab515a14902acd44d6bebcf2906fb9f229ddc979cc3fb8a16`  
		Last Modified: Sat, 13 May 2017 05:29:14 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa282a4a60cfd862e1b81b83bf4cf90563513c838d9a7bd78764744ba800d9c`  
		Last Modified: Wed, 17 May 2017 22:10:10 GMT  
		Size: 7.9 MB (7880196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be0f786b5abd708172e31432e2580f5afec37a33f35cc25ecb83f4b5aace073`  
		Last Modified: Wed, 17 May 2017 22:10:05 GMT  
		Size: 3.1 KB (3136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
