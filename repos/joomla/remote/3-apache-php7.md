## `joomla:3-apache-php7`

```console
$ docker pull joomla@sha256:f496264024613879e15237238574751669f0a66f53de32c9634150f960d718fe
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache-php7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.0 MB (168967844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:def50ec3eeb4c0845497b5a6547b99d88ddb25451ddb38fd4cd4f8a226efebd7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 21:52:24 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 09 Dec 2016 18:10:36 GMT
ENV PHP_VERSION=7.0.14
# Fri, 09 Dec 2016 18:10:37 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Fri, 09 Dec 2016 18:10:37 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Fri, 09 Dec 2016 18:10:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Dec 2016 18:10:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:13:17 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 09 Dec 2016 18:13:18 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:13:19 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 09 Dec 2016 18:13:19 GMT
WORKDIR /var/www/html
# Fri, 09 Dec 2016 18:13:20 GMT
EXPOSE 80/tcp
# Fri, 09 Dec 2016 18:13:20 GMT
CMD ["apache2-foreground"]
# Sat, 10 Dec 2016 16:53:15 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 10 Dec 2016 16:53:16 GMT
RUN a2enmod rewrite
# Sat, 10 Dec 2016 16:53:37 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 10 Dec 2016 16:53:45 GMT
RUN docker-php-ext-install mysqli
# Sat, 10 Dec 2016 16:53:50 GMT
RUN docker-php-ext-install mcrypt
# Sat, 10 Dec 2016 16:53:51 GMT
VOLUME [/var/www/html]
# Sat, 10 Dec 2016 16:53:51 GMT
ENV JOOMLA_VERSION=3.6.4
# Sat, 10 Dec 2016 16:53:52 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Sat, 10 Dec 2016 16:53:59 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 10 Dec 2016 16:54:00 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Sat, 10 Dec 2016 16:54:01 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 10 Dec 2016 16:54:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Dec 2016 16:54:01 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3b8f99329bb9c088984e00ea01d4f2f32c8b2cbcde6f6484334a92967d96af`  
		Last Modified: Fri, 09 Dec 2016 18:38:39 GMT  
		Size: 12.7 MB (12664612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d164dd2f74e9f006e157928b04e1d7b4b67038f38a3287ef2cd05c8ce78d3e6a`  
		Last Modified: Fri, 09 Dec 2016 18:38:37 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35125ac3ca7e4aeb68d73273fa92805f27c6d11e15d56a7886292310fded4604`  
		Last Modified: Fri, 09 Dec 2016 18:38:41 GMT  
		Size: 13.0 MB (13012694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734d7da6250e160bc159b95ca5db579ce7465d4ff05a7a3105585abc37cfe7bc`  
		Last Modified: Fri, 09 Dec 2016 18:38:38 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a48cde0e7c2c64bfc5a47c2765fd2b85165e25329d16ebd8148bee88e49b857`  
		Last Modified: Fri, 09 Dec 2016 18:38:38 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd145677f083ddf50b4bb8884394963ecba867fd8c983312e0a3726f6f73c8`  
		Last Modified: Sat, 10 Dec 2016 16:57:10 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621ee44b62e7fc2a591c1fbfec0c56cef5a66dcc9c573700508beb6b73425766`  
		Last Modified: Sat, 10 Dec 2016 16:57:10 GMT  
		Size: 2.7 MB (2737340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e65b0f5e8a9c5aba97e4e3a8f59310614c55aadf9f3824a2f0a80839419edcd8`  
		Last Modified: Sat, 10 Dec 2016 16:57:07 GMT  
		Size: 55.2 KB (55248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e4d4a9e8a2d336a5f744cb77c3192a60ea56f879f8edeb486756f90803fbc8`  
		Last Modified: Sat, 10 Dec 2016 16:57:07 GMT  
		Size: 17.9 KB (17873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069f1fd585a5efb39b472e41b54a72c4d73e5c04957b8d6fe539d22d1bef2d96`  
		Last Modified: Sat, 10 Dec 2016 16:57:09 GMT  
		Size: 8.7 MB (8674931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e44916069a13afda04ef8c7805e94a03ac3a5726b44c778f17586493d5f244`  
		Last Modified: Sat, 10 Dec 2016 16:57:06 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d71a4970ad4a788a05f0d64b4c76042b211d06ce241eb5fceb8c3b865ff74b`  
		Last Modified: Sat, 10 Dec 2016 16:57:07 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
