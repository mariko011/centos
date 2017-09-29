## `php:rc-fpm`

```console
$ docker pull php@sha256:ac735d3b1758cf29521d0aebb02dc4b721a8c7c713425caec70e7ac0f60c62f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v7

### `php:rc-fpm` - linux; arm variant v7

```console
$ docker pull php@sha256:b865597e90511be50da49444a9fcb54105d6ceea87cd7ab26dc22426b94395a0
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113719957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b0f79582107c26d48f02cb49784e9429dde9b5bd5faa409b21d4d5bf99714a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:53 GMT
ADD file:c64f62f8baccded9d94037c0935c477d3dd18839a9c4e565679657d4c9df92c8 in / 
# Wed, 27 Sep 2017 04:14:53 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:41:45 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 27 Sep 2017 05:42:11 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:42:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Sep 2017 05:42:13 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 27 Sep 2017 05:48:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 27 Sep 2017 05:48:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Sep 2017 05:48:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Sep 2017 05:48:56 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Sep 2017 05:48:57 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 28 Sep 2017 23:52:58 GMT
ENV PHP_VERSION=7.2.0RC3
# Thu, 28 Sep 2017 23:52:59 GMT
ENV PHP_URL=https://downloads.php.net/~remi/php-7.2.0RC3.tar.xz PHP_ASC_URL=https://downloads.php.net/~remi/php-7.2.0RC3.tar.xz.asc
# Thu, 28 Sep 2017 23:52:59 GMT
ENV PHP_SHA256=abe0a237f94837854f2cfd9c7dc99fbca2c817ae1d6194a514f29b463db36853 PHP_MD5=
# Thu, 28 Sep 2017 23:53:11 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 28 Sep 2017 23:53:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 28 Sep 2017 23:56:18 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 28 Sep 2017 23:56:19 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 28 Sep 2017 23:56:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 28 Sep 2017 23:56:20 GMT
WORKDIR /var/www/html
# Thu, 28 Sep 2017 23:56:21 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 28 Sep 2017 23:56:21 GMT
EXPOSE 9000/tcp
# Thu, 28 Sep 2017 23:56:21 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f6b0b1de175bfd1f4139472dafaeed39d43c5c14f6f48f113c9053f9b7837ddf`  
		Last Modified: Wed, 27 Sep 2017 04:20:52 GMT  
		Size: 19.3 MB (19276815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348b78049ef5321ed436d6b479bc9678b8cf08761af5c004e5c0441ccd4e705f`  
		Last Modified: Wed, 27 Sep 2017 06:44:27 GMT  
		Size: 69.7 MB (69747887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a749940f1a0836db274b4a37cab81a758f981d06bedfa330b76db48fb496df42`  
		Last Modified: Wed, 27 Sep 2017 06:44:07 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb19baf82076dd08745c684d49f04e44e3cfd478bfa332c46a7e1c34ca9f6bc`  
		Last Modified: Fri, 29 Sep 2017 00:19:23 GMT  
		Size: 12.3 MB (12304018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612239bfe9ba26844ab10dc0fab78d07e5a7fc3afb87f4286def8bb6652e6f30`  
		Last Modified: Fri, 29 Sep 2017 00:19:19 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4541d8055b32c83f1176323b706169f25ae0b62a9ecfd4da21b1a3752eb38cd6`  
		Last Modified: Fri, 29 Sep 2017 00:19:24 GMT  
		Size: 12.4 MB (12380478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458cd815f160c715e88aef052388cc1776212eed6bd743c72b03e8db80cb4e62`  
		Last Modified: Fri, 29 Sep 2017 00:19:20 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed3fc8f013a26e2cadf683f39135dc52fff01cce8eea5a2b1e86db9ebbaad88`  
		Last Modified: Fri, 29 Sep 2017 00:19:19 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404fd60682b99d4546ad582d0bcb961324fff7e3e1ad7d6a8d09dda0c0a69c44`  
		Last Modified: Fri, 29 Sep 2017 00:19:19 GMT  
		Size: 7.7 KB (7712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
