## `wordpress:php7.0-fpm`

```console
$ docker pull wordpress@sha256:97eec6650990a07bb3f20dfc172077220c34df5acac4e2ba0b2714dedd486b5f
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.0-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (163956167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5c6fe4f3a5c810ec0f453cb1fc2c3872c6865dd6ce85fdf9b8d04f50426359f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:26:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 06 Dec 2016 21:29:28 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 21:54:52 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 09 Dec 2016 18:13:21 GMT
ENV PHP_VERSION=7.0.14
# Fri, 09 Dec 2016 18:13:21 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Fri, 09 Dec 2016 18:13:22 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Fri, 09 Dec 2016 18:13:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Dec 2016 18:13:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:16:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 09 Dec 2016 18:17:00 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:17:00 GMT
WORKDIR /var/www/html
# Fri, 09 Dec 2016 18:17:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 09 Dec 2016 18:17:02 GMT
EXPOSE 9000/tcp
# Fri, 09 Dec 2016 18:17:02 GMT
CMD ["php-fpm"]
# Sat, 10 Dec 2016 17:13:44 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Sat, 10 Dec 2016 17:13:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 10 Dec 2016 17:13:46 GMT
VOLUME [/var/www/html]
# Sat, 10 Dec 2016 17:13:46 GMT
ENV WORDPRESS_VERSION=4.7
# Sat, 10 Dec 2016 17:13:46 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Sat, 10 Dec 2016 17:13:48 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Sat, 10 Dec 2016 17:13:49 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Sat, 10 Dec 2016 17:13:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 10 Dec 2016 17:13:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 10 Dec 2016 17:13:51 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f84414029b3baee661f29e53052b4b84475fa26cf305fbbbd3318ddec5be718`  
		Last Modified: Fri, 09 Dec 2016 18:39:20 GMT  
		Size: 12.6 MB (12645542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4e84af1be051ad9c88303176e313b566b7c119c4e539e6b92bfc1c23a2efe6`  
		Last Modified: Fri, 09 Dec 2016 18:39:16 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61f7a0656148d4705956902acc896ccb0081237836dc51ccd8f876283c723b4`  
		Last Modified: Fri, 09 Dec 2016 18:39:20 GMT  
		Size: 12.4 MB (12400511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439ef0e1b0f222c5c45a298ccd0f4a6c45b010b880be2faab5225b42797ee623`  
		Last Modified: Fri, 09 Dec 2016 18:39:16 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a8b2bafdcb4b0fcf1d918639907709b4ffd50916c87099470624dfe8c80e34`  
		Last Modified: Fri, 09 Dec 2016 18:39:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3240b5d2a059568035306c6f7decc9b44e5d14208000f3e83f0f4143e9ff905d`  
		Last Modified: Fri, 09 Dec 2016 18:39:16 GMT  
		Size: 7.7 KB (7688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2555cb6e1287c43d4fc44ef1b35dbe5345b0f09ef0e4fd508cce1ae5fadb515`  
		Last Modified: Sat, 10 Dec 2016 17:22:24 GMT  
		Size: 2.1 MB (2126365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd92e980ec7d62a2cf731438b23f26992f1814e88ea04ece47f54536c07b8f9`  
		Last Modified: Sat, 10 Dec 2016 17:22:23 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86999bbc3e929be69e22e8ad3721ac770bc33aa58696561036020c135284ab5a`  
		Last Modified: Sat, 10 Dec 2016 17:22:25 GMT  
		Size: 7.8 MB (7821776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d48b0a05338332b5107b0ef985cc79d092c20b0a6baf506f2edda3667f5c0`  
		Last Modified: Sat, 10 Dec 2016 17:22:23 GMT  
		Size: 2.9 KB (2933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e02b865d62bf0e46e1a37bb90a40e38ceafda821bc7ac963ea4e43c3770eed`  
		Last Modified: Sat, 10 Dec 2016 17:22:23 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
