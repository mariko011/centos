## `adminer:fastcgi`

```console
$ docker pull adminer@sha256:1870fda65ce6798eeef4744d71ab3e62a630418259e08dcc08e7ba55747ef5f4
```

-	Platforms:
	-	linux; amd64

### `adminer:fastcgi` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31988789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90a8cfa0b69d9b92d7c4261284e4af4a9e5ba7d7c740b0250b2fe4624a471880`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:09:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Wed, 28 Jun 2017 20:09:33 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Wed, 28 Jun 2017 20:09:35 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 28 Jun 2017 20:09:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Jun 2017 20:09:37 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 28 Jun 2017 20:34:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 28 Jun 2017 20:34:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:34:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:34:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 28 Jun 2017 21:25:35 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 10 Jul 2017 17:56:49 GMT
ENV PHP_VERSION=7.0.21
# Mon, 10 Jul 2017 17:56:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.21.tar.xz.asc/from/this/mirror
# Mon, 10 Jul 2017 17:56:50 GMT
ENV PHP_SHA256=6713fe3024365d661593235b525235045ef81f18d0043654658c9de1bcb8b9e3 PHP_MD5=
# Thu, 13 Jul 2017 18:11:59 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 13 Jul 2017 18:12:00 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 13 Jul 2017 18:15:25 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 13 Jul 2017 18:15:27 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Thu, 13 Jul 2017 18:15:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 13 Jul 2017 18:15:27 GMT
WORKDIR /var/www/html
# Thu, 13 Jul 2017 18:15:29 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 13 Jul 2017 18:15:29 GMT
EXPOSE 9000/tcp
# Thu, 13 Jul 2017 18:15:29 GMT
CMD ["php-fpm"]
# Fri, 21 Jul 2017 16:09:30 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 21 Jul 2017 16:09:34 GMT
RUN apk add --no-cache libpq
# Fri, 21 Jul 2017 16:09:53 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 21 Jul 2017 16:09:53 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Fri, 21 Jul 2017 16:09:54 GMT
ENV ADMINER_VERSION=4.3.1
# Fri, 21 Jul 2017 16:09:54 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Fri, 21 Jul 2017 16:09:55 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Fri, 21 Jul 2017 16:09:58 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 21 Jul 2017 16:09:58 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Fri, 21 Jul 2017 16:09:59 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 21 Jul 2017 16:09:59 GMT
USER [adminer]
# Fri, 21 Jul 2017 16:10:00 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ae35d047425948b630f791a9a74d50ebb54f782bf01d3bcd74a2ed98313067`  
		Last Modified: Thu, 29 Jun 2017 01:50:27 GMT  
		Size: 1.1 MB (1081313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d34c9ec14365563dff516a583c4122f35a19016a83cc9cd333ad5a62f9a705b`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729ea35b870d89fe556e628075b41809b7e889d5858be4cffdd7ac98c2bee7ef`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663a82741c871c0f1ac9ae27c064b2d6a8f770c098994bd7fe52c4b61b785b37`  
		Last Modified: Thu, 13 Jul 2017 19:12:43 GMT  
		Size: 12.8 MB (12799911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79293d6051f408847586d3276dc4ce9045e63fe8e99cfa9579fa911f91a5efa4`  
		Last Modified: Thu, 13 Jul 2017 19:12:42 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee7776f190b610a14f8ba7022ee3d52793fa07bc76700b64e9de91922ae657f`  
		Last Modified: Thu, 13 Jul 2017 19:12:47 GMT  
		Size: 14.1 MB (14059735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a70ca4c712042ed839546cc3bf11d3f7a639b8e9cc37384399a0ee28427291f`  
		Last Modified: Thu, 13 Jul 2017 19:12:41 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ba11bfc41b1b63467341c7b44998b9a6ec0a6e7cfe3de6a715362913554b39`  
		Last Modified: Thu, 13 Jul 2017 19:12:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc9738642eb935507fb5b86dc0ec0e80dfa616d60769910363572d77617f0ea`  
		Last Modified: Thu, 13 Jul 2017 19:12:41 GMT  
		Size: 7.7 KB (7651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4802f043b925d6220c79cd2d451993f694846a00349ee8b7fb4851819743e41`  
		Last Modified: Fri, 21 Jul 2017 16:10:52 GMT  
		Size: 1.4 KB (1386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2581a95039726f1e63a619047af4e36c2ff5b4177c91130e343b4e0b4bee1e`  
		Last Modified: Fri, 21 Jul 2017 16:10:54 GMT  
		Size: 1.2 MB (1210641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1afca23e9a7068af3a131c2cb4b065cfadcf40d3f44b2336f976ebda3ee16`  
		Last Modified: Fri, 21 Jul 2017 16:10:53 GMT  
		Size: 118.0 KB (117971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f169419d62b1142cc5e2e126320dc803f5f5c464cfe1f4cdf0697185d7486c9`  
		Last Modified: Fri, 21 Jul 2017 16:10:52 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9b28cc74c35d0bdf1496b3a3e38d45c98c3d6978a3e41770320437adb4678f0`  
		Last Modified: Fri, 21 Jul 2017 16:10:53 GMT  
		Size: 319.1 KB (319102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5cd2c867eadfdc2d44a6d11d81fc38b105adf78039721c1b2a0652f6c48533b`  
		Last Modified: Fri, 21 Jul 2017 16:10:52 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
