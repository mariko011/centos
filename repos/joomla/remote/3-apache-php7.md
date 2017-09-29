## `joomla:3-apache-php7`

```console
$ docker pull joomla@sha256:91fc480020d1c6f46b5ff703c1a4d7a3f695161b70cc2a8e53887eb4c4716b17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3-apache-php7` - linux; amd64

```console
$ docker pull joomla@sha256:fa49f11b86b8775a21fef2bc072be253bfad991907458ff40d98eab17a68f50b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.2 MB (176192099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7592965e1d1de1fd65a2409f0d1bfdad21f0686bcc97a237cecbddb67855bc6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 23:57:45 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 14 Sep 2017 23:58:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:58:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 14 Sep 2017 23:58:24 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 15 Sep 2017 00:08:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 00:08:17 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 15 Sep 2017 00:08:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 15 Sep 2017 00:08:18 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 15 Sep 2017 00:08:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 15 Sep 2017 00:08:19 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 15 Sep 2017 00:08:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 15 Sep 2017 00:08:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 15 Sep 2017 00:08:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 15 Sep 2017 00:39:01 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 29 Sep 2017 00:45:54 GMT
ENV PHP_VERSION=7.0.24
# Fri, 29 Sep 2017 00:45:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.24.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.24.tar.xz.asc/from/this/mirror
# Fri, 29 Sep 2017 00:45:55 GMT
ENV PHP_SHA256=4dba7aa365193c9229f89f1975fad4c01135d29922a338ffb4a27e840d6f1c98 PHP_MD5=
# Fri, 29 Sep 2017 00:46:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 29 Sep 2017 00:46:19 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 29 Sep 2017 00:48:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 29 Sep 2017 00:48:50 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Fri, 29 Sep 2017 00:48:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 29 Sep 2017 00:48:51 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 29 Sep 2017 00:48:51 GMT
WORKDIR /var/www/html
# Fri, 29 Sep 2017 00:48:51 GMT
EXPOSE 80/tcp
# Fri, 29 Sep 2017 00:48:51 GMT
CMD ["apache2-foreground"]
# Fri, 29 Sep 2017 02:22:05 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 29 Sep 2017 02:22:05 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 29 Sep 2017 02:22:06 GMT
RUN a2enmod rewrite
# Fri, 29 Sep 2017 02:22:42 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 29 Sep 2017 02:22:50 GMT
RUN docker-php-ext-install mysqli
# Fri, 29 Sep 2017 02:22:55 GMT
RUN docker-php-ext-install mcrypt
# Fri, 29 Sep 2017 02:23:14 GMT
RUN docker-php-ext-install zip
# Fri, 29 Sep 2017 02:23:14 GMT
VOLUME [/var/www/html]
# Fri, 29 Sep 2017 02:23:14 GMT
ENV JOOMLA_VERSION=3.8.0
# Fri, 29 Sep 2017 02:23:14 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Fri, 29 Sep 2017 02:23:20 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 29 Sep 2017 02:23:20 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Fri, 29 Sep 2017 02:23:21 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 29 Sep 2017 02:23:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 29 Sep 2017 02:23:21 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d5f85af454812aec1820ce0e52e003b81e4569823e2da5b0cccb58e31b136f`  
		Last Modified: Fri, 15 Sep 2017 01:34:31 GMT  
		Size: 82.5 MB (82495988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca642e7826b9552669a262d36f5488e3a478c2f9f97a98db37b203194ea6248`  
		Last Modified: Fri, 15 Sep 2017 01:34:12 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3638d91a90398e9b21e86d5f58ce592dcef089e461ed52559ddcc99d1021c04b`  
		Last Modified: Fri, 15 Sep 2017 01:35:48 GMT  
		Size: 3.0 MB (3012522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3646a95ab6778f36ca28c448f0217a571157bd80a83faa94284a046540d9b90e`  
		Last Modified: Fri, 15 Sep 2017 01:35:46 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628b8373e193144e4047261fde47c3b10881e013cc4730690c28281e30f340d4`  
		Last Modified: Fri, 15 Sep 2017 01:35:45 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24a2b2280edf466db78ea09cb8f23295781c7472f63e5ee7ebd5302e6ef3c45`  
		Last Modified: Fri, 15 Sep 2017 01:35:45 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f968b84cbbbc7f23c623c4ae9ad247431a59a370333ec20de8191284b4838b54`  
		Last Modified: Fri, 15 Sep 2017 01:35:44 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eba9b5fa4872bbe2b17063876e02d94e27ed76aaae378ff06f4fb5fabe92cca`  
		Last Modified: Fri, 29 Sep 2017 01:22:29 GMT  
		Size: 12.3 MB (12314249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0234067d12410685389f8fb0c6baa2ad79e2258de03ee29c0880902e4fb9d5e0`  
		Last Modified: Fri, 29 Sep 2017 01:22:27 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b85a2b999ef3bb1a50a67119cf987b7731cb7b0c1db3b4e40cad13de362b2b7a`  
		Last Modified: Fri, 29 Sep 2017 01:22:34 GMT  
		Size: 13.2 MB (13212054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d31395fe2313a4fde865b2d1f5309793fb4115b44960bc26a7b3b98e288c6ca`  
		Last Modified: Fri, 29 Sep 2017 01:22:28 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cff026afe51f89f948e975c0e3d1eaa0b96d81c64131c518e03067fdded35f4`  
		Last Modified: Fri, 29 Sep 2017 01:22:27 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4ae39a3ab225ac932a95ccbf14bcd4d030db1ddcaa09f5b426379e53200ad`  
		Last Modified: Fri, 29 Sep 2017 02:32:22 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcefccd53d531128cb7e50bf8c88950ee77dfb02a290a9edd3af60a5e6518045`  
		Last Modified: Fri, 29 Sep 2017 02:32:24 GMT  
		Size: 3.0 MB (2996997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79c3f246bc21cd2aefea09a932d8a77a786fd0875c22e56fb4b0a7e1ad06055`  
		Last Modified: Fri, 29 Sep 2017 02:32:22 GMT  
		Size: 56.4 KB (56402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618851eaf2dee92767fccc80873f2b31636bf246a17406c978aa90fd6cfb1d4f`  
		Last Modified: Fri, 29 Sep 2017 02:32:20 GMT  
		Size: 18.3 KB (18294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efabb94743f2690b629fc382a79b3fa714bf3881608386fa21178ef8c0172f2a`  
		Last Modified: Fri, 29 Sep 2017 02:32:21 GMT  
		Size: 72.8 KB (72766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356762cd9778a321acde71eaf2f8e901d5769ef4989f0ebc8d30fa1dec8ed409`  
		Last Modified: Fri, 29 Sep 2017 02:32:27 GMT  
		Size: 9.4 MB (9409016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cfff5fd03796d61aba7300422000fa66b15d4ef9a51b283fd5f0205614dacd`  
		Last Modified: Fri, 29 Sep 2017 02:32:20 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95850194da4117ce17de3fa75190127b60cc52246ab3062175a0e5f3598bbfb`  
		Last Modified: Fri, 29 Sep 2017 02:32:20 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
