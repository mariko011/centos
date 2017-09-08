## `php:rc-apache`

```console
$ docker pull php@sha256:5451a0a34609323b6a2017b283d6e7e30f9023bf332da9da6106af5703008285
```

-	Platforms:
	-	linux; amd64

### `php:rc-apache` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134290437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46dac667279f9bb53e4e9a8f82b760cbedd72eaa57e7ee342baac6caa080b6bc`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:49:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 01:50:11 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:50:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 01:50:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 01:58:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:58:44 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 01:58:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 01:58:45 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 01:58:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 01:58:47 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 01:58:48 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 01:58:49 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 01:58:49 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 01:58:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 01:58:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 01:58:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 01:58:50 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 08 Sep 2017 01:58:51 GMT
ENV PHP_VERSION=7.2.0RC1
# Fri, 08 Sep 2017 01:58:51 GMT
ENV PHP_URL=https://downloads.php.net/~remi/php-7.2.0RC1.tar.xz PHP_ASC_URL=https://downloads.php.net/~remi/php-7.2.0RC1.tar.xz.asc
# Fri, 08 Sep 2017 01:58:51 GMT
ENV PHP_SHA256=04f68d9accb60e56adecc34a80b84bde16edb255a13eef701ea2d6c2b13dc15b PHP_MD5=
# Fri, 08 Sep 2017 01:59:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 01:59:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 02:03:17 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 02:03:18 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 08 Sep 2017 02:03:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 02:03:20 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 08 Sep 2017 02:03:20 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 02:03:21 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 02:03:21 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d535fd0d7eb4c5eeb172117c36bea736dc8ffe1cb697fe3d7784da113e5144`  
		Last Modified: Fri, 08 Sep 2017 04:59:35 GMT  
		Size: 82.7 MB (82742297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c24feb29ad454ba677c0833066879e1d04d4906e6a98e2f5a72f81a4c2c77b`  
		Last Modified: Fri, 08 Sep 2017 04:59:06 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c214a1dbaf315a517a6742cc88e6ee366922a490a38596fd61610ed89e05ff46`  
		Last Modified: Fri, 08 Sep 2017 05:02:40 GMT  
		Size: 2.7 MB (2698393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57fda684c433a795ef3bb5634f48e9a77658caeaa0a5c83f1db33fc55639ca0`  
		Last Modified: Fri, 08 Sep 2017 05:02:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5047cb2f5387ab58b3be95503e21143b751d806d595afa1779bc7964f3452b`  
		Last Modified: Fri, 08 Sep 2017 05:02:37 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d90f2fbc574f7396949ef37ab72cf30c1b55466a33542a009316562226c470`  
		Last Modified: Fri, 08 Sep 2017 05:02:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0193dac9cb9d0e8cc8d067397e412e317a14a72f128ad3ec3e501c10eb2b74ba`  
		Last Modified: Fri, 08 Sep 2017 05:02:34 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a57d284cc1c70e0f549e3318cf0745532f66557912919070ebb244c91393eb`  
		Last Modified: Fri, 08 Sep 2017 05:02:37 GMT  
		Size: 12.1 MB (12099488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354d69007bd10f52cba6bc4826b8740a6141a374690373a7e65752496ce07648`  
		Last Modified: Fri, 08 Sep 2017 05:02:34 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915d2f7afed0bdca744cc1206e3b609c72183bf3a6e9bd2c4d6878e06471e40a`  
		Last Modified: Fri, 08 Sep 2017 05:02:42 GMT  
		Size: 14.3 MB (14256138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23e4094d619a2152f83e620c9a16c239cb583882322caa1b437725d2dd9b87b`  
		Last Modified: Fri, 08 Sep 2017 05:02:35 GMT  
		Size: 2.1 KB (2127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5446307aabd8ca04eb2fef26d7f87f316ca07580d57a7b26ec260376ae2ed8`  
		Last Modified: Fri, 08 Sep 2017 05:02:34 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
