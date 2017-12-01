## `wordpress:cli-php7.0`

```console
$ docker pull wordpress@sha256:7ee615db0d2b8ce9f9e12ac41605a067dc4416d6a40f880ce246e13f935f17b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `wordpress:cli-php7.0` - linux; amd64

```console
$ docker pull wordpress@sha256:dda7ebf02ae8a8b26faf9c1f7df39b988693b968add14780bdc078c0099a3c14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37090039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d64501054a7dd87516505e4292d0d72d56c18eab26f6436c9b6d06d638a01d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 02:00:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 01 Dec 2017 02:00:42 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Fri, 01 Dec 2017 02:00:42 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Dec 2017 02:00:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 02:00:43 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 02:39:22 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 01 Dec 2017 02:39:22 GMT
ENV PHP_VERSION=7.0.26
# Fri, 01 Dec 2017 02:39:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 02:39:23 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Fri, 01 Dec 2017 02:39:35 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 01 Dec 2017 02:39:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:43:05 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 02:43:06 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:43:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 02:43:06 GMT
CMD ["php" "-a"]
# Fri, 01 Dec 2017 05:24:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 01 Dec 2017 05:24:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 01 Dec 2017 05:24:59 GMT
RUN apk add --no-cache 		less 		mysql-client
# Fri, 01 Dec 2017 05:25:00 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Fri, 01 Dec 2017 05:25:01 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 05:25:01 GMT
VOLUME [/var/www/html]
# Fri, 01 Dec 2017 05:25:01 GMT
ENV WORDPRESS_CLI_GPG_KEY=3B9191625F3B1F1BF5DD3B47673A02042F6B6B7F
# Fri, 01 Dec 2017 05:25:01 GMT
ENV WORDPRESS_CLI_VERSION=1.4.1
# Fri, 01 Dec 2017 05:25:01 GMT
ENV WORDPRESS_CLI_SHA512=f861b5499e0b555a791ab6d76a0f3b1f033ae22aaee63dcdfaf8a0bd44886876690d40c6c95366d60f32d55f6282273e55f8ecdfa8787aec7b435cffe45790e7
# Fri, 01 Dec 2017 23:06:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -r "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Fri, 01 Dec 2017 23:06:15 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Fri, 01 Dec 2017 23:06:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 23:06:16 GMT
USER [www-data]
# Fri, 01 Dec 2017 23:06:16 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36c84dd5f489a5a08bd99112752163cdccac63a29caa202e13c8a354a3c2cb1`  
		Last Modified: Fri, 01 Dec 2017 03:25:46 GMT  
		Size: 1.3 MB (1309150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba904b2760f4309c80b4a722c3feb578a3a3df1670e5382b3e434a58523bdf0`  
		Last Modified: Fri, 01 Dec 2017 03:25:45 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba216c3bb702bbf7f62655b995b73bca47d674ab824b4e133c9eb8aceed5142`  
		Last Modified: Fri, 01 Dec 2017 03:25:43 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedfa1e42856b8b806c8b1e2f3f4756aedb7472e5c08cdfe3b51eda088e6c31e`  
		Last Modified: Fri, 01 Dec 2017 03:30:54 GMT  
		Size: 12.0 MB (11985584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c45855201deaf1df7cfe051b30e268b42ad1d361d81a6b16619a9f17cbe4a0c`  
		Last Modified: Fri, 01 Dec 2017 03:30:53 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a41b9a6d86b4a2f02d2712e1b0910933f8601554beb73c94e79621729bbab0`  
		Last Modified: Fri, 01 Dec 2017 03:30:56 GMT  
		Size: 11.9 MB (11859175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf0e613d98d5cd506e8d367716201625f4156152b67a5f30e0b74721ff52101`  
		Last Modified: Fri, 01 Dec 2017 03:30:53 GMT  
		Size: 2.2 KB (2157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd55c56e311a30827591d8073a09cde25fd2257e0bb5154d970d2d3c1c04c2d6`  
		Last Modified: Fri, 01 Dec 2017 23:16:35 GMT  
		Size: 744.8 KB (744848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3ea766faad34de05b2bc9ba6f9a52cc1375b3240f80d85be076a93ced473ba`  
		Last Modified: Fri, 01 Dec 2017 23:16:32 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6968d04e373c6d01fbb7aca0c0d2f3afeb05304ba2c2a7dd11db83803e5fee8f`  
		Last Modified: Fri, 01 Dec 2017 23:16:34 GMT  
		Size: 7.8 MB (7759962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704d1b16e8cf31938971ed8030741a54bc176f88835db87026d52bd47553dcea`  
		Last Modified: Fri, 01 Dec 2017 23:16:32 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacc1002dfcf05df7000462ff9497c69a6a85d3629d26b2b73824c10c2921cac`  
		Last Modified: Fri, 01 Dec 2017 23:16:33 GMT  
		Size: 1.0 MB (1041329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96aefc73b7f71a55b799dc30faf848c2698a004ee591b161e57198b2f9443e1c`  
		Last Modified: Fri, 01 Dec 2017 23:16:32 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
