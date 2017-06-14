## `wordpress:cli-1.1.0-php7.1`

```console
$ docker pull wordpress@sha256:2308b9523c51352d99ae44552e0a7b1895bca4eb1b619d32d0a51b7eafe63d84
```

-	Platforms:
	-	linux; amd64

### `wordpress:cli-1.1.0-php7.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (37044698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2fd4227d1a3f14d8a33e59380d72d3b8c566f4763554d3211f46dab180474f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 25 May 2017 23:31:54 GMT
ADD file:c34582524a7c4fa2ccb67d48efaa6edacff8bc8115a26a511b2385a03f56aa8e in / 
# Thu, 25 May 2017 23:31:55 GMT
CMD ["/bin/sh"]
# Fri, 26 May 2017 14:39:18 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Fri, 26 May 2017 14:39:22 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 26 May 2017 14:39:24 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 26 May 2017 14:39:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 26 May 2017 14:39:26 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 26 May 2017 14:39:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 26 May 2017 14:39:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 26 May 2017 14:39:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 26 May 2017 14:39:29 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Mon, 12 Jun 2017 21:18:57 GMT
ENV PHP_VERSION=7.1.6
# Mon, 12 Jun 2017 21:18:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 12 Jun 2017 21:18:58 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 12 Jun 2017 21:19:08 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 12 Jun 2017 21:19:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:24:23 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 12 Jun 2017 21:24:32 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:24:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 12 Jun 2017 21:24:34 GMT
CMD ["php" "-a"]
# Mon, 12 Jun 2017 23:24:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Mon, 12 Jun 2017 23:24:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 12 Jun 2017 23:24:34 GMT
RUN apk add --no-cache 		less 		mysql-client
# Mon, 12 Jun 2017 23:24:35 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Mon, 12 Jun 2017 23:24:36 GMT
WORKDIR /var/www/html
# Mon, 12 Jun 2017 23:24:37 GMT
VOLUME [/var/www/html]
# Mon, 12 Jun 2017 23:24:38 GMT
ENV WORDPRESS_CLI_GPG_KEY=3B9191625F3B1F1BF5DD3B47673A02042F6B6B7F
# Mon, 12 Jun 2017 23:24:39 GMT
ENV WORDPRESS_CLI_VERSION=1.1.0
# Mon, 12 Jun 2017 23:24:39 GMT
ENV WORDPRESS_CLI_SHA512=1fb4a3800441fc5188dac73efc6ca865076772ef698189ded379c53947d1fec30311e84eb4371455d415ef2cbb33d7593240fdf7b7f206277a12cfa8596d4b51
# Mon, 12 Jun 2017 23:24:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -r "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Mon, 12 Jun 2017 23:24:49 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Mon, 12 Jun 2017 23:24:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Jun 2017 23:24:51 GMT
USER [www-data]
# Mon, 12 Jun 2017 23:24:51 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:486a8e636d6250a74d15cdb3582f4dd198271a80118f5a2f59de3d9cd8433611`  
		Last Modified: Thu, 25 May 2017 23:35:56 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41812ec2cb654115fad6678a89cace781f0cf539e2316efe2005438e428db6df`  
		Last Modified: Fri, 26 May 2017 15:25:24 GMT  
		Size: 1.1 MB (1081315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e095add676785194f9c4d180e50bdeb9eac882406547f0428cf26be373adff6b`  
		Last Modified: Fri, 26 May 2017 15:25:21 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286dbb174b8d2bb248dcfc542bb4edd08165b8fd2d01f9fbf7ff36c68c8ee43c`  
		Last Modified: Fri, 26 May 2017 15:25:21 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff85909f6befb6c925ed87b7c97351e2a3228ae8a96db34a96aee4ad2afc8b3`  
		Last Modified: Mon, 12 Jun 2017 22:41:02 GMT  
		Size: 13.0 MB (12982380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f68c20f416d863dc67a5c9d7400004c8f7875720d47d8c6aede646f25e7c0e`  
		Last Modified: Mon, 12 Jun 2017 22:40:57 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f714faa3db7bbe42761c92ac1538d0bf4fd5edd7fa52bc8095efea84c1c1dd`  
		Last Modified: Mon, 12 Jun 2017 22:41:01 GMT  
		Size: 10.7 MB (10749009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce145becce4c23de00f7c93a1768ec9494ed572cf43611a13fdadb78c2925ad6`  
		Last Modified: Mon, 12 Jun 2017 22:40:58 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab616c5be98bd4f223acb72b80fc217a7eaed4520dadd28baf0e2a1f3e0fa36`  
		Last Modified: Wed, 14 Jun 2017 15:58:05 GMT  
		Size: 827.6 KB (827611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5139e7c32455133eacea83e4142b0ee6a4fd7c276c7236b6f5ccadb599d0f50`  
		Last Modified: Wed, 14 Jun 2017 15:58:04 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e938a5b9cad85e97a70c6a7b28c759426805ee85b78a55f07907c193c6a2a19`  
		Last Modified: Wed, 14 Jun 2017 15:58:07 GMT  
		Size: 7.8 MB (7762289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb1ef266602c412ce6093f82e1b0bdb60f368e4c772317a0b6f2c49db16eac3`  
		Last Modified: Wed, 14 Jun 2017 15:58:05 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb4e4d5147842ed6f27dd1c82ea613deecba89c869a66f7e6e120fc02982563`  
		Last Modified: Wed, 14 Jun 2017 15:58:05 GMT  
		Size: 1.3 MB (1254137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751255ad45450687fa831ec3c6d2c655270ceb3d241a9c8ea679d12f217e8baf`  
		Last Modified: Wed, 14 Jun 2017 15:58:05 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
