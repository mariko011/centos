## `adminer:4-fastcgi`

```console
$ docker pull adminer@sha256:3cc7f4070e0a20728417b4f2579bde64f1674756c56871f8cb7a655849c745c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:4-fastcgi` - linux; amd64

```console
$ docker pull adminer@sha256:13c49c67495cceeb0ed03cc8e4f8971bc8b7c4e3a7bb61ae590ae06c10c89bcf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.4 MB (31393021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06db029987cedc6745f25c68ef999072fc2b7055258bbb1175c5e5a950b0f97e`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Fri, 15 Sep 2017 00:03:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Wed, 27 Sep 2017 21:29:45 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 27 Sep 2017 21:29:45 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 27 Sep 2017 21:29:45 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Sep 2017 21:29:46 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 27 Sep 2017 21:37:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 27 Sep 2017 21:37:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Sep 2017 21:37:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Sep 2017 21:37:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Sep 2017 21:57:09 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 29 Sep 2017 00:58:17 GMT
ENV PHP_VERSION=7.0.24
# Fri, 29 Sep 2017 00:58:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.24.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.24.tar.xz.asc/from/this/mirror
# Fri, 29 Sep 2017 00:58:17 GMT
ENV PHP_SHA256=4dba7aa365193c9229f89f1975fad4c01135d29922a338ffb4a27e840d6f1c98 PHP_MD5=
# Fri, 29 Sep 2017 00:58:29 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 29 Sep 2017 00:58:29 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 29 Sep 2017 01:01:57 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 29 Sep 2017 01:01:58 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Fri, 29 Sep 2017 01:01:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 29 Sep 2017 01:01:58 GMT
WORKDIR /var/www/html
# Fri, 29 Sep 2017 01:01:59 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 29 Sep 2017 01:01:59 GMT
EXPOSE 9000/tcp
# Fri, 29 Sep 2017 01:01:59 GMT
CMD ["php-fpm"]
# Fri, 29 Sep 2017 01:45:52 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 29 Sep 2017 01:45:55 GMT
RUN apk add --no-cache libpq
# Fri, 29 Sep 2017 01:46:13 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 29 Sep 2017 01:46:13 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Fri, 29 Sep 2017 01:46:13 GMT
ENV ADMINER_VERSION=4.3.1
# Fri, 29 Sep 2017 01:46:14 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Fri, 29 Sep 2017 01:46:14 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Fri, 29 Sep 2017 01:46:16 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 29 Sep 2017 01:49:44 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Fri, 29 Sep 2017 01:49:44 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 29 Sep 2017 01:49:44 GMT
USER [adminer]
# Fri, 29 Sep 2017 01:49:44 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623a0217e4bc5488655b38fa203966020e7a5dc190be3684219e7eed1d063831`  
		Last Modified: Wed, 27 Sep 2017 22:25:34 GMT  
		Size: 1.3 MB (1308952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbf507e7e3c0523517053c8827e5edaa79618b4e00646ab4eeed5b03877d473`  
		Last Modified: Wed, 27 Sep 2017 22:25:32 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a82dee00256dec1e69803c1658c547b1e4046cd1fa202d1542307ec2626646`  
		Last Modified: Wed, 27 Sep 2017 22:25:31 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98c8fbca2d6423e0b01b9163d42083670701d3834da014e6b459ccc78fdac62`  
		Last Modified: Fri, 29 Sep 2017 01:23:16 GMT  
		Size: 12.0 MB (11978021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f465bd0aee5aca31f6b251d940a2093ebf1d8b277372976867b1a26bbb05295`  
		Last Modified: Fri, 29 Sep 2017 01:23:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bf4fb6f9c187039f5cf4509cc5addfa1df650334585c913fce45b95626dc21`  
		Last Modified: Fri, 29 Sep 2017 01:23:17 GMT  
		Size: 14.1 MB (14057470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbdb37e398d97cb686c823c1be28e9f4b6402c8606207b1b59310d2ef33daeb`  
		Last Modified: Fri, 29 Sep 2017 01:23:12 GMT  
		Size: 2.2 KB (2161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7849e26fb40b5cc2e0cbca0759a739d4503ddc1621714390014dace510f00593`  
		Last Modified: Fri, 29 Sep 2017 01:23:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d4d9c64b54a540a56023ace3e4adf9331ce7726821d87884ef9c96e263fd4bf`  
		Last Modified: Fri, 29 Sep 2017 01:23:13 GMT  
		Size: 7.7 KB (7661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2908166cbf9c812d3fef885b00ca64aa04b42fa5598995506279e33b47e80fd`  
		Last Modified: Fri, 29 Sep 2017 01:51:05 GMT  
		Size: 1.4 KB (1391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b2bc90951c58519e3d7d399f2f5793345ffdb1a1d516c984bc08d7a7ac0769`  
		Last Modified: Fri, 29 Sep 2017 01:51:03 GMT  
		Size: 1.2 MB (1210851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980948756ccc2524e4bcb3d6e11b6b56c0def0d15d625011c036e321579f241d`  
		Last Modified: Fri, 29 Sep 2017 01:51:03 GMT  
		Size: 118.4 KB (118404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15075bc5fedf905cc5d81de59c19180b2565ddb70e5ac2a4d5546cd68146a7e7`  
		Last Modified: Fri, 29 Sep 2017 01:51:02 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4050b65caac2f5d8c558a9a4563b3a0bd1862b931fb1f0449ec001e1f0f619f8`  
		Last Modified: Fri, 29 Sep 2017 01:51:02 GMT  
		Size: 319.1 KB (319110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915d4563ec65363a976dd7ff733ca0659649e34eb91b614ce7ec98c5729e8fc2`  
		Last Modified: Fri, 29 Sep 2017 01:51:02 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
