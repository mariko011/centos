## `wordpress:4-php7.0-fpm`

```console
$ docker pull wordpress@sha256:6362cd68230dfbae4e071d26821a2c4ebb43eeed9189ad9914ca4cc0f72f2b66
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.0-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164990029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91b725f58cba43380d90e39446390f403d1b5fe73185d79eb60ddbc6dd7844ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:28:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 23 Sep 2016 21:44:51 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 14 Oct 2016 23:25:47 GMT
ENV PHP_VERSION=7.0.12
# Tue, 18 Oct 2016 21:52:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.12.tar.xz.asc/from/this/mirror
# Tue, 18 Oct 2016 21:52:06 GMT
ENV PHP_SHA256=f3d6c49e1c242e5995dec15e503fde996c327eb86cd7ec45c690e93c971b83ff PHP_MD5=bdcc4dbdac90c2a39422786653059f70
# Tue, 18 Oct 2016 21:52:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 21:52:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:55:54 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 21:55:55 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:55:56 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 21:55:57 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 18 Oct 2016 21:55:57 GMT
EXPOSE 9000/tcp
# Tue, 18 Oct 2016 21:55:57 GMT
CMD ["php-fpm"]
# Wed, 19 Oct 2016 20:38:12 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 19 Oct 2016 20:38:13 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 19 Oct 2016 20:38:13 GMT
VOLUME [/var/www/html]
# Wed, 19 Oct 2016 20:38:13 GMT
ENV WORDPRESS_VERSION=4.6.1
# Wed, 19 Oct 2016 20:38:14 GMT
ENV WORDPRESS_SHA1=027e065d30a64720624a7404a1820e6c6fff1202
# Wed, 19 Oct 2016 20:38:16 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 19 Oct 2016 20:38:16 GMT
COPY file:edc5484a4fe2732599d330aa3fa262e223f936c97c5119cd00f8d2336584ba48 in /usr/local/bin/ 
# Wed, 19 Oct 2016 20:38:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 19 Oct 2016 20:38:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 20:38:18 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee3e2cc92e5940b6e9fccdc1074ce8f628b34584a4ef12e6ecb62c6aacc1443`  
		Last Modified: Tue, 18 Oct 2016 22:45:06 GMT  
		Size: 12.6 MB (12630256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36301e6fbe96162dcb56f99c6fa6c6ac1e2b64a37f75264aeac3198ae4c95bbd`  
		Last Modified: Tue, 18 Oct 2016 22:45:02 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab3e0cbb43b29ee5bd1c0433dd5934d631d0b468bd4e2ed2e4395fa79663147`  
		Last Modified: Tue, 18 Oct 2016 22:45:05 GMT  
		Size: 12.7 MB (12732851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98eaec9a949e494ad18133b425b371fe8a7bf515a64f9a417e751a2b65edb3f`  
		Last Modified: Tue, 18 Oct 2016 22:45:02 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194135e62975781419a134ace7ea70671d5af0ab6f2c32232aea7f65722e3c53`  
		Last Modified: Tue, 18 Oct 2016 22:45:01 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ca893aef33e07a81adef2e71ff258a3f75a4c38cff02e0f45e5cdef3512ee5`  
		Last Modified: Tue, 18 Oct 2016 22:45:02 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf08b286f8b30e716c43f1d3900d7884dcb30af3497712dd0742058d9e49ca0`  
		Last Modified: Wed, 19 Oct 2016 20:38:29 GMT  
		Size: 2.9 MB (2877187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01140a1610b7d4297d361e570758cdc5f680ab1f1b987923756ccb3e6e8d173d`  
		Last Modified: Wed, 19 Oct 2016 20:38:28 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29295c91378955c4a14d8d95c4d3ca44d057ae8a2f5e0426a113eec1a93b6899`  
		Last Modified: Wed, 19 Oct 2016 20:38:29 GMT  
		Size: 7.8 MB (7789790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b34e7568b30171268b41dfd663221aa8713309144ed75e43c3ffe1b07cc504c`  
		Last Modified: Wed, 19 Oct 2016 20:38:29 GMT  
		Size: 2.7 KB (2678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170b35b75f072cf14f5351ee1b93aa05ca504807dbda3d28593f84834cab910c`  
		Last Modified: Wed, 19 Oct 2016 20:38:29 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
