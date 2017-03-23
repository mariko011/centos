## `drupal:8-fpm`

```console
$ docker pull drupal@sha256:5655487b79b77e36a9df85df9be180dacec4576939e1e85d2eb783c99970dea8
```

-	Platforms:
	-	linux; amd64

### `drupal:8-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.6 MB (168592588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8951a03a167fbb871bc1c5c80cd669365923e92a019e85f4f5963beae1f1e8e1`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 23:02:23 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 21 Mar 2017 23:02:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 23:02:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 23:02:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:29:47 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:29:47 GMT
ENV PHP_VERSION=7.0.17
# Tue, 21 Mar 2017 23:29:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:29:48 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Tue, 21 Mar 2017 23:29:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:29:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:33:24 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:33:25 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:33:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:33:26 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:33:27 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 21 Mar 2017 23:33:27 GMT
EXPOSE 9000/tcp
# Tue, 21 Mar 2017 23:33:28 GMT
CMD ["php-fpm"]
# Wed, 22 Mar 2017 18:10:47 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:10:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 22 Mar 2017 18:10:48 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:10:49 GMT
ENV DRUPAL_VERSION=8.2.7
# Wed, 22 Mar 2017 18:10:49 GMT
ENV DRUPAL_MD5=10b1669f750a9996096e76059c157b9a
# Wed, 22 Mar 2017 18:10:56 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4a0ada0bc344974653b134216b27c759eeb93a1a4a9d86e76091d8bd7dd4d0`  
		Last Modified: Thu, 23 Mar 2017 17:34:56 GMT  
		Size: 12.7 MB (12699149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79fd1a34245464e48c2127077d557a5a43cd70e47acb8eccce8ea981b344516`  
		Last Modified: Thu, 23 Mar 2017 17:34:55 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef60b04e1f2411aea57cfa8163d5a43bbb96269645c2c395c5884942a414e303`  
		Last Modified: Thu, 23 Mar 2017 17:35:00 GMT  
		Size: 12.8 MB (12847311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a9f8e4a6eb8cffec1976f68eceaa30ec0d12e8705c510d587020dad7db822e`  
		Last Modified: Thu, 23 Mar 2017 17:34:52 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df66442e14117e77b7b6a443145c1a0877f795cde830e8cf619c6d8f4484c248`  
		Last Modified: Thu, 23 Mar 2017 17:34:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91fdf504db2ed957f5d6195b27ed4cc0bd00aff5811971df2a8fdbc759cbe3c`  
		Last Modified: Thu, 23 Mar 2017 17:34:52 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e759e3f2e0fe2761b2f0a20eefca5c18dc817fe55835f5783df6cfe4168f22d`  
		Last Modified: Thu, 23 Mar 2017 17:40:25 GMT  
		Size: 1.7 MB (1735194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5556a3a0bf7dbb005f49c52b9798df3642d744b6a95a8cd445f79f87ec782d2`  
		Last Modified: Thu, 23 Mar 2017 17:40:24 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d655a8d109401ee0dc8a06c0a4084ed493183ba5187ce9036afc11aedcec06d`  
		Last Modified: Thu, 23 Mar 2017 17:40:38 GMT  
		Size: 12.2 MB (12179645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
