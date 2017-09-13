## `known:latest`

```console
$ docker pull known@sha256:ef87cd17655aa7ea47ad512777b551a3136b7f6b032f6245a21c8b3c23943452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `known:latest` - linux; amd64

```console
$ docker pull known@sha256:72445764ec0e186ad5f533a409f9e3b2e5b229711f206497cfc8d6b3518e7986
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.5 MB (226479460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04596c1e872c01a7cd2890e2c8283258dd3e11c86cc65da6af4be8c848793ad1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:37:07 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 02:38:08 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:38:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 02:38:10 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 03:00:58 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 08 Sep 2017 03:00:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 03:00:59 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 03:00:59 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 04:29:34 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 08 Sep 2017 04:29:34 GMT
ENV PHP_VERSION=5.6.31
# Fri, 08 Sep 2017 04:29:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 04:29:35 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Fri, 08 Sep 2017 04:30:00 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 04:30:00 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:37:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 04:37:47 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:37:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 04:37:48 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 04:37:49 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 08 Sep 2017 04:37:50 GMT
EXPOSE 9000/tcp
# Fri, 08 Sep 2017 04:37:50 GMT
CMD ["php-fpm"]
# Wed, 13 Sep 2017 15:51:18 GMT
MAINTAINER hello@withknown.com
# Wed, 13 Sep 2017 15:51:45 GMT
RUN apt-get update && apt-get install -y       bzip2       libcurl4-openssl-dev       libfreetype6-dev       libicu-dev       libjpeg-dev       libmcrypt-dev       libpng12-dev       libpq-dev       libxml2-dev       mysql-client       unzip  && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 15:51:47 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "53DE 5B99 2244 9132 8B92  7516 052D B5AC 742E 3B47"
# Wed, 13 Sep 2017 15:54:13 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install exif gd intl mbstring mcrypt mysql opcache pdo_mysql zip json xmlrpc
# Wed, 13 Sep 2017 15:54:14 GMT
RUN {   echo 'opcache.memory_consumption=128';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=4000';   echo 'opcache.revalidate_freq=60';   echo 'opcache.fast_shutdown=1';   echo 'opcache.enable_cli=1'; } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 13 Sep 2017 15:54:28 GMT
RUN pecl install APCu-4.0.10  && docker-php-ext-enable apcu
# Wed, 13 Sep 2017 15:54:28 GMT
ENV KNOWN_VERSION=0.9.2
# Wed, 13 Sep 2017 15:54:28 GMT
VOLUME [/var/www/html]
# Wed, 13 Sep 2017 15:54:34 GMT
RUN curl -o known.zip -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.zip  && curl -o known.zip.sig -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.zip.sig  && gpg --batch --verify known.zip.sig known.zip  && unzip known.zip -d /usr/src/known/  && rm known.zip*
# Wed, 13 Sep 2017 15:54:34 GMT
COPY file:6d2bbeccad440fd875b308488484f3081838a6ed7c7f5ec2ad4488f753cd87e0 in /entrypoint.sh 
# Wed, 13 Sep 2017 15:54:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 15:54:35 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a924c2479bb6777905f96cfb605b402d9a8021e3176dc0891fed25027369f86`  
		Last Modified: Fri, 08 Sep 2017 05:05:06 GMT  
		Size: 82.5 MB (82494887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e34513d1c6fa28a895a9038631ce0f01eac1112e553e52ec255d08c29ab8586`  
		Last Modified: Fri, 08 Sep 2017 05:04:39 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0497eab9efac4d2b532468772754bd396e8617a9acae58f9ad1d5bf45b18f135`  
		Last Modified: Fri, 08 Sep 2017 05:39:23 GMT  
		Size: 12.6 MB (12571336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d699eac5dc60158104658f4aec6303d09f7bef9aa336e2ffdd37cae15392a8b3`  
		Last Modified: Fri, 08 Sep 2017 05:39:21 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f1cb375728b5d4c27735edc75a1060d884228351c779debc6d9cf62b0d2cfd1`  
		Last Modified: Fri, 08 Sep 2017 05:39:25 GMT  
		Size: 8.6 MB (8623567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c15da8cc7142b3298b18efd0f45f2c28dec078297a1c9212dbe88954e603e5f`  
		Last Modified: Fri, 08 Sep 2017 05:39:21 GMT  
		Size: 2.1 KB (2120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e889fa6f5653792b1b9783fa2c863fc16e9fc5b65f3da705c56d272ed7b24a6`  
		Last Modified: Fri, 08 Sep 2017 05:39:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6673823d68c6c817a8a0e303de8caeab56a59ee816639abe89448c638100bd`  
		Last Modified: Fri, 08 Sep 2017 05:39:21 GMT  
		Size: 7.6 KB (7607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a9e89522ebf3fed564f0c282e4fe13d02f57615b1bbe7ecfc9972e8a8be76e`  
		Last Modified: Wed, 13 Sep 2017 15:55:05 GMT  
		Size: 47.2 MB (47242578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ace86923b52ab950e717bc1db7db8eef29a7e9bbaad2923c9b4ce4b6d5b897`  
		Last Modified: Wed, 13 Sep 2017 15:54:56 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e88d26c0ac42a5ec7b8d8b0ac148e37d715c099953830a320ec4f1070ca11a`  
		Last Modified: Wed, 13 Sep 2017 15:54:54 GMT  
		Size: 1.7 MB (1700132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59306b031dde7fdb7f8963b43c7279e9e6fc4a865f0d512dcc484b5a921d245`  
		Last Modified: Wed, 13 Sep 2017 15:54:53 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5882e1cb8f6fa6e19f0fc1abdd22a530842ab0f179264751f19b62eddfb055e5`  
		Last Modified: Wed, 13 Sep 2017 15:54:53 GMT  
		Size: 365.1 KB (365106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6d8be06ca9a3f25a0bfa7d4c145edb59cfc12c84656620007918c9fe7822f`  
		Last Modified: Wed, 13 Sep 2017 15:54:58 GMT  
		Size: 20.9 MB (20867392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8b895fa71c5bdd049e48938dbc9cd707a6488b25aed37d6e0a565836d8ece9`  
		Last Modified: Wed, 13 Sep 2017 15:54:53 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
