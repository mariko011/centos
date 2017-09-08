<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `joomla`

-	[`joomla:3.7.5-apache`](#joomla375-apache)
-	[`joomla:3.7-apache`](#joomla37-apache)
-	[`joomla:3-apache`](#joomla3-apache)
-	[`joomla:apache`](#joomlaapache)
-	[`joomla:3.7.5`](#joomla375)
-	[`joomla:3.7`](#joomla37)
-	[`joomla:3`](#joomla3)
-	[`joomla:latest`](#joomlalatest)
-	[`joomla:3.7.5-apache-php7`](#joomla375-apache-php7)
-	[`joomla:3.7-apache-php7`](#joomla37-apache-php7)
-	[`joomla:3-apache-php7`](#joomla3-apache-php7)
-	[`joomla:apache-php7`](#joomlaapache-php7)
-	[`joomla:3.7.5-fpm`](#joomla375-fpm)
-	[`joomla:3.7-fpm`](#joomla37-fpm)
-	[`joomla:3-fpm`](#joomla3-fpm)
-	[`joomla:fpm`](#joomlafpm)
-	[`joomla:3.7.5-fpm-php7`](#joomla375-fpm-php7)
-	[`joomla:3.7-fpm-php7`](#joomla37-fpm-php7)
-	[`joomla:3-fpm-php7`](#joomla3-fpm-php7)
-	[`joomla:fpm-php7`](#joomlafpm-php7)

## `joomla:3.7.5-apache`

```console
$ docker pull joomla@sha256:aad09fa1e4a069fdc6b6ad951101b0b1b04f9ae609e4072c35f30e03d310e020
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7.5-apache` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.7 MB (171662974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b28f636a1221416c94ab3f9ddd46b9c90046986a1f42089f68ebb736e423946`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Fri, 08 Sep 2017 02:50:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:51:29 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 02:51:30 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 02:51:31 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 02:51:32 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 02:51:34 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 02:51:35 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 02:51:35 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 04:19:30 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 08 Sep 2017 04:19:31 GMT
ENV PHP_VERSION=5.6.31
# Fri, 08 Sep 2017 04:19:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 04:19:32 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Fri, 08 Sep 2017 04:20:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 04:20:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:42 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 04:24:43 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 04:24:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:44 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 04:24:45 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 04:24:45 GMT
CMD ["apache2-foreground"]
# Fri, 08 Sep 2017 07:31:33 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 08 Sep 2017 07:31:33 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 08 Sep 2017 07:31:34 GMT
RUN a2enmod rewrite
# Fri, 08 Sep 2017 07:32:12 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 08 Sep 2017 07:32:21 GMT
RUN docker-php-ext-install mysqli
# Fri, 08 Sep 2017 07:32:26 GMT
RUN docker-php-ext-install mcrypt
# Fri, 08 Sep 2017 07:32:48 GMT
RUN docker-php-ext-install zip
# Fri, 08 Sep 2017 07:32:48 GMT
VOLUME [/var/www/html]
# Fri, 08 Sep 2017 07:32:48 GMT
ENV JOOMLA_VERSION=3.7.5
# Fri, 08 Sep 2017 07:32:49 GMT
ENV JOOMLA_SHA1=4a8ba6c70265879cf5c77bcc1b3a0fe9620ba02a
# Fri, 08 Sep 2017 07:32:56 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 08 Sep 2017 07:32:59 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 08 Sep 2017 07:32:59 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 08 Sep 2017 07:33:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:33:00 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:02ffa64ac1d4100965fdab1cb78896787937def3ac6e334e0599325563d946aa`  
		Last Modified: Fri, 08 Sep 2017 05:32:23 GMT  
		Size: 2.8 MB (2784936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e287078ab3e5cedce81066c35d7202dbe85c5ed7b06f994ea282a4a2f2eb197d`  
		Last Modified: Fri, 08 Sep 2017 05:32:21 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa908359a8ab8fdc571f9f235057a85b57e1d9f3638136b00aa56e15e68f6f8b`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da80a4729d52be4f51c2f78d2cb9ee332f747c22d66a2f8b2e29941b87fbd717`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892d5ce128a6e695fe5b770feb07ccf9d67524bfa28fa890d2ab7e3c771cba9a`  
		Last Modified: Fri, 08 Sep 2017 05:32:18 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38986916ae3ed831d8d3872e1a9b78557434b224dc9114e0b81f57a530bccadf`  
		Last Modified: Fri, 08 Sep 2017 05:38:45 GMT  
		Size: 12.6 MB (12588478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092c16c9a5a4f3e6f44c3e230c7c18a229e09c1b16aa6a759c7e400f7c834b6a`  
		Last Modified: Fri, 08 Sep 2017 05:38:42 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a221d2639d9f19a2c764ae6b9b83b21c36ac7dbf6f3a2a6851f5809d44e4e51`  
		Last Modified: Fri, 08 Sep 2017 05:38:45 GMT  
		Size: 9.2 MB (9175350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9cd61771d9cc635907e760e071085297b1d58ed4bf4849de7b17a5b2970756`  
		Last Modified: Fri, 08 Sep 2017 05:38:41 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07fb6a4fe548b039400196fd92095a8b7ffd7d96a5425789247b238eb239ed0`  
		Last Modified: Fri, 08 Sep 2017 05:38:41 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664b669ea54d075aae4fc9c98fcaa4e5605ec9512309564d08e1283822e6f014`  
		Last Modified: Fri, 08 Sep 2017 19:33:47 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd074017450269fd7661948717be94a86dfb614bc66ae9d405e3d361fdb9145a`  
		Last Modified: Fri, 08 Sep 2017 19:33:48 GMT  
		Size: 2.8 MB (2774995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af06829a76b04423d03dd09ff622e0f6ff4c8e9926800f94bdf5eb6abbbf925`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 57.9 KB (57949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5a69ff0ddf5b2c7c5fc6969bac20705aa788f80ae029050675105756659da2`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 19.7 KB (19664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c492414052fa203d174ab86d8cafb391681fdf2cd668222c00d754e4a4ed72`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 63.4 KB (63363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4d1381138bd3ab94301232566aa0270f637aa3c91898accc5b9de46eb46dc1`  
		Last Modified: Fri, 08 Sep 2017 19:33:52 GMT  
		Size: 9.1 MB (9099686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce19de1eff597e0e9468d418f1a5a1edf486fec0529191bc238494223e4081b`  
		Last Modified: Fri, 08 Sep 2017 19:33:46 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a4c0f724e6cbce3c6b74792ddaf34b39d70e7fa5945e572969d90aa788a99a`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7-apache`

```console
$ docker pull joomla@sha256:aad09fa1e4a069fdc6b6ad951101b0b1b04f9ae609e4072c35f30e03d310e020
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7-apache` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.7 MB (171662974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b28f636a1221416c94ab3f9ddd46b9c90046986a1f42089f68ebb736e423946`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Fri, 08 Sep 2017 02:50:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:51:29 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 02:51:30 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 02:51:31 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 02:51:32 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 02:51:34 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 02:51:35 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 02:51:35 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 04:19:30 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 08 Sep 2017 04:19:31 GMT
ENV PHP_VERSION=5.6.31
# Fri, 08 Sep 2017 04:19:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 04:19:32 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Fri, 08 Sep 2017 04:20:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 04:20:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:42 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 04:24:43 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 04:24:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:44 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 04:24:45 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 04:24:45 GMT
CMD ["apache2-foreground"]
# Fri, 08 Sep 2017 07:31:33 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 08 Sep 2017 07:31:33 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 08 Sep 2017 07:31:34 GMT
RUN a2enmod rewrite
# Fri, 08 Sep 2017 07:32:12 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 08 Sep 2017 07:32:21 GMT
RUN docker-php-ext-install mysqli
# Fri, 08 Sep 2017 07:32:26 GMT
RUN docker-php-ext-install mcrypt
# Fri, 08 Sep 2017 07:32:48 GMT
RUN docker-php-ext-install zip
# Fri, 08 Sep 2017 07:32:48 GMT
VOLUME [/var/www/html]
# Fri, 08 Sep 2017 07:32:48 GMT
ENV JOOMLA_VERSION=3.7.5
# Fri, 08 Sep 2017 07:32:49 GMT
ENV JOOMLA_SHA1=4a8ba6c70265879cf5c77bcc1b3a0fe9620ba02a
# Fri, 08 Sep 2017 07:32:56 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 08 Sep 2017 07:32:59 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 08 Sep 2017 07:32:59 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 08 Sep 2017 07:33:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:33:00 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:02ffa64ac1d4100965fdab1cb78896787937def3ac6e334e0599325563d946aa`  
		Last Modified: Fri, 08 Sep 2017 05:32:23 GMT  
		Size: 2.8 MB (2784936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e287078ab3e5cedce81066c35d7202dbe85c5ed7b06f994ea282a4a2f2eb197d`  
		Last Modified: Fri, 08 Sep 2017 05:32:21 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa908359a8ab8fdc571f9f235057a85b57e1d9f3638136b00aa56e15e68f6f8b`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da80a4729d52be4f51c2f78d2cb9ee332f747c22d66a2f8b2e29941b87fbd717`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892d5ce128a6e695fe5b770feb07ccf9d67524bfa28fa890d2ab7e3c771cba9a`  
		Last Modified: Fri, 08 Sep 2017 05:32:18 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38986916ae3ed831d8d3872e1a9b78557434b224dc9114e0b81f57a530bccadf`  
		Last Modified: Fri, 08 Sep 2017 05:38:45 GMT  
		Size: 12.6 MB (12588478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092c16c9a5a4f3e6f44c3e230c7c18a229e09c1b16aa6a759c7e400f7c834b6a`  
		Last Modified: Fri, 08 Sep 2017 05:38:42 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a221d2639d9f19a2c764ae6b9b83b21c36ac7dbf6f3a2a6851f5809d44e4e51`  
		Last Modified: Fri, 08 Sep 2017 05:38:45 GMT  
		Size: 9.2 MB (9175350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9cd61771d9cc635907e760e071085297b1d58ed4bf4849de7b17a5b2970756`  
		Last Modified: Fri, 08 Sep 2017 05:38:41 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07fb6a4fe548b039400196fd92095a8b7ffd7d96a5425789247b238eb239ed0`  
		Last Modified: Fri, 08 Sep 2017 05:38:41 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664b669ea54d075aae4fc9c98fcaa4e5605ec9512309564d08e1283822e6f014`  
		Last Modified: Fri, 08 Sep 2017 19:33:47 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd074017450269fd7661948717be94a86dfb614bc66ae9d405e3d361fdb9145a`  
		Last Modified: Fri, 08 Sep 2017 19:33:48 GMT  
		Size: 2.8 MB (2774995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af06829a76b04423d03dd09ff622e0f6ff4c8e9926800f94bdf5eb6abbbf925`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 57.9 KB (57949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5a69ff0ddf5b2c7c5fc6969bac20705aa788f80ae029050675105756659da2`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 19.7 KB (19664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c492414052fa203d174ab86d8cafb391681fdf2cd668222c00d754e4a4ed72`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 63.4 KB (63363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4d1381138bd3ab94301232566aa0270f637aa3c91898accc5b9de46eb46dc1`  
		Last Modified: Fri, 08 Sep 2017 19:33:52 GMT  
		Size: 9.1 MB (9099686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce19de1eff597e0e9468d418f1a5a1edf486fec0529191bc238494223e4081b`  
		Last Modified: Fri, 08 Sep 2017 19:33:46 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a4c0f724e6cbce3c6b74792ddaf34b39d70e7fa5945e572969d90aa788a99a`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache`

```console
$ docker pull joomla@sha256:aad09fa1e4a069fdc6b6ad951101b0b1b04f9ae609e4072c35f30e03d310e020
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.7 MB (171662974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b28f636a1221416c94ab3f9ddd46b9c90046986a1f42089f68ebb736e423946`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Fri, 08 Sep 2017 02:50:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:51:29 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 02:51:30 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 02:51:31 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 02:51:32 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 02:51:34 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 02:51:35 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 02:51:35 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 04:19:30 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 08 Sep 2017 04:19:31 GMT
ENV PHP_VERSION=5.6.31
# Fri, 08 Sep 2017 04:19:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 04:19:32 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Fri, 08 Sep 2017 04:20:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 04:20:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:42 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 04:24:43 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 04:24:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:44 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 04:24:45 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 04:24:45 GMT
CMD ["apache2-foreground"]
# Fri, 08 Sep 2017 07:31:33 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 08 Sep 2017 07:31:33 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 08 Sep 2017 07:31:34 GMT
RUN a2enmod rewrite
# Fri, 08 Sep 2017 07:32:12 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 08 Sep 2017 07:32:21 GMT
RUN docker-php-ext-install mysqli
# Fri, 08 Sep 2017 07:32:26 GMT
RUN docker-php-ext-install mcrypt
# Fri, 08 Sep 2017 07:32:48 GMT
RUN docker-php-ext-install zip
# Fri, 08 Sep 2017 07:32:48 GMT
VOLUME [/var/www/html]
# Fri, 08 Sep 2017 07:32:48 GMT
ENV JOOMLA_VERSION=3.7.5
# Fri, 08 Sep 2017 07:32:49 GMT
ENV JOOMLA_SHA1=4a8ba6c70265879cf5c77bcc1b3a0fe9620ba02a
# Fri, 08 Sep 2017 07:32:56 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 08 Sep 2017 07:32:59 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 08 Sep 2017 07:32:59 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 08 Sep 2017 07:33:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:33:00 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:02ffa64ac1d4100965fdab1cb78896787937def3ac6e334e0599325563d946aa`  
		Last Modified: Fri, 08 Sep 2017 05:32:23 GMT  
		Size: 2.8 MB (2784936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e287078ab3e5cedce81066c35d7202dbe85c5ed7b06f994ea282a4a2f2eb197d`  
		Last Modified: Fri, 08 Sep 2017 05:32:21 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa908359a8ab8fdc571f9f235057a85b57e1d9f3638136b00aa56e15e68f6f8b`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da80a4729d52be4f51c2f78d2cb9ee332f747c22d66a2f8b2e29941b87fbd717`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892d5ce128a6e695fe5b770feb07ccf9d67524bfa28fa890d2ab7e3c771cba9a`  
		Last Modified: Fri, 08 Sep 2017 05:32:18 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38986916ae3ed831d8d3872e1a9b78557434b224dc9114e0b81f57a530bccadf`  
		Last Modified: Fri, 08 Sep 2017 05:38:45 GMT  
		Size: 12.6 MB (12588478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092c16c9a5a4f3e6f44c3e230c7c18a229e09c1b16aa6a759c7e400f7c834b6a`  
		Last Modified: Fri, 08 Sep 2017 05:38:42 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a221d2639d9f19a2c764ae6b9b83b21c36ac7dbf6f3a2a6851f5809d44e4e51`  
		Last Modified: Fri, 08 Sep 2017 05:38:45 GMT  
		Size: 9.2 MB (9175350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9cd61771d9cc635907e760e071085297b1d58ed4bf4849de7b17a5b2970756`  
		Last Modified: Fri, 08 Sep 2017 05:38:41 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07fb6a4fe548b039400196fd92095a8b7ffd7d96a5425789247b238eb239ed0`  
		Last Modified: Fri, 08 Sep 2017 05:38:41 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664b669ea54d075aae4fc9c98fcaa4e5605ec9512309564d08e1283822e6f014`  
		Last Modified: Fri, 08 Sep 2017 19:33:47 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd074017450269fd7661948717be94a86dfb614bc66ae9d405e3d361fdb9145a`  
		Last Modified: Fri, 08 Sep 2017 19:33:48 GMT  
		Size: 2.8 MB (2774995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af06829a76b04423d03dd09ff622e0f6ff4c8e9926800f94bdf5eb6abbbf925`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 57.9 KB (57949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5a69ff0ddf5b2c7c5fc6969bac20705aa788f80ae029050675105756659da2`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 19.7 KB (19664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c492414052fa203d174ab86d8cafb391681fdf2cd668222c00d754e4a4ed72`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 63.4 KB (63363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4d1381138bd3ab94301232566aa0270f637aa3c91898accc5b9de46eb46dc1`  
		Last Modified: Fri, 08 Sep 2017 19:33:52 GMT  
		Size: 9.1 MB (9099686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce19de1eff597e0e9468d418f1a5a1edf486fec0529191bc238494223e4081b`  
		Last Modified: Fri, 08 Sep 2017 19:33:46 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a4c0f724e6cbce3c6b74792ddaf34b39d70e7fa5945e572969d90aa788a99a`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:apache`

```console
$ docker pull joomla@sha256:aad09fa1e4a069fdc6b6ad951101b0b1b04f9ae609e4072c35f30e03d310e020
```

-	Platforms:
	-	linux; amd64

### `joomla:apache` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.7 MB (171662974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b28f636a1221416c94ab3f9ddd46b9c90046986a1f42089f68ebb736e423946`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Fri, 08 Sep 2017 02:50:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:51:29 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 02:51:30 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 02:51:31 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 02:51:32 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 02:51:34 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 02:51:35 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 02:51:35 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 04:19:30 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 08 Sep 2017 04:19:31 GMT
ENV PHP_VERSION=5.6.31
# Fri, 08 Sep 2017 04:19:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 04:19:32 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Fri, 08 Sep 2017 04:20:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 04:20:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:42 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 04:24:43 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 04:24:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:44 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 04:24:45 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 04:24:45 GMT
CMD ["apache2-foreground"]
# Fri, 08 Sep 2017 07:31:33 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 08 Sep 2017 07:31:33 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 08 Sep 2017 07:31:34 GMT
RUN a2enmod rewrite
# Fri, 08 Sep 2017 07:32:12 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 08 Sep 2017 07:32:21 GMT
RUN docker-php-ext-install mysqli
# Fri, 08 Sep 2017 07:32:26 GMT
RUN docker-php-ext-install mcrypt
# Fri, 08 Sep 2017 07:32:48 GMT
RUN docker-php-ext-install zip
# Fri, 08 Sep 2017 07:32:48 GMT
VOLUME [/var/www/html]
# Fri, 08 Sep 2017 07:32:48 GMT
ENV JOOMLA_VERSION=3.7.5
# Fri, 08 Sep 2017 07:32:49 GMT
ENV JOOMLA_SHA1=4a8ba6c70265879cf5c77bcc1b3a0fe9620ba02a
# Fri, 08 Sep 2017 07:32:56 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 08 Sep 2017 07:32:59 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 08 Sep 2017 07:32:59 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 08 Sep 2017 07:33:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:33:00 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:02ffa64ac1d4100965fdab1cb78896787937def3ac6e334e0599325563d946aa`  
		Last Modified: Fri, 08 Sep 2017 05:32:23 GMT  
		Size: 2.8 MB (2784936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e287078ab3e5cedce81066c35d7202dbe85c5ed7b06f994ea282a4a2f2eb197d`  
		Last Modified: Fri, 08 Sep 2017 05:32:21 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa908359a8ab8fdc571f9f235057a85b57e1d9f3638136b00aa56e15e68f6f8b`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da80a4729d52be4f51c2f78d2cb9ee332f747c22d66a2f8b2e29941b87fbd717`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892d5ce128a6e695fe5b770feb07ccf9d67524bfa28fa890d2ab7e3c771cba9a`  
		Last Modified: Fri, 08 Sep 2017 05:32:18 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38986916ae3ed831d8d3872e1a9b78557434b224dc9114e0b81f57a530bccadf`  
		Last Modified: Fri, 08 Sep 2017 05:38:45 GMT  
		Size: 12.6 MB (12588478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092c16c9a5a4f3e6f44c3e230c7c18a229e09c1b16aa6a759c7e400f7c834b6a`  
		Last Modified: Fri, 08 Sep 2017 05:38:42 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a221d2639d9f19a2c764ae6b9b83b21c36ac7dbf6f3a2a6851f5809d44e4e51`  
		Last Modified: Fri, 08 Sep 2017 05:38:45 GMT  
		Size: 9.2 MB (9175350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9cd61771d9cc635907e760e071085297b1d58ed4bf4849de7b17a5b2970756`  
		Last Modified: Fri, 08 Sep 2017 05:38:41 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07fb6a4fe548b039400196fd92095a8b7ffd7d96a5425789247b238eb239ed0`  
		Last Modified: Fri, 08 Sep 2017 05:38:41 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664b669ea54d075aae4fc9c98fcaa4e5605ec9512309564d08e1283822e6f014`  
		Last Modified: Fri, 08 Sep 2017 19:33:47 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd074017450269fd7661948717be94a86dfb614bc66ae9d405e3d361fdb9145a`  
		Last Modified: Fri, 08 Sep 2017 19:33:48 GMT  
		Size: 2.8 MB (2774995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af06829a76b04423d03dd09ff622e0f6ff4c8e9926800f94bdf5eb6abbbf925`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 57.9 KB (57949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5a69ff0ddf5b2c7c5fc6969bac20705aa788f80ae029050675105756659da2`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 19.7 KB (19664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c492414052fa203d174ab86d8cafb391681fdf2cd668222c00d754e4a4ed72`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 63.4 KB (63363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4d1381138bd3ab94301232566aa0270f637aa3c91898accc5b9de46eb46dc1`  
		Last Modified: Fri, 08 Sep 2017 19:33:52 GMT  
		Size: 9.1 MB (9099686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce19de1eff597e0e9468d418f1a5a1edf486fec0529191bc238494223e4081b`  
		Last Modified: Fri, 08 Sep 2017 19:33:46 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a4c0f724e6cbce3c6b74792ddaf34b39d70e7fa5945e572969d90aa788a99a`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7.5`

```console
$ docker pull joomla@sha256:aad09fa1e4a069fdc6b6ad951101b0b1b04f9ae609e4072c35f30e03d310e020
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.7 MB (171662974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b28f636a1221416c94ab3f9ddd46b9c90046986a1f42089f68ebb736e423946`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Fri, 08 Sep 2017 02:50:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:51:29 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 02:51:30 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 02:51:31 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 02:51:32 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 02:51:34 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 02:51:35 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 02:51:35 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 04:19:30 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 08 Sep 2017 04:19:31 GMT
ENV PHP_VERSION=5.6.31
# Fri, 08 Sep 2017 04:19:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 04:19:32 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Fri, 08 Sep 2017 04:20:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 04:20:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:42 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 04:24:43 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 04:24:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:44 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 04:24:45 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 04:24:45 GMT
CMD ["apache2-foreground"]
# Fri, 08 Sep 2017 07:31:33 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 08 Sep 2017 07:31:33 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 08 Sep 2017 07:31:34 GMT
RUN a2enmod rewrite
# Fri, 08 Sep 2017 07:32:12 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 08 Sep 2017 07:32:21 GMT
RUN docker-php-ext-install mysqli
# Fri, 08 Sep 2017 07:32:26 GMT
RUN docker-php-ext-install mcrypt
# Fri, 08 Sep 2017 07:32:48 GMT
RUN docker-php-ext-install zip
# Fri, 08 Sep 2017 07:32:48 GMT
VOLUME [/var/www/html]
# Fri, 08 Sep 2017 07:32:48 GMT
ENV JOOMLA_VERSION=3.7.5
# Fri, 08 Sep 2017 07:32:49 GMT
ENV JOOMLA_SHA1=4a8ba6c70265879cf5c77bcc1b3a0fe9620ba02a
# Fri, 08 Sep 2017 07:32:56 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 08 Sep 2017 07:32:59 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 08 Sep 2017 07:32:59 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 08 Sep 2017 07:33:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:33:00 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:02ffa64ac1d4100965fdab1cb78896787937def3ac6e334e0599325563d946aa`  
		Last Modified: Fri, 08 Sep 2017 05:32:23 GMT  
		Size: 2.8 MB (2784936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e287078ab3e5cedce81066c35d7202dbe85c5ed7b06f994ea282a4a2f2eb197d`  
		Last Modified: Fri, 08 Sep 2017 05:32:21 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa908359a8ab8fdc571f9f235057a85b57e1d9f3638136b00aa56e15e68f6f8b`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da80a4729d52be4f51c2f78d2cb9ee332f747c22d66a2f8b2e29941b87fbd717`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892d5ce128a6e695fe5b770feb07ccf9d67524bfa28fa890d2ab7e3c771cba9a`  
		Last Modified: Fri, 08 Sep 2017 05:32:18 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38986916ae3ed831d8d3872e1a9b78557434b224dc9114e0b81f57a530bccadf`  
		Last Modified: Fri, 08 Sep 2017 05:38:45 GMT  
		Size: 12.6 MB (12588478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092c16c9a5a4f3e6f44c3e230c7c18a229e09c1b16aa6a759c7e400f7c834b6a`  
		Last Modified: Fri, 08 Sep 2017 05:38:42 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a221d2639d9f19a2c764ae6b9b83b21c36ac7dbf6f3a2a6851f5809d44e4e51`  
		Last Modified: Fri, 08 Sep 2017 05:38:45 GMT  
		Size: 9.2 MB (9175350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9cd61771d9cc635907e760e071085297b1d58ed4bf4849de7b17a5b2970756`  
		Last Modified: Fri, 08 Sep 2017 05:38:41 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07fb6a4fe548b039400196fd92095a8b7ffd7d96a5425789247b238eb239ed0`  
		Last Modified: Fri, 08 Sep 2017 05:38:41 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664b669ea54d075aae4fc9c98fcaa4e5605ec9512309564d08e1283822e6f014`  
		Last Modified: Fri, 08 Sep 2017 19:33:47 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd074017450269fd7661948717be94a86dfb614bc66ae9d405e3d361fdb9145a`  
		Last Modified: Fri, 08 Sep 2017 19:33:48 GMT  
		Size: 2.8 MB (2774995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af06829a76b04423d03dd09ff622e0f6ff4c8e9926800f94bdf5eb6abbbf925`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 57.9 KB (57949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5a69ff0ddf5b2c7c5fc6969bac20705aa788f80ae029050675105756659da2`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 19.7 KB (19664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c492414052fa203d174ab86d8cafb391681fdf2cd668222c00d754e4a4ed72`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 63.4 KB (63363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4d1381138bd3ab94301232566aa0270f637aa3c91898accc5b9de46eb46dc1`  
		Last Modified: Fri, 08 Sep 2017 19:33:52 GMT  
		Size: 9.1 MB (9099686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce19de1eff597e0e9468d418f1a5a1edf486fec0529191bc238494223e4081b`  
		Last Modified: Fri, 08 Sep 2017 19:33:46 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a4c0f724e6cbce3c6b74792ddaf34b39d70e7fa5945e572969d90aa788a99a`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7`

```console
$ docker pull joomla@sha256:aad09fa1e4a069fdc6b6ad951101b0b1b04f9ae609e4072c35f30e03d310e020
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.7 MB (171662974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b28f636a1221416c94ab3f9ddd46b9c90046986a1f42089f68ebb736e423946`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Fri, 08 Sep 2017 02:50:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:51:29 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 02:51:30 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 02:51:31 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 02:51:32 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 02:51:34 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 02:51:35 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 02:51:35 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 04:19:30 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 08 Sep 2017 04:19:31 GMT
ENV PHP_VERSION=5.6.31
# Fri, 08 Sep 2017 04:19:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 04:19:32 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Fri, 08 Sep 2017 04:20:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 04:20:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:42 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 04:24:43 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 04:24:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:44 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 04:24:45 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 04:24:45 GMT
CMD ["apache2-foreground"]
# Fri, 08 Sep 2017 07:31:33 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 08 Sep 2017 07:31:33 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 08 Sep 2017 07:31:34 GMT
RUN a2enmod rewrite
# Fri, 08 Sep 2017 07:32:12 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 08 Sep 2017 07:32:21 GMT
RUN docker-php-ext-install mysqli
# Fri, 08 Sep 2017 07:32:26 GMT
RUN docker-php-ext-install mcrypt
# Fri, 08 Sep 2017 07:32:48 GMT
RUN docker-php-ext-install zip
# Fri, 08 Sep 2017 07:32:48 GMT
VOLUME [/var/www/html]
# Fri, 08 Sep 2017 07:32:48 GMT
ENV JOOMLA_VERSION=3.7.5
# Fri, 08 Sep 2017 07:32:49 GMT
ENV JOOMLA_SHA1=4a8ba6c70265879cf5c77bcc1b3a0fe9620ba02a
# Fri, 08 Sep 2017 07:32:56 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 08 Sep 2017 07:32:59 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 08 Sep 2017 07:32:59 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 08 Sep 2017 07:33:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:33:00 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:02ffa64ac1d4100965fdab1cb78896787937def3ac6e334e0599325563d946aa`  
		Last Modified: Fri, 08 Sep 2017 05:32:23 GMT  
		Size: 2.8 MB (2784936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e287078ab3e5cedce81066c35d7202dbe85c5ed7b06f994ea282a4a2f2eb197d`  
		Last Modified: Fri, 08 Sep 2017 05:32:21 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa908359a8ab8fdc571f9f235057a85b57e1d9f3638136b00aa56e15e68f6f8b`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da80a4729d52be4f51c2f78d2cb9ee332f747c22d66a2f8b2e29941b87fbd717`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892d5ce128a6e695fe5b770feb07ccf9d67524bfa28fa890d2ab7e3c771cba9a`  
		Last Modified: Fri, 08 Sep 2017 05:32:18 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38986916ae3ed831d8d3872e1a9b78557434b224dc9114e0b81f57a530bccadf`  
		Last Modified: Fri, 08 Sep 2017 05:38:45 GMT  
		Size: 12.6 MB (12588478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092c16c9a5a4f3e6f44c3e230c7c18a229e09c1b16aa6a759c7e400f7c834b6a`  
		Last Modified: Fri, 08 Sep 2017 05:38:42 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a221d2639d9f19a2c764ae6b9b83b21c36ac7dbf6f3a2a6851f5809d44e4e51`  
		Last Modified: Fri, 08 Sep 2017 05:38:45 GMT  
		Size: 9.2 MB (9175350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9cd61771d9cc635907e760e071085297b1d58ed4bf4849de7b17a5b2970756`  
		Last Modified: Fri, 08 Sep 2017 05:38:41 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07fb6a4fe548b039400196fd92095a8b7ffd7d96a5425789247b238eb239ed0`  
		Last Modified: Fri, 08 Sep 2017 05:38:41 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664b669ea54d075aae4fc9c98fcaa4e5605ec9512309564d08e1283822e6f014`  
		Last Modified: Fri, 08 Sep 2017 19:33:47 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd074017450269fd7661948717be94a86dfb614bc66ae9d405e3d361fdb9145a`  
		Last Modified: Fri, 08 Sep 2017 19:33:48 GMT  
		Size: 2.8 MB (2774995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af06829a76b04423d03dd09ff622e0f6ff4c8e9926800f94bdf5eb6abbbf925`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 57.9 KB (57949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5a69ff0ddf5b2c7c5fc6969bac20705aa788f80ae029050675105756659da2`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 19.7 KB (19664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c492414052fa203d174ab86d8cafb391681fdf2cd668222c00d754e4a4ed72`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 63.4 KB (63363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4d1381138bd3ab94301232566aa0270f637aa3c91898accc5b9de46eb46dc1`  
		Last Modified: Fri, 08 Sep 2017 19:33:52 GMT  
		Size: 9.1 MB (9099686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce19de1eff597e0e9468d418f1a5a1edf486fec0529191bc238494223e4081b`  
		Last Modified: Fri, 08 Sep 2017 19:33:46 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a4c0f724e6cbce3c6b74792ddaf34b39d70e7fa5945e572969d90aa788a99a`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3`

```console
$ docker pull joomla@sha256:aad09fa1e4a069fdc6b6ad951101b0b1b04f9ae609e4072c35f30e03d310e020
```

-	Platforms:
	-	linux; amd64

### `joomla:3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.7 MB (171662974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b28f636a1221416c94ab3f9ddd46b9c90046986a1f42089f68ebb736e423946`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Fri, 08 Sep 2017 02:50:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:51:29 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 02:51:30 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 02:51:31 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 02:51:32 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 02:51:34 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 02:51:35 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 02:51:35 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 04:19:30 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 08 Sep 2017 04:19:31 GMT
ENV PHP_VERSION=5.6.31
# Fri, 08 Sep 2017 04:19:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 04:19:32 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Fri, 08 Sep 2017 04:20:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 04:20:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:42 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 04:24:43 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 04:24:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:44 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 04:24:45 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 04:24:45 GMT
CMD ["apache2-foreground"]
# Fri, 08 Sep 2017 07:31:33 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 08 Sep 2017 07:31:33 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 08 Sep 2017 07:31:34 GMT
RUN a2enmod rewrite
# Fri, 08 Sep 2017 07:32:12 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 08 Sep 2017 07:32:21 GMT
RUN docker-php-ext-install mysqli
# Fri, 08 Sep 2017 07:32:26 GMT
RUN docker-php-ext-install mcrypt
# Fri, 08 Sep 2017 07:32:48 GMT
RUN docker-php-ext-install zip
# Fri, 08 Sep 2017 07:32:48 GMT
VOLUME [/var/www/html]
# Fri, 08 Sep 2017 07:32:48 GMT
ENV JOOMLA_VERSION=3.7.5
# Fri, 08 Sep 2017 07:32:49 GMT
ENV JOOMLA_SHA1=4a8ba6c70265879cf5c77bcc1b3a0fe9620ba02a
# Fri, 08 Sep 2017 07:32:56 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 08 Sep 2017 07:32:59 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 08 Sep 2017 07:32:59 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 08 Sep 2017 07:33:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:33:00 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:02ffa64ac1d4100965fdab1cb78896787937def3ac6e334e0599325563d946aa`  
		Last Modified: Fri, 08 Sep 2017 05:32:23 GMT  
		Size: 2.8 MB (2784936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e287078ab3e5cedce81066c35d7202dbe85c5ed7b06f994ea282a4a2f2eb197d`  
		Last Modified: Fri, 08 Sep 2017 05:32:21 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa908359a8ab8fdc571f9f235057a85b57e1d9f3638136b00aa56e15e68f6f8b`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da80a4729d52be4f51c2f78d2cb9ee332f747c22d66a2f8b2e29941b87fbd717`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892d5ce128a6e695fe5b770feb07ccf9d67524bfa28fa890d2ab7e3c771cba9a`  
		Last Modified: Fri, 08 Sep 2017 05:32:18 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38986916ae3ed831d8d3872e1a9b78557434b224dc9114e0b81f57a530bccadf`  
		Last Modified: Fri, 08 Sep 2017 05:38:45 GMT  
		Size: 12.6 MB (12588478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092c16c9a5a4f3e6f44c3e230c7c18a229e09c1b16aa6a759c7e400f7c834b6a`  
		Last Modified: Fri, 08 Sep 2017 05:38:42 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a221d2639d9f19a2c764ae6b9b83b21c36ac7dbf6f3a2a6851f5809d44e4e51`  
		Last Modified: Fri, 08 Sep 2017 05:38:45 GMT  
		Size: 9.2 MB (9175350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9cd61771d9cc635907e760e071085297b1d58ed4bf4849de7b17a5b2970756`  
		Last Modified: Fri, 08 Sep 2017 05:38:41 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07fb6a4fe548b039400196fd92095a8b7ffd7d96a5425789247b238eb239ed0`  
		Last Modified: Fri, 08 Sep 2017 05:38:41 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664b669ea54d075aae4fc9c98fcaa4e5605ec9512309564d08e1283822e6f014`  
		Last Modified: Fri, 08 Sep 2017 19:33:47 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd074017450269fd7661948717be94a86dfb614bc66ae9d405e3d361fdb9145a`  
		Last Modified: Fri, 08 Sep 2017 19:33:48 GMT  
		Size: 2.8 MB (2774995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af06829a76b04423d03dd09ff622e0f6ff4c8e9926800f94bdf5eb6abbbf925`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 57.9 KB (57949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5a69ff0ddf5b2c7c5fc6969bac20705aa788f80ae029050675105756659da2`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 19.7 KB (19664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c492414052fa203d174ab86d8cafb391681fdf2cd668222c00d754e4a4ed72`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 63.4 KB (63363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4d1381138bd3ab94301232566aa0270f637aa3c91898accc5b9de46eb46dc1`  
		Last Modified: Fri, 08 Sep 2017 19:33:52 GMT  
		Size: 9.1 MB (9099686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce19de1eff597e0e9468d418f1a5a1edf486fec0529191bc238494223e4081b`  
		Last Modified: Fri, 08 Sep 2017 19:33:46 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a4c0f724e6cbce3c6b74792ddaf34b39d70e7fa5945e572969d90aa788a99a`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:latest`

```console
$ docker pull joomla@sha256:aad09fa1e4a069fdc6b6ad951101b0b1b04f9ae609e4072c35f30e03d310e020
```

-	Platforms:
	-	linux; amd64

### `joomla:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.7 MB (171662974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b28f636a1221416c94ab3f9ddd46b9c90046986a1f42089f68ebb736e423946`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Fri, 08 Sep 2017 02:50:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:51:29 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 02:51:30 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 02:51:31 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 02:51:32 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 02:51:34 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 02:51:35 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 02:51:35 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 04:19:30 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 08 Sep 2017 04:19:31 GMT
ENV PHP_VERSION=5.6.31
# Fri, 08 Sep 2017 04:19:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 04:19:32 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Fri, 08 Sep 2017 04:20:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 04:20:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:42 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 04:24:43 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 04:24:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:24:44 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 04:24:45 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 04:24:45 GMT
CMD ["apache2-foreground"]
# Fri, 08 Sep 2017 07:31:33 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 08 Sep 2017 07:31:33 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 08 Sep 2017 07:31:34 GMT
RUN a2enmod rewrite
# Fri, 08 Sep 2017 07:32:12 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 08 Sep 2017 07:32:21 GMT
RUN docker-php-ext-install mysqli
# Fri, 08 Sep 2017 07:32:26 GMT
RUN docker-php-ext-install mcrypt
# Fri, 08 Sep 2017 07:32:48 GMT
RUN docker-php-ext-install zip
# Fri, 08 Sep 2017 07:32:48 GMT
VOLUME [/var/www/html]
# Fri, 08 Sep 2017 07:32:48 GMT
ENV JOOMLA_VERSION=3.7.5
# Fri, 08 Sep 2017 07:32:49 GMT
ENV JOOMLA_SHA1=4a8ba6c70265879cf5c77bcc1b3a0fe9620ba02a
# Fri, 08 Sep 2017 07:32:56 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 08 Sep 2017 07:32:59 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 08 Sep 2017 07:32:59 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 08 Sep 2017 07:33:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:33:00 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:02ffa64ac1d4100965fdab1cb78896787937def3ac6e334e0599325563d946aa`  
		Last Modified: Fri, 08 Sep 2017 05:32:23 GMT  
		Size: 2.8 MB (2784936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e287078ab3e5cedce81066c35d7202dbe85c5ed7b06f994ea282a4a2f2eb197d`  
		Last Modified: Fri, 08 Sep 2017 05:32:21 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa908359a8ab8fdc571f9f235057a85b57e1d9f3638136b00aa56e15e68f6f8b`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da80a4729d52be4f51c2f78d2cb9ee332f747c22d66a2f8b2e29941b87fbd717`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892d5ce128a6e695fe5b770feb07ccf9d67524bfa28fa890d2ab7e3c771cba9a`  
		Last Modified: Fri, 08 Sep 2017 05:32:18 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38986916ae3ed831d8d3872e1a9b78557434b224dc9114e0b81f57a530bccadf`  
		Last Modified: Fri, 08 Sep 2017 05:38:45 GMT  
		Size: 12.6 MB (12588478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092c16c9a5a4f3e6f44c3e230c7c18a229e09c1b16aa6a759c7e400f7c834b6a`  
		Last Modified: Fri, 08 Sep 2017 05:38:42 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a221d2639d9f19a2c764ae6b9b83b21c36ac7dbf6f3a2a6851f5809d44e4e51`  
		Last Modified: Fri, 08 Sep 2017 05:38:45 GMT  
		Size: 9.2 MB (9175350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9cd61771d9cc635907e760e071085297b1d58ed4bf4849de7b17a5b2970756`  
		Last Modified: Fri, 08 Sep 2017 05:38:41 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07fb6a4fe548b039400196fd92095a8b7ffd7d96a5425789247b238eb239ed0`  
		Last Modified: Fri, 08 Sep 2017 05:38:41 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664b669ea54d075aae4fc9c98fcaa4e5605ec9512309564d08e1283822e6f014`  
		Last Modified: Fri, 08 Sep 2017 19:33:47 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd074017450269fd7661948717be94a86dfb614bc66ae9d405e3d361fdb9145a`  
		Last Modified: Fri, 08 Sep 2017 19:33:48 GMT  
		Size: 2.8 MB (2774995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af06829a76b04423d03dd09ff622e0f6ff4c8e9926800f94bdf5eb6abbbf925`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 57.9 KB (57949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5a69ff0ddf5b2c7c5fc6969bac20705aa788f80ae029050675105756659da2`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 19.7 KB (19664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c492414052fa203d174ab86d8cafb391681fdf2cd668222c00d754e4a4ed72`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 63.4 KB (63363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4d1381138bd3ab94301232566aa0270f637aa3c91898accc5b9de46eb46dc1`  
		Last Modified: Fri, 08 Sep 2017 19:33:52 GMT  
		Size: 9.1 MB (9099686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce19de1eff597e0e9468d418f1a5a1edf486fec0529191bc238494223e4081b`  
		Last Modified: Fri, 08 Sep 2017 19:33:46 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a4c0f724e6cbce3c6b74792ddaf34b39d70e7fa5945e572969d90aa788a99a`  
		Last Modified: Fri, 08 Sep 2017 19:33:45 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7.5-apache-php7`

```console
$ docker pull joomla@sha256:a6d84943bbe5cf05774bb0bcfde9c4a43ed1f282e36a2a479635510c0a9bdfad
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7.5-apache-php7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175192571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ad9e5607fb59daa110b02389a8e8e983484cb9514d002e7384bc121852ede4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Fri, 08 Sep 2017 02:50:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:51:29 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 02:51:30 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 02:51:31 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 02:51:32 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 02:51:34 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 02:51:35 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 02:51:35 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 03:43:39 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 08 Sep 2017 03:43:40 GMT
ENV PHP_VERSION=7.0.23
# Fri, 08 Sep 2017 03:43:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 03:43:41 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Fri, 08 Sep 2017 03:44:16 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 03:44:17 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 03:50:19 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 03:50:20 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 08 Sep 2017 03:50:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 03:50:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 08 Sep 2017 03:50:22 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 03:50:22 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 03:50:22 GMT
CMD ["apache2-foreground"]
# Fri, 08 Sep 2017 07:33:11 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 08 Sep 2017 07:33:11 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 08 Sep 2017 07:33:12 GMT
RUN a2enmod rewrite
# Fri, 08 Sep 2017 07:33:48 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 08 Sep 2017 07:33:59 GMT
RUN docker-php-ext-install mysqli
# Fri, 08 Sep 2017 07:34:09 GMT
RUN docker-php-ext-install mcrypt
# Fri, 08 Sep 2017 07:34:31 GMT
RUN docker-php-ext-install zip
# Fri, 08 Sep 2017 07:34:31 GMT
VOLUME [/var/www/html]
# Fri, 08 Sep 2017 07:34:32 GMT
ENV JOOMLA_VERSION=3.7.5
# Fri, 08 Sep 2017 07:34:32 GMT
ENV JOOMLA_SHA1=4a8ba6c70265879cf5c77bcc1b3a0fe9620ba02a
# Fri, 08 Sep 2017 07:34:39 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 08 Sep 2017 07:34:40 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 08 Sep 2017 07:34:40 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 08 Sep 2017 07:34:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:34:41 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:02ffa64ac1d4100965fdab1cb78896787937def3ac6e334e0599325563d946aa`  
		Last Modified: Fri, 08 Sep 2017 05:32:23 GMT  
		Size: 2.8 MB (2784936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e287078ab3e5cedce81066c35d7202dbe85c5ed7b06f994ea282a4a2f2eb197d`  
		Last Modified: Fri, 08 Sep 2017 05:32:21 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa908359a8ab8fdc571f9f235057a85b57e1d9f3638136b00aa56e15e68f6f8b`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da80a4729d52be4f51c2f78d2cb9ee332f747c22d66a2f8b2e29941b87fbd717`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892d5ce128a6e695fe5b770feb07ccf9d67524bfa28fa890d2ab7e3c771cba9a`  
		Last Modified: Fri, 08 Sep 2017 05:32:18 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0fd5b856bd1df7dedb150872a6feb657722fe691885b6916bae79e461e440c`  
		Last Modified: Fri, 08 Sep 2017 05:35:34 GMT  
		Size: 12.1 MB (12080241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25451c077de6fdb001d6f089682210d43c0b43522638e2a1138e383585fca8b6`  
		Last Modified: Fri, 08 Sep 2017 05:35:32 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e75f60a44024860d4e6126dbc241918b4386081d56ed202755911a48220118`  
		Last Modified: Fri, 08 Sep 2017 05:35:38 GMT  
		Size: 13.2 MB (13211935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c81b51e595c3727cf96b0c3f4aca8f9fb23f6004f9508304848862c7b4033a`  
		Last Modified: Fri, 08 Sep 2017 05:35:32 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1df9bff0666f7b02c98fa406a069c4af8a7d0eda36a8e4f378190ec7ac585f`  
		Last Modified: Fri, 08 Sep 2017 05:35:32 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2987b9ae4155f80a51c84a3b9b09de18defc9c237656b7104325014e088f317`  
		Last Modified: Fri, 08 Sep 2017 19:35:09 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a42e85c750acec0b57e76c9908541dfbef4e83ae06a0960ba353a09ba5fadde`  
		Last Modified: Fri, 08 Sep 2017 19:35:09 GMT  
		Size: 2.8 MB (2769879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4654d365be1423ed4fde63c5559b609b4bafb574308fe3c43c7163c328a6e7c8`  
		Last Modified: Fri, 08 Sep 2017 19:35:06 GMT  
		Size: 56.4 KB (56372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6f4caa74d66f8d7491ecee5f297feac44a1b8ecf5084cad2559e778ca1abc3`  
		Last Modified: Fri, 08 Sep 2017 19:35:07 GMT  
		Size: 18.3 KB (18253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce26377def63e89998010ee4a64707cf965ee090b6f96ffc23328f19369351ff`  
		Last Modified: Fri, 08 Sep 2017 19:35:07 GMT  
		Size: 72.7 KB (72717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77eff6871403971e2eb94366a027050e13d017a9b164dd27a6651239bb57ef31`  
		Last Modified: Fri, 08 Sep 2017 19:35:14 GMT  
		Size: 9.1 MB (9099681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650772221cd2171bb7480f741f4e4f86880f97e425f5b529810be354d21c57d0`  
		Last Modified: Fri, 08 Sep 2017 19:35:06 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3499f2315e77590270c184d7ff22a1dcc5be59e7f68741c80788632b74a49c78`  
		Last Modified: Fri, 08 Sep 2017 19:35:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7-apache-php7`

```console
$ docker pull joomla@sha256:a6d84943bbe5cf05774bb0bcfde9c4a43ed1f282e36a2a479635510c0a9bdfad
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7-apache-php7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175192571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ad9e5607fb59daa110b02389a8e8e983484cb9514d002e7384bc121852ede4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Fri, 08 Sep 2017 02:50:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:51:29 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 02:51:30 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 02:51:31 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 02:51:32 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 02:51:34 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 02:51:35 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 02:51:35 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 03:43:39 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 08 Sep 2017 03:43:40 GMT
ENV PHP_VERSION=7.0.23
# Fri, 08 Sep 2017 03:43:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 03:43:41 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Fri, 08 Sep 2017 03:44:16 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 03:44:17 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 03:50:19 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 03:50:20 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 08 Sep 2017 03:50:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 03:50:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 08 Sep 2017 03:50:22 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 03:50:22 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 03:50:22 GMT
CMD ["apache2-foreground"]
# Fri, 08 Sep 2017 07:33:11 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 08 Sep 2017 07:33:11 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 08 Sep 2017 07:33:12 GMT
RUN a2enmod rewrite
# Fri, 08 Sep 2017 07:33:48 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 08 Sep 2017 07:33:59 GMT
RUN docker-php-ext-install mysqli
# Fri, 08 Sep 2017 07:34:09 GMT
RUN docker-php-ext-install mcrypt
# Fri, 08 Sep 2017 07:34:31 GMT
RUN docker-php-ext-install zip
# Fri, 08 Sep 2017 07:34:31 GMT
VOLUME [/var/www/html]
# Fri, 08 Sep 2017 07:34:32 GMT
ENV JOOMLA_VERSION=3.7.5
# Fri, 08 Sep 2017 07:34:32 GMT
ENV JOOMLA_SHA1=4a8ba6c70265879cf5c77bcc1b3a0fe9620ba02a
# Fri, 08 Sep 2017 07:34:39 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 08 Sep 2017 07:34:40 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 08 Sep 2017 07:34:40 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 08 Sep 2017 07:34:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:34:41 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:02ffa64ac1d4100965fdab1cb78896787937def3ac6e334e0599325563d946aa`  
		Last Modified: Fri, 08 Sep 2017 05:32:23 GMT  
		Size: 2.8 MB (2784936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e287078ab3e5cedce81066c35d7202dbe85c5ed7b06f994ea282a4a2f2eb197d`  
		Last Modified: Fri, 08 Sep 2017 05:32:21 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa908359a8ab8fdc571f9f235057a85b57e1d9f3638136b00aa56e15e68f6f8b`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da80a4729d52be4f51c2f78d2cb9ee332f747c22d66a2f8b2e29941b87fbd717`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892d5ce128a6e695fe5b770feb07ccf9d67524bfa28fa890d2ab7e3c771cba9a`  
		Last Modified: Fri, 08 Sep 2017 05:32:18 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0fd5b856bd1df7dedb150872a6feb657722fe691885b6916bae79e461e440c`  
		Last Modified: Fri, 08 Sep 2017 05:35:34 GMT  
		Size: 12.1 MB (12080241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25451c077de6fdb001d6f089682210d43c0b43522638e2a1138e383585fca8b6`  
		Last Modified: Fri, 08 Sep 2017 05:35:32 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e75f60a44024860d4e6126dbc241918b4386081d56ed202755911a48220118`  
		Last Modified: Fri, 08 Sep 2017 05:35:38 GMT  
		Size: 13.2 MB (13211935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c81b51e595c3727cf96b0c3f4aca8f9fb23f6004f9508304848862c7b4033a`  
		Last Modified: Fri, 08 Sep 2017 05:35:32 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1df9bff0666f7b02c98fa406a069c4af8a7d0eda36a8e4f378190ec7ac585f`  
		Last Modified: Fri, 08 Sep 2017 05:35:32 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2987b9ae4155f80a51c84a3b9b09de18defc9c237656b7104325014e088f317`  
		Last Modified: Fri, 08 Sep 2017 19:35:09 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a42e85c750acec0b57e76c9908541dfbef4e83ae06a0960ba353a09ba5fadde`  
		Last Modified: Fri, 08 Sep 2017 19:35:09 GMT  
		Size: 2.8 MB (2769879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4654d365be1423ed4fde63c5559b609b4bafb574308fe3c43c7163c328a6e7c8`  
		Last Modified: Fri, 08 Sep 2017 19:35:06 GMT  
		Size: 56.4 KB (56372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6f4caa74d66f8d7491ecee5f297feac44a1b8ecf5084cad2559e778ca1abc3`  
		Last Modified: Fri, 08 Sep 2017 19:35:07 GMT  
		Size: 18.3 KB (18253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce26377def63e89998010ee4a64707cf965ee090b6f96ffc23328f19369351ff`  
		Last Modified: Fri, 08 Sep 2017 19:35:07 GMT  
		Size: 72.7 KB (72717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77eff6871403971e2eb94366a027050e13d017a9b164dd27a6651239bb57ef31`  
		Last Modified: Fri, 08 Sep 2017 19:35:14 GMT  
		Size: 9.1 MB (9099681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650772221cd2171bb7480f741f4e4f86880f97e425f5b529810be354d21c57d0`  
		Last Modified: Fri, 08 Sep 2017 19:35:06 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3499f2315e77590270c184d7ff22a1dcc5be59e7f68741c80788632b74a49c78`  
		Last Modified: Fri, 08 Sep 2017 19:35:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache-php7`

```console
$ docker pull joomla@sha256:a6d84943bbe5cf05774bb0bcfde9c4a43ed1f282e36a2a479635510c0a9bdfad
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache-php7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175192571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ad9e5607fb59daa110b02389a8e8e983484cb9514d002e7384bc121852ede4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Fri, 08 Sep 2017 02:50:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:51:29 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 02:51:30 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 02:51:31 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 02:51:32 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 02:51:34 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 02:51:35 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 02:51:35 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 03:43:39 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 08 Sep 2017 03:43:40 GMT
ENV PHP_VERSION=7.0.23
# Fri, 08 Sep 2017 03:43:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 03:43:41 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Fri, 08 Sep 2017 03:44:16 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 03:44:17 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 03:50:19 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 03:50:20 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 08 Sep 2017 03:50:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 03:50:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 08 Sep 2017 03:50:22 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 03:50:22 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 03:50:22 GMT
CMD ["apache2-foreground"]
# Fri, 08 Sep 2017 07:33:11 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 08 Sep 2017 07:33:11 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 08 Sep 2017 07:33:12 GMT
RUN a2enmod rewrite
# Fri, 08 Sep 2017 07:33:48 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 08 Sep 2017 07:33:59 GMT
RUN docker-php-ext-install mysqli
# Fri, 08 Sep 2017 07:34:09 GMT
RUN docker-php-ext-install mcrypt
# Fri, 08 Sep 2017 07:34:31 GMT
RUN docker-php-ext-install zip
# Fri, 08 Sep 2017 07:34:31 GMT
VOLUME [/var/www/html]
# Fri, 08 Sep 2017 07:34:32 GMT
ENV JOOMLA_VERSION=3.7.5
# Fri, 08 Sep 2017 07:34:32 GMT
ENV JOOMLA_SHA1=4a8ba6c70265879cf5c77bcc1b3a0fe9620ba02a
# Fri, 08 Sep 2017 07:34:39 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 08 Sep 2017 07:34:40 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 08 Sep 2017 07:34:40 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 08 Sep 2017 07:34:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:34:41 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:02ffa64ac1d4100965fdab1cb78896787937def3ac6e334e0599325563d946aa`  
		Last Modified: Fri, 08 Sep 2017 05:32:23 GMT  
		Size: 2.8 MB (2784936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e287078ab3e5cedce81066c35d7202dbe85c5ed7b06f994ea282a4a2f2eb197d`  
		Last Modified: Fri, 08 Sep 2017 05:32:21 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa908359a8ab8fdc571f9f235057a85b57e1d9f3638136b00aa56e15e68f6f8b`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da80a4729d52be4f51c2f78d2cb9ee332f747c22d66a2f8b2e29941b87fbd717`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892d5ce128a6e695fe5b770feb07ccf9d67524bfa28fa890d2ab7e3c771cba9a`  
		Last Modified: Fri, 08 Sep 2017 05:32:18 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0fd5b856bd1df7dedb150872a6feb657722fe691885b6916bae79e461e440c`  
		Last Modified: Fri, 08 Sep 2017 05:35:34 GMT  
		Size: 12.1 MB (12080241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25451c077de6fdb001d6f089682210d43c0b43522638e2a1138e383585fca8b6`  
		Last Modified: Fri, 08 Sep 2017 05:35:32 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e75f60a44024860d4e6126dbc241918b4386081d56ed202755911a48220118`  
		Last Modified: Fri, 08 Sep 2017 05:35:38 GMT  
		Size: 13.2 MB (13211935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c81b51e595c3727cf96b0c3f4aca8f9fb23f6004f9508304848862c7b4033a`  
		Last Modified: Fri, 08 Sep 2017 05:35:32 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1df9bff0666f7b02c98fa406a069c4af8a7d0eda36a8e4f378190ec7ac585f`  
		Last Modified: Fri, 08 Sep 2017 05:35:32 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2987b9ae4155f80a51c84a3b9b09de18defc9c237656b7104325014e088f317`  
		Last Modified: Fri, 08 Sep 2017 19:35:09 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a42e85c750acec0b57e76c9908541dfbef4e83ae06a0960ba353a09ba5fadde`  
		Last Modified: Fri, 08 Sep 2017 19:35:09 GMT  
		Size: 2.8 MB (2769879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4654d365be1423ed4fde63c5559b609b4bafb574308fe3c43c7163c328a6e7c8`  
		Last Modified: Fri, 08 Sep 2017 19:35:06 GMT  
		Size: 56.4 KB (56372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6f4caa74d66f8d7491ecee5f297feac44a1b8ecf5084cad2559e778ca1abc3`  
		Last Modified: Fri, 08 Sep 2017 19:35:07 GMT  
		Size: 18.3 KB (18253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce26377def63e89998010ee4a64707cf965ee090b6f96ffc23328f19369351ff`  
		Last Modified: Fri, 08 Sep 2017 19:35:07 GMT  
		Size: 72.7 KB (72717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77eff6871403971e2eb94366a027050e13d017a9b164dd27a6651239bb57ef31`  
		Last Modified: Fri, 08 Sep 2017 19:35:14 GMT  
		Size: 9.1 MB (9099681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650772221cd2171bb7480f741f4e4f86880f97e425f5b529810be354d21c57d0`  
		Last Modified: Fri, 08 Sep 2017 19:35:06 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3499f2315e77590270c184d7ff22a1dcc5be59e7f68741c80788632b74a49c78`  
		Last Modified: Fri, 08 Sep 2017 19:35:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:apache-php7`

```console
$ docker pull joomla@sha256:a6d84943bbe5cf05774bb0bcfde9c4a43ed1f282e36a2a479635510c0a9bdfad
```

-	Platforms:
	-	linux; amd64

### `joomla:apache-php7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175192571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ad9e5607fb59daa110b02389a8e8e983484cb9514d002e7384bc121852ede4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Fri, 08 Sep 2017 02:50:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:51:29 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 02:51:30 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 02:51:31 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 02:51:32 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 02:51:34 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 02:51:35 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 02:51:35 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 03:43:39 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 08 Sep 2017 03:43:40 GMT
ENV PHP_VERSION=7.0.23
# Fri, 08 Sep 2017 03:43:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 03:43:41 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Fri, 08 Sep 2017 03:44:16 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 03:44:17 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 03:50:19 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 03:50:20 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 08 Sep 2017 03:50:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 03:50:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 08 Sep 2017 03:50:22 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 03:50:22 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 03:50:22 GMT
CMD ["apache2-foreground"]
# Fri, 08 Sep 2017 07:33:11 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 08 Sep 2017 07:33:11 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 08 Sep 2017 07:33:12 GMT
RUN a2enmod rewrite
# Fri, 08 Sep 2017 07:33:48 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 08 Sep 2017 07:33:59 GMT
RUN docker-php-ext-install mysqli
# Fri, 08 Sep 2017 07:34:09 GMT
RUN docker-php-ext-install mcrypt
# Fri, 08 Sep 2017 07:34:31 GMT
RUN docker-php-ext-install zip
# Fri, 08 Sep 2017 07:34:31 GMT
VOLUME [/var/www/html]
# Fri, 08 Sep 2017 07:34:32 GMT
ENV JOOMLA_VERSION=3.7.5
# Fri, 08 Sep 2017 07:34:32 GMT
ENV JOOMLA_SHA1=4a8ba6c70265879cf5c77bcc1b3a0fe9620ba02a
# Fri, 08 Sep 2017 07:34:39 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 08 Sep 2017 07:34:40 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 08 Sep 2017 07:34:40 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 08 Sep 2017 07:34:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:34:41 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:02ffa64ac1d4100965fdab1cb78896787937def3ac6e334e0599325563d946aa`  
		Last Modified: Fri, 08 Sep 2017 05:32:23 GMT  
		Size: 2.8 MB (2784936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e287078ab3e5cedce81066c35d7202dbe85c5ed7b06f994ea282a4a2f2eb197d`  
		Last Modified: Fri, 08 Sep 2017 05:32:21 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa908359a8ab8fdc571f9f235057a85b57e1d9f3638136b00aa56e15e68f6f8b`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da80a4729d52be4f51c2f78d2cb9ee332f747c22d66a2f8b2e29941b87fbd717`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892d5ce128a6e695fe5b770feb07ccf9d67524bfa28fa890d2ab7e3c771cba9a`  
		Last Modified: Fri, 08 Sep 2017 05:32:18 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0fd5b856bd1df7dedb150872a6feb657722fe691885b6916bae79e461e440c`  
		Last Modified: Fri, 08 Sep 2017 05:35:34 GMT  
		Size: 12.1 MB (12080241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25451c077de6fdb001d6f089682210d43c0b43522638e2a1138e383585fca8b6`  
		Last Modified: Fri, 08 Sep 2017 05:35:32 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e75f60a44024860d4e6126dbc241918b4386081d56ed202755911a48220118`  
		Last Modified: Fri, 08 Sep 2017 05:35:38 GMT  
		Size: 13.2 MB (13211935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c81b51e595c3727cf96b0c3f4aca8f9fb23f6004f9508304848862c7b4033a`  
		Last Modified: Fri, 08 Sep 2017 05:35:32 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1df9bff0666f7b02c98fa406a069c4af8a7d0eda36a8e4f378190ec7ac585f`  
		Last Modified: Fri, 08 Sep 2017 05:35:32 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2987b9ae4155f80a51c84a3b9b09de18defc9c237656b7104325014e088f317`  
		Last Modified: Fri, 08 Sep 2017 19:35:09 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a42e85c750acec0b57e76c9908541dfbef4e83ae06a0960ba353a09ba5fadde`  
		Last Modified: Fri, 08 Sep 2017 19:35:09 GMT  
		Size: 2.8 MB (2769879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4654d365be1423ed4fde63c5559b609b4bafb574308fe3c43c7163c328a6e7c8`  
		Last Modified: Fri, 08 Sep 2017 19:35:06 GMT  
		Size: 56.4 KB (56372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6f4caa74d66f8d7491ecee5f297feac44a1b8ecf5084cad2559e778ca1abc3`  
		Last Modified: Fri, 08 Sep 2017 19:35:07 GMT  
		Size: 18.3 KB (18253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce26377def63e89998010ee4a64707cf965ee090b6f96ffc23328f19369351ff`  
		Last Modified: Fri, 08 Sep 2017 19:35:07 GMT  
		Size: 72.7 KB (72717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77eff6871403971e2eb94366a027050e13d017a9b164dd27a6651239bb57ef31`  
		Last Modified: Fri, 08 Sep 2017 19:35:14 GMT  
		Size: 9.1 MB (9099681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650772221cd2171bb7480f741f4e4f86880f97e425f5b529810be354d21c57d0`  
		Last Modified: Fri, 08 Sep 2017 19:35:06 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3499f2315e77590270c184d7ff22a1dcc5be59e7f68741c80788632b74a49c78`  
		Last Modified: Fri, 08 Sep 2017 19:35:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7.5-fpm`

```console
$ docker pull joomla@sha256:4c52d0f3be74b4577f5b9888a2db91a2012c7e03c5f907bf7455ab9865e74955
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7.5-fpm` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168293275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd82e249b2f9589ef2759aaaa3bc9d900416b10a7af1107e485ac89ecfce997c`
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
# Fri, 08 Sep 2017 07:34:47 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 08 Sep 2017 07:34:47 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 08 Sep 2017 07:35:18 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 08 Sep 2017 07:35:26 GMT
RUN docker-php-ext-install mysqli
# Fri, 08 Sep 2017 07:35:36 GMT
RUN docker-php-ext-install mcrypt
# Fri, 08 Sep 2017 07:35:59 GMT
RUN docker-php-ext-install zip
# Fri, 08 Sep 2017 07:36:01 GMT
VOLUME [/var/www/html]
# Fri, 08 Sep 2017 07:36:02 GMT
ENV JOOMLA_VERSION=3.7.5
# Fri, 08 Sep 2017 07:36:02 GMT
ENV JOOMLA_SHA1=4a8ba6c70265879cf5c77bcc1b3a0fe9620ba02a
# Fri, 08 Sep 2017 07:36:09 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 08 Sep 2017 07:36:10 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 08 Sep 2017 07:36:11 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 08 Sep 2017 07:36:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:36:12 GMT
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
	-	`sha256:9a108972c53cb834f5c94cb6cb1dd5182fcc2589972a8bd62c98e76c9af6bf3e`  
		Last Modified: Fri, 08 Sep 2017 19:35:56 GMT  
		Size: 2.8 MB (2754989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70bb73998fac8b696e0ede46cfa3b80acb2697b3bd17a70b8af35c4e46a3d5e`  
		Last Modified: Fri, 08 Sep 2017 19:35:52 GMT  
		Size: 57.9 KB (57944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f61e000391872d775041c3062825ee7b2896dba6d90297e96916cdea5176bf`  
		Last Modified: Fri, 08 Sep 2017 19:35:52 GMT  
		Size: 19.7 KB (19660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889682fcc0ffe226b47fbedba448af95ed73503375bb7e2030494d04dcf646dd`  
		Last Modified: Fri, 08 Sep 2017 19:35:52 GMT  
		Size: 63.4 KB (63361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2135509cd72bb2aee6e0a93771c71dbf9c913e34c5bef65033ab13f26065d71`  
		Last Modified: Fri, 08 Sep 2017 19:35:58 GMT  
		Size: 9.1 MB (9099687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6427c6b7065c96063f0018479f4044b68c80f0a4f5475259a83235dc7304c367`  
		Last Modified: Fri, 08 Sep 2017 19:35:52 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2a2c9152324fd2a437ba99253e907a716ce5e0dc82fa485f3596df764646cf`  
		Last Modified: Fri, 08 Sep 2017 19:35:52 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7-fpm`

```console
$ docker pull joomla@sha256:4c52d0f3be74b4577f5b9888a2db91a2012c7e03c5f907bf7455ab9865e74955
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7-fpm` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168293275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd82e249b2f9589ef2759aaaa3bc9d900416b10a7af1107e485ac89ecfce997c`
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
# Fri, 08 Sep 2017 07:34:47 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 08 Sep 2017 07:34:47 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 08 Sep 2017 07:35:18 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 08 Sep 2017 07:35:26 GMT
RUN docker-php-ext-install mysqli
# Fri, 08 Sep 2017 07:35:36 GMT
RUN docker-php-ext-install mcrypt
# Fri, 08 Sep 2017 07:35:59 GMT
RUN docker-php-ext-install zip
# Fri, 08 Sep 2017 07:36:01 GMT
VOLUME [/var/www/html]
# Fri, 08 Sep 2017 07:36:02 GMT
ENV JOOMLA_VERSION=3.7.5
# Fri, 08 Sep 2017 07:36:02 GMT
ENV JOOMLA_SHA1=4a8ba6c70265879cf5c77bcc1b3a0fe9620ba02a
# Fri, 08 Sep 2017 07:36:09 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 08 Sep 2017 07:36:10 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 08 Sep 2017 07:36:11 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 08 Sep 2017 07:36:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:36:12 GMT
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
	-	`sha256:9a108972c53cb834f5c94cb6cb1dd5182fcc2589972a8bd62c98e76c9af6bf3e`  
		Last Modified: Fri, 08 Sep 2017 19:35:56 GMT  
		Size: 2.8 MB (2754989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70bb73998fac8b696e0ede46cfa3b80acb2697b3bd17a70b8af35c4e46a3d5e`  
		Last Modified: Fri, 08 Sep 2017 19:35:52 GMT  
		Size: 57.9 KB (57944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f61e000391872d775041c3062825ee7b2896dba6d90297e96916cdea5176bf`  
		Last Modified: Fri, 08 Sep 2017 19:35:52 GMT  
		Size: 19.7 KB (19660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889682fcc0ffe226b47fbedba448af95ed73503375bb7e2030494d04dcf646dd`  
		Last Modified: Fri, 08 Sep 2017 19:35:52 GMT  
		Size: 63.4 KB (63361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2135509cd72bb2aee6e0a93771c71dbf9c913e34c5bef65033ab13f26065d71`  
		Last Modified: Fri, 08 Sep 2017 19:35:58 GMT  
		Size: 9.1 MB (9099687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6427c6b7065c96063f0018479f4044b68c80f0a4f5475259a83235dc7304c367`  
		Last Modified: Fri, 08 Sep 2017 19:35:52 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2a2c9152324fd2a437ba99253e907a716ce5e0dc82fa485f3596df764646cf`  
		Last Modified: Fri, 08 Sep 2017 19:35:52 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-fpm`

```console
$ docker pull joomla@sha256:4c52d0f3be74b4577f5b9888a2db91a2012c7e03c5f907bf7455ab9865e74955
```

-	Platforms:
	-	linux; amd64

### `joomla:3-fpm` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168293275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd82e249b2f9589ef2759aaaa3bc9d900416b10a7af1107e485ac89ecfce997c`
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
# Fri, 08 Sep 2017 07:34:47 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 08 Sep 2017 07:34:47 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 08 Sep 2017 07:35:18 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 08 Sep 2017 07:35:26 GMT
RUN docker-php-ext-install mysqli
# Fri, 08 Sep 2017 07:35:36 GMT
RUN docker-php-ext-install mcrypt
# Fri, 08 Sep 2017 07:35:59 GMT
RUN docker-php-ext-install zip
# Fri, 08 Sep 2017 07:36:01 GMT
VOLUME [/var/www/html]
# Fri, 08 Sep 2017 07:36:02 GMT
ENV JOOMLA_VERSION=3.7.5
# Fri, 08 Sep 2017 07:36:02 GMT
ENV JOOMLA_SHA1=4a8ba6c70265879cf5c77bcc1b3a0fe9620ba02a
# Fri, 08 Sep 2017 07:36:09 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 08 Sep 2017 07:36:10 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 08 Sep 2017 07:36:11 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 08 Sep 2017 07:36:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:36:12 GMT
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
	-	`sha256:9a108972c53cb834f5c94cb6cb1dd5182fcc2589972a8bd62c98e76c9af6bf3e`  
		Last Modified: Fri, 08 Sep 2017 19:35:56 GMT  
		Size: 2.8 MB (2754989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70bb73998fac8b696e0ede46cfa3b80acb2697b3bd17a70b8af35c4e46a3d5e`  
		Last Modified: Fri, 08 Sep 2017 19:35:52 GMT  
		Size: 57.9 KB (57944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f61e000391872d775041c3062825ee7b2896dba6d90297e96916cdea5176bf`  
		Last Modified: Fri, 08 Sep 2017 19:35:52 GMT  
		Size: 19.7 KB (19660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889682fcc0ffe226b47fbedba448af95ed73503375bb7e2030494d04dcf646dd`  
		Last Modified: Fri, 08 Sep 2017 19:35:52 GMT  
		Size: 63.4 KB (63361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2135509cd72bb2aee6e0a93771c71dbf9c913e34c5bef65033ab13f26065d71`  
		Last Modified: Fri, 08 Sep 2017 19:35:58 GMT  
		Size: 9.1 MB (9099687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6427c6b7065c96063f0018479f4044b68c80f0a4f5475259a83235dc7304c367`  
		Last Modified: Fri, 08 Sep 2017 19:35:52 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2a2c9152324fd2a437ba99253e907a716ce5e0dc82fa485f3596df764646cf`  
		Last Modified: Fri, 08 Sep 2017 19:35:52 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:fpm`

```console
$ docker pull joomla@sha256:4c52d0f3be74b4577f5b9888a2db91a2012c7e03c5f907bf7455ab9865e74955
```

-	Platforms:
	-	linux; amd64

### `joomla:fpm` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168293275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd82e249b2f9589ef2759aaaa3bc9d900416b10a7af1107e485ac89ecfce997c`
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
# Fri, 08 Sep 2017 07:34:47 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 08 Sep 2017 07:34:47 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 08 Sep 2017 07:35:18 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 08 Sep 2017 07:35:26 GMT
RUN docker-php-ext-install mysqli
# Fri, 08 Sep 2017 07:35:36 GMT
RUN docker-php-ext-install mcrypt
# Fri, 08 Sep 2017 07:35:59 GMT
RUN docker-php-ext-install zip
# Fri, 08 Sep 2017 07:36:01 GMT
VOLUME [/var/www/html]
# Fri, 08 Sep 2017 07:36:02 GMT
ENV JOOMLA_VERSION=3.7.5
# Fri, 08 Sep 2017 07:36:02 GMT
ENV JOOMLA_SHA1=4a8ba6c70265879cf5c77bcc1b3a0fe9620ba02a
# Fri, 08 Sep 2017 07:36:09 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 08 Sep 2017 07:36:10 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 08 Sep 2017 07:36:11 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 08 Sep 2017 07:36:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:36:12 GMT
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
	-	`sha256:9a108972c53cb834f5c94cb6cb1dd5182fcc2589972a8bd62c98e76c9af6bf3e`  
		Last Modified: Fri, 08 Sep 2017 19:35:56 GMT  
		Size: 2.8 MB (2754989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70bb73998fac8b696e0ede46cfa3b80acb2697b3bd17a70b8af35c4e46a3d5e`  
		Last Modified: Fri, 08 Sep 2017 19:35:52 GMT  
		Size: 57.9 KB (57944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f61e000391872d775041c3062825ee7b2896dba6d90297e96916cdea5176bf`  
		Last Modified: Fri, 08 Sep 2017 19:35:52 GMT  
		Size: 19.7 KB (19660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889682fcc0ffe226b47fbedba448af95ed73503375bb7e2030494d04dcf646dd`  
		Last Modified: Fri, 08 Sep 2017 19:35:52 GMT  
		Size: 63.4 KB (63361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2135509cd72bb2aee6e0a93771c71dbf9c913e34c5bef65033ab13f26065d71`  
		Last Modified: Fri, 08 Sep 2017 19:35:58 GMT  
		Size: 9.1 MB (9099687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6427c6b7065c96063f0018479f4044b68c80f0a4f5475259a83235dc7304c367`  
		Last Modified: Fri, 08 Sep 2017 19:35:52 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2a2c9152324fd2a437ba99253e907a716ce5e0dc82fa485f3596df764646cf`  
		Last Modified: Fri, 08 Sep 2017 19:35:52 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7.5-fpm-php7`

```console
$ docker pull joomla@sha256:6de397a08ed85519b5a4b20046be21c904a42f674e0406e05adac85bb1fa60d4
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7.5-fpm-php7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.8 MB (171841796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dfad7895ab03d0fb5cd0ade00211aa8247b74decf1038bef86f39fdbe44cd27`
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
# Fri, 08 Sep 2017 03:56:40 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 08 Sep 2017 03:56:40 GMT
ENV PHP_VERSION=7.0.23
# Fri, 08 Sep 2017 03:56:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 03:56:41 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Fri, 08 Sep 2017 03:57:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 03:57:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:01:00 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 04:07:09 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:07:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 04:07:10 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 04:07:11 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 08 Sep 2017 04:07:12 GMT
EXPOSE 9000/tcp
# Fri, 08 Sep 2017 04:07:12 GMT
CMD ["php-fpm"]
# Fri, 08 Sep 2017 07:38:58 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 08 Sep 2017 07:38:58 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 08 Sep 2017 07:39:36 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 08 Sep 2017 07:42:11 GMT
RUN docker-php-ext-install mysqli
# Fri, 08 Sep 2017 07:42:16 GMT
RUN docker-php-ext-install mcrypt
# Fri, 08 Sep 2017 07:42:41 GMT
RUN docker-php-ext-install zip
# Fri, 08 Sep 2017 07:42:41 GMT
VOLUME [/var/www/html]
# Fri, 08 Sep 2017 07:42:41 GMT
ENV JOOMLA_VERSION=3.7.5
# Fri, 08 Sep 2017 07:42:42 GMT
ENV JOOMLA_SHA1=4a8ba6c70265879cf5c77bcc1b3a0fe9620ba02a
# Fri, 08 Sep 2017 07:42:48 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 08 Sep 2017 07:42:49 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 08 Sep 2017 07:42:49 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 08 Sep 2017 07:42:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:42:55 GMT
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
	-	`sha256:62a257473dde3882fb8eb6dd48b656ae27b7a57a331c9d9c916c134a46ecbb68`  
		Last Modified: Fri, 08 Sep 2017 05:36:10 GMT  
		Size: 12.1 MB (12063053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852e96b9bc24d8b36495602e3126981a84f7ae8d95f523a29b8e8e4b13782345`  
		Last Modified: Fri, 08 Sep 2017 05:36:08 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327f063a45d927da030c82f179bb09560cd134d15f990f1d108d2c04e3f30a19`  
		Last Modified: Fri, 08 Sep 2017 05:36:14 GMT  
		Size: 12.7 MB (12679945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c753a295ae70651aac01c048a3063e6b383b842a741b45f25fe357c60859a2`  
		Last Modified: Fri, 08 Sep 2017 05:36:08 GMT  
		Size: 2.1 KB (2120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21319e8b1742ad3d22ef2036b4ec2cc41bef72d98cf56403bee1d7b56973a662`  
		Last Modified: Fri, 08 Sep 2017 05:36:10 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c358ee6112218bc3b06a889df516e2f4b21e561774078f82fd3d9b61c03c484a`  
		Last Modified: Fri, 08 Sep 2017 05:36:08 GMT  
		Size: 7.7 KB (7667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805f4256c0613d84719db9423508ebf28f38c3cc79a4383e4f4b5bbd8f27913d`  
		Last Modified: Fri, 08 Sep 2017 19:36:39 GMT  
		Size: 2.7 MB (2749010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ac20bb220fa6c9af6e6aa8bfd342c2bbb83f5e1f482b4e6512ed24cedabc47`  
		Last Modified: Fri, 08 Sep 2017 19:36:35 GMT  
		Size: 56.4 KB (56352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c382b1cf31cadb5ef2f9ba35196f5d31a046b39a1abb221fc18a0477a5b7ba`  
		Last Modified: Fri, 08 Sep 2017 19:36:37 GMT  
		Size: 18.2 KB (18249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ba29017c29a38052742932ff424ccc43c2bff25996b774de0771dd5a008435`  
		Last Modified: Fri, 08 Sep 2017 19:36:37 GMT  
		Size: 72.7 KB (72716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c70b07646fa5640e03da98ef58eabc8bcdfb575e6f48aaa7ff144e8a94420a6`  
		Last Modified: Fri, 08 Sep 2017 19:36:42 GMT  
		Size: 9.1 MB (9099683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b206a41f39eeed1d5a3219ec3e791a6416fa9f80089dc105c0c89ce9326807d`  
		Last Modified: Fri, 08 Sep 2017 19:36:35 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182c63dbe124b59218db7bc3c6e813749469b948ad4151479c05ccbd45db432b`  
		Last Modified: Fri, 08 Sep 2017 19:36:35 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7-fpm-php7`

```console
$ docker pull joomla@sha256:6de397a08ed85519b5a4b20046be21c904a42f674e0406e05adac85bb1fa60d4
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7-fpm-php7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.8 MB (171841796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dfad7895ab03d0fb5cd0ade00211aa8247b74decf1038bef86f39fdbe44cd27`
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
# Fri, 08 Sep 2017 03:56:40 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 08 Sep 2017 03:56:40 GMT
ENV PHP_VERSION=7.0.23
# Fri, 08 Sep 2017 03:56:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 03:56:41 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Fri, 08 Sep 2017 03:57:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 03:57:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:01:00 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 04:07:09 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:07:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 04:07:10 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 04:07:11 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 08 Sep 2017 04:07:12 GMT
EXPOSE 9000/tcp
# Fri, 08 Sep 2017 04:07:12 GMT
CMD ["php-fpm"]
# Fri, 08 Sep 2017 07:38:58 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 08 Sep 2017 07:38:58 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 08 Sep 2017 07:39:36 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 08 Sep 2017 07:42:11 GMT
RUN docker-php-ext-install mysqli
# Fri, 08 Sep 2017 07:42:16 GMT
RUN docker-php-ext-install mcrypt
# Fri, 08 Sep 2017 07:42:41 GMT
RUN docker-php-ext-install zip
# Fri, 08 Sep 2017 07:42:41 GMT
VOLUME [/var/www/html]
# Fri, 08 Sep 2017 07:42:41 GMT
ENV JOOMLA_VERSION=3.7.5
# Fri, 08 Sep 2017 07:42:42 GMT
ENV JOOMLA_SHA1=4a8ba6c70265879cf5c77bcc1b3a0fe9620ba02a
# Fri, 08 Sep 2017 07:42:48 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 08 Sep 2017 07:42:49 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 08 Sep 2017 07:42:49 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 08 Sep 2017 07:42:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:42:55 GMT
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
	-	`sha256:62a257473dde3882fb8eb6dd48b656ae27b7a57a331c9d9c916c134a46ecbb68`  
		Last Modified: Fri, 08 Sep 2017 05:36:10 GMT  
		Size: 12.1 MB (12063053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852e96b9bc24d8b36495602e3126981a84f7ae8d95f523a29b8e8e4b13782345`  
		Last Modified: Fri, 08 Sep 2017 05:36:08 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327f063a45d927da030c82f179bb09560cd134d15f990f1d108d2c04e3f30a19`  
		Last Modified: Fri, 08 Sep 2017 05:36:14 GMT  
		Size: 12.7 MB (12679945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c753a295ae70651aac01c048a3063e6b383b842a741b45f25fe357c60859a2`  
		Last Modified: Fri, 08 Sep 2017 05:36:08 GMT  
		Size: 2.1 KB (2120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21319e8b1742ad3d22ef2036b4ec2cc41bef72d98cf56403bee1d7b56973a662`  
		Last Modified: Fri, 08 Sep 2017 05:36:10 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c358ee6112218bc3b06a889df516e2f4b21e561774078f82fd3d9b61c03c484a`  
		Last Modified: Fri, 08 Sep 2017 05:36:08 GMT  
		Size: 7.7 KB (7667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805f4256c0613d84719db9423508ebf28f38c3cc79a4383e4f4b5bbd8f27913d`  
		Last Modified: Fri, 08 Sep 2017 19:36:39 GMT  
		Size: 2.7 MB (2749010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ac20bb220fa6c9af6e6aa8bfd342c2bbb83f5e1f482b4e6512ed24cedabc47`  
		Last Modified: Fri, 08 Sep 2017 19:36:35 GMT  
		Size: 56.4 KB (56352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c382b1cf31cadb5ef2f9ba35196f5d31a046b39a1abb221fc18a0477a5b7ba`  
		Last Modified: Fri, 08 Sep 2017 19:36:37 GMT  
		Size: 18.2 KB (18249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ba29017c29a38052742932ff424ccc43c2bff25996b774de0771dd5a008435`  
		Last Modified: Fri, 08 Sep 2017 19:36:37 GMT  
		Size: 72.7 KB (72716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c70b07646fa5640e03da98ef58eabc8bcdfb575e6f48aaa7ff144e8a94420a6`  
		Last Modified: Fri, 08 Sep 2017 19:36:42 GMT  
		Size: 9.1 MB (9099683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b206a41f39eeed1d5a3219ec3e791a6416fa9f80089dc105c0c89ce9326807d`  
		Last Modified: Fri, 08 Sep 2017 19:36:35 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182c63dbe124b59218db7bc3c6e813749469b948ad4151479c05ccbd45db432b`  
		Last Modified: Fri, 08 Sep 2017 19:36:35 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-fpm-php7`

```console
$ docker pull joomla@sha256:6de397a08ed85519b5a4b20046be21c904a42f674e0406e05adac85bb1fa60d4
```

-	Platforms:
	-	linux; amd64

### `joomla:3-fpm-php7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.8 MB (171841796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dfad7895ab03d0fb5cd0ade00211aa8247b74decf1038bef86f39fdbe44cd27`
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
# Fri, 08 Sep 2017 03:56:40 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 08 Sep 2017 03:56:40 GMT
ENV PHP_VERSION=7.0.23
# Fri, 08 Sep 2017 03:56:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 03:56:41 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Fri, 08 Sep 2017 03:57:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 03:57:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:01:00 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 04:07:09 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:07:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 04:07:10 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 04:07:11 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 08 Sep 2017 04:07:12 GMT
EXPOSE 9000/tcp
# Fri, 08 Sep 2017 04:07:12 GMT
CMD ["php-fpm"]
# Fri, 08 Sep 2017 07:38:58 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 08 Sep 2017 07:38:58 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 08 Sep 2017 07:39:36 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 08 Sep 2017 07:42:11 GMT
RUN docker-php-ext-install mysqli
# Fri, 08 Sep 2017 07:42:16 GMT
RUN docker-php-ext-install mcrypt
# Fri, 08 Sep 2017 07:42:41 GMT
RUN docker-php-ext-install zip
# Fri, 08 Sep 2017 07:42:41 GMT
VOLUME [/var/www/html]
# Fri, 08 Sep 2017 07:42:41 GMT
ENV JOOMLA_VERSION=3.7.5
# Fri, 08 Sep 2017 07:42:42 GMT
ENV JOOMLA_SHA1=4a8ba6c70265879cf5c77bcc1b3a0fe9620ba02a
# Fri, 08 Sep 2017 07:42:48 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 08 Sep 2017 07:42:49 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 08 Sep 2017 07:42:49 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 08 Sep 2017 07:42:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:42:55 GMT
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
	-	`sha256:62a257473dde3882fb8eb6dd48b656ae27b7a57a331c9d9c916c134a46ecbb68`  
		Last Modified: Fri, 08 Sep 2017 05:36:10 GMT  
		Size: 12.1 MB (12063053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852e96b9bc24d8b36495602e3126981a84f7ae8d95f523a29b8e8e4b13782345`  
		Last Modified: Fri, 08 Sep 2017 05:36:08 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327f063a45d927da030c82f179bb09560cd134d15f990f1d108d2c04e3f30a19`  
		Last Modified: Fri, 08 Sep 2017 05:36:14 GMT  
		Size: 12.7 MB (12679945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c753a295ae70651aac01c048a3063e6b383b842a741b45f25fe357c60859a2`  
		Last Modified: Fri, 08 Sep 2017 05:36:08 GMT  
		Size: 2.1 KB (2120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21319e8b1742ad3d22ef2036b4ec2cc41bef72d98cf56403bee1d7b56973a662`  
		Last Modified: Fri, 08 Sep 2017 05:36:10 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c358ee6112218bc3b06a889df516e2f4b21e561774078f82fd3d9b61c03c484a`  
		Last Modified: Fri, 08 Sep 2017 05:36:08 GMT  
		Size: 7.7 KB (7667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805f4256c0613d84719db9423508ebf28f38c3cc79a4383e4f4b5bbd8f27913d`  
		Last Modified: Fri, 08 Sep 2017 19:36:39 GMT  
		Size: 2.7 MB (2749010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ac20bb220fa6c9af6e6aa8bfd342c2bbb83f5e1f482b4e6512ed24cedabc47`  
		Last Modified: Fri, 08 Sep 2017 19:36:35 GMT  
		Size: 56.4 KB (56352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c382b1cf31cadb5ef2f9ba35196f5d31a046b39a1abb221fc18a0477a5b7ba`  
		Last Modified: Fri, 08 Sep 2017 19:36:37 GMT  
		Size: 18.2 KB (18249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ba29017c29a38052742932ff424ccc43c2bff25996b774de0771dd5a008435`  
		Last Modified: Fri, 08 Sep 2017 19:36:37 GMT  
		Size: 72.7 KB (72716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c70b07646fa5640e03da98ef58eabc8bcdfb575e6f48aaa7ff144e8a94420a6`  
		Last Modified: Fri, 08 Sep 2017 19:36:42 GMT  
		Size: 9.1 MB (9099683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b206a41f39eeed1d5a3219ec3e791a6416fa9f80089dc105c0c89ce9326807d`  
		Last Modified: Fri, 08 Sep 2017 19:36:35 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182c63dbe124b59218db7bc3c6e813749469b948ad4151479c05ccbd45db432b`  
		Last Modified: Fri, 08 Sep 2017 19:36:35 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:fpm-php7`

```console
$ docker pull joomla@sha256:6de397a08ed85519b5a4b20046be21c904a42f674e0406e05adac85bb1fa60d4
```

-	Platforms:
	-	linux; amd64

### `joomla:fpm-php7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.8 MB (171841796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dfad7895ab03d0fb5cd0ade00211aa8247b74decf1038bef86f39fdbe44cd27`
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
# Fri, 08 Sep 2017 03:56:40 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 08 Sep 2017 03:56:40 GMT
ENV PHP_VERSION=7.0.23
# Fri, 08 Sep 2017 03:56:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 03:56:41 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Fri, 08 Sep 2017 03:57:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 03:57:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:01:00 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 04:07:09 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 08 Sep 2017 04:07:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 04:07:10 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 04:07:11 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 08 Sep 2017 04:07:12 GMT
EXPOSE 9000/tcp
# Fri, 08 Sep 2017 04:07:12 GMT
CMD ["php-fpm"]
# Fri, 08 Sep 2017 07:38:58 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 08 Sep 2017 07:38:58 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 08 Sep 2017 07:39:36 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 08 Sep 2017 07:42:11 GMT
RUN docker-php-ext-install mysqli
# Fri, 08 Sep 2017 07:42:16 GMT
RUN docker-php-ext-install mcrypt
# Fri, 08 Sep 2017 07:42:41 GMT
RUN docker-php-ext-install zip
# Fri, 08 Sep 2017 07:42:41 GMT
VOLUME [/var/www/html]
# Fri, 08 Sep 2017 07:42:41 GMT
ENV JOOMLA_VERSION=3.7.5
# Fri, 08 Sep 2017 07:42:42 GMT
ENV JOOMLA_SHA1=4a8ba6c70265879cf5c77bcc1b3a0fe9620ba02a
# Fri, 08 Sep 2017 07:42:48 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 08 Sep 2017 07:42:49 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 08 Sep 2017 07:42:49 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 08 Sep 2017 07:42:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:42:55 GMT
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
	-	`sha256:62a257473dde3882fb8eb6dd48b656ae27b7a57a331c9d9c916c134a46ecbb68`  
		Last Modified: Fri, 08 Sep 2017 05:36:10 GMT  
		Size: 12.1 MB (12063053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852e96b9bc24d8b36495602e3126981a84f7ae8d95f523a29b8e8e4b13782345`  
		Last Modified: Fri, 08 Sep 2017 05:36:08 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327f063a45d927da030c82f179bb09560cd134d15f990f1d108d2c04e3f30a19`  
		Last Modified: Fri, 08 Sep 2017 05:36:14 GMT  
		Size: 12.7 MB (12679945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c753a295ae70651aac01c048a3063e6b383b842a741b45f25fe357c60859a2`  
		Last Modified: Fri, 08 Sep 2017 05:36:08 GMT  
		Size: 2.1 KB (2120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21319e8b1742ad3d22ef2036b4ec2cc41bef72d98cf56403bee1d7b56973a662`  
		Last Modified: Fri, 08 Sep 2017 05:36:10 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c358ee6112218bc3b06a889df516e2f4b21e561774078f82fd3d9b61c03c484a`  
		Last Modified: Fri, 08 Sep 2017 05:36:08 GMT  
		Size: 7.7 KB (7667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805f4256c0613d84719db9423508ebf28f38c3cc79a4383e4f4b5bbd8f27913d`  
		Last Modified: Fri, 08 Sep 2017 19:36:39 GMT  
		Size: 2.7 MB (2749010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ac20bb220fa6c9af6e6aa8bfd342c2bbb83f5e1f482b4e6512ed24cedabc47`  
		Last Modified: Fri, 08 Sep 2017 19:36:35 GMT  
		Size: 56.4 KB (56352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c382b1cf31cadb5ef2f9ba35196f5d31a046b39a1abb221fc18a0477a5b7ba`  
		Last Modified: Fri, 08 Sep 2017 19:36:37 GMT  
		Size: 18.2 KB (18249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ba29017c29a38052742932ff424ccc43c2bff25996b774de0771dd5a008435`  
		Last Modified: Fri, 08 Sep 2017 19:36:37 GMT  
		Size: 72.7 KB (72716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c70b07646fa5640e03da98ef58eabc8bcdfb575e6f48aaa7ff144e8a94420a6`  
		Last Modified: Fri, 08 Sep 2017 19:36:42 GMT  
		Size: 9.1 MB (9099683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b206a41f39eeed1d5a3219ec3e791a6416fa9f80089dc105c0c89ce9326807d`  
		Last Modified: Fri, 08 Sep 2017 19:36:35 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182c63dbe124b59218db7bc3c6e813749469b948ad4151479c05ccbd45db432b`  
		Last Modified: Fri, 08 Sep 2017 19:36:35 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
