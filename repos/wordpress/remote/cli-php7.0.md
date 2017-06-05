## `wordpress:cli-php7.0`

```console
$ docker pull wordpress@sha256:69abd62826c38d39b324f2a6b60d2cd5e412017ef28fe233898c5ad6f77743b7
```

-	Platforms:
	-	linux; amd64

### `wordpress:cli-php7.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36407332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e3105377cb30c7f9513654de3b2ae6e0be791ca6c7275be1697e5e10fa20d1a`
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
# Fri, 26 May 2017 14:58:40 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 26 May 2017 14:58:41 GMT
ENV PHP_VERSION=7.0.19
# Fri, 26 May 2017 14:58:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.19.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.19.tar.xz.asc/from/this/mirror
# Fri, 26 May 2017 14:58:42 GMT
ENV PHP_SHA256=640e5e3377d15a6d19adce2b94a9d876eeddabdb862d154a5e347987f4225ef6 PHP_MD5=1a17e45c8be9ce28f036d884563e8ae7
# Fri, 26 May 2017 14:58:51 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 26 May 2017 14:58:52 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 02 Jun 2017 21:37:41 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 02 Jun 2017 21:49:14 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Fri, 02 Jun 2017 21:49:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 02 Jun 2017 21:49:37 GMT
CMD ["php" "-a"]
# Mon, 05 Jun 2017 20:59:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Mon, 05 Jun 2017 20:59:15 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 05 Jun 2017 20:59:19 GMT
RUN apk add --no-cache 		less 		mysql-client
# Mon, 05 Jun 2017 20:59:20 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Mon, 05 Jun 2017 20:59:21 GMT
WORKDIR /var/www/html
# Mon, 05 Jun 2017 20:59:22 GMT
VOLUME [/var/www/html]
# Mon, 05 Jun 2017 20:59:23 GMT
ENV WORDPRESS_CLI_GPG_KEY=3B9191625F3B1F1BF5DD3B47673A02042F6B6B7F
# Mon, 05 Jun 2017 20:59:24 GMT
ENV WORDPRESS_CLI_VERSION=1.1.0
# Mon, 05 Jun 2017 20:59:24 GMT
ENV WORDPRESS_CLI_SHA512=1fb4a3800441fc5188dac73efc6ca865076772ef698189ded379c53947d1fec30311e84eb4371455d415ef2cbb33d7593240fdf7b7f206277a12cfa8596d4b51
# Mon, 05 Jun 2017 20:59:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -r "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Mon, 05 Jun 2017 20:59:34 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Mon, 05 Jun 2017 20:59:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Jun 2017 20:59:36 GMT
USER [www-data]
# Mon, 05 Jun 2017 20:59:37 GMT
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
	-	`sha256:c899104e150daa73fbb949f8359b719c13eef86f209463a4a76cab27ae535882`  
		Last Modified: Fri, 26 May 2017 15:36:30 GMT  
		Size: 12.8 MB (12769025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee6f1eff17ec8018e04e330b724d29575522c9f78f598521eee151ce068ca7a`  
		Last Modified: Fri, 26 May 2017 15:36:26 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3dc051854c4a77ae66355f770dd7df46e7072f101e4a75cb93f730e95c020d8`  
		Last Modified: Sat, 03 Jun 2017 00:23:29 GMT  
		Size: 10.4 MB (10409335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a810b93c5eb0c800ecd3eb5c22e6c1bbb076abc9621d1a46e9dcc0a8bd8ebf90`  
		Last Modified: Sat, 03 Jun 2017 00:23:25 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35009bc56903d717bf2a38541bb0723be1a944d0a689ef6c49487e1558f595a0`  
		Last Modified: Mon, 05 Jun 2017 21:31:26 GMT  
		Size: 743.3 KB (743285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1247ad1e5c4e6dc5001178362839ee349239f53a666dfaef56a35af61b65cbf`  
		Last Modified: Mon, 05 Jun 2017 21:31:25 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd2e8191ac26a63579828ff08291a70901ba15f9e86b50586aa24fd804779e3`  
		Last Modified: Mon, 05 Jun 2017 21:31:26 GMT  
		Size: 7.8 MB (7762277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd81994169384041b4274dd91b55e9b40d9318285c4d7cc1d7b0cff32a5a321`  
		Last Modified: Mon, 05 Jun 2017 21:31:25 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b3cef925c8e9f3315887f5082d615b946d60326cf3bb7f0e1325fd15d1c3ec`  
		Last Modified: Mon, 05 Jun 2017 21:31:26 GMT  
		Size: 1.3 MB (1254138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e2c2e220c57506d9383db4020343ac6ee99e79db6b29ad4e5fba9e785f3789`  
		Last Modified: Mon, 05 Jun 2017 21:31:25 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
