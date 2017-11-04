## `known:latest`

```console
$ docker pull known@sha256:71ab846db1408c116f40c94b3605bbe0377f8412a810c92a0e6806abee647631
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `known:latest` - linux; amd64

```console
$ docker pull known@sha256:790499516de4377223284ae8e34de95d631994e242b8e012e7cd65eb015e30ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.0 MB (228977835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd0712b06789d47f67eb3e037d40ae62a3b221ce93a7fd410a546963a3298817`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:12:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Tue, 10 Oct 2017 01:13:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:13:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 10 Oct 2017 01:13:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 10 Oct 2017 02:18:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 30 Oct 2017 23:16:43 GMT
ENV PHP_VERSION=5.6.32
# Mon, 30 Oct 2017 23:16:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Mon, 30 Oct 2017 23:16:44 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Mon, 30 Oct 2017 23:17:10 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Mon, 30 Oct 2017 23:17:10 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 30 Oct 2017 23:20:38 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 30 Oct 2017 23:20:59 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Mon, 30 Oct 2017 23:20:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 30 Oct 2017 23:21:00 GMT
WORKDIR /var/www/html
# Mon, 30 Oct 2017 23:21:00 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 30 Oct 2017 23:21:01 GMT
EXPOSE 9000/tcp
# Mon, 30 Oct 2017 23:21:01 GMT
CMD ["php-fpm"]
# Sat, 04 Nov 2017 08:31:54 GMT
MAINTAINER hello@withknown.com
# Sat, 04 Nov 2017 08:32:22 GMT
RUN apt-get update && apt-get install -y       bzip2       libcurl4-openssl-dev       libfreetype6-dev       libicu-dev       libjpeg-dev       libmcrypt-dev       libpng12-dev       libpq-dev       libxml2-dev       mysql-client       unzip  && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 08:32:24 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "53DE 5B99 2244 9132 8B92  7516 052D B5AC 742E 3B47"
# Sat, 04 Nov 2017 08:34:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install exif gd intl mbstring mcrypt mysql opcache pdo_mysql zip json xmlrpc
# Sat, 04 Nov 2017 08:34:21 GMT
RUN {   echo 'opcache.memory_consumption=128';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=4000';   echo 'opcache.revalidate_freq=60';   echo 'opcache.fast_shutdown=1';   echo 'opcache.enable_cli=1'; } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 04 Nov 2017 08:34:31 GMT
RUN pecl install APCu-4.0.10  && docker-php-ext-enable apcu
# Sat, 04 Nov 2017 08:34:31 GMT
ENV KNOWN_VERSION=0.9.2
# Sat, 04 Nov 2017 08:34:32 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 08:34:35 GMT
RUN curl -o known.zip -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.zip  && curl -o known.zip.sig -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.zip.sig  && gpg --batch --verify known.zip.sig known.zip  && unzip known.zip -d /usr/src/known/  && rm known.zip*
# Sat, 04 Nov 2017 08:34:36 GMT
COPY file:6d2bbeccad440fd875b308488484f3081838a6ed7c7f5ec2ad4488f753cd87e0 in /entrypoint.sh 
# Sat, 04 Nov 2017 08:34:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 08:34:36 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e22dddbf921907e82e3dbea870be475c0d58274774f04af85407e06ae4c6ba`  
		Last Modified: Tue, 10 Oct 2017 02:33:19 GMT  
		Size: 82.5 MB (82497677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf0df491fd2e905203a9dd11b8efc67a152337cdea7168cbece4e430d13d05f6`  
		Last Modified: Tue, 10 Oct 2017 02:33:00 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7312d97adf8785a30d546c1498476a64ef7436a7b0544ee2bea2131856209f`  
		Last Modified: Tue, 31 Oct 2017 00:08:03 GMT  
		Size: 12.8 MB (12801440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569f2a1287b1c19d0d82a22623aae6ef30a68be98f06bda1c8bd209d1d70d827`  
		Last Modified: Tue, 31 Oct 2017 00:07:55 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95af4a2ef14314bbe878e9a11daa22110574cf6cf4cfc3948bdc4f3132abb540`  
		Last Modified: Tue, 31 Oct 2017 00:07:58 GMT  
		Size: 9.4 MB (9366812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dc01fbac858de9d7f2f03aa1c0bb9b1ab7b650df064f0926827bd254bfec84`  
		Last Modified: Tue, 31 Oct 2017 00:07:55 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a76f9cda48adfddd1646ff0fd180141221c4f3e00b6daa7113f47d9b45121a56`  
		Last Modified: Tue, 31 Oct 2017 00:07:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8be9228fac9441f0aa49211ef2e66385ea993896f3299df8d513e8657d3f6f`  
		Last Modified: Tue, 31 Oct 2017 00:07:55 GMT  
		Size: 7.6 KB (7618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa23deeee3b06d5de85820cf0b215a0ddc756b5751677408e4bfb5967e64098e`  
		Last Modified: Sat, 04 Nov 2017 08:35:08 GMT  
		Size: 48.8 MB (48765218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e270a443ef1d6a14ddcb914fe2444f5b3147099b62f3b1d75c2082fb6aaf1e3a`  
		Last Modified: Sat, 04 Nov 2017 08:34:54 GMT  
		Size: 6.8 KB (6795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e12d4d50a3247be65822a3ce676afac329b0a6940ef6b07fe17895bfd23b44f`  
		Last Modified: Sat, 04 Nov 2017 08:34:54 GMT  
		Size: 1.7 MB (1700133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18de3eb1d8a1dc6a5bba7fc07e8038f1ea82421714ca70fbb6a07a15d7c76fb`  
		Last Modified: Sat, 04 Nov 2017 08:34:52 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a415750d99402c7e915a536f51be60c3b0b206d02e98a29f65369f83a8d07e1`  
		Last Modified: Sat, 04 Nov 2017 08:34:51 GMT  
		Size: 365.0 KB (365046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7d111b967a7a99c8e43834e7caf3c10de70f05a154301db77a05a1afbddff7`  
		Last Modified: Sat, 04 Nov 2017 08:34:53 GMT  
		Size: 20.9 MB (20867388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0184c45fe0b7896ed3618278e8fb85459d28ce85d5fd1a95664a43623f38dbf0`  
		Last Modified: Sat, 04 Nov 2017 08:34:51 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
