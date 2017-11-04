## `wordpress:cli-1`

```console
$ docker pull wordpress@sha256:1fd1a60bcaa6ddf445fecf845bbec7e82a3c7d39df70afefeb422a719091fb1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `wordpress:cli-1` - linux; amd64

```console
$ docker pull wordpress@sha256:765965afb216251906bc270b90f3ddb9373be85b0cfd8f5c9f44ff5a52655fc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32141017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40635a8fbd80d909921f972eeafd254e995c6e5b0182963b6f65ee3ac6a46013`
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
# Thu, 26 Oct 2017 02:57:52 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 30 Oct 2017 23:29:19 GMT
ENV PHP_VERSION=5.6.32
# Mon, 30 Oct 2017 23:29:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Mon, 30 Oct 2017 23:29:19 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Mon, 30 Oct 2017 23:29:33 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 30 Oct 2017 23:29:33 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 30 Oct 2017 23:32:53 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 30 Oct 2017 23:32:54 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Mon, 30 Oct 2017 23:32:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 30 Oct 2017 23:32:54 GMT
CMD ["php" "-a"]
# Sat, 04 Nov 2017 10:24:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 04 Nov 2017 10:24:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 04 Nov 2017 10:24:27 GMT
RUN apk add --no-cache 		less 		mysql-client
# Sat, 04 Nov 2017 10:24:28 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Sat, 04 Nov 2017 10:24:29 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 10:24:29 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 10:24:29 GMT
ENV WORDPRESS_CLI_GPG_KEY=3B9191625F3B1F1BF5DD3B47673A02042F6B6B7F
# Sat, 04 Nov 2017 10:24:29 GMT
ENV WORDPRESS_CLI_VERSION=1.4.0
# Sat, 04 Nov 2017 10:24:30 GMT
ENV WORDPRESS_CLI_SHA512=da1abdced95e6f90986c66ad3239a573824ef9a7dd0078b8f1df685e19a62af68325b9b7388d5406df5383b35e48c50cc82c0c529d05fc01dcc4c9175229b517
# Sat, 04 Nov 2017 10:24:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -r "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Sat, 04 Nov 2017 10:24:42 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Sat, 04 Nov 2017 10:24:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 10:24:43 GMT
USER [www-data]
# Sat, 04 Nov 2017 10:24:43 GMT
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
	-	`sha256:b7e04bc0f0839cf419c820787d7c4d3426af56bcf490e2fe46d34b4a0ee50c88`  
		Last Modified: Tue, 31 Oct 2017 00:10:35 GMT  
		Size: 12.5 MB (12483425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f584f70c4f16dfdb59d7ff0234a8fda5b871db4848892831cb03c09d7129eecd`  
		Last Modified: Tue, 31 Oct 2017 00:10:34 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceba396b94def9538826299faee0bb81bc65399d5d78e3bb17db7e0bb13b7048`  
		Last Modified: Tue, 31 Oct 2017 00:10:38 GMT  
		Size: 6.4 MB (6409899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d753cda6c19f57bbb67b47702f1301cb5fdb015d7944ce25f4686800889c752a`  
		Last Modified: Tue, 31 Oct 2017 00:10:34 GMT  
		Size: 2.2 KB (2159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf33abc28378ddcd46a14a7ee9e02ccad2bfc991e1224e183cdcc48b7a6b7bcc`  
		Last Modified: Sat, 04 Nov 2017 10:34:39 GMT  
		Size: 732.5 KB (732547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e917be1322ec5de1b34efd0fff88dd8f6115739df53d836e05dd4c6db5409a0`  
		Last Modified: Sat, 04 Nov 2017 10:34:37 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f98f5ea6fc2f4c51f508c0168af15a6e4890b05679160028c64a967ba0bf64`  
		Last Modified: Sat, 04 Nov 2017 10:34:39 GMT  
		Size: 7.8 MB (7760044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ae4896b211978b68122755ec845b01799d0f0a6a317a5f01294260e83305c6`  
		Last Modified: Sat, 04 Nov 2017 10:34:37 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ad0b157381ef82e74bf098baecb6f61ffbd3318b0781983418266c9aae891e`  
		Last Modified: Sat, 04 Nov 2017 10:34:38 GMT  
		Size: 1.1 MB (1056158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4feadcafb8c3d9a2f3e4b79cab65c467008b0093abda568de0f4b47fde869a`  
		Last Modified: Sat, 04 Nov 2017 10:34:37 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
