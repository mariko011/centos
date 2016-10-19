## `php:5-fpm-alpine`

```console
$ docker pull php@sha256:aec8e2bd5a71e8df3fdf5e4d91aa18867c792e52dec88ce929bf0188beff85e9
```

-	Platforms:
	-	linux; amd64

### `php:5-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26374468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93331fe858fc5e133854ab83182c6e84c7080169a9f65160ba0ff6358c98b321`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 21:17:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 18 Oct 2016 21:17:35 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 18 Oct 2016 21:17:36 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 18 Oct 2016 21:17:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 18 Oct 2016 21:17:37 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 18 Oct 2016 21:28:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 18 Oct 2016 22:22:26 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 18 Oct 2016 22:22:27 GMT
ENV PHP_VERSION=5.6.27
# Tue, 18 Oct 2016 22:22:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Tue, 18 Oct 2016 22:22:27 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Tue, 18 Oct 2016 22:22:35 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 18 Oct 2016 22:22:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:26:13 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 18 Oct 2016 22:26:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 22:26:14 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 22:26:15 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 18 Oct 2016 22:26:16 GMT
EXPOSE 9000/tcp
# Tue, 18 Oct 2016 22:26:16 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67654b7bd8a6f817e849f77cd102331617f4e2394feeae4f77f8683b9b466ed9`  
		Last Modified: Tue, 18 Oct 2016 22:37:25 GMT  
		Size: 1.0 MB (1048149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c453327105c5d394a206069893aa1527b7cc4e58699b4a4b0c2453f5b02a7f`  
		Last Modified: Tue, 18 Oct 2016 22:37:23 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:481e68959c15a56029b84021fca8cce378aaa0aa08837e08878bbddc694e798c`  
		Last Modified: Tue, 18 Oct 2016 22:37:22 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a81aac8d86b038dc789cf5d700ecdf2fa65b81c6697d5ef066c1814f4e63b2`  
		Last Modified: Tue, 18 Oct 2016 22:51:50 GMT  
		Size: 12.6 MB (12612021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447081b2c4e0e790e4a761c81da2666f9a71bff719ce15d5681a58ef7cd5d0c4`  
		Last Modified: Tue, 18 Oct 2016 22:51:45 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565c21387a1bb5253802d58122a2db8f70a6cda3f85a847c22e9b2615692f93a`  
		Last Modified: Tue, 18 Oct 2016 22:51:49 GMT  
		Size: 10.4 MB (10389852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54238a021d49bd1bf8db55bcb1767d70cd716c7de05d57dbac6b6004e6472b72`  
		Last Modified: Tue, 18 Oct 2016 22:51:45 GMT  
		Size: 1.8 KB (1822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5a6c6c8406bab8b32cc79906403212d751c782f5436a0c8a5108adcb3bb765`  
		Last Modified: Tue, 18 Oct 2016 22:51:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c307924132e25bcae1a330b66b304f4a8970ba39255c349c77fb93e47d8b2a0`  
		Last Modified: Tue, 18 Oct 2016 22:51:45 GMT  
		Size: 7.6 KB (7617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
