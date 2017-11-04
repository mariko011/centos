## `wordpress:cli-1.4.0-php7.0`

```console
$ docker pull wordpress@sha256:c6ed3414bd2bb7c4ff807867d79c7340c99ffffbabcc6600aeee649ccbc75a30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `wordpress:cli-1.4.0-php7.0` - linux; amd64

```console
$ docker pull wordpress@sha256:f796725f31ceac94a2faee36a644b5dbf3ee5c1550b0ce84b87f0c3b3d2648ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35622948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7c728fdd1d4d55428121109fb7e929a0104e10c9967387398685f02e49a55c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 02:09:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Thu, 26 Oct 2017 02:09:38 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Thu, 26 Oct 2017 02:09:39 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 26 Oct 2017 02:09:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 26 Oct 2017 02:09:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 26 Oct 2017 02:09:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 02:09:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 02:09:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 26 Oct 2017 02:36:21 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 26 Oct 2017 20:32:01 GMT
ENV PHP_VERSION=7.0.25
# Thu, 26 Oct 2017 20:32:02 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.25.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.25.tar.xz.asc/from/this/mirror
# Thu, 26 Oct 2017 20:32:02 GMT
ENV PHP_SHA256=5cc14bd20fb2226f6d34465662425cd100441bde9042ea1cef2e4506d6ded8cc PHP_MD5=
# Thu, 26 Oct 2017 22:24:59 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 26 Oct 2017 22:24:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 26 Oct 2017 22:28:17 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 26 Oct 2017 22:28:18 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Thu, 26 Oct 2017 22:28:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 26 Oct 2017 22:28:18 GMT
CMD ["php" "-a"]
# Sat, 04 Nov 2017 10:25:44 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 04 Nov 2017 10:25:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 04 Nov 2017 10:25:47 GMT
RUN apk add --no-cache 		less 		mysql-client
# Sat, 04 Nov 2017 10:25:48 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Sat, 04 Nov 2017 10:25:48 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 10:25:48 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 10:25:49 GMT
ENV WORDPRESS_CLI_GPG_KEY=3B9191625F3B1F1BF5DD3B47673A02042F6B6B7F
# Sat, 04 Nov 2017 10:25:49 GMT
ENV WORDPRESS_CLI_VERSION=1.4.0
# Sat, 04 Nov 2017 10:25:49 GMT
ENV WORDPRESS_CLI_SHA512=da1abdced95e6f90986c66ad3239a573824ef9a7dd0078b8f1df685e19a62af68325b9b7388d5406df5383b35e48c50cc82c0c529d05fc01dcc4c9175229b517
# Sat, 04 Nov 2017 10:26:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -r "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Sat, 04 Nov 2017 10:26:04 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Sat, 04 Nov 2017 10:26:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 10:26:04 GMT
USER [www-data]
# Sat, 04 Nov 2017 10:26:04 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7714ce34247858cb9e07dddd918d6aab795389c9821e77e10edceaee78feee18`  
		Last Modified: Thu, 26 Oct 2017 03:16:37 GMT  
		Size: 1.3 MB (1308944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412dcd2f93dcaf9cff2500231b729aecf237c08f74a12e85aa150c43777c27e5`  
		Last Modified: Thu, 26 Oct 2017 03:16:38 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acafa3a5cc8368e875004fafd3ffd5077704b40f468dabdcc4849a17058a749`  
		Last Modified: Thu, 26 Oct 2017 03:16:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c355ce1b877f374d909a83345ffdeebb7624e95f8034214dfe8f8cdac6649a3d`  
		Last Modified: Thu, 26 Oct 2017 22:44:55 GMT  
		Size: 12.0 MB (11982293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd11a92efe4c51963e26e8d479e3d9a29c7b618b339ad8e2c340b93de38a8b8`  
		Last Modified: Thu, 26 Oct 2017 22:44:51 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d36c3cd9de7756e84a0f01d89062c33e2cc5369890cb3ae9ee8667b4bdfc51`  
		Last Modified: Thu, 26 Oct 2017 22:44:55 GMT  
		Size: 10.4 MB (10380217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b5cc1642d340ae04775d897e6c2048f2361eceabf8dd6ada5c78be3d38f667`  
		Last Modified: Thu, 26 Oct 2017 22:44:52 GMT  
		Size: 2.2 KB (2159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f5781ad5e0915134a92194a1ecfb0032b6b6695f18cf444c0a21dba78f16f8`  
		Last Modified: Sat, 04 Nov 2017 10:35:28 GMT  
		Size: 745.3 KB (745297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3defdab44fc6a23493352212197bf86bb30efdabb889d2d0f5cf6f5f0a3880b`  
		Last Modified: Sat, 04 Nov 2017 10:35:25 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356e55e670a95786655ee039a09c5d8dba6cb51e7dce44a8cc0cab4790ff46c7`  
		Last Modified: Sat, 04 Nov 2017 10:35:27 GMT  
		Size: 7.8 MB (7760042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f52653d2f78e789265d5b61fc7508d7f14c3c2c4b5c63d7c9239798c1279f50`  
		Last Modified: Sat, 04 Nov 2017 10:35:25 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dfe5221bb7e19b07cb6b151b01dd826cc70e84254e92c00268ad846eabe55c`  
		Last Modified: Sat, 04 Nov 2017 10:35:26 GMT  
		Size: 1.1 MB (1056154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3af8e828d4287a6b6c7323d0dbadecdda8490035ec0ed695669a7097e54db3c`  
		Last Modified: Sat, 04 Nov 2017 10:35:26 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
