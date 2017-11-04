## `wordpress:cli-1.4.0-php7.1`

```console
$ docker pull wordpress@sha256:54da5a5d35facc5b0e91e70ee05441a511e94b7f795b8e93c1504360de855702
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `wordpress:cli-1.4.0-php7.1` - linux; amd64

```console
$ docker pull wordpress@sha256:f70d7fa7b08f98d0aacfc66a914de3ca82c3547e03ae7ff71ac2c09ad403c01e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36252047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaa132039037c8c4b7e61f05fd55fa2a3428bbbf0f1f3ddf85f4fb1cf2cc8885`
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
# Thu, 26 Oct 2017 02:09:40 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Mon, 30 Oct 2017 22:37:38 GMT
ENV PHP_VERSION=7.1.11
# Mon, 30 Oct 2017 22:37:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.11.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.11.tar.xz.asc/from/this/mirror
# Mon, 30 Oct 2017 22:37:39 GMT
ENV PHP_SHA256=074093e9d7d21afedc5106904218a80a47b854abe368d2728ed22184c884893e PHP_MD5=
# Mon, 30 Oct 2017 22:37:54 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 30 Oct 2017 22:37:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 30 Oct 2017 22:41:46 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 30 Oct 2017 22:44:03 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Mon, 30 Oct 2017 22:44:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 30 Oct 2017 22:44:04 GMT
CMD ["php" "-a"]
# Sat, 04 Nov 2017 10:27:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 04 Nov 2017 10:27:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 04 Nov 2017 10:27:07 GMT
RUN apk add --no-cache 		less 		mysql-client
# Sat, 04 Nov 2017 10:27:08 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Sat, 04 Nov 2017 10:27:08 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 10:27:08 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 10:27:08 GMT
ENV WORDPRESS_CLI_GPG_KEY=3B9191625F3B1F1BF5DD3B47673A02042F6B6B7F
# Sat, 04 Nov 2017 10:27:09 GMT
ENV WORDPRESS_CLI_VERSION=1.4.0
# Sat, 04 Nov 2017 10:27:09 GMT
ENV WORDPRESS_CLI_SHA512=da1abdced95e6f90986c66ad3239a573824ef9a7dd0078b8f1df685e19a62af68325b9b7388d5406df5383b35e48c50cc82c0c529d05fc01dcc4c9175229b517
# Sat, 04 Nov 2017 10:27:20 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -r "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Sat, 04 Nov 2017 10:27:21 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Sat, 04 Nov 2017 10:27:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 10:27:21 GMT
USER [www-data]
# Sat, 04 Nov 2017 10:27:22 GMT
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
	-	`sha256:006d0646143d9e3b376dcba2473801d435ddec7a19f2197bb006334c4172f486`  
		Last Modified: Mon, 30 Oct 2017 23:55:47 GMT  
		Size: 12.2 MB (12188680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ef8b0e34f68617197392d02408f64f6d2ac7da945b90bfc9a46faa05a7feff`  
		Last Modified: Mon, 30 Oct 2017 23:55:45 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcc3ee8c6f1754cccbf44d08f633b9829c8205c8883a41ff1419ffa0250db82`  
		Last Modified: Mon, 30 Oct 2017 23:55:49 GMT  
		Size: 10.7 MB (10718065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292dc7d11213c3dc4931a1b3d4ab76d9f50531b8ed0f55eae24b0082445a915f`  
		Last Modified: Mon, 30 Oct 2017 23:55:46 GMT  
		Size: 2.2 KB (2159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b92007cb4a72406e7c4c53f5293f11e21d12ed86e128295a69ba6a716851d35`  
		Last Modified: Sat, 04 Nov 2017 10:35:50 GMT  
		Size: 830.1 KB (830143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5aa6c85d7dafdfaf0623e024d31bd62150642c6df0344e8daa72d9876fbe8e8`  
		Last Modified: Sat, 04 Nov 2017 10:35:48 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0f70277e12aba792adac70d2dc9419b8b6b51a1fc22144736ae540aca6da16`  
		Last Modified: Sat, 04 Nov 2017 10:35:49 GMT  
		Size: 7.8 MB (7760049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbd9ee69979be7840a16ee08b81ce90be8b155f362065bc70e2da4cd55635fd`  
		Last Modified: Sat, 04 Nov 2017 10:35:48 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9d0e4d569c29e4e24ac9fca8b32603be4a7aab117f44fa487fa4e76b7e071e`  
		Last Modified: Sat, 04 Nov 2017 10:35:49 GMT  
		Size: 1.1 MB (1056158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa4b45cd73b5c7c0f4e4a30bc4db9bc901fb3ec1f763f9194159b023b1f9ee`  
		Last Modified: Sat, 04 Nov 2017 10:35:48 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
