## `wordpress:cli-php7.2`

```console
$ docker pull wordpress@sha256:144cb8b97baab349e027ec2b887f1fa61740ff770ac392a5f5a8c36fe946fde1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `wordpress:cli-php7.2` - linux; amd64

```console
$ docker pull wordpress@sha256:876766d5e5f9257cf574f829f1e848daf766ef6910b62640ec84c1d049c2b775
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36520751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8b2dd08a13eb1baa2d23123f430fb2758e2b35b0fab37358b9c1b24305df9bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 18:48:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 01 Dec 2017 18:48:53 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 01 Dec 2017 18:48:55 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Dec 2017 18:48:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 18:49:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 18:49:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 18:49:00 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 18:49:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 18:49:01 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 01 Dec 2017 18:49:05 GMT
ENV PHP_VERSION=7.2.0
# Fri, 01 Dec 2017 18:49:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 18:49:10 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Fri, 01 Dec 2017 18:49:23 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 01 Dec 2017 18:49:28 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 18:54:13 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 18:55:48 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Fri, 01 Dec 2017 18:55:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 18:55:48 GMT
CMD ["php" "-a"]
# Sat, 09 Dec 2017 01:25:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 09 Dec 2017 01:25:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 09 Dec 2017 01:25:08 GMT
RUN apk add --no-cache 		less 		mysql-client
# Sat, 09 Dec 2017 01:25:08 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Sat, 09 Dec 2017 01:25:09 GMT
WORKDIR /var/www/html
# Sat, 09 Dec 2017 01:25:09 GMT
VOLUME [/var/www/html]
# Sat, 09 Dec 2017 01:25:09 GMT
ENV WORDPRESS_CLI_GPG_KEY=3B9191625F3B1F1BF5DD3B47673A02042F6B6B7F
# Sat, 09 Dec 2017 01:25:09 GMT
ENV WORDPRESS_CLI_VERSION=1.4.1
# Sat, 09 Dec 2017 01:25:09 GMT
ENV WORDPRESS_CLI_SHA512=f861b5499e0b555a791ab6d76a0f3b1f033ae22aaee63dcdfaf8a0bd44886876690d40c6c95366d60f32d55f6282273e55f8ecdfa8787aec7b435cffe45790e7
# Sat, 09 Dec 2017 01:25:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Sat, 09 Dec 2017 01:25:19 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Sat, 09 Dec 2017 01:25:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 01:25:19 GMT
USER [www-data]
# Sat, 09 Dec 2017 01:25:19 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7de45d7beda61b695f5eb8b12e1a75394ec9fe1a81460aa5c62ef54f42e68aa`  
		Last Modified: Fri, 01 Dec 2017 20:06:27 GMT  
		Size: 1.4 MB (1384679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecd1e06df9c33452e8a85bcd7438d90bc6efe2e75d7e9b4a7f08b9d9862bd8e`  
		Last Modified: Fri, 01 Dec 2017 20:06:26 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92beda39d928fd952a7d08dbdf12372ff6be8af5774585506052e1eacf4ad33d`  
		Last Modified: Fri, 01 Dec 2017 20:06:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e0e11964a592a37934f571cb4c3dee1c16094b1d408ebd297b776cbe0fe4d6`  
		Last Modified: Fri, 01 Dec 2017 20:06:26 GMT  
		Size: 12.0 MB (12034030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b61ab10d156398785138d42c20752583717576d1217795501059d775dea162b`  
		Last Modified: Fri, 01 Dec 2017 20:06:24 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:531ed962c8f3b0379ef8302de646f34113f7d982a29a46b744998c5df73bef3e`  
		Last Modified: Fri, 01 Dec 2017 20:06:28 GMT  
		Size: 11.4 MB (11444535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d630ab6b85ea6350f2e3085e41a373ffdb7a0ad50e6ef9c0639ac231097369`  
		Last Modified: Fri, 01 Dec 2017 20:06:23 GMT  
		Size: 2.2 KB (2160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd94c4e8d2ffc7958431e58a1d8fe235d588329266271ec983e82679bd58bf9`  
		Last Modified: Sat, 09 Dec 2017 01:39:38 GMT  
		Size: 846.1 KB (846072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230778260a37a1230893cf4f49f8cb57c7c6d27b0dd634b257a47ec413202c8a`  
		Last Modified: Sat, 09 Dec 2017 01:39:34 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d0bacdb46a6d9c3abeaf2f2f1a35efe6951dea3d71f642ade5cd272e101541`  
		Last Modified: Sat, 09 Dec 2017 01:39:36 GMT  
		Size: 7.8 MB (7773373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f0185772c0ec6823c050ae760b44baef5d71d9b787a40458cff0cba1f95405a`  
		Last Modified: Sat, 09 Dec 2017 01:39:34 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf09bc754307c242ad4e0e78715beb08c26858638c59953f571670533a2f1a8`  
		Last Modified: Sat, 09 Dec 2017 01:39:34 GMT  
		Size: 1.0 MB (1041601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46faf69b7104d97d93a658a7f06e43e42233a8c1d53686715e9b48794d17c792`  
		Last Modified: Sat, 09 Dec 2017 01:39:34 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-php7.2` - linux; 386

```console
$ docker pull wordpress@sha256:23690e0d5c7ab762c8909fd1b773af98d14e2114edb443403ddad08d1a3cf827
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.5 MB (38519307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1086dc84fe7bd1262ac94b0635a66b45e177c7e424bb1c9af7ac2f5d062cba1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 10:15:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 01 Dec 2017 10:15:45 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 01 Dec 2017 10:15:46 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Dec 2017 10:15:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 10:15:47 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 10:15:47 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 10:15:47 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 10:15:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 10:15:48 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 01 Dec 2017 10:15:48 GMT
ENV PHP_VERSION=7.2.0
# Fri, 01 Dec 2017 10:15:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 10:15:48 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Fri, 01 Dec 2017 10:16:06 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 01 Dec 2017 10:16:06 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 10:20:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 10:20:59 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Fri, 01 Dec 2017 10:20:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 10:20:59 GMT
CMD ["php" "-a"]
# Sat, 09 Dec 2017 06:34:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 09 Dec 2017 06:40:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 09 Dec 2017 06:40:31 GMT
RUN apk add --no-cache 		less 		mysql-client
# Sat, 09 Dec 2017 06:40:39 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Sat, 09 Dec 2017 06:40:39 GMT
WORKDIR /var/www/html
# Sat, 09 Dec 2017 06:40:39 GMT
VOLUME [/var/www/html]
# Sat, 09 Dec 2017 06:40:40 GMT
ENV WORDPRESS_CLI_GPG_KEY=3B9191625F3B1F1BF5DD3B47673A02042F6B6B7F
# Sat, 09 Dec 2017 06:40:40 GMT
ENV WORDPRESS_CLI_VERSION=1.4.1
# Sat, 09 Dec 2017 06:40:40 GMT
ENV WORDPRESS_CLI_SHA512=f861b5499e0b555a791ab6d76a0f3b1f033ae22aaee63dcdfaf8a0bd44886876690d40c6c95366d60f32d55f6282273e55f8ecdfa8787aec7b435cffe45790e7
# Sat, 09 Dec 2017 06:41:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Sat, 09 Dec 2017 06:41:16 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Sat, 09 Dec 2017 06:41:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 06:41:16 GMT
USER [www-data]
# Sat, 09 Dec 2017 06:41:17 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241284dd6990a200e39d5c51505aabf96dae828a1fd3e46ec2abcce395561cc3`  
		Last Modified: Fri, 01 Dec 2017 12:36:29 GMT  
		Size: 1.5 MB (1481807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d33d795be3b40c48d6d1c484027a84445adcd89daaa8d7e5c718a8fedfbeb5`  
		Last Modified: Fri, 01 Dec 2017 12:36:28 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834623b83dedeee1c9a45c1fbba1aed0a83e4144b7f4b1f1be2288c87738ceff`  
		Last Modified: Fri, 01 Dec 2017 12:36:29 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fe1945285e8d998a6a5822d88ae2b7738f45f5f1dd25b2c1dc7f4be1c549cb`  
		Last Modified: Fri, 01 Dec 2017 12:36:30 GMT  
		Size: 12.0 MB (12034414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6662c7a38488a5bb3d12c9a7195b547c94b7026176508efbe29cc07b399147ab`  
		Last Modified: Fri, 01 Dec 2017 12:36:29 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa89a960b2bc2d623f70d159381c02ffa75efb5ecce52f379bdfe9162765e45f`  
		Last Modified: Fri, 01 Dec 2017 12:36:34 GMT  
		Size: 13.1 MB (13087756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db6a0087da78a4e29e9aa211ba91632f003de59a673185d76080c12d2838248`  
		Last Modified: Fri, 01 Dec 2017 12:36:29 GMT  
		Size: 2.2 KB (2156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3fdd6dff1b27aad64ca2fb6052f01b24a52ad696711ba2dd15f7436f1839b4`  
		Last Modified: Sat, 09 Dec 2017 06:55:01 GMT  
		Size: 892.6 KB (892567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b17ed90776ec4736f875e480d54814105a02fef98eb7c7304ac1aa27052a0d3`  
		Last Modified: Sat, 09 Dec 2017 06:55:00 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663a711750bc0ba15428fae26846b7d1efc487c21511d352b5ec4668217725f0`  
		Last Modified: Sat, 09 Dec 2017 06:55:04 GMT  
		Size: 7.9 MB (7931065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064dc0f3de80708bd6e93c4660b1661eca562e88b10a4118ec3526bd7d762d09`  
		Last Modified: Sat, 09 Dec 2017 06:55:01 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e924dce9f857010925fe79e3a4e38e5a2e7e18a2673e2478dae5e5b1bb2883fa`  
		Last Modified: Sat, 09 Dec 2017 06:55:00 GMT  
		Size: 1.0 MB (1040970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48155c568ad7e4b88c002684c70ce432c3c74f23e6b8bd4cc2568e959ac28a05`  
		Last Modified: Sat, 09 Dec 2017 06:55:01 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
