## `composer:latest`

```console
$ docker pull composer@sha256:eabcfbe3bd30dab3fddedb69605c97abc145d509a5438c32179df508182e1f75
```

-	Platforms:
	-	linux; amd64

### `composer:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.9 MB (55927663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fcc81b4d458fcc271d1bb0d59f8ab91875be2c96b15eaac0eacb7b8cc7f38ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:09:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Wed, 28 Jun 2017 20:09:33 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Wed, 28 Jun 2017 20:09:35 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 28 Jun 2017 20:09:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Jun 2017 20:09:37 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 28 Jun 2017 20:09:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 28 Jun 2017 20:53:56 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Mon, 10 Jul 2017 17:10:36 GMT
ENV PHP_VERSION=7.1.7
# Mon, 10 Jul 2017 17:10:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.7.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.7.tar.xz.asc/from/this/mirror
# Mon, 10 Jul 2017 17:10:37 GMT
ENV PHP_SHA256=0d42089729be7b2bb0308cbe189c2782f9cb4b07078c8a235495be5874fff729 PHP_MD5=
# Mon, 10 Jul 2017 17:10:45 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 10 Jul 2017 17:10:47 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 10 Jul 2017 17:15:22 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 10 Jul 2017 17:15:26 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Mon, 10 Jul 2017 17:15:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 10 Jul 2017 17:15:26 GMT
CMD ["php" "-a"]
# Mon, 10 Jul 2017 22:26:12 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash
# Mon, 10 Jul 2017 22:26:13 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Mon, 10 Jul 2017 22:26:13 GMT
ENV PATH=/composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Jul 2017 22:26:14 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 10 Jul 2017 22:26:14 GMT
ENV COMPOSER_HOME=/composer
# Mon, 10 Jul 2017 22:26:15 GMT
ENV COMPOSER_VERSION=1.4.2
# Mon, 10 Jul 2017 22:26:19 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r "     \$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && rm /tmp/installer.php  && composer --ansi --version --no-interaction
# Mon, 10 Jul 2017 22:26:20 GMT
COPY file:0b943ec33b364492b10e7a774becd40d3fec03eb7db67cc0528769b329117e32 in /docker-entrypoint.sh 
# Mon, 10 Jul 2017 22:26:20 GMT
WORKDIR /app
# Mon, 10 Jul 2017 22:26:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 10 Jul 2017 22:26:21 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ae35d047425948b630f791a9a74d50ebb54f782bf01d3bcd74a2ed98313067`  
		Last Modified: Thu, 29 Jun 2017 01:50:27 GMT  
		Size: 1.1 MB (1081313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d34c9ec14365563dff516a583c4122f35a19016a83cc9cd333ad5a62f9a705b`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729ea35b870d89fe556e628075b41809b7e889d5858be4cffdd7ac98c2bee7ef`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d6963759614260c9f484b835701e01c8be98cd1654497fe9c1cdec856e666b`  
		Last Modified: Mon, 10 Jul 2017 18:13:46 GMT  
		Size: 13.0 MB (13005188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bfbc60bb2f40fa94158ee5e3ad9b528c4218e28c69abeab5eba3e13622075d`  
		Last Modified: Mon, 10 Jul 2017 18:13:44 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd6423425a7c4db3d745f067acc736a9432699aa7afda0f79d24056687868ec`  
		Last Modified: Mon, 10 Jul 2017 18:13:49 GMT  
		Size: 10.7 MB (10701684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9369130492f8b768dabc92c2d03b41abd82c7298591f981d177a8f6a23df2790`  
		Last Modified: Mon, 10 Jul 2017 18:13:44 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27246173380ce7a32c05cf24fe6cc0f29657395a06a32ce96ffd0760dc4284ef`  
		Last Modified: Mon, 10 Jul 2017 22:26:50 GMT  
		Size: 28.3 MB (28260089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d742d04aab39a3722418a055533172e5da9611f9b174d724eec3a5ebe2c3d9`  
		Last Modified: Mon, 10 Jul 2017 22:26:45 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057c5292e8f7cc0d69eb4568b87d6f76e90295110127338ad586e7458b9805fe`  
		Last Modified: Mon, 10 Jul 2017 22:26:45 GMT  
		Size: 489.5 KB (489472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04836433f849fe996a8c6ce1c268a63301ba0da9a5be4d20e19b193c23f4b396`  
		Last Modified: Mon, 10 Jul 2017 22:26:45 GMT  
		Size: 527.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d43ae2edc6bf2ca3ed9c559d3bdfe5f6baa8fe6cded84f2d54e5076284dd91`  
		Last Modified: Mon, 10 Jul 2017 22:26:46 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
