<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `composer`

-	[`composer:1`](#composer1)
-	[`composer:1.4`](#composer14)
-	[`composer:1.4.3`](#composer143)
-	[`composer:1.5`](#composer15)
-	[`composer:1.5.2`](#composer152)
-	[`composer:latest`](#composerlatest)

## `composer:1`

```console
$ docker pull composer@sha256:3a8fd80b41965cbe93b0b77a6619e3b5f5903be5a202559785d878238139bbb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `composer:1` - linux; amd64

```console
$ docker pull composer@sha256:2d187d1e3690dd53e1327cfc404e38a306ad4750868f7441a3c5e2ab205bcc1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54855901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed3ae91782024b18cfe084200d1237c65e2f29e260130cad55954b7c65313b37`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Fri, 15 Sep 2017 00:03:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Fri, 15 Sep 2017 00:03:15 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 15 Sep 2017 00:03:15 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 15 Sep 2017 00:03:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 15 Sep 2017 00:03:18 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 15 Sep 2017 00:03:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:03:18 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 15 Sep 2017 00:03:19 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_VERSION=7.1.9
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 15 Sep 2017 00:03:41 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 15 Sep 2017 00:03:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:40:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 26 Sep 2017 01:40:53 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:40:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 26 Sep 2017 01:40:53 GMT
CMD ["php" "-a"]
# Tue, 26 Sep 2017 02:53:54 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash zlib-dev
# Tue, 26 Sep 2017 02:53:56 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Tue, 26 Sep 2017 02:54:18 GMT
RUN docker-php-ext-install zip
# Tue, 26 Sep 2017 02:54:18 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 26 Sep 2017 02:54:18 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 26 Sep 2017 02:54:18 GMT
ENV COMPOSER_VERSION=1.5.2
# Tue, 26 Sep 2017 02:54:21 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r "     \$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -rf /tmp/* /tmp/.htaccess
# Tue, 26 Sep 2017 02:54:22 GMT
COPY file:295943a303e8f27de4302b6aa3687bce4b1d1392335efaaab9ecd37bec5ab4c5 in /docker-entrypoint.sh 
# Tue, 26 Sep 2017 02:54:22 GMT
WORKDIR /app
# Tue, 26 Sep 2017 02:54:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 26 Sep 2017 02:54:22 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d492840e685267737473e580fa6f2db2646efbc5848a63b81bc8997307d7f4`  
		Last Modified: Fri, 15 Sep 2017 01:35:16 GMT  
		Size: 1.1 MB (1088226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac280ce7349e48c4493554b99b2c7cfe6b12b3d2b8d23eaef70a74c136bb527`  
		Last Modified: Fri, 15 Sep 2017 01:35:16 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90a95acfcd76e204e7bcc540738c88476e2046bfc3c773813239c36bc5503ba`  
		Last Modified: Fri, 15 Sep 2017 01:35:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e942db381cbc139c389eb5d0ece79b61ad3e7572fd07c505f8ee09404e965c2f`  
		Last Modified: Fri, 15 Sep 2017 01:35:16 GMT  
		Size: 12.3 MB (12330567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea207a663075acdf3c2275d8913c89e4f3b79781ed5a70f6c018e1bc7a2e9711`  
		Last Modified: Fri, 15 Sep 2017 01:35:14 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52adf4c233d76de7b076ae1d01f271cbc78ff895fc374807aa7c6f79de04913`  
		Last Modified: Tue, 26 Sep 2017 02:06:41 GMT  
		Size: 10.7 MB (10697739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51959405ac447432368f32bd3378cab2068865728f6ca06dba627428ac27385`  
		Last Modified: Tue, 26 Sep 2017 02:06:34 GMT  
		Size: 2.2 KB (2162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff455ffd07ca3114192998eda253883383825818d35362b4265f5a867abb33b`  
		Last Modified: Tue, 26 Sep 2017 02:59:08 GMT  
		Size: 27.6 MB (27638740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5956b04ad24aa246309b3f3cb3f17c1cdc5175a848d0780b25ec25af88015fc4`  
		Last Modified: Tue, 26 Sep 2017 02:58:56 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6cb3c886ec8ac537d23dbcd023b07f586cdca85a1363bcc385a851fb8d2ad2`  
		Last Modified: Tue, 26 Sep 2017 02:58:57 GMT  
		Size: 221.5 KB (221509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbf966a3842da0bb91577339925760620017e4f22b7e0d522d6198dee3f0631`  
		Last Modified: Tue, 26 Sep 2017 02:58:57 GMT  
		Size: 489.1 KB (489104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8ca385bfa6496641abb92f775979396e22266128338c2c8e3e451e9de1cad5`  
		Last Modified: Tue, 26 Sep 2017 02:58:57 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ddb865eff692c1fa4f82563bd8a15535c16e0de1ee5e8185244e6501ca70f2`  
		Last Modified: Tue, 26 Sep 2017 02:58:56 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:1.4`

```console
$ docker pull composer@sha256:05ae19b308387c12f4e28ab4ed74d1fc17299b979ac39b183a389bc947d88c6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `composer:1.4` - linux; amd64

```console
$ docker pull composer@sha256:4e9c3a3d5b8e3520cae4953e630d98a873adce91d6939d7bce45977b2c5865fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54854962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a100438493db10ee52c3b0eb9a9c8509729e2fe3b0069a674775154c4eb5d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Fri, 15 Sep 2017 00:03:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Fri, 15 Sep 2017 00:03:15 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 15 Sep 2017 00:03:15 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 15 Sep 2017 00:03:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 15 Sep 2017 00:03:18 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 15 Sep 2017 00:03:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:03:18 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 15 Sep 2017 00:03:19 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_VERSION=7.1.9
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 15 Sep 2017 00:03:41 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 15 Sep 2017 00:03:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:40:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 26 Sep 2017 01:40:53 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:40:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 26 Sep 2017 01:40:53 GMT
CMD ["php" "-a"]
# Tue, 26 Sep 2017 02:53:54 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash zlib-dev
# Tue, 26 Sep 2017 02:53:56 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Tue, 26 Sep 2017 02:54:18 GMT
RUN docker-php-ext-install zip
# Tue, 26 Sep 2017 02:54:18 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 26 Sep 2017 02:54:18 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 26 Sep 2017 02:57:31 GMT
ENV COMPOSER_VERSION=1.4.3
# Tue, 26 Sep 2017 02:57:34 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r "     \$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -rf /tmp/* /tmp/.htaccess
# Tue, 26 Sep 2017 02:57:35 GMT
COPY file:295943a303e8f27de4302b6aa3687bce4b1d1392335efaaab9ecd37bec5ab4c5 in /docker-entrypoint.sh 
# Tue, 26 Sep 2017 02:57:35 GMT
WORKDIR /app
# Tue, 26 Sep 2017 02:57:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 26 Sep 2017 02:57:35 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d492840e685267737473e580fa6f2db2646efbc5848a63b81bc8997307d7f4`  
		Last Modified: Fri, 15 Sep 2017 01:35:16 GMT  
		Size: 1.1 MB (1088226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac280ce7349e48c4493554b99b2c7cfe6b12b3d2b8d23eaef70a74c136bb527`  
		Last Modified: Fri, 15 Sep 2017 01:35:16 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90a95acfcd76e204e7bcc540738c88476e2046bfc3c773813239c36bc5503ba`  
		Last Modified: Fri, 15 Sep 2017 01:35:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e942db381cbc139c389eb5d0ece79b61ad3e7572fd07c505f8ee09404e965c2f`  
		Last Modified: Fri, 15 Sep 2017 01:35:16 GMT  
		Size: 12.3 MB (12330567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea207a663075acdf3c2275d8913c89e4f3b79781ed5a70f6c018e1bc7a2e9711`  
		Last Modified: Fri, 15 Sep 2017 01:35:14 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52adf4c233d76de7b076ae1d01f271cbc78ff895fc374807aa7c6f79de04913`  
		Last Modified: Tue, 26 Sep 2017 02:06:41 GMT  
		Size: 10.7 MB (10697739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51959405ac447432368f32bd3378cab2068865728f6ca06dba627428ac27385`  
		Last Modified: Tue, 26 Sep 2017 02:06:34 GMT  
		Size: 2.2 KB (2162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff455ffd07ca3114192998eda253883383825818d35362b4265f5a867abb33b`  
		Last Modified: Tue, 26 Sep 2017 02:59:08 GMT  
		Size: 27.6 MB (27638740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5956b04ad24aa246309b3f3cb3f17c1cdc5175a848d0780b25ec25af88015fc4`  
		Last Modified: Tue, 26 Sep 2017 02:58:56 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6cb3c886ec8ac537d23dbcd023b07f586cdca85a1363bcc385a851fb8d2ad2`  
		Last Modified: Tue, 26 Sep 2017 02:58:57 GMT  
		Size: 221.5 KB (221509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96876c5cd5501c2eec8df4c64d3ad71554ce6fbbbfffb64d3f91432cd441bef`  
		Last Modified: Tue, 26 Sep 2017 02:59:37 GMT  
		Size: 488.2 KB (488164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08794b69b03da0863c3dc7e5d294717e353b7558fcf09582d1bb877270101246`  
		Last Modified: Tue, 26 Sep 2017 02:59:37 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bbc5d16447b326879651bcf94a2b7bf1f97f7c7116ba49eaa713c33a6b8397`  
		Last Modified: Tue, 26 Sep 2017 02:59:36 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:1.4.3`

```console
$ docker pull composer@sha256:05ae19b308387c12f4e28ab4ed74d1fc17299b979ac39b183a389bc947d88c6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `composer:1.4.3` - linux; amd64

```console
$ docker pull composer@sha256:4e9c3a3d5b8e3520cae4953e630d98a873adce91d6939d7bce45977b2c5865fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54854962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a100438493db10ee52c3b0eb9a9c8509729e2fe3b0069a674775154c4eb5d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Fri, 15 Sep 2017 00:03:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Fri, 15 Sep 2017 00:03:15 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 15 Sep 2017 00:03:15 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 15 Sep 2017 00:03:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 15 Sep 2017 00:03:18 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 15 Sep 2017 00:03:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:03:18 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 15 Sep 2017 00:03:19 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_VERSION=7.1.9
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 15 Sep 2017 00:03:41 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 15 Sep 2017 00:03:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:40:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 26 Sep 2017 01:40:53 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:40:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 26 Sep 2017 01:40:53 GMT
CMD ["php" "-a"]
# Tue, 26 Sep 2017 02:53:54 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash zlib-dev
# Tue, 26 Sep 2017 02:53:56 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Tue, 26 Sep 2017 02:54:18 GMT
RUN docker-php-ext-install zip
# Tue, 26 Sep 2017 02:54:18 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 26 Sep 2017 02:54:18 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 26 Sep 2017 02:57:31 GMT
ENV COMPOSER_VERSION=1.4.3
# Tue, 26 Sep 2017 02:57:34 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r "     \$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -rf /tmp/* /tmp/.htaccess
# Tue, 26 Sep 2017 02:57:35 GMT
COPY file:295943a303e8f27de4302b6aa3687bce4b1d1392335efaaab9ecd37bec5ab4c5 in /docker-entrypoint.sh 
# Tue, 26 Sep 2017 02:57:35 GMT
WORKDIR /app
# Tue, 26 Sep 2017 02:57:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 26 Sep 2017 02:57:35 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d492840e685267737473e580fa6f2db2646efbc5848a63b81bc8997307d7f4`  
		Last Modified: Fri, 15 Sep 2017 01:35:16 GMT  
		Size: 1.1 MB (1088226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac280ce7349e48c4493554b99b2c7cfe6b12b3d2b8d23eaef70a74c136bb527`  
		Last Modified: Fri, 15 Sep 2017 01:35:16 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90a95acfcd76e204e7bcc540738c88476e2046bfc3c773813239c36bc5503ba`  
		Last Modified: Fri, 15 Sep 2017 01:35:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e942db381cbc139c389eb5d0ece79b61ad3e7572fd07c505f8ee09404e965c2f`  
		Last Modified: Fri, 15 Sep 2017 01:35:16 GMT  
		Size: 12.3 MB (12330567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea207a663075acdf3c2275d8913c89e4f3b79781ed5a70f6c018e1bc7a2e9711`  
		Last Modified: Fri, 15 Sep 2017 01:35:14 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52adf4c233d76de7b076ae1d01f271cbc78ff895fc374807aa7c6f79de04913`  
		Last Modified: Tue, 26 Sep 2017 02:06:41 GMT  
		Size: 10.7 MB (10697739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51959405ac447432368f32bd3378cab2068865728f6ca06dba627428ac27385`  
		Last Modified: Tue, 26 Sep 2017 02:06:34 GMT  
		Size: 2.2 KB (2162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff455ffd07ca3114192998eda253883383825818d35362b4265f5a867abb33b`  
		Last Modified: Tue, 26 Sep 2017 02:59:08 GMT  
		Size: 27.6 MB (27638740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5956b04ad24aa246309b3f3cb3f17c1cdc5175a848d0780b25ec25af88015fc4`  
		Last Modified: Tue, 26 Sep 2017 02:58:56 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6cb3c886ec8ac537d23dbcd023b07f586cdca85a1363bcc385a851fb8d2ad2`  
		Last Modified: Tue, 26 Sep 2017 02:58:57 GMT  
		Size: 221.5 KB (221509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96876c5cd5501c2eec8df4c64d3ad71554ce6fbbbfffb64d3f91432cd441bef`  
		Last Modified: Tue, 26 Sep 2017 02:59:37 GMT  
		Size: 488.2 KB (488164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08794b69b03da0863c3dc7e5d294717e353b7558fcf09582d1bb877270101246`  
		Last Modified: Tue, 26 Sep 2017 02:59:37 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bbc5d16447b326879651bcf94a2b7bf1f97f7c7116ba49eaa713c33a6b8397`  
		Last Modified: Tue, 26 Sep 2017 02:59:36 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:1.5`

```console
$ docker pull composer@sha256:3a8fd80b41965cbe93b0b77a6619e3b5f5903be5a202559785d878238139bbb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `composer:1.5` - linux; amd64

```console
$ docker pull composer@sha256:2d187d1e3690dd53e1327cfc404e38a306ad4750868f7441a3c5e2ab205bcc1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54855901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed3ae91782024b18cfe084200d1237c65e2f29e260130cad55954b7c65313b37`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Fri, 15 Sep 2017 00:03:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Fri, 15 Sep 2017 00:03:15 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 15 Sep 2017 00:03:15 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 15 Sep 2017 00:03:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 15 Sep 2017 00:03:18 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 15 Sep 2017 00:03:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:03:18 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 15 Sep 2017 00:03:19 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_VERSION=7.1.9
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 15 Sep 2017 00:03:41 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 15 Sep 2017 00:03:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:40:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 26 Sep 2017 01:40:53 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:40:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 26 Sep 2017 01:40:53 GMT
CMD ["php" "-a"]
# Tue, 26 Sep 2017 02:53:54 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash zlib-dev
# Tue, 26 Sep 2017 02:53:56 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Tue, 26 Sep 2017 02:54:18 GMT
RUN docker-php-ext-install zip
# Tue, 26 Sep 2017 02:54:18 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 26 Sep 2017 02:54:18 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 26 Sep 2017 02:54:18 GMT
ENV COMPOSER_VERSION=1.5.2
# Tue, 26 Sep 2017 02:54:21 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r "     \$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -rf /tmp/* /tmp/.htaccess
# Tue, 26 Sep 2017 02:54:22 GMT
COPY file:295943a303e8f27de4302b6aa3687bce4b1d1392335efaaab9ecd37bec5ab4c5 in /docker-entrypoint.sh 
# Tue, 26 Sep 2017 02:54:22 GMT
WORKDIR /app
# Tue, 26 Sep 2017 02:54:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 26 Sep 2017 02:54:22 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d492840e685267737473e580fa6f2db2646efbc5848a63b81bc8997307d7f4`  
		Last Modified: Fri, 15 Sep 2017 01:35:16 GMT  
		Size: 1.1 MB (1088226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac280ce7349e48c4493554b99b2c7cfe6b12b3d2b8d23eaef70a74c136bb527`  
		Last Modified: Fri, 15 Sep 2017 01:35:16 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90a95acfcd76e204e7bcc540738c88476e2046bfc3c773813239c36bc5503ba`  
		Last Modified: Fri, 15 Sep 2017 01:35:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e942db381cbc139c389eb5d0ece79b61ad3e7572fd07c505f8ee09404e965c2f`  
		Last Modified: Fri, 15 Sep 2017 01:35:16 GMT  
		Size: 12.3 MB (12330567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea207a663075acdf3c2275d8913c89e4f3b79781ed5a70f6c018e1bc7a2e9711`  
		Last Modified: Fri, 15 Sep 2017 01:35:14 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52adf4c233d76de7b076ae1d01f271cbc78ff895fc374807aa7c6f79de04913`  
		Last Modified: Tue, 26 Sep 2017 02:06:41 GMT  
		Size: 10.7 MB (10697739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51959405ac447432368f32bd3378cab2068865728f6ca06dba627428ac27385`  
		Last Modified: Tue, 26 Sep 2017 02:06:34 GMT  
		Size: 2.2 KB (2162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff455ffd07ca3114192998eda253883383825818d35362b4265f5a867abb33b`  
		Last Modified: Tue, 26 Sep 2017 02:59:08 GMT  
		Size: 27.6 MB (27638740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5956b04ad24aa246309b3f3cb3f17c1cdc5175a848d0780b25ec25af88015fc4`  
		Last Modified: Tue, 26 Sep 2017 02:58:56 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6cb3c886ec8ac537d23dbcd023b07f586cdca85a1363bcc385a851fb8d2ad2`  
		Last Modified: Tue, 26 Sep 2017 02:58:57 GMT  
		Size: 221.5 KB (221509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbf966a3842da0bb91577339925760620017e4f22b7e0d522d6198dee3f0631`  
		Last Modified: Tue, 26 Sep 2017 02:58:57 GMT  
		Size: 489.1 KB (489104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8ca385bfa6496641abb92f775979396e22266128338c2c8e3e451e9de1cad5`  
		Last Modified: Tue, 26 Sep 2017 02:58:57 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ddb865eff692c1fa4f82563bd8a15535c16e0de1ee5e8185244e6501ca70f2`  
		Last Modified: Tue, 26 Sep 2017 02:58:56 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:1.5.2`

```console
$ docker pull composer@sha256:3a8fd80b41965cbe93b0b77a6619e3b5f5903be5a202559785d878238139bbb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `composer:1.5.2` - linux; amd64

```console
$ docker pull composer@sha256:2d187d1e3690dd53e1327cfc404e38a306ad4750868f7441a3c5e2ab205bcc1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54855901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed3ae91782024b18cfe084200d1237c65e2f29e260130cad55954b7c65313b37`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Fri, 15 Sep 2017 00:03:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Fri, 15 Sep 2017 00:03:15 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 15 Sep 2017 00:03:15 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 15 Sep 2017 00:03:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 15 Sep 2017 00:03:18 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 15 Sep 2017 00:03:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:03:18 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 15 Sep 2017 00:03:19 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_VERSION=7.1.9
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 15 Sep 2017 00:03:41 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 15 Sep 2017 00:03:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:40:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 26 Sep 2017 01:40:53 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:40:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 26 Sep 2017 01:40:53 GMT
CMD ["php" "-a"]
# Tue, 26 Sep 2017 02:53:54 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash zlib-dev
# Tue, 26 Sep 2017 02:53:56 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Tue, 26 Sep 2017 02:54:18 GMT
RUN docker-php-ext-install zip
# Tue, 26 Sep 2017 02:54:18 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 26 Sep 2017 02:54:18 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 26 Sep 2017 02:54:18 GMT
ENV COMPOSER_VERSION=1.5.2
# Tue, 26 Sep 2017 02:54:21 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r "     \$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -rf /tmp/* /tmp/.htaccess
# Tue, 26 Sep 2017 02:54:22 GMT
COPY file:295943a303e8f27de4302b6aa3687bce4b1d1392335efaaab9ecd37bec5ab4c5 in /docker-entrypoint.sh 
# Tue, 26 Sep 2017 02:54:22 GMT
WORKDIR /app
# Tue, 26 Sep 2017 02:54:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 26 Sep 2017 02:54:22 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d492840e685267737473e580fa6f2db2646efbc5848a63b81bc8997307d7f4`  
		Last Modified: Fri, 15 Sep 2017 01:35:16 GMT  
		Size: 1.1 MB (1088226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac280ce7349e48c4493554b99b2c7cfe6b12b3d2b8d23eaef70a74c136bb527`  
		Last Modified: Fri, 15 Sep 2017 01:35:16 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90a95acfcd76e204e7bcc540738c88476e2046bfc3c773813239c36bc5503ba`  
		Last Modified: Fri, 15 Sep 2017 01:35:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e942db381cbc139c389eb5d0ece79b61ad3e7572fd07c505f8ee09404e965c2f`  
		Last Modified: Fri, 15 Sep 2017 01:35:16 GMT  
		Size: 12.3 MB (12330567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea207a663075acdf3c2275d8913c89e4f3b79781ed5a70f6c018e1bc7a2e9711`  
		Last Modified: Fri, 15 Sep 2017 01:35:14 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52adf4c233d76de7b076ae1d01f271cbc78ff895fc374807aa7c6f79de04913`  
		Last Modified: Tue, 26 Sep 2017 02:06:41 GMT  
		Size: 10.7 MB (10697739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51959405ac447432368f32bd3378cab2068865728f6ca06dba627428ac27385`  
		Last Modified: Tue, 26 Sep 2017 02:06:34 GMT  
		Size: 2.2 KB (2162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff455ffd07ca3114192998eda253883383825818d35362b4265f5a867abb33b`  
		Last Modified: Tue, 26 Sep 2017 02:59:08 GMT  
		Size: 27.6 MB (27638740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5956b04ad24aa246309b3f3cb3f17c1cdc5175a848d0780b25ec25af88015fc4`  
		Last Modified: Tue, 26 Sep 2017 02:58:56 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6cb3c886ec8ac537d23dbcd023b07f586cdca85a1363bcc385a851fb8d2ad2`  
		Last Modified: Tue, 26 Sep 2017 02:58:57 GMT  
		Size: 221.5 KB (221509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbf966a3842da0bb91577339925760620017e4f22b7e0d522d6198dee3f0631`  
		Last Modified: Tue, 26 Sep 2017 02:58:57 GMT  
		Size: 489.1 KB (489104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8ca385bfa6496641abb92f775979396e22266128338c2c8e3e451e9de1cad5`  
		Last Modified: Tue, 26 Sep 2017 02:58:57 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ddb865eff692c1fa4f82563bd8a15535c16e0de1ee5e8185244e6501ca70f2`  
		Last Modified: Tue, 26 Sep 2017 02:58:56 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:latest`

```console
$ docker pull composer@sha256:3a8fd80b41965cbe93b0b77a6619e3b5f5903be5a202559785d878238139bbb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `composer:latest` - linux; amd64

```console
$ docker pull composer@sha256:2d187d1e3690dd53e1327cfc404e38a306ad4750868f7441a3c5e2ab205bcc1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54855901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed3ae91782024b18cfe084200d1237c65e2f29e260130cad55954b7c65313b37`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Fri, 15 Sep 2017 00:03:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Fri, 15 Sep 2017 00:03:15 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 15 Sep 2017 00:03:15 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 15 Sep 2017 00:03:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 15 Sep 2017 00:03:18 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 15 Sep 2017 00:03:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:03:18 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 15 Sep 2017 00:03:19 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_VERSION=7.1.9
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 15 Sep 2017 00:03:41 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 15 Sep 2017 00:03:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:40:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 26 Sep 2017 01:40:53 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:40:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 26 Sep 2017 01:40:53 GMT
CMD ["php" "-a"]
# Tue, 26 Sep 2017 02:53:54 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash zlib-dev
# Tue, 26 Sep 2017 02:53:56 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Tue, 26 Sep 2017 02:54:18 GMT
RUN docker-php-ext-install zip
# Tue, 26 Sep 2017 02:54:18 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 26 Sep 2017 02:54:18 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 26 Sep 2017 02:54:18 GMT
ENV COMPOSER_VERSION=1.5.2
# Tue, 26 Sep 2017 02:54:21 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r "     \$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -rf /tmp/* /tmp/.htaccess
# Tue, 26 Sep 2017 02:54:22 GMT
COPY file:295943a303e8f27de4302b6aa3687bce4b1d1392335efaaab9ecd37bec5ab4c5 in /docker-entrypoint.sh 
# Tue, 26 Sep 2017 02:54:22 GMT
WORKDIR /app
# Tue, 26 Sep 2017 02:54:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 26 Sep 2017 02:54:22 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d492840e685267737473e580fa6f2db2646efbc5848a63b81bc8997307d7f4`  
		Last Modified: Fri, 15 Sep 2017 01:35:16 GMT  
		Size: 1.1 MB (1088226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac280ce7349e48c4493554b99b2c7cfe6b12b3d2b8d23eaef70a74c136bb527`  
		Last Modified: Fri, 15 Sep 2017 01:35:16 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90a95acfcd76e204e7bcc540738c88476e2046bfc3c773813239c36bc5503ba`  
		Last Modified: Fri, 15 Sep 2017 01:35:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e942db381cbc139c389eb5d0ece79b61ad3e7572fd07c505f8ee09404e965c2f`  
		Last Modified: Fri, 15 Sep 2017 01:35:16 GMT  
		Size: 12.3 MB (12330567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea207a663075acdf3c2275d8913c89e4f3b79781ed5a70f6c018e1bc7a2e9711`  
		Last Modified: Fri, 15 Sep 2017 01:35:14 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52adf4c233d76de7b076ae1d01f271cbc78ff895fc374807aa7c6f79de04913`  
		Last Modified: Tue, 26 Sep 2017 02:06:41 GMT  
		Size: 10.7 MB (10697739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51959405ac447432368f32bd3378cab2068865728f6ca06dba627428ac27385`  
		Last Modified: Tue, 26 Sep 2017 02:06:34 GMT  
		Size: 2.2 KB (2162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff455ffd07ca3114192998eda253883383825818d35362b4265f5a867abb33b`  
		Last Modified: Tue, 26 Sep 2017 02:59:08 GMT  
		Size: 27.6 MB (27638740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5956b04ad24aa246309b3f3cb3f17c1cdc5175a848d0780b25ec25af88015fc4`  
		Last Modified: Tue, 26 Sep 2017 02:58:56 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6cb3c886ec8ac537d23dbcd023b07f586cdca85a1363bcc385a851fb8d2ad2`  
		Last Modified: Tue, 26 Sep 2017 02:58:57 GMT  
		Size: 221.5 KB (221509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbf966a3842da0bb91577339925760620017e4f22b7e0d522d6198dee3f0631`  
		Last Modified: Tue, 26 Sep 2017 02:58:57 GMT  
		Size: 489.1 KB (489104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8ca385bfa6496641abb92f775979396e22266128338c2c8e3e451e9de1cad5`  
		Last Modified: Tue, 26 Sep 2017 02:58:57 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ddb865eff692c1fa4f82563bd8a15535c16e0de1ee5e8185244e6501ca70f2`  
		Last Modified: Tue, 26 Sep 2017 02:58:56 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
