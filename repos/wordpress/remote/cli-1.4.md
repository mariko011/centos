## `wordpress:cli-1.4`

```console
$ docker pull wordpress@sha256:614901826810dbfaaf7294048ece618556ebc8456f96cadf4963254f540832a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `wordpress:cli-1.4` - linux; amd64

```console
$ docker pull wordpress@sha256:d8002edafbfb3a8e72118b3b71c74f34ac62cf33f007df132670df2cca08991e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32137441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b98d44febc416a5a743a1ccee3264cabe42508902b38d014971f41f8d16c10e3`
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
# Thu, 26 Oct 2017 02:57:53 GMT
ENV PHP_VERSION=5.6.31
# Thu, 26 Oct 2017 02:57:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Thu, 26 Oct 2017 02:57:53 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Thu, 26 Oct 2017 02:58:24 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 26 Oct 2017 02:58:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:57 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 26 Oct 2017 03:02:01 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 26 Oct 2017 03:02:02 GMT
CMD ["php" "-a"]
# Thu, 26 Oct 2017 04:15:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 26 Oct 2017 04:15:55 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 26 Oct 2017 04:15:57 GMT
RUN apk add --no-cache 		less 		mysql-client
# Thu, 26 Oct 2017 04:15:58 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Thu, 26 Oct 2017 04:15:58 GMT
WORKDIR /var/www/html
# Thu, 26 Oct 2017 04:15:59 GMT
VOLUME [/var/www/html]
# Thu, 26 Oct 2017 04:15:59 GMT
ENV WORDPRESS_CLI_GPG_KEY=3B9191625F3B1F1BF5DD3B47673A02042F6B6B7F
# Thu, 26 Oct 2017 04:15:59 GMT
ENV WORDPRESS_CLI_VERSION=1.4.0
# Thu, 26 Oct 2017 04:15:59 GMT
ENV WORDPRESS_CLI_SHA512=da1abdced95e6f90986c66ad3239a573824ef9a7dd0078b8f1df685e19a62af68325b9b7388d5406df5383b35e48c50cc82c0c529d05fc01dcc4c9175229b517
# Thu, 26 Oct 2017 04:16:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -r "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Thu, 26 Oct 2017 04:16:17 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Thu, 26 Oct 2017 04:16:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:16:17 GMT
USER [www-data]
# Thu, 26 Oct 2017 04:16:18 GMT
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
	-	`sha256:15feafa0091ac4903cdf6b26621e723093848d8bc7e53ddc6e5b00f7d54d3453`  
		Last Modified: Thu, 26 Oct 2017 03:23:50 GMT  
		Size: 12.5 MB (12480245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48e632f85afb578197132744e08d48826ca2677dc20a04fd516e212c857e80a`  
		Last Modified: Thu, 26 Oct 2017 03:23:49 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002e6f4ee4094cb7d9dc4bd205a1bdf1e3ee3050f05543d9abd363df2394d881`  
		Last Modified: Thu, 26 Oct 2017 03:23:52 GMT  
		Size: 6.4 MB (6409502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b399f2297c08e9229c6eac9beedba5ee299ef1eca7c9cb069390ffcddaa8a9b0`  
		Last Modified: Thu, 26 Oct 2017 03:23:48 GMT  
		Size: 2.2 KB (2163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9b7229c6adde6f45a76085c8e1e551d615df86b21c386f672f70e6b03847d0`  
		Last Modified: Thu, 26 Oct 2017 04:22:32 GMT  
		Size: 732.5 KB (732520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71585261ca1761cc39bb4a78ae9eacc49a07a859279526e292dc109ace67a35`  
		Last Modified: Thu, 26 Oct 2017 04:22:30 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806d39f1b969b2209c0b6d95df54902dde08ee83a9a840caabf62d7c70a320c2`  
		Last Modified: Thu, 26 Oct 2017 04:22:32 GMT  
		Size: 7.8 MB (7760089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db57cc6cc814bb1f4a9c0d1e3d4fe5203f76d922d4e777d9632ae2ce450a93d9`  
		Last Modified: Thu, 26 Oct 2017 04:22:30 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e667fe7d501c6503669ca95cbde7acbf340cddd62b9f2fbc31108a42056588ca`  
		Last Modified: Thu, 26 Oct 2017 04:22:30 GMT  
		Size: 1.1 MB (1056147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45db2cf93be4f4375b858158acd3b1e5705f49035a2f69a97b6570230118ca0`  
		Last Modified: Thu, 26 Oct 2017 04:22:30 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
