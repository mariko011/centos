## `joomla:fpm-php7`

```console
$ docker pull joomla@sha256:bcd900dde07b678cb688dfb6a90a01e2310eb09fedf0bae4f471a7ef8cff2dca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:fpm-php7` - linux; amd64

```console
$ docker pull joomla@sha256:a955141d5c743f070634d77537362ad75263a3c270f80f406f672daa5961947f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172850107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78108f91cff7b098e4fc87a543cd17de985243f3222a72fa91fc07220a3082eb`
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
# Tue, 10 Oct 2017 01:57:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 26 Oct 2017 20:17:22 GMT
ENV PHP_VERSION=7.0.25
# Thu, 26 Oct 2017 20:17:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.25.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.25.tar.xz.asc/from/this/mirror
# Thu, 26 Oct 2017 20:17:22 GMT
ENV PHP_SHA256=5cc14bd20fb2226f6d34465662425cd100441bde9042ea1cef2e4506d6ded8cc PHP_MD5=
# Thu, 26 Oct 2017 20:17:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 26 Oct 2017 20:17:44 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 26 Oct 2017 20:21:11 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 26 Oct 2017 20:21:11 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 26 Oct 2017 20:21:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 26 Oct 2017 20:21:12 GMT
WORKDIR /var/www/html
# Thu, 26 Oct 2017 20:21:13 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 26 Oct 2017 20:21:13 GMT
EXPOSE 9000/tcp
# Thu, 26 Oct 2017 20:21:13 GMT
CMD ["php-fpm"]
# Sat, 04 Nov 2017 14:11:17 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 Nov 2017 14:11:17 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 Nov 2017 14:11:44 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 04 Nov 2017 14:11:53 GMT
RUN docker-php-ext-install mysqli
# Sat, 04 Nov 2017 14:11:59 GMT
RUN docker-php-ext-install mcrypt
# Sat, 04 Nov 2017 14:12:19 GMT
RUN docker-php-ext-install zip
# Sat, 04 Nov 2017 14:12:20 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 14:12:20 GMT
ENV JOOMLA_VERSION=3.8.0
# Sat, 04 Nov 2017 14:12:20 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Sat, 04 Nov 2017 14:12:27 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 04 Nov 2017 14:12:28 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Sat, 04 Nov 2017 14:12:28 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 04 Nov 2017 14:12:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 14:12:28 GMT
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
	-	`sha256:004eec0f86c3319872d0646d26598db3396b05ad5b36d8c7d7b16ecab54dcf40`  
		Last Modified: Thu, 26 Oct 2017 20:44:55 GMT  
		Size: 12.3 MB (12301410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c31b10a6fd14173c576305a8fea0eae3c18a0a93125e897b482f33d0fd69334`  
		Last Modified: Thu, 26 Oct 2017 20:44:49 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411382ec869c7540703ae7771f3ec265474383ae0142ef0686d932617a3d87d2`  
		Last Modified: Thu, 26 Oct 2017 20:44:53 GMT  
		Size: 12.9 MB (12910188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d027256730f7d5eb3c303e52644ee4ba35d77f83fb0f1ffc484149fb0f37f2`  
		Last Modified: Thu, 26 Oct 2017 20:44:50 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f5f403318d639a158b9d455ccb2ea6b4cae912fcfca4a451d8202a42de4d53`  
		Last Modified: Thu, 26 Oct 2017 20:44:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfafe4900306ffdd3db378306a326c88e32cbf62fe5bd950f6c7ce741dba4bc8`  
		Last Modified: Thu, 26 Oct 2017 20:44:49 GMT  
		Size: 7.7 KB (7676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aeeeb1f6461ff01bd4e466e2f2364ac175945664d5dec649356c6db42ae59fb`  
		Last Modified: Sat, 04 Nov 2017 14:14:43 GMT  
		Size: 3.0 MB (2976771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148c5deb6ba2b91144670d2dca8c51a5a96a9a1677ab7b7f54be74a5362334aa`  
		Last Modified: Sat, 04 Nov 2017 14:14:42 GMT  
		Size: 56.4 KB (56406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1fce2e10b962d6ea3c4d1a07fef74fa759b12e5cb838ca4daf7959aee47589`  
		Last Modified: Sat, 04 Nov 2017 14:14:40 GMT  
		Size: 18.3 KB (18294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5f751aea9ea191e50393552f631cfdcd64264c80a20fb9153c176e0900b445`  
		Last Modified: Sat, 04 Nov 2017 14:14:41 GMT  
		Size: 72.8 KB (72765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3956530bdda0a45385a9e2f61819b0c8a05a3cfe6446c9186e02e23ff13485f`  
		Last Modified: Sat, 04 Nov 2017 14:14:43 GMT  
		Size: 9.4 MB (9409012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcd577e2f0a20e514095cb43a515bb80499e90c1e82d188660ab6bc0f05592`  
		Last Modified: Sat, 04 Nov 2017 14:14:40 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb2d74922f7ffc815f2945941107ad02a9673ad4d8042c1108fb4bdf2d1e5c0`  
		Last Modified: Sat, 04 Nov 2017 14:14:40 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
