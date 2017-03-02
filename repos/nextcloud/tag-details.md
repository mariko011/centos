<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nextcloud`

-	[`nextcloud:10.0.3-apache`](#nextcloud1003-apache)
-	[`nextcloud:10.0-apache`](#nextcloud100-apache)
-	[`nextcloud:10-apache`](#nextcloud10-apache)
-	[`nextcloud:10.0.3`](#nextcloud1003)
-	[`nextcloud:10.0`](#nextcloud100)
-	[`nextcloud:10`](#nextcloud10)
-	[`nextcloud:10.0.3-fpm`](#nextcloud1003-fpm)
-	[`nextcloud:10.0-fpm`](#nextcloud100-fpm)
-	[`nextcloud:10-fpm`](#nextcloud10-fpm)
-	[`nextcloud:11.0.1-apache`](#nextcloud1101-apache)
-	[`nextcloud:11.0-apache`](#nextcloud110-apache)
-	[`nextcloud:11-apache`](#nextcloud11-apache)
-	[`nextcloud:apache`](#nextcloudapache)
-	[`nextcloud:11.0.1`](#nextcloud1101)
-	[`nextcloud:11.0`](#nextcloud110)
-	[`nextcloud:11`](#nextcloud11)
-	[`nextcloud:latest`](#nextcloudlatest)
-	[`nextcloud:11.0.1-fpm`](#nextcloud1101-fpm)
-	[`nextcloud:11.0-fpm`](#nextcloud110-fpm)
-	[`nextcloud:11-fpm`](#nextcloud11-fpm)
-	[`nextcloud:fpm`](#nextcloudfpm)
-	[`nextcloud:9.0.56-apache`](#nextcloud9056-apache)
-	[`nextcloud:9.0-apache`](#nextcloud90-apache)
-	[`nextcloud:9-apache`](#nextcloud9-apache)
-	[`nextcloud:9.0.56`](#nextcloud9056)
-	[`nextcloud:9.0`](#nextcloud90)
-	[`nextcloud:9`](#nextcloud9)
-	[`nextcloud:9.0.56-fpm`](#nextcloud9056-fpm)
-	[`nextcloud:9.0-fpm`](#nextcloud90-fpm)
-	[`nextcloud:9-fpm`](#nextcloud9-fpm)

## `nextcloud:10.0.3-apache`

```console
$ docker pull nextcloud@sha256:6a41f1565440144ad072291688ea4bae430125083bd94298425bf4279e68cd54
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10.0.3-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229157171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461484dc3f5a81ab6665b4d3d464aa996389303dac59e1dd216da62f42cacfbb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 16:24:38 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:26:25 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:26:26 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:26:27 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:53 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:26:53 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:54 GMT
ENV NEXTCLOUD_VERSION=10.0.3
# Wed, 01 Mar 2017 16:26:54 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:27:07 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:27:08 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:27:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:27:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78eeb1928ca2a78310fd8af271f9b32b05629fd5f9e11f5e3d58150079e76b5`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 34.3 MB (34342669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767c6252e88997536916719e77fa8ee3eaf116789c85cb20c29558da6762175`  
		Last Modified: Thu, 02 Mar 2017 02:05:31 GMT  
		Size: 1.7 MB (1709902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61428f689f05e7c42471aab08fe9b0fdd7c030d5bcaaa450e1515982ff0ae755`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b38de46c3047963a4a1a775707b9bceb911c0b3823e51aa64e153390847e7a`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35995a07ff0661ca4ac53996db149bb25e6057ca41788412309df5bb0b304100`  
		Last Modified: Thu, 02 Mar 2017 02:05:28 GMT  
		Size: 1.3 MB (1331809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0893e5a857e816112b3484f98bed2174490ee362dada933647396a22d36ead22`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 38.1 MB (38108161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc60d696aa490398823291e2f60d54c98daa849f3f4b84fb0551fa0fb967e23`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10.0-apache`

```console
$ docker pull nextcloud@sha256:6a41f1565440144ad072291688ea4bae430125083bd94298425bf4279e68cd54
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10.0-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229157171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461484dc3f5a81ab6665b4d3d464aa996389303dac59e1dd216da62f42cacfbb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 16:24:38 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:26:25 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:26:26 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:26:27 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:53 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:26:53 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:54 GMT
ENV NEXTCLOUD_VERSION=10.0.3
# Wed, 01 Mar 2017 16:26:54 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:27:07 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:27:08 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:27:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:27:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78eeb1928ca2a78310fd8af271f9b32b05629fd5f9e11f5e3d58150079e76b5`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 34.3 MB (34342669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767c6252e88997536916719e77fa8ee3eaf116789c85cb20c29558da6762175`  
		Last Modified: Thu, 02 Mar 2017 02:05:31 GMT  
		Size: 1.7 MB (1709902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61428f689f05e7c42471aab08fe9b0fdd7c030d5bcaaa450e1515982ff0ae755`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b38de46c3047963a4a1a775707b9bceb911c0b3823e51aa64e153390847e7a`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35995a07ff0661ca4ac53996db149bb25e6057ca41788412309df5bb0b304100`  
		Last Modified: Thu, 02 Mar 2017 02:05:28 GMT  
		Size: 1.3 MB (1331809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0893e5a857e816112b3484f98bed2174490ee362dada933647396a22d36ead22`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 38.1 MB (38108161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc60d696aa490398823291e2f60d54c98daa849f3f4b84fb0551fa0fb967e23`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10-apache`

```console
$ docker pull nextcloud@sha256:6a41f1565440144ad072291688ea4bae430125083bd94298425bf4279e68cd54
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229157171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461484dc3f5a81ab6665b4d3d464aa996389303dac59e1dd216da62f42cacfbb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 16:24:38 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:26:25 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:26:26 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:26:27 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:53 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:26:53 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:54 GMT
ENV NEXTCLOUD_VERSION=10.0.3
# Wed, 01 Mar 2017 16:26:54 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:27:07 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:27:08 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:27:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:27:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78eeb1928ca2a78310fd8af271f9b32b05629fd5f9e11f5e3d58150079e76b5`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 34.3 MB (34342669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767c6252e88997536916719e77fa8ee3eaf116789c85cb20c29558da6762175`  
		Last Modified: Thu, 02 Mar 2017 02:05:31 GMT  
		Size: 1.7 MB (1709902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61428f689f05e7c42471aab08fe9b0fdd7c030d5bcaaa450e1515982ff0ae755`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b38de46c3047963a4a1a775707b9bceb911c0b3823e51aa64e153390847e7a`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35995a07ff0661ca4ac53996db149bb25e6057ca41788412309df5bb0b304100`  
		Last Modified: Thu, 02 Mar 2017 02:05:28 GMT  
		Size: 1.3 MB (1331809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0893e5a857e816112b3484f98bed2174490ee362dada933647396a22d36ead22`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 38.1 MB (38108161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc60d696aa490398823291e2f60d54c98daa849f3f4b84fb0551fa0fb967e23`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10.0.3`

```console
$ docker pull nextcloud@sha256:6a41f1565440144ad072291688ea4bae430125083bd94298425bf4279e68cd54
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10.0.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229157171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461484dc3f5a81ab6665b4d3d464aa996389303dac59e1dd216da62f42cacfbb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 16:24:38 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:26:25 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:26:26 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:26:27 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:53 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:26:53 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:54 GMT
ENV NEXTCLOUD_VERSION=10.0.3
# Wed, 01 Mar 2017 16:26:54 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:27:07 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:27:08 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:27:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:27:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78eeb1928ca2a78310fd8af271f9b32b05629fd5f9e11f5e3d58150079e76b5`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 34.3 MB (34342669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767c6252e88997536916719e77fa8ee3eaf116789c85cb20c29558da6762175`  
		Last Modified: Thu, 02 Mar 2017 02:05:31 GMT  
		Size: 1.7 MB (1709902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61428f689f05e7c42471aab08fe9b0fdd7c030d5bcaaa450e1515982ff0ae755`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b38de46c3047963a4a1a775707b9bceb911c0b3823e51aa64e153390847e7a`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35995a07ff0661ca4ac53996db149bb25e6057ca41788412309df5bb0b304100`  
		Last Modified: Thu, 02 Mar 2017 02:05:28 GMT  
		Size: 1.3 MB (1331809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0893e5a857e816112b3484f98bed2174490ee362dada933647396a22d36ead22`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 38.1 MB (38108161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc60d696aa490398823291e2f60d54c98daa849f3f4b84fb0551fa0fb967e23`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10.0`

```console
$ docker pull nextcloud@sha256:6a41f1565440144ad072291688ea4bae430125083bd94298425bf4279e68cd54
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229157171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461484dc3f5a81ab6665b4d3d464aa996389303dac59e1dd216da62f42cacfbb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 16:24:38 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:26:25 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:26:26 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:26:27 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:53 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:26:53 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:54 GMT
ENV NEXTCLOUD_VERSION=10.0.3
# Wed, 01 Mar 2017 16:26:54 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:27:07 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:27:08 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:27:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:27:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78eeb1928ca2a78310fd8af271f9b32b05629fd5f9e11f5e3d58150079e76b5`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 34.3 MB (34342669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767c6252e88997536916719e77fa8ee3eaf116789c85cb20c29558da6762175`  
		Last Modified: Thu, 02 Mar 2017 02:05:31 GMT  
		Size: 1.7 MB (1709902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61428f689f05e7c42471aab08fe9b0fdd7c030d5bcaaa450e1515982ff0ae755`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b38de46c3047963a4a1a775707b9bceb911c0b3823e51aa64e153390847e7a`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35995a07ff0661ca4ac53996db149bb25e6057ca41788412309df5bb0b304100`  
		Last Modified: Thu, 02 Mar 2017 02:05:28 GMT  
		Size: 1.3 MB (1331809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0893e5a857e816112b3484f98bed2174490ee362dada933647396a22d36ead22`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 38.1 MB (38108161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc60d696aa490398823291e2f60d54c98daa849f3f4b84fb0551fa0fb967e23`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10`

```console
$ docker pull nextcloud@sha256:6a41f1565440144ad072291688ea4bae430125083bd94298425bf4279e68cd54
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229157171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461484dc3f5a81ab6665b4d3d464aa996389303dac59e1dd216da62f42cacfbb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 16:24:38 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:26:25 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:26:26 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:26:27 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:53 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:26:53 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:54 GMT
ENV NEXTCLOUD_VERSION=10.0.3
# Wed, 01 Mar 2017 16:26:54 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:27:07 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:27:08 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:27:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:27:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78eeb1928ca2a78310fd8af271f9b32b05629fd5f9e11f5e3d58150079e76b5`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 34.3 MB (34342669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767c6252e88997536916719e77fa8ee3eaf116789c85cb20c29558da6762175`  
		Last Modified: Thu, 02 Mar 2017 02:05:31 GMT  
		Size: 1.7 MB (1709902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61428f689f05e7c42471aab08fe9b0fdd7c030d5bcaaa450e1515982ff0ae755`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b38de46c3047963a4a1a775707b9bceb911c0b3823e51aa64e153390847e7a`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35995a07ff0661ca4ac53996db149bb25e6057ca41788412309df5bb0b304100`  
		Last Modified: Thu, 02 Mar 2017 02:05:28 GMT  
		Size: 1.3 MB (1331809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0893e5a857e816112b3484f98bed2174490ee362dada933647396a22d36ead22`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 38.1 MB (38108161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc60d696aa490398823291e2f60d54c98daa849f3f4b84fb0551fa0fb967e23`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10.0.3-fpm`

```console
$ docker pull nextcloud@sha256:82f52bf3f92513742576512bdb1c4ff8938d9e197d2cbe82fcb51d45a0a0dbe5
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10.0.3-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.8 MB (225775265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57538cc5a916bd0ec5d73e469ba5e4f9fb093afaa2fb081166f6ab514d33c35d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:34:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:34:12 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:34:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:34:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:37:35 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:37:36 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:37:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 17:37:37 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 17:37:37 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 16:27:26 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:29:09 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:29:10 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:29:35 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:29:35 GMT
ENV NEXTCLOUD_VERSION=10.0.3
# Wed, 01 Mar 2017 16:29:35 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:29:48 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:29:49 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:29:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:29:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e239b35149d1a3733de6e199fda854c574e95444559a25b812e669d07ee141e1`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 12.6 MB (12560638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d03b20d4a892cbe60a39ef33b8d88726826c566775eb3b0e1c029c219e7fcb5`  
		Last Modified: Wed, 01 Mar 2017 17:10:27 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f54f33dc89e32e817cfc86bf2d57efca0cdf102f90c42a041c43ae397d38ce`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 8.8 MB (8763324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c26b483192a1f6912534a4669ca783ca660c6e64b494fed9d403aa9e6c8e2`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41557ade8314d32508764200c82a36b62838d84461c47aa5bdd552dd302a86`  
		Last Modified: Wed, 01 Mar 2017 17:10:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caad4e718aa1be2daf194f28668bee87d96e5b3386ce039a7bc5e5383ae4b4a9`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57beea244036de5ec029fa2d21f2ad58f0563dd8542c83be850463a502fbf606`  
		Last Modified: Thu, 02 Mar 2017 02:07:49 GMT  
		Size: 34.3 MB (34319440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a834d911a84f4d0d3d82e093f255e9eb51f2520bbb981039f398e29d8c7da7`  
		Last Modified: Thu, 02 Mar 2017 02:07:36 GMT  
		Size: 1.7 MB (1710094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8265081b3e6f0123c15cbc546374a849ae543e709454cfe0a3376cfb1554df`  
		Last Modified: Thu, 02 Mar 2017 02:07:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f7e4504f0d87405b4d7d590c1940ef371a84c198df3e9859ba4a0857e2c5cd`  
		Last Modified: Thu, 02 Mar 2017 02:07:36 GMT  
		Size: 1.3 MB (1331716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f413da3a18b0d9c2f5c1e0a937d015a707b515b8c95bfd55db48083354628f56`  
		Last Modified: Thu, 02 Mar 2017 02:07:52 GMT  
		Size: 38.1 MB (38108140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bc329c9dd206e2d29bbca40852d21f8736fdbd0440fb37023c8907711857b0`  
		Last Modified: Thu, 02 Mar 2017 02:07:35 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10.0-fpm`

```console
$ docker pull nextcloud@sha256:82f52bf3f92513742576512bdb1c4ff8938d9e197d2cbe82fcb51d45a0a0dbe5
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10.0-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.8 MB (225775265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57538cc5a916bd0ec5d73e469ba5e4f9fb093afaa2fb081166f6ab514d33c35d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:34:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:34:12 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:34:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:34:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:37:35 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:37:36 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:37:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 17:37:37 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 17:37:37 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 16:27:26 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:29:09 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:29:10 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:29:35 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:29:35 GMT
ENV NEXTCLOUD_VERSION=10.0.3
# Wed, 01 Mar 2017 16:29:35 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:29:48 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:29:49 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:29:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:29:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e239b35149d1a3733de6e199fda854c574e95444559a25b812e669d07ee141e1`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 12.6 MB (12560638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d03b20d4a892cbe60a39ef33b8d88726826c566775eb3b0e1c029c219e7fcb5`  
		Last Modified: Wed, 01 Mar 2017 17:10:27 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f54f33dc89e32e817cfc86bf2d57efca0cdf102f90c42a041c43ae397d38ce`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 8.8 MB (8763324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c26b483192a1f6912534a4669ca783ca660c6e64b494fed9d403aa9e6c8e2`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41557ade8314d32508764200c82a36b62838d84461c47aa5bdd552dd302a86`  
		Last Modified: Wed, 01 Mar 2017 17:10:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caad4e718aa1be2daf194f28668bee87d96e5b3386ce039a7bc5e5383ae4b4a9`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57beea244036de5ec029fa2d21f2ad58f0563dd8542c83be850463a502fbf606`  
		Last Modified: Thu, 02 Mar 2017 02:07:49 GMT  
		Size: 34.3 MB (34319440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a834d911a84f4d0d3d82e093f255e9eb51f2520bbb981039f398e29d8c7da7`  
		Last Modified: Thu, 02 Mar 2017 02:07:36 GMT  
		Size: 1.7 MB (1710094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8265081b3e6f0123c15cbc546374a849ae543e709454cfe0a3376cfb1554df`  
		Last Modified: Thu, 02 Mar 2017 02:07:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f7e4504f0d87405b4d7d590c1940ef371a84c198df3e9859ba4a0857e2c5cd`  
		Last Modified: Thu, 02 Mar 2017 02:07:36 GMT  
		Size: 1.3 MB (1331716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f413da3a18b0d9c2f5c1e0a937d015a707b515b8c95bfd55db48083354628f56`  
		Last Modified: Thu, 02 Mar 2017 02:07:52 GMT  
		Size: 38.1 MB (38108140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bc329c9dd206e2d29bbca40852d21f8736fdbd0440fb37023c8907711857b0`  
		Last Modified: Thu, 02 Mar 2017 02:07:35 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10-fpm`

```console
$ docker pull nextcloud@sha256:82f52bf3f92513742576512bdb1c4ff8938d9e197d2cbe82fcb51d45a0a0dbe5
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.8 MB (225775265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57538cc5a916bd0ec5d73e469ba5e4f9fb093afaa2fb081166f6ab514d33c35d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:34:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:34:12 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:34:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:34:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:37:35 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:37:36 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:37:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 17:37:37 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 17:37:37 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 16:27:26 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:29:09 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:29:10 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:29:35 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:29:35 GMT
ENV NEXTCLOUD_VERSION=10.0.3
# Wed, 01 Mar 2017 16:29:35 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:29:48 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:29:49 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:29:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:29:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e239b35149d1a3733de6e199fda854c574e95444559a25b812e669d07ee141e1`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 12.6 MB (12560638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d03b20d4a892cbe60a39ef33b8d88726826c566775eb3b0e1c029c219e7fcb5`  
		Last Modified: Wed, 01 Mar 2017 17:10:27 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f54f33dc89e32e817cfc86bf2d57efca0cdf102f90c42a041c43ae397d38ce`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 8.8 MB (8763324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c26b483192a1f6912534a4669ca783ca660c6e64b494fed9d403aa9e6c8e2`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41557ade8314d32508764200c82a36b62838d84461c47aa5bdd552dd302a86`  
		Last Modified: Wed, 01 Mar 2017 17:10:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caad4e718aa1be2daf194f28668bee87d96e5b3386ce039a7bc5e5383ae4b4a9`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57beea244036de5ec029fa2d21f2ad58f0563dd8542c83be850463a502fbf606`  
		Last Modified: Thu, 02 Mar 2017 02:07:49 GMT  
		Size: 34.3 MB (34319440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a834d911a84f4d0d3d82e093f255e9eb51f2520bbb981039f398e29d8c7da7`  
		Last Modified: Thu, 02 Mar 2017 02:07:36 GMT  
		Size: 1.7 MB (1710094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8265081b3e6f0123c15cbc546374a849ae543e709454cfe0a3376cfb1554df`  
		Last Modified: Thu, 02 Mar 2017 02:07:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f7e4504f0d87405b4d7d590c1940ef371a84c198df3e9859ba4a0857e2c5cd`  
		Last Modified: Thu, 02 Mar 2017 02:07:36 GMT  
		Size: 1.3 MB (1331716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f413da3a18b0d9c2f5c1e0a937d015a707b515b8c95bfd55db48083354628f56`  
		Last Modified: Thu, 02 Mar 2017 02:07:52 GMT  
		Size: 38.1 MB (38108140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bc329c9dd206e2d29bbca40852d21f8736fdbd0440fb37023c8907711857b0`  
		Last Modified: Thu, 02 Mar 2017 02:07:35 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0.1-apache`

```console
$ docker pull nextcloud@sha256:636ab74e19a9d1a3b07e0d15cc7b220ddf5d6403b8e0cb5fb4f91acd3faaafac
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0.1-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.2 MB (233243232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce89ab765d2822afd1e71615421e7ab94c26bfad04a50878f1c0b9212c61dc25`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 16:24:38 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:26:25 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:26:26 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:26:27 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:53 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:26:53 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:29:50 GMT
ENV NEXTCLOUD_VERSION=11.0.1
# Wed, 01 Mar 2017 16:29:51 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:30:05 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:30:06 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:30:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:30:06 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78eeb1928ca2a78310fd8af271f9b32b05629fd5f9e11f5e3d58150079e76b5`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 34.3 MB (34342669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767c6252e88997536916719e77fa8ee3eaf116789c85cb20c29558da6762175`  
		Last Modified: Thu, 02 Mar 2017 02:05:31 GMT  
		Size: 1.7 MB (1709902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61428f689f05e7c42471aab08fe9b0fdd7c030d5bcaaa450e1515982ff0ae755`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b38de46c3047963a4a1a775707b9bceb911c0b3823e51aa64e153390847e7a`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35995a07ff0661ca4ac53996db149bb25e6057ca41788412309df5bb0b304100`  
		Last Modified: Thu, 02 Mar 2017 02:05:28 GMT  
		Size: 1.3 MB (1331809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b41feec2e67c6966859bc8d03867af7054c51abd96366e989001f6d8249c145`  
		Last Modified: Thu, 02 Mar 2017 02:09:09 GMT  
		Size: 42.2 MB (42194220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51faad1fbe56ef2b51cd9c185ec4963f071d560e8b9fb3400b571e94199e185f`  
		Last Modified: Thu, 02 Mar 2017 02:08:50 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0-apache`

```console
$ docker pull nextcloud@sha256:636ab74e19a9d1a3b07e0d15cc7b220ddf5d6403b8e0cb5fb4f91acd3faaafac
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.2 MB (233243232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce89ab765d2822afd1e71615421e7ab94c26bfad04a50878f1c0b9212c61dc25`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 16:24:38 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:26:25 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:26:26 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:26:27 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:53 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:26:53 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:29:50 GMT
ENV NEXTCLOUD_VERSION=11.0.1
# Wed, 01 Mar 2017 16:29:51 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:30:05 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:30:06 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:30:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:30:06 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78eeb1928ca2a78310fd8af271f9b32b05629fd5f9e11f5e3d58150079e76b5`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 34.3 MB (34342669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767c6252e88997536916719e77fa8ee3eaf116789c85cb20c29558da6762175`  
		Last Modified: Thu, 02 Mar 2017 02:05:31 GMT  
		Size: 1.7 MB (1709902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61428f689f05e7c42471aab08fe9b0fdd7c030d5bcaaa450e1515982ff0ae755`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b38de46c3047963a4a1a775707b9bceb911c0b3823e51aa64e153390847e7a`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35995a07ff0661ca4ac53996db149bb25e6057ca41788412309df5bb0b304100`  
		Last Modified: Thu, 02 Mar 2017 02:05:28 GMT  
		Size: 1.3 MB (1331809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b41feec2e67c6966859bc8d03867af7054c51abd96366e989001f6d8249c145`  
		Last Modified: Thu, 02 Mar 2017 02:09:09 GMT  
		Size: 42.2 MB (42194220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51faad1fbe56ef2b51cd9c185ec4963f071d560e8b9fb3400b571e94199e185f`  
		Last Modified: Thu, 02 Mar 2017 02:08:50 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11-apache`

```console
$ docker pull nextcloud@sha256:636ab74e19a9d1a3b07e0d15cc7b220ddf5d6403b8e0cb5fb4f91acd3faaafac
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.2 MB (233243232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce89ab765d2822afd1e71615421e7ab94c26bfad04a50878f1c0b9212c61dc25`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 16:24:38 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:26:25 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:26:26 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:26:27 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:53 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:26:53 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:29:50 GMT
ENV NEXTCLOUD_VERSION=11.0.1
# Wed, 01 Mar 2017 16:29:51 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:30:05 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:30:06 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:30:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:30:06 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78eeb1928ca2a78310fd8af271f9b32b05629fd5f9e11f5e3d58150079e76b5`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 34.3 MB (34342669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767c6252e88997536916719e77fa8ee3eaf116789c85cb20c29558da6762175`  
		Last Modified: Thu, 02 Mar 2017 02:05:31 GMT  
		Size: 1.7 MB (1709902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61428f689f05e7c42471aab08fe9b0fdd7c030d5bcaaa450e1515982ff0ae755`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b38de46c3047963a4a1a775707b9bceb911c0b3823e51aa64e153390847e7a`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35995a07ff0661ca4ac53996db149bb25e6057ca41788412309df5bb0b304100`  
		Last Modified: Thu, 02 Mar 2017 02:05:28 GMT  
		Size: 1.3 MB (1331809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b41feec2e67c6966859bc8d03867af7054c51abd96366e989001f6d8249c145`  
		Last Modified: Thu, 02 Mar 2017 02:09:09 GMT  
		Size: 42.2 MB (42194220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51faad1fbe56ef2b51cd9c185ec4963f071d560e8b9fb3400b571e94199e185f`  
		Last Modified: Thu, 02 Mar 2017 02:08:50 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:apache`

```console
$ docker pull nextcloud@sha256:636ab74e19a9d1a3b07e0d15cc7b220ddf5d6403b8e0cb5fb4f91acd3faaafac
```

-	Platforms:
	-	linux; amd64

### `nextcloud:apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.2 MB (233243232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce89ab765d2822afd1e71615421e7ab94c26bfad04a50878f1c0b9212c61dc25`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 16:24:38 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:26:25 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:26:26 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:26:27 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:53 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:26:53 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:29:50 GMT
ENV NEXTCLOUD_VERSION=11.0.1
# Wed, 01 Mar 2017 16:29:51 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:30:05 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:30:06 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:30:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:30:06 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78eeb1928ca2a78310fd8af271f9b32b05629fd5f9e11f5e3d58150079e76b5`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 34.3 MB (34342669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767c6252e88997536916719e77fa8ee3eaf116789c85cb20c29558da6762175`  
		Last Modified: Thu, 02 Mar 2017 02:05:31 GMT  
		Size: 1.7 MB (1709902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61428f689f05e7c42471aab08fe9b0fdd7c030d5bcaaa450e1515982ff0ae755`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b38de46c3047963a4a1a775707b9bceb911c0b3823e51aa64e153390847e7a`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35995a07ff0661ca4ac53996db149bb25e6057ca41788412309df5bb0b304100`  
		Last Modified: Thu, 02 Mar 2017 02:05:28 GMT  
		Size: 1.3 MB (1331809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b41feec2e67c6966859bc8d03867af7054c51abd96366e989001f6d8249c145`  
		Last Modified: Thu, 02 Mar 2017 02:09:09 GMT  
		Size: 42.2 MB (42194220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51faad1fbe56ef2b51cd9c185ec4963f071d560e8b9fb3400b571e94199e185f`  
		Last Modified: Thu, 02 Mar 2017 02:08:50 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0.1`

```console
$ docker pull nextcloud@sha256:636ab74e19a9d1a3b07e0d15cc7b220ddf5d6403b8e0cb5fb4f91acd3faaafac
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.2 MB (233243232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce89ab765d2822afd1e71615421e7ab94c26bfad04a50878f1c0b9212c61dc25`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 16:24:38 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:26:25 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:26:26 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:26:27 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:53 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:26:53 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:29:50 GMT
ENV NEXTCLOUD_VERSION=11.0.1
# Wed, 01 Mar 2017 16:29:51 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:30:05 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:30:06 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:30:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:30:06 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78eeb1928ca2a78310fd8af271f9b32b05629fd5f9e11f5e3d58150079e76b5`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 34.3 MB (34342669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767c6252e88997536916719e77fa8ee3eaf116789c85cb20c29558da6762175`  
		Last Modified: Thu, 02 Mar 2017 02:05:31 GMT  
		Size: 1.7 MB (1709902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61428f689f05e7c42471aab08fe9b0fdd7c030d5bcaaa450e1515982ff0ae755`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b38de46c3047963a4a1a775707b9bceb911c0b3823e51aa64e153390847e7a`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35995a07ff0661ca4ac53996db149bb25e6057ca41788412309df5bb0b304100`  
		Last Modified: Thu, 02 Mar 2017 02:05:28 GMT  
		Size: 1.3 MB (1331809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b41feec2e67c6966859bc8d03867af7054c51abd96366e989001f6d8249c145`  
		Last Modified: Thu, 02 Mar 2017 02:09:09 GMT  
		Size: 42.2 MB (42194220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51faad1fbe56ef2b51cd9c185ec4963f071d560e8b9fb3400b571e94199e185f`  
		Last Modified: Thu, 02 Mar 2017 02:08:50 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0`

```console
$ docker pull nextcloud@sha256:636ab74e19a9d1a3b07e0d15cc7b220ddf5d6403b8e0cb5fb4f91acd3faaafac
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.2 MB (233243232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce89ab765d2822afd1e71615421e7ab94c26bfad04a50878f1c0b9212c61dc25`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 16:24:38 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:26:25 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:26:26 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:26:27 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:53 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:26:53 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:29:50 GMT
ENV NEXTCLOUD_VERSION=11.0.1
# Wed, 01 Mar 2017 16:29:51 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:30:05 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:30:06 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:30:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:30:06 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78eeb1928ca2a78310fd8af271f9b32b05629fd5f9e11f5e3d58150079e76b5`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 34.3 MB (34342669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767c6252e88997536916719e77fa8ee3eaf116789c85cb20c29558da6762175`  
		Last Modified: Thu, 02 Mar 2017 02:05:31 GMT  
		Size: 1.7 MB (1709902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61428f689f05e7c42471aab08fe9b0fdd7c030d5bcaaa450e1515982ff0ae755`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b38de46c3047963a4a1a775707b9bceb911c0b3823e51aa64e153390847e7a`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35995a07ff0661ca4ac53996db149bb25e6057ca41788412309df5bb0b304100`  
		Last Modified: Thu, 02 Mar 2017 02:05:28 GMT  
		Size: 1.3 MB (1331809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b41feec2e67c6966859bc8d03867af7054c51abd96366e989001f6d8249c145`  
		Last Modified: Thu, 02 Mar 2017 02:09:09 GMT  
		Size: 42.2 MB (42194220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51faad1fbe56ef2b51cd9c185ec4963f071d560e8b9fb3400b571e94199e185f`  
		Last Modified: Thu, 02 Mar 2017 02:08:50 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11`

```console
$ docker pull nextcloud@sha256:636ab74e19a9d1a3b07e0d15cc7b220ddf5d6403b8e0cb5fb4f91acd3faaafac
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.2 MB (233243232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce89ab765d2822afd1e71615421e7ab94c26bfad04a50878f1c0b9212c61dc25`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 16:24:38 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:26:25 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:26:26 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:26:27 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:53 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:26:53 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:29:50 GMT
ENV NEXTCLOUD_VERSION=11.0.1
# Wed, 01 Mar 2017 16:29:51 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:30:05 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:30:06 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:30:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:30:06 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78eeb1928ca2a78310fd8af271f9b32b05629fd5f9e11f5e3d58150079e76b5`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 34.3 MB (34342669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767c6252e88997536916719e77fa8ee3eaf116789c85cb20c29558da6762175`  
		Last Modified: Thu, 02 Mar 2017 02:05:31 GMT  
		Size: 1.7 MB (1709902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61428f689f05e7c42471aab08fe9b0fdd7c030d5bcaaa450e1515982ff0ae755`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b38de46c3047963a4a1a775707b9bceb911c0b3823e51aa64e153390847e7a`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35995a07ff0661ca4ac53996db149bb25e6057ca41788412309df5bb0b304100`  
		Last Modified: Thu, 02 Mar 2017 02:05:28 GMT  
		Size: 1.3 MB (1331809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b41feec2e67c6966859bc8d03867af7054c51abd96366e989001f6d8249c145`  
		Last Modified: Thu, 02 Mar 2017 02:09:09 GMT  
		Size: 42.2 MB (42194220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51faad1fbe56ef2b51cd9c185ec4963f071d560e8b9fb3400b571e94199e185f`  
		Last Modified: Thu, 02 Mar 2017 02:08:50 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:latest`

```console
$ docker pull nextcloud@sha256:636ab74e19a9d1a3b07e0d15cc7b220ddf5d6403b8e0cb5fb4f91acd3faaafac
```

-	Platforms:
	-	linux; amd64

### `nextcloud:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.2 MB (233243232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce89ab765d2822afd1e71615421e7ab94c26bfad04a50878f1c0b9212c61dc25`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 16:24:38 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:26:25 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:26:26 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:26:27 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:53 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:26:53 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:29:50 GMT
ENV NEXTCLOUD_VERSION=11.0.1
# Wed, 01 Mar 2017 16:29:51 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:30:05 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:30:06 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:30:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:30:06 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78eeb1928ca2a78310fd8af271f9b32b05629fd5f9e11f5e3d58150079e76b5`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 34.3 MB (34342669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767c6252e88997536916719e77fa8ee3eaf116789c85cb20c29558da6762175`  
		Last Modified: Thu, 02 Mar 2017 02:05:31 GMT  
		Size: 1.7 MB (1709902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61428f689f05e7c42471aab08fe9b0fdd7c030d5bcaaa450e1515982ff0ae755`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b38de46c3047963a4a1a775707b9bceb911c0b3823e51aa64e153390847e7a`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35995a07ff0661ca4ac53996db149bb25e6057ca41788412309df5bb0b304100`  
		Last Modified: Thu, 02 Mar 2017 02:05:28 GMT  
		Size: 1.3 MB (1331809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b41feec2e67c6966859bc8d03867af7054c51abd96366e989001f6d8249c145`  
		Last Modified: Thu, 02 Mar 2017 02:09:09 GMT  
		Size: 42.2 MB (42194220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51faad1fbe56ef2b51cd9c185ec4963f071d560e8b9fb3400b571e94199e185f`  
		Last Modified: Thu, 02 Mar 2017 02:08:50 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0.1-fpm`

```console
$ docker pull nextcloud@sha256:e0e052cd919aa8c70fc5125c32563727ffb45c0d50a5a7a638d19de236362197
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0.1-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229861322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a015d40e3e8aee99c4daa0b4c78cf28b1ce33cbcefd1761a3f6c2d6d0c9292`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:34:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:34:12 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:34:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:34:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:37:35 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:37:36 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:37:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 17:37:37 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 17:37:37 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 16:27:26 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:29:09 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:29:10 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:29:35 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:30:07 GMT
ENV NEXTCLOUD_VERSION=11.0.1
# Wed, 01 Mar 2017 16:30:07 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:30:23 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:30:37 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:30:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:30:38 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e239b35149d1a3733de6e199fda854c574e95444559a25b812e669d07ee141e1`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 12.6 MB (12560638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d03b20d4a892cbe60a39ef33b8d88726826c566775eb3b0e1c029c219e7fcb5`  
		Last Modified: Wed, 01 Mar 2017 17:10:27 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f54f33dc89e32e817cfc86bf2d57efca0cdf102f90c42a041c43ae397d38ce`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 8.8 MB (8763324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c26b483192a1f6912534a4669ca783ca660c6e64b494fed9d403aa9e6c8e2`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41557ade8314d32508764200c82a36b62838d84461c47aa5bdd552dd302a86`  
		Last Modified: Wed, 01 Mar 2017 17:10:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caad4e718aa1be2daf194f28668bee87d96e5b3386ce039a7bc5e5383ae4b4a9`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57beea244036de5ec029fa2d21f2ad58f0563dd8542c83be850463a502fbf606`  
		Last Modified: Thu, 02 Mar 2017 02:07:49 GMT  
		Size: 34.3 MB (34319440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a834d911a84f4d0d3d82e093f255e9eb51f2520bbb981039f398e29d8c7da7`  
		Last Modified: Thu, 02 Mar 2017 02:07:36 GMT  
		Size: 1.7 MB (1710094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8265081b3e6f0123c15cbc546374a849ae543e709454cfe0a3376cfb1554df`  
		Last Modified: Thu, 02 Mar 2017 02:07:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f7e4504f0d87405b4d7d590c1940ef371a84c198df3e9859ba4a0857e2c5cd`  
		Last Modified: Thu, 02 Mar 2017 02:07:36 GMT  
		Size: 1.3 MB (1331716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6269b5505bb4216445eeaa0b871103dcd47e6c5ac0d7367662c9fb2c6e81b31b`  
		Last Modified: Thu, 02 Mar 2017 02:11:55 GMT  
		Size: 42.2 MB (42194197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb103748c964952418edc96005dd91e54f8afed458263bd594a240cbe29facb`  
		Last Modified: Thu, 02 Mar 2017 02:11:39 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0-fpm`

```console
$ docker pull nextcloud@sha256:e0e052cd919aa8c70fc5125c32563727ffb45c0d50a5a7a638d19de236362197
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229861322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a015d40e3e8aee99c4daa0b4c78cf28b1ce33cbcefd1761a3f6c2d6d0c9292`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:34:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:34:12 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:34:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:34:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:37:35 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:37:36 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:37:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 17:37:37 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 17:37:37 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 16:27:26 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:29:09 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:29:10 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:29:35 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:30:07 GMT
ENV NEXTCLOUD_VERSION=11.0.1
# Wed, 01 Mar 2017 16:30:07 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:30:23 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:30:37 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:30:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:30:38 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e239b35149d1a3733de6e199fda854c574e95444559a25b812e669d07ee141e1`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 12.6 MB (12560638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d03b20d4a892cbe60a39ef33b8d88726826c566775eb3b0e1c029c219e7fcb5`  
		Last Modified: Wed, 01 Mar 2017 17:10:27 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f54f33dc89e32e817cfc86bf2d57efca0cdf102f90c42a041c43ae397d38ce`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 8.8 MB (8763324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c26b483192a1f6912534a4669ca783ca660c6e64b494fed9d403aa9e6c8e2`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41557ade8314d32508764200c82a36b62838d84461c47aa5bdd552dd302a86`  
		Last Modified: Wed, 01 Mar 2017 17:10:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caad4e718aa1be2daf194f28668bee87d96e5b3386ce039a7bc5e5383ae4b4a9`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57beea244036de5ec029fa2d21f2ad58f0563dd8542c83be850463a502fbf606`  
		Last Modified: Thu, 02 Mar 2017 02:07:49 GMT  
		Size: 34.3 MB (34319440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a834d911a84f4d0d3d82e093f255e9eb51f2520bbb981039f398e29d8c7da7`  
		Last Modified: Thu, 02 Mar 2017 02:07:36 GMT  
		Size: 1.7 MB (1710094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8265081b3e6f0123c15cbc546374a849ae543e709454cfe0a3376cfb1554df`  
		Last Modified: Thu, 02 Mar 2017 02:07:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f7e4504f0d87405b4d7d590c1940ef371a84c198df3e9859ba4a0857e2c5cd`  
		Last Modified: Thu, 02 Mar 2017 02:07:36 GMT  
		Size: 1.3 MB (1331716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6269b5505bb4216445eeaa0b871103dcd47e6c5ac0d7367662c9fb2c6e81b31b`  
		Last Modified: Thu, 02 Mar 2017 02:11:55 GMT  
		Size: 42.2 MB (42194197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb103748c964952418edc96005dd91e54f8afed458263bd594a240cbe29facb`  
		Last Modified: Thu, 02 Mar 2017 02:11:39 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11-fpm`

```console
$ docker pull nextcloud@sha256:e0e052cd919aa8c70fc5125c32563727ffb45c0d50a5a7a638d19de236362197
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229861322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a015d40e3e8aee99c4daa0b4c78cf28b1ce33cbcefd1761a3f6c2d6d0c9292`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:34:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:34:12 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:34:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:34:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:37:35 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:37:36 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:37:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 17:37:37 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 17:37:37 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 16:27:26 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:29:09 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:29:10 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:29:35 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:30:07 GMT
ENV NEXTCLOUD_VERSION=11.0.1
# Wed, 01 Mar 2017 16:30:07 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:30:23 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:30:37 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:30:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:30:38 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e239b35149d1a3733de6e199fda854c574e95444559a25b812e669d07ee141e1`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 12.6 MB (12560638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d03b20d4a892cbe60a39ef33b8d88726826c566775eb3b0e1c029c219e7fcb5`  
		Last Modified: Wed, 01 Mar 2017 17:10:27 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f54f33dc89e32e817cfc86bf2d57efca0cdf102f90c42a041c43ae397d38ce`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 8.8 MB (8763324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c26b483192a1f6912534a4669ca783ca660c6e64b494fed9d403aa9e6c8e2`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41557ade8314d32508764200c82a36b62838d84461c47aa5bdd552dd302a86`  
		Last Modified: Wed, 01 Mar 2017 17:10:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caad4e718aa1be2daf194f28668bee87d96e5b3386ce039a7bc5e5383ae4b4a9`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57beea244036de5ec029fa2d21f2ad58f0563dd8542c83be850463a502fbf606`  
		Last Modified: Thu, 02 Mar 2017 02:07:49 GMT  
		Size: 34.3 MB (34319440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a834d911a84f4d0d3d82e093f255e9eb51f2520bbb981039f398e29d8c7da7`  
		Last Modified: Thu, 02 Mar 2017 02:07:36 GMT  
		Size: 1.7 MB (1710094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8265081b3e6f0123c15cbc546374a849ae543e709454cfe0a3376cfb1554df`  
		Last Modified: Thu, 02 Mar 2017 02:07:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f7e4504f0d87405b4d7d590c1940ef371a84c198df3e9859ba4a0857e2c5cd`  
		Last Modified: Thu, 02 Mar 2017 02:07:36 GMT  
		Size: 1.3 MB (1331716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6269b5505bb4216445eeaa0b871103dcd47e6c5ac0d7367662c9fb2c6e81b31b`  
		Last Modified: Thu, 02 Mar 2017 02:11:55 GMT  
		Size: 42.2 MB (42194197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb103748c964952418edc96005dd91e54f8afed458263bd594a240cbe29facb`  
		Last Modified: Thu, 02 Mar 2017 02:11:39 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:fpm`

```console
$ docker pull nextcloud@sha256:e0e052cd919aa8c70fc5125c32563727ffb45c0d50a5a7a638d19de236362197
```

-	Platforms:
	-	linux; amd64

### `nextcloud:fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229861322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a015d40e3e8aee99c4daa0b4c78cf28b1ce33cbcefd1761a3f6c2d6d0c9292`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:34:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:34:12 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:34:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:34:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:37:35 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:37:36 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:37:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 17:37:37 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 17:37:37 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 16:27:26 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:29:09 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:29:10 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:29:35 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:30:07 GMT
ENV NEXTCLOUD_VERSION=11.0.1
# Wed, 01 Mar 2017 16:30:07 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:30:23 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:30:37 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:30:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:30:38 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e239b35149d1a3733de6e199fda854c574e95444559a25b812e669d07ee141e1`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 12.6 MB (12560638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d03b20d4a892cbe60a39ef33b8d88726826c566775eb3b0e1c029c219e7fcb5`  
		Last Modified: Wed, 01 Mar 2017 17:10:27 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f54f33dc89e32e817cfc86bf2d57efca0cdf102f90c42a041c43ae397d38ce`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 8.8 MB (8763324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c26b483192a1f6912534a4669ca783ca660c6e64b494fed9d403aa9e6c8e2`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41557ade8314d32508764200c82a36b62838d84461c47aa5bdd552dd302a86`  
		Last Modified: Wed, 01 Mar 2017 17:10:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caad4e718aa1be2daf194f28668bee87d96e5b3386ce039a7bc5e5383ae4b4a9`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57beea244036de5ec029fa2d21f2ad58f0563dd8542c83be850463a502fbf606`  
		Last Modified: Thu, 02 Mar 2017 02:07:49 GMT  
		Size: 34.3 MB (34319440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a834d911a84f4d0d3d82e093f255e9eb51f2520bbb981039f398e29d8c7da7`  
		Last Modified: Thu, 02 Mar 2017 02:07:36 GMT  
		Size: 1.7 MB (1710094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8265081b3e6f0123c15cbc546374a849ae543e709454cfe0a3376cfb1554df`  
		Last Modified: Thu, 02 Mar 2017 02:07:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f7e4504f0d87405b4d7d590c1940ef371a84c198df3e9859ba4a0857e2c5cd`  
		Last Modified: Thu, 02 Mar 2017 02:07:36 GMT  
		Size: 1.3 MB (1331716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6269b5505bb4216445eeaa0b871103dcd47e6c5ac0d7367662c9fb2c6e81b31b`  
		Last Modified: Thu, 02 Mar 2017 02:11:55 GMT  
		Size: 42.2 MB (42194197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb103748c964952418edc96005dd91e54f8afed458263bd594a240cbe29facb`  
		Last Modified: Thu, 02 Mar 2017 02:11:39 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:9.0.56-apache`

```console
$ docker pull nextcloud@sha256:bd6977ac5c7e09bbdf5f7e0f92eb857413fe4481db164c73326275d0ec6623ee
```

-	Platforms:
	-	linux; amd64

### `nextcloud:9.0.56-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227619415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6120ae892340ca2d7e5d79421b91273eb704c8c7eb63d77cec33ca7bfaed47ac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 16:24:38 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:26:25 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:26:26 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:26:27 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:53 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:26:53 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:30:39 GMT
ENV NEXTCLOUD_VERSION=9.0.56
# Wed, 01 Mar 2017 16:30:39 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:30:53 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:31:08 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:31:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:31:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78eeb1928ca2a78310fd8af271f9b32b05629fd5f9e11f5e3d58150079e76b5`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 34.3 MB (34342669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767c6252e88997536916719e77fa8ee3eaf116789c85cb20c29558da6762175`  
		Last Modified: Thu, 02 Mar 2017 02:05:31 GMT  
		Size: 1.7 MB (1709902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61428f689f05e7c42471aab08fe9b0fdd7c030d5bcaaa450e1515982ff0ae755`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b38de46c3047963a4a1a775707b9bceb911c0b3823e51aa64e153390847e7a`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35995a07ff0661ca4ac53996db149bb25e6057ca41788412309df5bb0b304100`  
		Last Modified: Thu, 02 Mar 2017 02:05:28 GMT  
		Size: 1.3 MB (1331809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c201ab16e8ebdf14b924d62dbc45addf3ef6e09c0618bc1dddd5d50b518fae4a`  
		Last Modified: Thu, 02 Mar 2017 02:13:32 GMT  
		Size: 36.6 MB (36570402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1637765e35ced9662f46ada5bac666b317c56868065f28d8365280f47851334c`  
		Last Modified: Thu, 02 Mar 2017 02:13:17 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:9.0-apache`

```console
$ docker pull nextcloud@sha256:bd6977ac5c7e09bbdf5f7e0f92eb857413fe4481db164c73326275d0ec6623ee
```

-	Platforms:
	-	linux; amd64

### `nextcloud:9.0-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227619415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6120ae892340ca2d7e5d79421b91273eb704c8c7eb63d77cec33ca7bfaed47ac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 16:24:38 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:26:25 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:26:26 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:26:27 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:53 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:26:53 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:30:39 GMT
ENV NEXTCLOUD_VERSION=9.0.56
# Wed, 01 Mar 2017 16:30:39 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:30:53 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:31:08 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:31:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:31:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78eeb1928ca2a78310fd8af271f9b32b05629fd5f9e11f5e3d58150079e76b5`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 34.3 MB (34342669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767c6252e88997536916719e77fa8ee3eaf116789c85cb20c29558da6762175`  
		Last Modified: Thu, 02 Mar 2017 02:05:31 GMT  
		Size: 1.7 MB (1709902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61428f689f05e7c42471aab08fe9b0fdd7c030d5bcaaa450e1515982ff0ae755`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b38de46c3047963a4a1a775707b9bceb911c0b3823e51aa64e153390847e7a`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35995a07ff0661ca4ac53996db149bb25e6057ca41788412309df5bb0b304100`  
		Last Modified: Thu, 02 Mar 2017 02:05:28 GMT  
		Size: 1.3 MB (1331809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c201ab16e8ebdf14b924d62dbc45addf3ef6e09c0618bc1dddd5d50b518fae4a`  
		Last Modified: Thu, 02 Mar 2017 02:13:32 GMT  
		Size: 36.6 MB (36570402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1637765e35ced9662f46ada5bac666b317c56868065f28d8365280f47851334c`  
		Last Modified: Thu, 02 Mar 2017 02:13:17 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:9-apache`

```console
$ docker pull nextcloud@sha256:bd6977ac5c7e09bbdf5f7e0f92eb857413fe4481db164c73326275d0ec6623ee
```

-	Platforms:
	-	linux; amd64

### `nextcloud:9-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227619415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6120ae892340ca2d7e5d79421b91273eb704c8c7eb63d77cec33ca7bfaed47ac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 16:24:38 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:26:25 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:26:26 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:26:27 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:53 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:26:53 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:30:39 GMT
ENV NEXTCLOUD_VERSION=9.0.56
# Wed, 01 Mar 2017 16:30:39 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:30:53 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:31:08 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:31:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:31:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78eeb1928ca2a78310fd8af271f9b32b05629fd5f9e11f5e3d58150079e76b5`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 34.3 MB (34342669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767c6252e88997536916719e77fa8ee3eaf116789c85cb20c29558da6762175`  
		Last Modified: Thu, 02 Mar 2017 02:05:31 GMT  
		Size: 1.7 MB (1709902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61428f689f05e7c42471aab08fe9b0fdd7c030d5bcaaa450e1515982ff0ae755`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b38de46c3047963a4a1a775707b9bceb911c0b3823e51aa64e153390847e7a`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35995a07ff0661ca4ac53996db149bb25e6057ca41788412309df5bb0b304100`  
		Last Modified: Thu, 02 Mar 2017 02:05:28 GMT  
		Size: 1.3 MB (1331809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c201ab16e8ebdf14b924d62dbc45addf3ef6e09c0618bc1dddd5d50b518fae4a`  
		Last Modified: Thu, 02 Mar 2017 02:13:32 GMT  
		Size: 36.6 MB (36570402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1637765e35ced9662f46ada5bac666b317c56868065f28d8365280f47851334c`  
		Last Modified: Thu, 02 Mar 2017 02:13:17 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:9.0.56`

```console
$ docker pull nextcloud@sha256:bd6977ac5c7e09bbdf5f7e0f92eb857413fe4481db164c73326275d0ec6623ee
```

-	Platforms:
	-	linux; amd64

### `nextcloud:9.0.56` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227619415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6120ae892340ca2d7e5d79421b91273eb704c8c7eb63d77cec33ca7bfaed47ac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 16:24:38 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:26:25 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:26:26 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:26:27 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:53 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:26:53 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:30:39 GMT
ENV NEXTCLOUD_VERSION=9.0.56
# Wed, 01 Mar 2017 16:30:39 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:30:53 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:31:08 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:31:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:31:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78eeb1928ca2a78310fd8af271f9b32b05629fd5f9e11f5e3d58150079e76b5`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 34.3 MB (34342669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767c6252e88997536916719e77fa8ee3eaf116789c85cb20c29558da6762175`  
		Last Modified: Thu, 02 Mar 2017 02:05:31 GMT  
		Size: 1.7 MB (1709902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61428f689f05e7c42471aab08fe9b0fdd7c030d5bcaaa450e1515982ff0ae755`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b38de46c3047963a4a1a775707b9bceb911c0b3823e51aa64e153390847e7a`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35995a07ff0661ca4ac53996db149bb25e6057ca41788412309df5bb0b304100`  
		Last Modified: Thu, 02 Mar 2017 02:05:28 GMT  
		Size: 1.3 MB (1331809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c201ab16e8ebdf14b924d62dbc45addf3ef6e09c0618bc1dddd5d50b518fae4a`  
		Last Modified: Thu, 02 Mar 2017 02:13:32 GMT  
		Size: 36.6 MB (36570402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1637765e35ced9662f46ada5bac666b317c56868065f28d8365280f47851334c`  
		Last Modified: Thu, 02 Mar 2017 02:13:17 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:9.0`

```console
$ docker pull nextcloud@sha256:bd6977ac5c7e09bbdf5f7e0f92eb857413fe4481db164c73326275d0ec6623ee
```

-	Platforms:
	-	linux; amd64

### `nextcloud:9.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227619415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6120ae892340ca2d7e5d79421b91273eb704c8c7eb63d77cec33ca7bfaed47ac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 16:24:38 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:26:25 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:26:26 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:26:27 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:53 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:26:53 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:30:39 GMT
ENV NEXTCLOUD_VERSION=9.0.56
# Wed, 01 Mar 2017 16:30:39 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:30:53 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:31:08 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:31:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:31:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78eeb1928ca2a78310fd8af271f9b32b05629fd5f9e11f5e3d58150079e76b5`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 34.3 MB (34342669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767c6252e88997536916719e77fa8ee3eaf116789c85cb20c29558da6762175`  
		Last Modified: Thu, 02 Mar 2017 02:05:31 GMT  
		Size: 1.7 MB (1709902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61428f689f05e7c42471aab08fe9b0fdd7c030d5bcaaa450e1515982ff0ae755`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b38de46c3047963a4a1a775707b9bceb911c0b3823e51aa64e153390847e7a`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35995a07ff0661ca4ac53996db149bb25e6057ca41788412309df5bb0b304100`  
		Last Modified: Thu, 02 Mar 2017 02:05:28 GMT  
		Size: 1.3 MB (1331809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c201ab16e8ebdf14b924d62dbc45addf3ef6e09c0618bc1dddd5d50b518fae4a`  
		Last Modified: Thu, 02 Mar 2017 02:13:32 GMT  
		Size: 36.6 MB (36570402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1637765e35ced9662f46ada5bac666b317c56868065f28d8365280f47851334c`  
		Last Modified: Thu, 02 Mar 2017 02:13:17 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:9`

```console
$ docker pull nextcloud@sha256:bd6977ac5c7e09bbdf5f7e0f92eb857413fe4481db164c73326275d0ec6623ee
```

-	Platforms:
	-	linux; amd64

### `nextcloud:9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227619415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6120ae892340ca2d7e5d79421b91273eb704c8c7eb63d77cec33ca7bfaed47ac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 16:24:38 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:26:25 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:26:26 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:26:27 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:26:53 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:26:53 GMT
RUN a2enmod rewrite
# Wed, 01 Mar 2017 16:30:39 GMT
ENV NEXTCLOUD_VERSION=9.0.56
# Wed, 01 Mar 2017 16:30:39 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:30:53 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:31:08 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:31:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:31:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78eeb1928ca2a78310fd8af271f9b32b05629fd5f9e11f5e3d58150079e76b5`  
		Last Modified: Thu, 02 Mar 2017 02:05:43 GMT  
		Size: 34.3 MB (34342669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767c6252e88997536916719e77fa8ee3eaf116789c85cb20c29558da6762175`  
		Last Modified: Thu, 02 Mar 2017 02:05:31 GMT  
		Size: 1.7 MB (1709902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61428f689f05e7c42471aab08fe9b0fdd7c030d5bcaaa450e1515982ff0ae755`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b38de46c3047963a4a1a775707b9bceb911c0b3823e51aa64e153390847e7a`  
		Last Modified: Thu, 02 Mar 2017 02:05:27 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35995a07ff0661ca4ac53996db149bb25e6057ca41788412309df5bb0b304100`  
		Last Modified: Thu, 02 Mar 2017 02:05:28 GMT  
		Size: 1.3 MB (1331809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c201ab16e8ebdf14b924d62dbc45addf3ef6e09c0618bc1dddd5d50b518fae4a`  
		Last Modified: Thu, 02 Mar 2017 02:13:32 GMT  
		Size: 36.6 MB (36570402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1637765e35ced9662f46ada5bac666b317c56868065f28d8365280f47851334c`  
		Last Modified: Thu, 02 Mar 2017 02:13:17 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:9.0.56-fpm`

```console
$ docker pull nextcloud@sha256:34a0db9ee9e909e009f14de89617ccd27127981383097ee91cebd28eeb6872be
```

-	Platforms:
	-	linux; amd64

### `nextcloud:9.0.56-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.2 MB (224237521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f31a4e766d96c7a93d3c2b33cf85f2a0ccfcef407acad80c3ce8f3accb544f1f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:34:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:34:12 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:34:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:34:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:37:35 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:37:36 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:37:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 17:37:37 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 17:37:37 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 16:27:26 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:29:09 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:29:10 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:29:35 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:31:25 GMT
ENV NEXTCLOUD_VERSION=9.0.56
# Wed, 01 Mar 2017 16:31:26 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:31:40 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:31:45 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:31:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:31:46 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e239b35149d1a3733de6e199fda854c574e95444559a25b812e669d07ee141e1`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 12.6 MB (12560638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d03b20d4a892cbe60a39ef33b8d88726826c566775eb3b0e1c029c219e7fcb5`  
		Last Modified: Wed, 01 Mar 2017 17:10:27 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f54f33dc89e32e817cfc86bf2d57efca0cdf102f90c42a041c43ae397d38ce`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 8.8 MB (8763324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c26b483192a1f6912534a4669ca783ca660c6e64b494fed9d403aa9e6c8e2`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41557ade8314d32508764200c82a36b62838d84461c47aa5bdd552dd302a86`  
		Last Modified: Wed, 01 Mar 2017 17:10:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caad4e718aa1be2daf194f28668bee87d96e5b3386ce039a7bc5e5383ae4b4a9`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57beea244036de5ec029fa2d21f2ad58f0563dd8542c83be850463a502fbf606`  
		Last Modified: Thu, 02 Mar 2017 02:07:49 GMT  
		Size: 34.3 MB (34319440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a834d911a84f4d0d3d82e093f255e9eb51f2520bbb981039f398e29d8c7da7`  
		Last Modified: Thu, 02 Mar 2017 02:07:36 GMT  
		Size: 1.7 MB (1710094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8265081b3e6f0123c15cbc546374a849ae543e709454cfe0a3376cfb1554df`  
		Last Modified: Thu, 02 Mar 2017 02:07:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f7e4504f0d87405b4d7d590c1940ef371a84c198df3e9859ba4a0857e2c5cd`  
		Last Modified: Thu, 02 Mar 2017 02:07:36 GMT  
		Size: 1.3 MB (1331716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2383256695eefefee4f531252949fb1c630616baac376a7a90f99efce944e8`  
		Last Modified: Thu, 02 Mar 2017 02:15:43 GMT  
		Size: 36.6 MB (36570396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac1ae7e888ab3f41b35ff2c0d3ab214aeef42a48a0a5bfe16e7a06c19255fd4`  
		Last Modified: Thu, 02 Mar 2017 02:15:28 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:9.0-fpm`

```console
$ docker pull nextcloud@sha256:34a0db9ee9e909e009f14de89617ccd27127981383097ee91cebd28eeb6872be
```

-	Platforms:
	-	linux; amd64

### `nextcloud:9.0-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.2 MB (224237521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f31a4e766d96c7a93d3c2b33cf85f2a0ccfcef407acad80c3ce8f3accb544f1f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:34:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:34:12 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:34:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:34:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:37:35 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:37:36 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:37:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 17:37:37 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 17:37:37 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 16:27:26 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:29:09 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:29:10 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:29:35 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:31:25 GMT
ENV NEXTCLOUD_VERSION=9.0.56
# Wed, 01 Mar 2017 16:31:26 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:31:40 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:31:45 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:31:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:31:46 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e239b35149d1a3733de6e199fda854c574e95444559a25b812e669d07ee141e1`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 12.6 MB (12560638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d03b20d4a892cbe60a39ef33b8d88726826c566775eb3b0e1c029c219e7fcb5`  
		Last Modified: Wed, 01 Mar 2017 17:10:27 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f54f33dc89e32e817cfc86bf2d57efca0cdf102f90c42a041c43ae397d38ce`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 8.8 MB (8763324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c26b483192a1f6912534a4669ca783ca660c6e64b494fed9d403aa9e6c8e2`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41557ade8314d32508764200c82a36b62838d84461c47aa5bdd552dd302a86`  
		Last Modified: Wed, 01 Mar 2017 17:10:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caad4e718aa1be2daf194f28668bee87d96e5b3386ce039a7bc5e5383ae4b4a9`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57beea244036de5ec029fa2d21f2ad58f0563dd8542c83be850463a502fbf606`  
		Last Modified: Thu, 02 Mar 2017 02:07:49 GMT  
		Size: 34.3 MB (34319440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a834d911a84f4d0d3d82e093f255e9eb51f2520bbb981039f398e29d8c7da7`  
		Last Modified: Thu, 02 Mar 2017 02:07:36 GMT  
		Size: 1.7 MB (1710094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8265081b3e6f0123c15cbc546374a849ae543e709454cfe0a3376cfb1554df`  
		Last Modified: Thu, 02 Mar 2017 02:07:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f7e4504f0d87405b4d7d590c1940ef371a84c198df3e9859ba4a0857e2c5cd`  
		Last Modified: Thu, 02 Mar 2017 02:07:36 GMT  
		Size: 1.3 MB (1331716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2383256695eefefee4f531252949fb1c630616baac376a7a90f99efce944e8`  
		Last Modified: Thu, 02 Mar 2017 02:15:43 GMT  
		Size: 36.6 MB (36570396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac1ae7e888ab3f41b35ff2c0d3ab214aeef42a48a0a5bfe16e7a06c19255fd4`  
		Last Modified: Thu, 02 Mar 2017 02:15:28 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:9-fpm`

```console
$ docker pull nextcloud@sha256:34a0db9ee9e909e009f14de89617ccd27127981383097ee91cebd28eeb6872be
```

-	Platforms:
	-	linux; amd64

### `nextcloud:9-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.2 MB (224237521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f31a4e766d96c7a93d3c2b33cf85f2a0ccfcef407acad80c3ce8f3accb544f1f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:34:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:34:12 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:34:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:34:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:37:35 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:37:36 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:37:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 17:37:37 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 17:37:37 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 16:27:26 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:29:09 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 01 Mar 2017 16:29:10 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 16:29:35 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Wed, 01 Mar 2017 16:31:25 GMT
ENV NEXTCLOUD_VERSION=9.0.56
# Wed, 01 Mar 2017 16:31:26 GMT
VOLUME [/var/www/html]
# Wed, 01 Mar 2017 16:31:40 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Wed, 01 Mar 2017 16:31:45 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Wed, 01 Mar 2017 16:31:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 16:31:46 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e239b35149d1a3733de6e199fda854c574e95444559a25b812e669d07ee141e1`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 12.6 MB (12560638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d03b20d4a892cbe60a39ef33b8d88726826c566775eb3b0e1c029c219e7fcb5`  
		Last Modified: Wed, 01 Mar 2017 17:10:27 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f54f33dc89e32e817cfc86bf2d57efca0cdf102f90c42a041c43ae397d38ce`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 8.8 MB (8763324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c26b483192a1f6912534a4669ca783ca660c6e64b494fed9d403aa9e6c8e2`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41557ade8314d32508764200c82a36b62838d84461c47aa5bdd552dd302a86`  
		Last Modified: Wed, 01 Mar 2017 17:10:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caad4e718aa1be2daf194f28668bee87d96e5b3386ce039a7bc5e5383ae4b4a9`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57beea244036de5ec029fa2d21f2ad58f0563dd8542c83be850463a502fbf606`  
		Last Modified: Thu, 02 Mar 2017 02:07:49 GMT  
		Size: 34.3 MB (34319440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a834d911a84f4d0d3d82e093f255e9eb51f2520bbb981039f398e29d8c7da7`  
		Last Modified: Thu, 02 Mar 2017 02:07:36 GMT  
		Size: 1.7 MB (1710094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8265081b3e6f0123c15cbc546374a849ae543e709454cfe0a3376cfb1554df`  
		Last Modified: Thu, 02 Mar 2017 02:07:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f7e4504f0d87405b4d7d590c1940ef371a84c198df3e9859ba4a0857e2c5cd`  
		Last Modified: Thu, 02 Mar 2017 02:07:36 GMT  
		Size: 1.3 MB (1331716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2383256695eefefee4f531252949fb1c630616baac376a7a90f99efce944e8`  
		Last Modified: Thu, 02 Mar 2017 02:15:43 GMT  
		Size: 36.6 MB (36570396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac1ae7e888ab3f41b35ff2c0d3ab214aeef42a48a0a5bfe16e7a06c19255fd4`  
		Last Modified: Thu, 02 Mar 2017 02:15:28 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
