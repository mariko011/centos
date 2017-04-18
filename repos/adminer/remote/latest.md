## `adminer:latest`

```console
$ docker pull adminer@sha256:dae7526676be57d1e7c11c138d8ef94b2d23c100a046ab94134f4d6977c34be5
```

-	Platforms:
	-	linux; amd64

### `adminer:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28096093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8676912815c8e9f4917d32adc95cbc25b44fc2edd80d0265c51748778e920f3a`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:39:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:39:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:39:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 23:01:17 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 17 Mar 2017 22:40:26 GMT
ENV PHP_VERSION=7.0.17
# Fri, 17 Mar 2017 22:40:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Fri, 17 Mar 2017 22:40:27 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Fri, 17 Mar 2017 22:40:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 17 Mar 2017 22:40:33 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:44:00 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 17 Mar 2017 22:44:01 GMT
COPY multi:b2b2a1a4e3c0f0bb8ebdcd527fca158bfce5138468926263f86e5bb0cb41970f in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:44:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 17 Mar 2017 22:44:02 GMT
CMD ["php" "-a"]
# Thu, 23 Mar 2017 23:43:04 GMT
STOPSIGNAL [SIGINT]
# Tue, 18 Apr 2017 19:08:59 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Tue, 18 Apr 2017 19:08:59 GMT
WORKDIR /var/www/html
# Tue, 18 Apr 2017 19:09:01 GMT
RUN apk add --no-cache libpq
# Tue, 18 Apr 2017 19:09:28 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Tue, 18 Apr 2017 19:09:29 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Tue, 18 Apr 2017 19:09:30 GMT
ENV ADMINER_VERSION=4.3.1
# Tue, 18 Apr 2017 19:09:31 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Tue, 18 Apr 2017 19:09:31 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Tue, 18 Apr 2017 19:09:36 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Tue, 18 Apr 2017 19:09:37 GMT
COPY file:9bd2234bd2d16bb29c56ca41cb797761bce45cf629f48bc911f36b2c284cde46 in /usr/local/bin/ 
# Tue, 18 Apr 2017 19:09:38 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 18 Apr 2017 19:09:38 GMT
USER [adminer]
# Tue, 18 Apr 2017 19:09:39 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Tue, 18 Apr 2017 19:09:39 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfef571aa2d9ebe6da86fac5ddc30f1a2d6995605eeb32548fc25d2096dc08c`  
		Last Modified: Fri, 17 Mar 2017 23:18:14 GMT  
		Size: 12.8 MB (12763563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c6a69b8f172e2d4ac5b17c1148ffe34e8a61fc4a29c2e5925142bcdccf8d1d`  
		Last Modified: Fri, 17 Mar 2017 23:18:14 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac446663d4b3a24b791f029bba654d61443b596553dbb8654cf9a4d896c88211`  
		Last Modified: Fri, 17 Mar 2017 23:18:17 GMT  
		Size: 10.3 MB (10305337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a98aa989ccc83f997b882d96200f4f41cd41bb4d17fd17fe3c68e18f99f8f9`  
		Last Modified: Fri, 17 Mar 2017 23:18:13 GMT  
		Size: 2.0 KB (2001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae4a9595339ad5e5527614e618b8ac6fd29303c2d1adf3120dc18ce1ece505f`  
		Last Modified: Tue, 18 Apr 2017 19:11:11 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb84f83f824be11875b35d1665ac75142ad81771c8bd8380cfd53cf9b77684bc`  
		Last Modified: Tue, 18 Apr 2017 19:11:08 GMT  
		Size: 1.2 MB (1210406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1431cd782994d8b9e202b7897ce582e4ff95f38460c947aeca18fbd7c6892f13`  
		Last Modified: Tue, 18 Apr 2017 19:11:09 GMT  
		Size: 117.6 KB (117625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a421f1ce7aacb8d640d54e0f24adb1a84cb222d749756410a322c6e6623cf555`  
		Last Modified: Tue, 18 Apr 2017 19:11:09 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6c0626afb62ea5d7bd3f307a109b177cc04b529acc23b1c974f4cedd155d7c`  
		Last Modified: Tue, 18 Apr 2017 19:11:08 GMT  
		Size: 319.1 KB (319103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755b3f1f905357ad9e05e9fe676bf8dc0647ea17a07bcd05f19a01cb54108202`  
		Last Modified: Tue, 18 Apr 2017 19:11:08 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
