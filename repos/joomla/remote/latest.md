## `joomla:latest`

```console
$ docker pull joomla@sha256:8ff86ab99643119c6fccf12fe0d40b9a951b337fb8feb084f33a1a03c767f062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:latest` - linux; amd64

```console
$ docker pull joomla@sha256:02afabe82305b70c13f1e94180bc78a4a6548dfb21c761cf86f36435e28b2d10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.4 MB (172423926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32a510f02f3b4e3060db25074b1a45811bc24bbcb19d75dde90da0885702e11f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 12 Dec 2017 06:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 12 Dec 2017 06:13:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 12 Dec 2017 06:13:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 12 Dec 2017 06:13:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 12 Dec 2017 06:13:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 12 Dec 2017 06:13:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 12 Dec 2017 06:13:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:13:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 06:56:41 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 12 Dec 2017 06:56:41 GMT
ENV PHP_VERSION=5.6.32
# Tue, 12 Dec 2017 06:56:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 06:56:42 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Tue, 12 Dec 2017 06:56:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 06:56:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 06:59:45 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 06:59:46 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:59:46 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 06:59:46 GMT
EXPOSE 80/tcp
# Tue, 12 Dec 2017 06:59:47 GMT
CMD ["apache2-foreground"]
# Tue, 12 Dec 2017 09:46:17 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 12 Dec 2017 09:46:17 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 12 Dec 2017 09:46:19 GMT
RUN a2enmod rewrite
# Tue, 12 Dec 2017 09:46:48 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 12 Dec 2017 09:46:56 GMT
RUN docker-php-ext-install mysqli
# Tue, 12 Dec 2017 09:47:01 GMT
RUN docker-php-ext-install mcrypt
# Tue, 12 Dec 2017 09:47:23 GMT
RUN docker-php-ext-install zip
# Tue, 12 Dec 2017 09:47:23 GMT
VOLUME [/var/www/html]
# Tue, 12 Dec 2017 09:47:23 GMT
ENV JOOMLA_VERSION=3.8.2
# Tue, 12 Dec 2017 09:47:24 GMT
ENV JOOMLA_SHA1=e68745d55cc5b1a7bb46f72f4296c6550e088543
# Tue, 12 Dec 2017 09:47:29 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 12 Dec 2017 09:47:30 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Tue, 12 Dec 2017 09:47:30 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 12 Dec 2017 09:47:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 09:47:31 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:dd0250641c2a932255c5b4f5bb483cd8664f5e0855b0b195c538c00761394f0c`  
		Last Modified: Tue, 12 Dec 2017 07:19:46 GMT  
		Size: 3.0 MB (3011955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8369e62349f672f343044b9af97fa7737607e6f608177b22c7552f8516f1ce`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18189b19fc46e7b1c56b31bd69e2833f3e2b2b580bb71899366159c94017fd04`  
		Last Modified: Tue, 12 Dec 2017 07:19:44 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59972270bf3b3899a20b826eaad8b2c2fc24a9b38c90a0c18341a13fdf23779c`  
		Last Modified: Tue, 12 Dec 2017 07:19:41 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bd8d4276cfbda5285440f9748df0dc4539eb730efc42d75335355098c684fc`  
		Last Modified: Tue, 12 Dec 2017 07:19:42 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3c100b9d8e0aaed1d69d3483fa2f95e8d95727d6d078977ae3f2a771e007eb`  
		Last Modified: Tue, 12 Dec 2017 07:28:25 GMT  
		Size: 12.8 MB (12817707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c594a2e740f6444402a8e68c457d20f144ea3e9607fa460e99743254ae77c`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970337d23026cf4b6ddc6b705cfc58321ec34928936c58416a1f003a62110226`  
		Last Modified: Tue, 12 Dec 2017 07:28:26 GMT  
		Size: 9.5 MB (9534580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8593f35b0acb0769fcaf021159e9c05da017204b0fc5ecf6da141c9d815550f`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113145dfe2250cbe2522f8cc938e7edeec2e213f71b9fa9505519d07d4d96c23`  
		Last Modified: Tue, 12 Dec 2017 07:28:23 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048a559a7ac9971fda63454c1041129e9872f039f379a1a6028074159f90dced`  
		Last Modified: Tue, 12 Dec 2017 10:05:50 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c9ce674f99bde79e41bd974e8ee01fdc3f34c5e28098283f9b87f412cd3a6c`  
		Last Modified: Tue, 12 Dec 2017 10:05:51 GMT  
		Size: 3.0 MB (3000696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3761060b7a3541b60b1b53cda819ad88507a01e4dc872c7c84ce47f76357cb4c`  
		Last Modified: Tue, 12 Dec 2017 10:05:50 GMT  
		Size: 58.0 KB (57997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e572bf69d64f2dfdd351491700c5efdbc040aa2236947b9c376c2ee53c0773`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 19.7 KB (19703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b96fbd3a668f96ffb83e92b83239bdeefc2c1d39c91dbb849dd85460977fd6ef`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 63.4 KB (63408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ee98fc2caaef22b1a653af3ec60a58dda2c6239f5ef229edefc14b3df5d283`  
		Last Modified: Tue, 12 Dec 2017 10:05:56 GMT  
		Size: 9.4 MB (9433108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb27b5a3ac9f56f82dfe7afa5672ddfe384057f462e6289f8b98e0ca9a8e18f`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8dd61833388bfdfc759991d767991ab28ad1a280a2158559f49ae936cf724ea`  
		Last Modified: Tue, 12 Dec 2017 10:05:48 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
