## `composer:latest`

```console
$ docker pull composer@sha256:6ec3561d1a2a8e14aa2a94a2b98a02fbcef5ee0f4f977316241057202b6a2722
```

-	Platforms:
	-	linux; amd64

### `composer:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56238382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66824b67bea3c46d02def6236d0a8bd6ed68e2059793c23fd1ced880d2c85076`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
# Wed, 10 May 2017 17:06:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:06:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:06:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 May 2017 17:06:46 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 10 May 2017 17:06:48 GMT
ENV PHP_VERSION=7.1.4
# Wed, 10 May 2017 17:06:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.4.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.4.tar.xz.asc/from/this/mirror
# Wed, 10 May 2017 17:06:51 GMT
ENV PHP_SHA256=71514386adf3e963df087c2044a0b3747900b8b1fc8da3a99f0a0ae9180d300b PHP_MD5=a74c13f8779349872b365e6732e8c98e
# Wed, 10 May 2017 17:06:59 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 10 May 2017 17:07:01 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 10 May 2017 17:11:30 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Wed, 10 May 2017 17:12:12 GMT
COPY multi:e6c464c392a31f5168d5531bab0e23fa9eac39c09c1e5823ce94492760685158 in /usr/local/bin/ 
# Wed, 10 May 2017 17:12:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 May 2017 17:12:33 GMT
CMD ["php" "-a"]
# Thu, 11 May 2017 00:14:12 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash
# Thu, 11 May 2017 00:14:14 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Thu, 11 May 2017 00:14:15 GMT
ENV PATH=/composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 00:14:15 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 11 May 2017 00:14:16 GMT
ENV COMPOSER_HOME=/composer
# Thu, 11 May 2017 00:14:17 GMT
ENV COMPOSER_VERSION=1.4.1
# Thu, 11 May 2017 00:14:21 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r "     \$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && rm /tmp/installer.php  && composer --ansi --version --no-interaction
# Thu, 11 May 2017 00:14:22 GMT
COPY file:0b943ec33b364492b10e7a774becd40d3fec03eb7db67cc0528769b329117e32 in /docker-entrypoint.sh 
# Thu, 11 May 2017 00:14:23 GMT
WORKDIR /app
# Thu, 11 May 2017 00:14:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 00:14:24 GMT
CMD ["composer"]
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
	-	`sha256:a4adf99550d723910d768e4f90b18704e4e08109659596af35dac0f03c094fb8`  
		Last Modified: Wed, 10 May 2017 19:09:24 GMT  
		Size: 13.0 MB (12967418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deee73542580546dd97f783054b276ba3d204f33dd09efe0feb2d77441b58f49`  
		Last Modified: Wed, 10 May 2017 19:09:22 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea402dae5b6bfa168902997880b4d5b077f719845215679fcc6e78cb8878a266`  
		Last Modified: Wed, 10 May 2017 19:09:26 GMT  
		Size: 10.9 MB (10903598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cebc5a0c5adfe342d39f3dd278f99b0957af54c10e33b0c65ba4accbf2955e80`  
		Last Modified: Wed, 10 May 2017 19:09:21 GMT  
		Size: 2.0 KB (2030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b45a5c5deb5d7ddcb5c94c0d46bbce07cd308c11f465dd1a71f755e0bf0e663`  
		Last Modified: Thu, 11 May 2017 14:56:06 GMT  
		Size: 28.4 MB (28409356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fec5ed582386049b681b3ceabd439bd24833e367ddf27a017b4aa1f355db614`  
		Last Modified: Thu, 11 May 2017 14:56:00 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c6a598f03e01cf46daebf7e66ce08f1fced542022ba8bf55f5877e4e58cc9c`  
		Last Modified: Thu, 11 May 2017 14:56:54 GMT  
		Size: 488.8 KB (488834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bed95391cc9afb3953161ed72dac94de1342521519caf13f9f653f4651b1579`  
		Last Modified: Thu, 11 May 2017 14:56:54 GMT  
		Size: 531.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea0677fbcd5b8475e7edee460cad2058e6fcf880e82d48e917253d22cac0185`  
		Last Modified: Thu, 11 May 2017 14:56:54 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
