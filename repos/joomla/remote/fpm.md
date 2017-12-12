## `joomla:fpm`

```console
$ docker pull joomla@sha256:0b268a9a71b56a1210f4511f1f71d183dfd7f511c00d1b033e5c69a85d6bb0b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:fpm` - linux; amd64

```console
$ docker pull joomla@sha256:5eb4b9048268b28f86abd815bbcfcea0debd8882ee6542e99ed57cfbb81e8d43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169054458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67aef4cec631c4045917022e3f0df2878d8c39aa8e40b4e54e035e3ff98073a1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 06:04:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:04:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 06:04:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 06:59:54 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 12 Dec 2017 06:59:54 GMT
ENV PHP_VERSION=5.6.32
# Tue, 12 Dec 2017 06:59:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 06:59:55 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Tue, 12 Dec 2017 07:00:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 07:00:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 07:04:30 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 07:04:36 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 12 Dec 2017 07:04:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 07:04:36 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 07:04:37 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 12 Dec 2017 07:04:37 GMT
EXPOSE 9000/tcp
# Tue, 12 Dec 2017 07:04:37 GMT
CMD ["php-fpm"]
# Tue, 12 Dec 2017 09:55:56 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 12 Dec 2017 09:55:56 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 12 Dec 2017 09:56:21 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 12 Dec 2017 09:56:28 GMT
RUN docker-php-ext-install mysqli
# Tue, 12 Dec 2017 09:56:34 GMT
RUN docker-php-ext-install mcrypt
# Tue, 12 Dec 2017 09:56:55 GMT
RUN docker-php-ext-install zip
# Tue, 12 Dec 2017 09:56:55 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 09:56:56 GMT
ENV JOOMLA_VERSION=3.8.2
# Tue, 12 Dec 2017 09:56:56 GMT
ENV JOOMLA_SHA1=e68745d55cc5b1a7bb46f72f4296c6550e088543
# Tue, 12 Dec 2017 09:57:02 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 12 Dec 2017 09:57:02 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Tue, 12 Dec 2017 09:57:03 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 12 Dec 2017 09:57:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 09:57:09 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abfca402d9b38de54362ba77d7a6841e1862028622caf32fe05fb90a49f4d36`  
		Last Modified: Tue, 12 Dec 2017 07:18:06 GMT  
		Size: 81.9 MB (81876790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502a4f90da606173fb3b788d076ecd2b2e620a8cfd18e60930c1d821bbb25715`  
		Last Modified: Tue, 12 Dec 2017 07:17:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7411bcc6bef20e45e31fe6c390f5c2031466f8b39ea45f137c0ea6169758d82`  
		Last Modified: Tue, 12 Dec 2017 07:29:29 GMT  
		Size: 12.8 MB (12800839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300a6b91f34de23c23a2e8fe3d364144aab91409a75ab9bcc10673f9fae5ed82`  
		Last Modified: Tue, 12 Dec 2017 07:29:25 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ba67843fb8c3332ec256dfe8839b4e71235cc8f23ed72e15328bb19a543f32`  
		Last Modified: Tue, 12 Dec 2017 07:29:28 GMT  
		Size: 9.2 MB (9209496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a005301ce437929d5836af989aee358e5c5224c2977fcc45fa7cc19a907b7bd`  
		Last Modified: Tue, 12 Dec 2017 07:29:25 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06673dd985c8ce301facd66d269c0029fa3d0d7d3c723cf0d7aae9716c3842e9`  
		Last Modified: Tue, 12 Dec 2017 07:29:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01acddaa56c2ea0ba171f4b27ca820538ec019c22335e8412800622b566aa646`  
		Last Modified: Tue, 12 Dec 2017 07:29:25 GMT  
		Size: 7.6 KB (7619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadbe31aa18d76501c766ca942e434c4fd241c2b578301092577c89837c8c438`  
		Last Modified: Tue, 12 Dec 2017 10:08:18 GMT  
		Size: 3.0 MB (2981011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5416a2217e641c1937c1e8c21208114f9b1e196d1673da6071af9e537b0c4e4`  
		Last Modified: Tue, 12 Dec 2017 10:08:19 GMT  
		Size: 58.0 KB (57995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ca0e2a6110e2cf71a531f13f0fc31b890cd378938e74f138d705dcaf0c0783`  
		Last Modified: Tue, 12 Dec 2017 10:08:15 GMT  
		Size: 19.7 KB (19699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db5f5db8af176ef6d652905ad6a0174f153b59724be676b844306dec3e09833`  
		Last Modified: Tue, 12 Dec 2017 10:08:15 GMT  
		Size: 63.4 KB (63410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7cc22fcef808124c3fcbe5c7f42a6bc92785f3c779e3803cc7e9f8c71a317cc`  
		Last Modified: Tue, 12 Dec 2017 10:08:21 GMT  
		Size: 9.4 MB (9433106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d596b9be8fd44c2362fdc8da8198aab776688f3f0d0f2ff4dda8c8055a170d`  
		Last Modified: Tue, 12 Dec 2017 10:08:15 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1214e31268dddffb109256af4cc97ff069e8522f0e1a1b3d610c51d76f90724b`  
		Last Modified: Tue, 12 Dec 2017 10:08:16 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
