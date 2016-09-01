<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `backdrop`

-	[`backdrop:1.3.4`](#backdrop134)
-	[`backdrop:1.3`](#backdrop13)
-	[`backdrop:1`](#backdrop1)
-	[`backdrop:1.3.4-apache`](#backdrop134-apache)
-	[`backdrop:1.3-apache`](#backdrop13-apache)
-	[`backdrop:1-apache`](#backdrop1-apache)
-	[`backdrop:apache`](#backdropapache)
-	[`backdrop:latest`](#backdroplatest)
-	[`backdrop:1.3.4-fpm`](#backdrop134-fpm)
-	[`backdrop:1.3-fpm`](#backdrop13-fpm)
-	[`backdrop:1-fpm`](#backdrop1-fpm)
-	[`backdrop:fpm`](#backdropfpm)

## `backdrop:1.3.4`

```console
$ docker pull backdrop@sha256:9a3268465bb02f07cd1cdbad280f10466e62b43d8fc33f17e137b20b5c6eb7cf
```

-	Platforms:
	-	linux; amd64

### `backdrop:1.3.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176646654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ed66a51dd1cf655885c1a7c2d69cc5dc72e8b031737120ffcc4a07257bedcb9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 17 Aug 2016 19:19:26 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 17 Aug 2016 19:19:28 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 17 Aug 2016 19:19:30 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 17 Aug 2016 19:19:32 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 17 Aug 2016 19:19:33 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 17 Aug 2016 19:19:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 17 Aug 2016 19:25:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 22 Aug 2016 19:40:49 GMT
ENV PHP_VERSION=5.6.25
# Mon, 22 Aug 2016 19:40:50 GMT
ENV PHP_FILENAME=php-5.6.25.tar.xz
# Mon, 22 Aug 2016 19:40:50 GMT
ENV PHP_SHA256=7535cd6e20040ccec4594cc386c6f15c3f2c88f24163294a31068cf7dfe7f644
# Wed, 24 Aug 2016 18:06:58 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 24 Aug 2016 18:06:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 24 Aug 2016 18:12:05 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 24 Aug 2016 18:12:07 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 24 Aug 2016 18:12:07 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 24 Aug 2016 18:12:08 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 18:12:08 GMT
EXPOSE 80/tcp
# Wed, 24 Aug 2016 18:12:09 GMT
CMD ["apache2-foreground"]
# Wed, 24 Aug 2016 19:00:44 GMT
RUN a2enmod rewrite
# Wed, 24 Aug 2016 19:04:05 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Wed, 24 Aug 2016 19:04:05 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 19:04:06 GMT
ENV BACKDROP_VERSION=1.3.4
# Wed, 24 Aug 2016 19:04:06 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Wed, 24 Aug 2016 19:04:11 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Wed, 24 Aug 2016 19:04:12 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Wed, 24 Aug 2016 19:04:12 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Wed, 24 Aug 2016 19:04:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68011060d728c45931c97d00825982e6f7f9950293268a3e4d144bbf422090b`  
		Last Modified: Wed, 17 Aug 2016 19:33:09 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee509c18e9948af83808e7196540071f8beced6821c04083677c0b648a1ffffe`  
		Last Modified: Wed, 17 Aug 2016 19:33:08 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530fa759e3b480fc41b4d85530c8a73170e5caf4a08c0954cad6f5c89bbe9bcf`  
		Last Modified: Wed, 17 Aug 2016 19:33:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f475346111bcd2dddb362570f2234995b10e2b46016562aa7cc523f057f23fa`  
		Last Modified: Wed, 17 Aug 2016 19:33:06 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57285f6a5cb95d2738aab1e7d163c1e60fb4bcd5d1ee74c708221ff4d1b6208`  
		Last Modified: Wed, 24 Aug 2016 18:44:27 GMT  
		Size: 12.4 MB (12409735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493ac78d2d89e9691a545137b6bc5331ff41855575c1bd8353c30772e848fb05`  
		Last Modified: Wed, 24 Aug 2016 18:44:24 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174639aed308dcbb365631efd4b079bd0c5148bff132f799af38ed40e7a8adf1`  
		Last Modified: Wed, 24 Aug 2016 18:44:30 GMT  
		Size: 16.4 MB (16403199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28ab8171b7f0fcf74076f498e9c8bdef3d0b322e4f2717b4a7edeb50db61c64`  
		Last Modified: Wed, 24 Aug 2016 18:44:24 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83125c5bce8820a1662c815b1e558ca80e7b3e1b82873f12bca37181c42d5a3`  
		Last Modified: Wed, 24 Aug 2016 18:44:27 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96976f3ee05959d6ef41990227f1b9d77d7d4d86fb5067d27e23a23cd80034d`  
		Last Modified: Wed, 24 Aug 2016 19:04:24 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8080543ba86af32bbca266551026fc1f6c76e2e85d3ba7bf9855cea63549ba3f`  
		Last Modified: Wed, 24 Aug 2016 19:04:28 GMT  
		Size: 8.2 MB (8249696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022305a17298abab66032a07f098d39e51875da1faf453221283de66810aad2e`  
		Last Modified: Wed, 24 Aug 2016 19:04:28 GMT  
		Size: 7.8 MB (7783859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046c3090aff6bfbc469d9ee5dcf033342b4cf54e72e5a33c75e92e1a670e0f30`  
		Last Modified: Wed, 24 Aug 2016 19:04:24 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1.3`

```console
$ docker pull backdrop@sha256:393d374c095e23bd504f031fb0dbeba2a7d99edb196e0d8ffaa3a9ede24ad23e
```

-	Platforms:
	-	linux; amd64

### `backdrop:1.3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176646638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1736088c2fa696e5696d471e12a8d8c31123183cb15329d5a4ebb32f5dceb0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 17 Aug 2016 19:19:26 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 17 Aug 2016 19:19:28 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 17 Aug 2016 19:19:30 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 17 Aug 2016 19:19:32 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 17 Aug 2016 19:19:33 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 17 Aug 2016 19:19:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 17 Aug 2016 19:25:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 22 Aug 2016 19:40:49 GMT
ENV PHP_VERSION=5.6.25
# Mon, 22 Aug 2016 19:40:50 GMT
ENV PHP_FILENAME=php-5.6.25.tar.xz
# Mon, 22 Aug 2016 19:40:50 GMT
ENV PHP_SHA256=7535cd6e20040ccec4594cc386c6f15c3f2c88f24163294a31068cf7dfe7f644
# Mon, 22 Aug 2016 19:40:53 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 22 Aug 2016 19:40:54 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Mon, 22 Aug 2016 19:46:04 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 22 Aug 2016 19:46:05 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Mon, 22 Aug 2016 19:46:05 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Mon, 22 Aug 2016 19:46:06 GMT
WORKDIR /var/www/html
# Mon, 22 Aug 2016 19:46:06 GMT
EXPOSE 80/tcp
# Mon, 22 Aug 2016 19:46:07 GMT
CMD ["apache2-foreground"]
# Tue, 23 Aug 2016 18:16:54 GMT
RUN a2enmod rewrite
# Tue, 23 Aug 2016 18:20:14 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 23 Aug 2016 18:20:15 GMT
WORKDIR /var/www/html
# Tue, 23 Aug 2016 18:20:15 GMT
ENV BACKDROP_VERSION=1.3.4
# Tue, 23 Aug 2016 18:20:16 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Tue, 23 Aug 2016 18:20:21 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 23 Aug 2016 18:20:22 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Tue, 23 Aug 2016 18:20:22 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 18:20:23 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68011060d728c45931c97d00825982e6f7f9950293268a3e4d144bbf422090b`  
		Last Modified: Wed, 17 Aug 2016 19:33:09 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee509c18e9948af83808e7196540071f8beced6821c04083677c0b648a1ffffe`  
		Last Modified: Wed, 17 Aug 2016 19:33:08 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530fa759e3b480fc41b4d85530c8a73170e5caf4a08c0954cad6f5c89bbe9bcf`  
		Last Modified: Wed, 17 Aug 2016 19:33:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f475346111bcd2dddb362570f2234995b10e2b46016562aa7cc523f057f23fa`  
		Last Modified: Wed, 17 Aug 2016 19:33:06 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3568144514cac8fcb711eddefb5a247c5d30e4fba242d3fb74ed1686458f0cf`  
		Last Modified: Mon, 22 Aug 2016 20:19:35 GMT  
		Size: 12.4 MB (12409725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45dd5607059a7f040e0e609faf22ccf99ee980efa9c2b23f37e27b80370dc205`  
		Last Modified: Mon, 22 Aug 2016 20:19:32 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3326c72a57670ef8c522ec74604b6edcbeff6306fc02a48d4f9a81205b9035b5`  
		Last Modified: Mon, 22 Aug 2016 20:19:39 GMT  
		Size: 16.4 MB (16403213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9593ff938291084b3a59586413004a71bd9baeeeef5abbf4aa18cc31c987867`  
		Last Modified: Mon, 22 Aug 2016 20:19:33 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195f918f71fcfdb540a2846344c3cced17dc7d26c72c24290427dccc69398583`  
		Last Modified: Mon, 22 Aug 2016 20:19:35 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef5251adb89933e0cfc56d4625b874d0446dfddb4009a448f2b0f8dd0a340f4`  
		Last Modified: Tue, 23 Aug 2016 18:20:37 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18157bdfae61e84527d89c7ff7cb071af9800038f22d2b8848becefce537f33`  
		Last Modified: Tue, 23 Aug 2016 18:20:43 GMT  
		Size: 8.2 MB (8249673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4fe807102b791b2c2803a4642833ccd4cb4bf26f1115bca8910d35f15817be`  
		Last Modified: Tue, 23 Aug 2016 18:20:43 GMT  
		Size: 7.8 MB (7783861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2acd1f54ca79fce897625d851ca44fb47df236699b1002e73030d6101a40b19f`  
		Last Modified: Tue, 23 Aug 2016 18:20:37 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1`

```console
$ docker pull backdrop@sha256:9a3268465bb02f07cd1cdbad280f10466e62b43d8fc33f17e137b20b5c6eb7cf
```

-	Platforms:
	-	linux; amd64

### `backdrop:1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176646654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ed66a51dd1cf655885c1a7c2d69cc5dc72e8b031737120ffcc4a07257bedcb9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 17 Aug 2016 19:19:26 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 17 Aug 2016 19:19:28 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 17 Aug 2016 19:19:30 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 17 Aug 2016 19:19:32 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 17 Aug 2016 19:19:33 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 17 Aug 2016 19:19:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 17 Aug 2016 19:25:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 22 Aug 2016 19:40:49 GMT
ENV PHP_VERSION=5.6.25
# Mon, 22 Aug 2016 19:40:50 GMT
ENV PHP_FILENAME=php-5.6.25.tar.xz
# Mon, 22 Aug 2016 19:40:50 GMT
ENV PHP_SHA256=7535cd6e20040ccec4594cc386c6f15c3f2c88f24163294a31068cf7dfe7f644
# Wed, 24 Aug 2016 18:06:58 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 24 Aug 2016 18:06:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 24 Aug 2016 18:12:05 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 24 Aug 2016 18:12:07 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 24 Aug 2016 18:12:07 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 24 Aug 2016 18:12:08 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 18:12:08 GMT
EXPOSE 80/tcp
# Wed, 24 Aug 2016 18:12:09 GMT
CMD ["apache2-foreground"]
# Wed, 24 Aug 2016 19:00:44 GMT
RUN a2enmod rewrite
# Wed, 24 Aug 2016 19:04:05 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Wed, 24 Aug 2016 19:04:05 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 19:04:06 GMT
ENV BACKDROP_VERSION=1.3.4
# Wed, 24 Aug 2016 19:04:06 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Wed, 24 Aug 2016 19:04:11 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Wed, 24 Aug 2016 19:04:12 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Wed, 24 Aug 2016 19:04:12 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Wed, 24 Aug 2016 19:04:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68011060d728c45931c97d00825982e6f7f9950293268a3e4d144bbf422090b`  
		Last Modified: Wed, 17 Aug 2016 19:33:09 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee509c18e9948af83808e7196540071f8beced6821c04083677c0b648a1ffffe`  
		Last Modified: Wed, 17 Aug 2016 19:33:08 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530fa759e3b480fc41b4d85530c8a73170e5caf4a08c0954cad6f5c89bbe9bcf`  
		Last Modified: Wed, 17 Aug 2016 19:33:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f475346111bcd2dddb362570f2234995b10e2b46016562aa7cc523f057f23fa`  
		Last Modified: Wed, 17 Aug 2016 19:33:06 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57285f6a5cb95d2738aab1e7d163c1e60fb4bcd5d1ee74c708221ff4d1b6208`  
		Last Modified: Wed, 24 Aug 2016 18:44:27 GMT  
		Size: 12.4 MB (12409735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493ac78d2d89e9691a545137b6bc5331ff41855575c1bd8353c30772e848fb05`  
		Last Modified: Wed, 24 Aug 2016 18:44:24 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174639aed308dcbb365631efd4b079bd0c5148bff132f799af38ed40e7a8adf1`  
		Last Modified: Wed, 24 Aug 2016 18:44:30 GMT  
		Size: 16.4 MB (16403199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28ab8171b7f0fcf74076f498e9c8bdef3d0b322e4f2717b4a7edeb50db61c64`  
		Last Modified: Wed, 24 Aug 2016 18:44:24 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83125c5bce8820a1662c815b1e558ca80e7b3e1b82873f12bca37181c42d5a3`  
		Last Modified: Wed, 24 Aug 2016 18:44:27 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96976f3ee05959d6ef41990227f1b9d77d7d4d86fb5067d27e23a23cd80034d`  
		Last Modified: Wed, 24 Aug 2016 19:04:24 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8080543ba86af32bbca266551026fc1f6c76e2e85d3ba7bf9855cea63549ba3f`  
		Last Modified: Wed, 24 Aug 2016 19:04:28 GMT  
		Size: 8.2 MB (8249696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022305a17298abab66032a07f098d39e51875da1faf453221283de66810aad2e`  
		Last Modified: Wed, 24 Aug 2016 19:04:28 GMT  
		Size: 7.8 MB (7783859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046c3090aff6bfbc469d9ee5dcf033342b4cf54e72e5a33c75e92e1a670e0f30`  
		Last Modified: Wed, 24 Aug 2016 19:04:24 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1.3.4-apache`

```console
$ docker pull backdrop@sha256:9a3268465bb02f07cd1cdbad280f10466e62b43d8fc33f17e137b20b5c6eb7cf
```

-	Platforms:
	-	linux; amd64

### `backdrop:1.3.4-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176646654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ed66a51dd1cf655885c1a7c2d69cc5dc72e8b031737120ffcc4a07257bedcb9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 17 Aug 2016 19:19:26 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 17 Aug 2016 19:19:28 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 17 Aug 2016 19:19:30 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 17 Aug 2016 19:19:32 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 17 Aug 2016 19:19:33 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 17 Aug 2016 19:19:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 17 Aug 2016 19:25:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 22 Aug 2016 19:40:49 GMT
ENV PHP_VERSION=5.6.25
# Mon, 22 Aug 2016 19:40:50 GMT
ENV PHP_FILENAME=php-5.6.25.tar.xz
# Mon, 22 Aug 2016 19:40:50 GMT
ENV PHP_SHA256=7535cd6e20040ccec4594cc386c6f15c3f2c88f24163294a31068cf7dfe7f644
# Wed, 24 Aug 2016 18:06:58 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 24 Aug 2016 18:06:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 24 Aug 2016 18:12:05 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 24 Aug 2016 18:12:07 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 24 Aug 2016 18:12:07 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 24 Aug 2016 18:12:08 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 18:12:08 GMT
EXPOSE 80/tcp
# Wed, 24 Aug 2016 18:12:09 GMT
CMD ["apache2-foreground"]
# Wed, 24 Aug 2016 19:00:44 GMT
RUN a2enmod rewrite
# Wed, 24 Aug 2016 19:04:05 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Wed, 24 Aug 2016 19:04:05 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 19:04:06 GMT
ENV BACKDROP_VERSION=1.3.4
# Wed, 24 Aug 2016 19:04:06 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Wed, 24 Aug 2016 19:04:11 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Wed, 24 Aug 2016 19:04:12 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Wed, 24 Aug 2016 19:04:12 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Wed, 24 Aug 2016 19:04:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68011060d728c45931c97d00825982e6f7f9950293268a3e4d144bbf422090b`  
		Last Modified: Wed, 17 Aug 2016 19:33:09 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee509c18e9948af83808e7196540071f8beced6821c04083677c0b648a1ffffe`  
		Last Modified: Wed, 17 Aug 2016 19:33:08 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530fa759e3b480fc41b4d85530c8a73170e5caf4a08c0954cad6f5c89bbe9bcf`  
		Last Modified: Wed, 17 Aug 2016 19:33:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f475346111bcd2dddb362570f2234995b10e2b46016562aa7cc523f057f23fa`  
		Last Modified: Wed, 17 Aug 2016 19:33:06 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57285f6a5cb95d2738aab1e7d163c1e60fb4bcd5d1ee74c708221ff4d1b6208`  
		Last Modified: Wed, 24 Aug 2016 18:44:27 GMT  
		Size: 12.4 MB (12409735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493ac78d2d89e9691a545137b6bc5331ff41855575c1bd8353c30772e848fb05`  
		Last Modified: Wed, 24 Aug 2016 18:44:24 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174639aed308dcbb365631efd4b079bd0c5148bff132f799af38ed40e7a8adf1`  
		Last Modified: Wed, 24 Aug 2016 18:44:30 GMT  
		Size: 16.4 MB (16403199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28ab8171b7f0fcf74076f498e9c8bdef3d0b322e4f2717b4a7edeb50db61c64`  
		Last Modified: Wed, 24 Aug 2016 18:44:24 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83125c5bce8820a1662c815b1e558ca80e7b3e1b82873f12bca37181c42d5a3`  
		Last Modified: Wed, 24 Aug 2016 18:44:27 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96976f3ee05959d6ef41990227f1b9d77d7d4d86fb5067d27e23a23cd80034d`  
		Last Modified: Wed, 24 Aug 2016 19:04:24 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8080543ba86af32bbca266551026fc1f6c76e2e85d3ba7bf9855cea63549ba3f`  
		Last Modified: Wed, 24 Aug 2016 19:04:28 GMT  
		Size: 8.2 MB (8249696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022305a17298abab66032a07f098d39e51875da1faf453221283de66810aad2e`  
		Last Modified: Wed, 24 Aug 2016 19:04:28 GMT  
		Size: 7.8 MB (7783859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046c3090aff6bfbc469d9ee5dcf033342b4cf54e72e5a33c75e92e1a670e0f30`  
		Last Modified: Wed, 24 Aug 2016 19:04:24 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1.3-apache`

```console
$ docker pull backdrop@sha256:9a3268465bb02f07cd1cdbad280f10466e62b43d8fc33f17e137b20b5c6eb7cf
```

-	Platforms:
	-	linux; amd64

### `backdrop:1.3-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176646654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ed66a51dd1cf655885c1a7c2d69cc5dc72e8b031737120ffcc4a07257bedcb9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 17 Aug 2016 19:19:26 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 17 Aug 2016 19:19:28 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 17 Aug 2016 19:19:30 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 17 Aug 2016 19:19:32 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 17 Aug 2016 19:19:33 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 17 Aug 2016 19:19:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 17 Aug 2016 19:25:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 22 Aug 2016 19:40:49 GMT
ENV PHP_VERSION=5.6.25
# Mon, 22 Aug 2016 19:40:50 GMT
ENV PHP_FILENAME=php-5.6.25.tar.xz
# Mon, 22 Aug 2016 19:40:50 GMT
ENV PHP_SHA256=7535cd6e20040ccec4594cc386c6f15c3f2c88f24163294a31068cf7dfe7f644
# Wed, 24 Aug 2016 18:06:58 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 24 Aug 2016 18:06:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 24 Aug 2016 18:12:05 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 24 Aug 2016 18:12:07 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 24 Aug 2016 18:12:07 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 24 Aug 2016 18:12:08 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 18:12:08 GMT
EXPOSE 80/tcp
# Wed, 24 Aug 2016 18:12:09 GMT
CMD ["apache2-foreground"]
# Wed, 24 Aug 2016 19:00:44 GMT
RUN a2enmod rewrite
# Wed, 24 Aug 2016 19:04:05 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Wed, 24 Aug 2016 19:04:05 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 19:04:06 GMT
ENV BACKDROP_VERSION=1.3.4
# Wed, 24 Aug 2016 19:04:06 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Wed, 24 Aug 2016 19:04:11 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Wed, 24 Aug 2016 19:04:12 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Wed, 24 Aug 2016 19:04:12 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Wed, 24 Aug 2016 19:04:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68011060d728c45931c97d00825982e6f7f9950293268a3e4d144bbf422090b`  
		Last Modified: Wed, 17 Aug 2016 19:33:09 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee509c18e9948af83808e7196540071f8beced6821c04083677c0b648a1ffffe`  
		Last Modified: Wed, 17 Aug 2016 19:33:08 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530fa759e3b480fc41b4d85530c8a73170e5caf4a08c0954cad6f5c89bbe9bcf`  
		Last Modified: Wed, 17 Aug 2016 19:33:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f475346111bcd2dddb362570f2234995b10e2b46016562aa7cc523f057f23fa`  
		Last Modified: Wed, 17 Aug 2016 19:33:06 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57285f6a5cb95d2738aab1e7d163c1e60fb4bcd5d1ee74c708221ff4d1b6208`  
		Last Modified: Wed, 24 Aug 2016 18:44:27 GMT  
		Size: 12.4 MB (12409735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493ac78d2d89e9691a545137b6bc5331ff41855575c1bd8353c30772e848fb05`  
		Last Modified: Wed, 24 Aug 2016 18:44:24 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174639aed308dcbb365631efd4b079bd0c5148bff132f799af38ed40e7a8adf1`  
		Last Modified: Wed, 24 Aug 2016 18:44:30 GMT  
		Size: 16.4 MB (16403199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28ab8171b7f0fcf74076f498e9c8bdef3d0b322e4f2717b4a7edeb50db61c64`  
		Last Modified: Wed, 24 Aug 2016 18:44:24 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83125c5bce8820a1662c815b1e558ca80e7b3e1b82873f12bca37181c42d5a3`  
		Last Modified: Wed, 24 Aug 2016 18:44:27 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96976f3ee05959d6ef41990227f1b9d77d7d4d86fb5067d27e23a23cd80034d`  
		Last Modified: Wed, 24 Aug 2016 19:04:24 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8080543ba86af32bbca266551026fc1f6c76e2e85d3ba7bf9855cea63549ba3f`  
		Last Modified: Wed, 24 Aug 2016 19:04:28 GMT  
		Size: 8.2 MB (8249696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022305a17298abab66032a07f098d39e51875da1faf453221283de66810aad2e`  
		Last Modified: Wed, 24 Aug 2016 19:04:28 GMT  
		Size: 7.8 MB (7783859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046c3090aff6bfbc469d9ee5dcf033342b4cf54e72e5a33c75e92e1a670e0f30`  
		Last Modified: Wed, 24 Aug 2016 19:04:24 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1-apache`

```console
$ docker pull backdrop@sha256:9a3268465bb02f07cd1cdbad280f10466e62b43d8fc33f17e137b20b5c6eb7cf
```

-	Platforms:
	-	linux; amd64

### `backdrop:1-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176646654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ed66a51dd1cf655885c1a7c2d69cc5dc72e8b031737120ffcc4a07257bedcb9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 17 Aug 2016 19:19:26 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 17 Aug 2016 19:19:28 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 17 Aug 2016 19:19:30 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 17 Aug 2016 19:19:32 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 17 Aug 2016 19:19:33 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 17 Aug 2016 19:19:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 17 Aug 2016 19:25:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 22 Aug 2016 19:40:49 GMT
ENV PHP_VERSION=5.6.25
# Mon, 22 Aug 2016 19:40:50 GMT
ENV PHP_FILENAME=php-5.6.25.tar.xz
# Mon, 22 Aug 2016 19:40:50 GMT
ENV PHP_SHA256=7535cd6e20040ccec4594cc386c6f15c3f2c88f24163294a31068cf7dfe7f644
# Wed, 24 Aug 2016 18:06:58 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 24 Aug 2016 18:06:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 24 Aug 2016 18:12:05 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 24 Aug 2016 18:12:07 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 24 Aug 2016 18:12:07 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 24 Aug 2016 18:12:08 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 18:12:08 GMT
EXPOSE 80/tcp
# Wed, 24 Aug 2016 18:12:09 GMT
CMD ["apache2-foreground"]
# Wed, 24 Aug 2016 19:00:44 GMT
RUN a2enmod rewrite
# Wed, 24 Aug 2016 19:04:05 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Wed, 24 Aug 2016 19:04:05 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 19:04:06 GMT
ENV BACKDROP_VERSION=1.3.4
# Wed, 24 Aug 2016 19:04:06 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Wed, 24 Aug 2016 19:04:11 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Wed, 24 Aug 2016 19:04:12 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Wed, 24 Aug 2016 19:04:12 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Wed, 24 Aug 2016 19:04:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68011060d728c45931c97d00825982e6f7f9950293268a3e4d144bbf422090b`  
		Last Modified: Wed, 17 Aug 2016 19:33:09 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee509c18e9948af83808e7196540071f8beced6821c04083677c0b648a1ffffe`  
		Last Modified: Wed, 17 Aug 2016 19:33:08 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530fa759e3b480fc41b4d85530c8a73170e5caf4a08c0954cad6f5c89bbe9bcf`  
		Last Modified: Wed, 17 Aug 2016 19:33:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f475346111bcd2dddb362570f2234995b10e2b46016562aa7cc523f057f23fa`  
		Last Modified: Wed, 17 Aug 2016 19:33:06 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57285f6a5cb95d2738aab1e7d163c1e60fb4bcd5d1ee74c708221ff4d1b6208`  
		Last Modified: Wed, 24 Aug 2016 18:44:27 GMT  
		Size: 12.4 MB (12409735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493ac78d2d89e9691a545137b6bc5331ff41855575c1bd8353c30772e848fb05`  
		Last Modified: Wed, 24 Aug 2016 18:44:24 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174639aed308dcbb365631efd4b079bd0c5148bff132f799af38ed40e7a8adf1`  
		Last Modified: Wed, 24 Aug 2016 18:44:30 GMT  
		Size: 16.4 MB (16403199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28ab8171b7f0fcf74076f498e9c8bdef3d0b322e4f2717b4a7edeb50db61c64`  
		Last Modified: Wed, 24 Aug 2016 18:44:24 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83125c5bce8820a1662c815b1e558ca80e7b3e1b82873f12bca37181c42d5a3`  
		Last Modified: Wed, 24 Aug 2016 18:44:27 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96976f3ee05959d6ef41990227f1b9d77d7d4d86fb5067d27e23a23cd80034d`  
		Last Modified: Wed, 24 Aug 2016 19:04:24 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8080543ba86af32bbca266551026fc1f6c76e2e85d3ba7bf9855cea63549ba3f`  
		Last Modified: Wed, 24 Aug 2016 19:04:28 GMT  
		Size: 8.2 MB (8249696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022305a17298abab66032a07f098d39e51875da1faf453221283de66810aad2e`  
		Last Modified: Wed, 24 Aug 2016 19:04:28 GMT  
		Size: 7.8 MB (7783859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046c3090aff6bfbc469d9ee5dcf033342b4cf54e72e5a33c75e92e1a670e0f30`  
		Last Modified: Wed, 24 Aug 2016 19:04:24 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:apache`

```console
$ docker pull backdrop@sha256:9a3268465bb02f07cd1cdbad280f10466e62b43d8fc33f17e137b20b5c6eb7cf
```

-	Platforms:
	-	linux; amd64

### `backdrop:apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176646654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ed66a51dd1cf655885c1a7c2d69cc5dc72e8b031737120ffcc4a07257bedcb9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 17 Aug 2016 19:19:26 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 17 Aug 2016 19:19:28 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 17 Aug 2016 19:19:30 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 17 Aug 2016 19:19:32 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 17 Aug 2016 19:19:33 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 17 Aug 2016 19:19:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 17 Aug 2016 19:25:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 22 Aug 2016 19:40:49 GMT
ENV PHP_VERSION=5.6.25
# Mon, 22 Aug 2016 19:40:50 GMT
ENV PHP_FILENAME=php-5.6.25.tar.xz
# Mon, 22 Aug 2016 19:40:50 GMT
ENV PHP_SHA256=7535cd6e20040ccec4594cc386c6f15c3f2c88f24163294a31068cf7dfe7f644
# Wed, 24 Aug 2016 18:06:58 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 24 Aug 2016 18:06:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 24 Aug 2016 18:12:05 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 24 Aug 2016 18:12:07 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 24 Aug 2016 18:12:07 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 24 Aug 2016 18:12:08 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 18:12:08 GMT
EXPOSE 80/tcp
# Wed, 24 Aug 2016 18:12:09 GMT
CMD ["apache2-foreground"]
# Wed, 24 Aug 2016 19:00:44 GMT
RUN a2enmod rewrite
# Wed, 24 Aug 2016 19:04:05 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Wed, 24 Aug 2016 19:04:05 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 19:04:06 GMT
ENV BACKDROP_VERSION=1.3.4
# Wed, 24 Aug 2016 19:04:06 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Wed, 24 Aug 2016 19:04:11 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Wed, 24 Aug 2016 19:04:12 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Wed, 24 Aug 2016 19:04:12 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Wed, 24 Aug 2016 19:04:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68011060d728c45931c97d00825982e6f7f9950293268a3e4d144bbf422090b`  
		Last Modified: Wed, 17 Aug 2016 19:33:09 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee509c18e9948af83808e7196540071f8beced6821c04083677c0b648a1ffffe`  
		Last Modified: Wed, 17 Aug 2016 19:33:08 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530fa759e3b480fc41b4d85530c8a73170e5caf4a08c0954cad6f5c89bbe9bcf`  
		Last Modified: Wed, 17 Aug 2016 19:33:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f475346111bcd2dddb362570f2234995b10e2b46016562aa7cc523f057f23fa`  
		Last Modified: Wed, 17 Aug 2016 19:33:06 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57285f6a5cb95d2738aab1e7d163c1e60fb4bcd5d1ee74c708221ff4d1b6208`  
		Last Modified: Wed, 24 Aug 2016 18:44:27 GMT  
		Size: 12.4 MB (12409735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493ac78d2d89e9691a545137b6bc5331ff41855575c1bd8353c30772e848fb05`  
		Last Modified: Wed, 24 Aug 2016 18:44:24 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174639aed308dcbb365631efd4b079bd0c5148bff132f799af38ed40e7a8adf1`  
		Last Modified: Wed, 24 Aug 2016 18:44:30 GMT  
		Size: 16.4 MB (16403199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28ab8171b7f0fcf74076f498e9c8bdef3d0b322e4f2717b4a7edeb50db61c64`  
		Last Modified: Wed, 24 Aug 2016 18:44:24 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83125c5bce8820a1662c815b1e558ca80e7b3e1b82873f12bca37181c42d5a3`  
		Last Modified: Wed, 24 Aug 2016 18:44:27 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96976f3ee05959d6ef41990227f1b9d77d7d4d86fb5067d27e23a23cd80034d`  
		Last Modified: Wed, 24 Aug 2016 19:04:24 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8080543ba86af32bbca266551026fc1f6c76e2e85d3ba7bf9855cea63549ba3f`  
		Last Modified: Wed, 24 Aug 2016 19:04:28 GMT  
		Size: 8.2 MB (8249696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022305a17298abab66032a07f098d39e51875da1faf453221283de66810aad2e`  
		Last Modified: Wed, 24 Aug 2016 19:04:28 GMT  
		Size: 7.8 MB (7783859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046c3090aff6bfbc469d9ee5dcf033342b4cf54e72e5a33c75e92e1a670e0f30`  
		Last Modified: Wed, 24 Aug 2016 19:04:24 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:latest`

```console
$ docker pull backdrop@sha256:9a3268465bb02f07cd1cdbad280f10466e62b43d8fc33f17e137b20b5c6eb7cf
```

-	Platforms:
	-	linux; amd64

### `backdrop:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176646654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ed66a51dd1cf655885c1a7c2d69cc5dc72e8b031737120ffcc4a07257bedcb9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 17 Aug 2016 19:19:26 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 17 Aug 2016 19:19:28 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 17 Aug 2016 19:19:30 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 17 Aug 2016 19:19:32 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 17 Aug 2016 19:19:33 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 17 Aug 2016 19:19:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 17 Aug 2016 19:25:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 22 Aug 2016 19:40:49 GMT
ENV PHP_VERSION=5.6.25
# Mon, 22 Aug 2016 19:40:50 GMT
ENV PHP_FILENAME=php-5.6.25.tar.xz
# Mon, 22 Aug 2016 19:40:50 GMT
ENV PHP_SHA256=7535cd6e20040ccec4594cc386c6f15c3f2c88f24163294a31068cf7dfe7f644
# Wed, 24 Aug 2016 18:06:58 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 24 Aug 2016 18:06:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 24 Aug 2016 18:12:05 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 24 Aug 2016 18:12:07 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 24 Aug 2016 18:12:07 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 24 Aug 2016 18:12:08 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 18:12:08 GMT
EXPOSE 80/tcp
# Wed, 24 Aug 2016 18:12:09 GMT
CMD ["apache2-foreground"]
# Wed, 24 Aug 2016 19:00:44 GMT
RUN a2enmod rewrite
# Wed, 24 Aug 2016 19:04:05 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Wed, 24 Aug 2016 19:04:05 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 19:04:06 GMT
ENV BACKDROP_VERSION=1.3.4
# Wed, 24 Aug 2016 19:04:06 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Wed, 24 Aug 2016 19:04:11 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Wed, 24 Aug 2016 19:04:12 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Wed, 24 Aug 2016 19:04:12 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Wed, 24 Aug 2016 19:04:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68011060d728c45931c97d00825982e6f7f9950293268a3e4d144bbf422090b`  
		Last Modified: Wed, 17 Aug 2016 19:33:09 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee509c18e9948af83808e7196540071f8beced6821c04083677c0b648a1ffffe`  
		Last Modified: Wed, 17 Aug 2016 19:33:08 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530fa759e3b480fc41b4d85530c8a73170e5caf4a08c0954cad6f5c89bbe9bcf`  
		Last Modified: Wed, 17 Aug 2016 19:33:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f475346111bcd2dddb362570f2234995b10e2b46016562aa7cc523f057f23fa`  
		Last Modified: Wed, 17 Aug 2016 19:33:06 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57285f6a5cb95d2738aab1e7d163c1e60fb4bcd5d1ee74c708221ff4d1b6208`  
		Last Modified: Wed, 24 Aug 2016 18:44:27 GMT  
		Size: 12.4 MB (12409735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493ac78d2d89e9691a545137b6bc5331ff41855575c1bd8353c30772e848fb05`  
		Last Modified: Wed, 24 Aug 2016 18:44:24 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174639aed308dcbb365631efd4b079bd0c5148bff132f799af38ed40e7a8adf1`  
		Last Modified: Wed, 24 Aug 2016 18:44:30 GMT  
		Size: 16.4 MB (16403199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28ab8171b7f0fcf74076f498e9c8bdef3d0b322e4f2717b4a7edeb50db61c64`  
		Last Modified: Wed, 24 Aug 2016 18:44:24 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83125c5bce8820a1662c815b1e558ca80e7b3e1b82873f12bca37181c42d5a3`  
		Last Modified: Wed, 24 Aug 2016 18:44:27 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96976f3ee05959d6ef41990227f1b9d77d7d4d86fb5067d27e23a23cd80034d`  
		Last Modified: Wed, 24 Aug 2016 19:04:24 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8080543ba86af32bbca266551026fc1f6c76e2e85d3ba7bf9855cea63549ba3f`  
		Last Modified: Wed, 24 Aug 2016 19:04:28 GMT  
		Size: 8.2 MB (8249696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022305a17298abab66032a07f098d39e51875da1faf453221283de66810aad2e`  
		Last Modified: Wed, 24 Aug 2016 19:04:28 GMT  
		Size: 7.8 MB (7783859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046c3090aff6bfbc469d9ee5dcf033342b4cf54e72e5a33c75e92e1a670e0f30`  
		Last Modified: Wed, 24 Aug 2016 19:04:24 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1.3.4-fpm`

```console
$ docker pull backdrop@sha256:74fbd5251da0a0c34676d7d48c49f35922fb2394da207aa4d3c73c391d2038af
```

-	Platforms:
	-	linux; amd64

### `backdrop:1.3.4-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166721715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:163ea20d3ea810ecad60ce76d4601b1948dd2a87d1434cf68cf48b3fcd582343`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 21:39:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 22 Aug 2016 19:46:08 GMT
ENV PHP_VERSION=5.6.25
# Mon, 22 Aug 2016 19:46:08 GMT
ENV PHP_FILENAME=php-5.6.25.tar.xz
# Mon, 22 Aug 2016 19:46:09 GMT
ENV PHP_SHA256=7535cd6e20040ccec4594cc386c6f15c3f2c88f24163294a31068cf7dfe7f644
# Wed, 24 Aug 2016 18:12:15 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 24 Aug 2016 18:12:15 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 24 Aug 2016 18:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 24 Aug 2016 18:18:47 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 24 Aug 2016 18:18:48 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 18:18:49 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 24 Aug 2016 18:18:50 GMT
EXPOSE 9000/tcp
# Wed, 24 Aug 2016 18:18:50 GMT
CMD ["php-fpm"]
# Wed, 24 Aug 2016 19:09:07 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Wed, 24 Aug 2016 19:09:08 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 19:09:09 GMT
ENV BACKDROP_VERSION=1.3.4
# Wed, 24 Aug 2016 19:09:10 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Wed, 24 Aug 2016 19:09:16 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Wed, 24 Aug 2016 19:09:17 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Wed, 24 Aug 2016 19:09:18 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Wed, 24 Aug 2016 19:09:19 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc4ed620159eb691683cccf85600e0941a9789d9f45fc16b3af12fd1aeeb451`  
		Last Modified: Wed, 24 Aug 2016 18:45:10 GMT  
		Size: 12.4 MB (12409728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f27c2629726dc788ee7de907aa4be62b2ef50361ea9a48569c2562aa0348d5b`  
		Last Modified: Wed, 24 Aug 2016 18:45:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47db32bd1019fcc7b5b257d51a7d260eca25eb49767b32fbf64df39529b368b`  
		Last Modified: Wed, 24 Aug 2016 18:45:10 GMT  
		Size: 9.3 MB (9342771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920d7d2bcfd6bb360bc00f35549a5afe414eecfe9ce89b27727f33f0f58a3549`  
		Last Modified: Wed, 24 Aug 2016 18:45:05 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfe3bc0eaa59c3aed64adf4922a49432198832907ea8a14f8ad212a1a44aed4`  
		Last Modified: Wed, 24 Aug 2016 18:45:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3726d5301c9bbc77a91c818fbe7b5cad07033418480071ff58c8e001b38c0c82`  
		Last Modified: Wed, 24 Aug 2016 18:45:06 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d050b0c56e0be13dd9afad7e6e8b128fd928af07d04fed96008cc9751b9b00e7`  
		Last Modified: Wed, 24 Aug 2016 19:09:34 GMT  
		Size: 8.2 MB (8227239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f710c228d1894fe0397973e9eb0306a085338470fb64110295216d8cb05bc5`  
		Last Modified: Wed, 24 Aug 2016 19:09:34 GMT  
		Size: 7.8 MB (7783854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76c785a4ba3e4a168cb310957609e0da2fb484760019f4cb56d87edf2620f2e`  
		Last Modified: Wed, 24 Aug 2016 19:09:31 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1.3-fpm`

```console
$ docker pull backdrop@sha256:74fbd5251da0a0c34676d7d48c49f35922fb2394da207aa4d3c73c391d2038af
```

-	Platforms:
	-	linux; amd64

### `backdrop:1.3-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166721715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:163ea20d3ea810ecad60ce76d4601b1948dd2a87d1434cf68cf48b3fcd582343`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 21:39:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 22 Aug 2016 19:46:08 GMT
ENV PHP_VERSION=5.6.25
# Mon, 22 Aug 2016 19:46:08 GMT
ENV PHP_FILENAME=php-5.6.25.tar.xz
# Mon, 22 Aug 2016 19:46:09 GMT
ENV PHP_SHA256=7535cd6e20040ccec4594cc386c6f15c3f2c88f24163294a31068cf7dfe7f644
# Wed, 24 Aug 2016 18:12:15 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 24 Aug 2016 18:12:15 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 24 Aug 2016 18:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 24 Aug 2016 18:18:47 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 24 Aug 2016 18:18:48 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 18:18:49 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 24 Aug 2016 18:18:50 GMT
EXPOSE 9000/tcp
# Wed, 24 Aug 2016 18:18:50 GMT
CMD ["php-fpm"]
# Wed, 24 Aug 2016 19:09:07 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Wed, 24 Aug 2016 19:09:08 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 19:09:09 GMT
ENV BACKDROP_VERSION=1.3.4
# Wed, 24 Aug 2016 19:09:10 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Wed, 24 Aug 2016 19:09:16 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Wed, 24 Aug 2016 19:09:17 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Wed, 24 Aug 2016 19:09:18 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Wed, 24 Aug 2016 19:09:19 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc4ed620159eb691683cccf85600e0941a9789d9f45fc16b3af12fd1aeeb451`  
		Last Modified: Wed, 24 Aug 2016 18:45:10 GMT  
		Size: 12.4 MB (12409728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f27c2629726dc788ee7de907aa4be62b2ef50361ea9a48569c2562aa0348d5b`  
		Last Modified: Wed, 24 Aug 2016 18:45:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47db32bd1019fcc7b5b257d51a7d260eca25eb49767b32fbf64df39529b368b`  
		Last Modified: Wed, 24 Aug 2016 18:45:10 GMT  
		Size: 9.3 MB (9342771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920d7d2bcfd6bb360bc00f35549a5afe414eecfe9ce89b27727f33f0f58a3549`  
		Last Modified: Wed, 24 Aug 2016 18:45:05 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfe3bc0eaa59c3aed64adf4922a49432198832907ea8a14f8ad212a1a44aed4`  
		Last Modified: Wed, 24 Aug 2016 18:45:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3726d5301c9bbc77a91c818fbe7b5cad07033418480071ff58c8e001b38c0c82`  
		Last Modified: Wed, 24 Aug 2016 18:45:06 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d050b0c56e0be13dd9afad7e6e8b128fd928af07d04fed96008cc9751b9b00e7`  
		Last Modified: Wed, 24 Aug 2016 19:09:34 GMT  
		Size: 8.2 MB (8227239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f710c228d1894fe0397973e9eb0306a085338470fb64110295216d8cb05bc5`  
		Last Modified: Wed, 24 Aug 2016 19:09:34 GMT  
		Size: 7.8 MB (7783854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76c785a4ba3e4a168cb310957609e0da2fb484760019f4cb56d87edf2620f2e`  
		Last Modified: Wed, 24 Aug 2016 19:09:31 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1-fpm`

```console
$ docker pull backdrop@sha256:74fbd5251da0a0c34676d7d48c49f35922fb2394da207aa4d3c73c391d2038af
```

-	Platforms:
	-	linux; amd64

### `backdrop:1-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166721715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:163ea20d3ea810ecad60ce76d4601b1948dd2a87d1434cf68cf48b3fcd582343`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 21:39:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 22 Aug 2016 19:46:08 GMT
ENV PHP_VERSION=5.6.25
# Mon, 22 Aug 2016 19:46:08 GMT
ENV PHP_FILENAME=php-5.6.25.tar.xz
# Mon, 22 Aug 2016 19:46:09 GMT
ENV PHP_SHA256=7535cd6e20040ccec4594cc386c6f15c3f2c88f24163294a31068cf7dfe7f644
# Wed, 24 Aug 2016 18:12:15 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 24 Aug 2016 18:12:15 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 24 Aug 2016 18:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 24 Aug 2016 18:18:47 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 24 Aug 2016 18:18:48 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 18:18:49 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 24 Aug 2016 18:18:50 GMT
EXPOSE 9000/tcp
# Wed, 24 Aug 2016 18:18:50 GMT
CMD ["php-fpm"]
# Wed, 24 Aug 2016 19:09:07 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Wed, 24 Aug 2016 19:09:08 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 19:09:09 GMT
ENV BACKDROP_VERSION=1.3.4
# Wed, 24 Aug 2016 19:09:10 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Wed, 24 Aug 2016 19:09:16 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Wed, 24 Aug 2016 19:09:17 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Wed, 24 Aug 2016 19:09:18 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Wed, 24 Aug 2016 19:09:19 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc4ed620159eb691683cccf85600e0941a9789d9f45fc16b3af12fd1aeeb451`  
		Last Modified: Wed, 24 Aug 2016 18:45:10 GMT  
		Size: 12.4 MB (12409728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f27c2629726dc788ee7de907aa4be62b2ef50361ea9a48569c2562aa0348d5b`  
		Last Modified: Wed, 24 Aug 2016 18:45:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47db32bd1019fcc7b5b257d51a7d260eca25eb49767b32fbf64df39529b368b`  
		Last Modified: Wed, 24 Aug 2016 18:45:10 GMT  
		Size: 9.3 MB (9342771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920d7d2bcfd6bb360bc00f35549a5afe414eecfe9ce89b27727f33f0f58a3549`  
		Last Modified: Wed, 24 Aug 2016 18:45:05 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfe3bc0eaa59c3aed64adf4922a49432198832907ea8a14f8ad212a1a44aed4`  
		Last Modified: Wed, 24 Aug 2016 18:45:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3726d5301c9bbc77a91c818fbe7b5cad07033418480071ff58c8e001b38c0c82`  
		Last Modified: Wed, 24 Aug 2016 18:45:06 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d050b0c56e0be13dd9afad7e6e8b128fd928af07d04fed96008cc9751b9b00e7`  
		Last Modified: Wed, 24 Aug 2016 19:09:34 GMT  
		Size: 8.2 MB (8227239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f710c228d1894fe0397973e9eb0306a085338470fb64110295216d8cb05bc5`  
		Last Modified: Wed, 24 Aug 2016 19:09:34 GMT  
		Size: 7.8 MB (7783854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76c785a4ba3e4a168cb310957609e0da2fb484760019f4cb56d87edf2620f2e`  
		Last Modified: Wed, 24 Aug 2016 19:09:31 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:fpm`

```console
$ docker pull backdrop@sha256:74fbd5251da0a0c34676d7d48c49f35922fb2394da207aa4d3c73c391d2038af
```

-	Platforms:
	-	linux; amd64

### `backdrop:fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166721715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:163ea20d3ea810ecad60ce76d4601b1948dd2a87d1434cf68cf48b3fcd582343`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 21:39:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 22 Aug 2016 19:46:08 GMT
ENV PHP_VERSION=5.6.25
# Mon, 22 Aug 2016 19:46:08 GMT
ENV PHP_FILENAME=php-5.6.25.tar.xz
# Mon, 22 Aug 2016 19:46:09 GMT
ENV PHP_SHA256=7535cd6e20040ccec4594cc386c6f15c3f2c88f24163294a31068cf7dfe7f644
# Wed, 24 Aug 2016 18:12:15 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 24 Aug 2016 18:12:15 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 24 Aug 2016 18:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 24 Aug 2016 18:18:47 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 24 Aug 2016 18:18:48 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 18:18:49 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 24 Aug 2016 18:18:50 GMT
EXPOSE 9000/tcp
# Wed, 24 Aug 2016 18:18:50 GMT
CMD ["php-fpm"]
# Wed, 24 Aug 2016 19:09:07 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Wed, 24 Aug 2016 19:09:08 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 19:09:09 GMT
ENV BACKDROP_VERSION=1.3.4
# Wed, 24 Aug 2016 19:09:10 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Wed, 24 Aug 2016 19:09:16 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Wed, 24 Aug 2016 19:09:17 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Wed, 24 Aug 2016 19:09:18 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Wed, 24 Aug 2016 19:09:19 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc4ed620159eb691683cccf85600e0941a9789d9f45fc16b3af12fd1aeeb451`  
		Last Modified: Wed, 24 Aug 2016 18:45:10 GMT  
		Size: 12.4 MB (12409728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f27c2629726dc788ee7de907aa4be62b2ef50361ea9a48569c2562aa0348d5b`  
		Last Modified: Wed, 24 Aug 2016 18:45:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47db32bd1019fcc7b5b257d51a7d260eca25eb49767b32fbf64df39529b368b`  
		Last Modified: Wed, 24 Aug 2016 18:45:10 GMT  
		Size: 9.3 MB (9342771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920d7d2bcfd6bb360bc00f35549a5afe414eecfe9ce89b27727f33f0f58a3549`  
		Last Modified: Wed, 24 Aug 2016 18:45:05 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfe3bc0eaa59c3aed64adf4922a49432198832907ea8a14f8ad212a1a44aed4`  
		Last Modified: Wed, 24 Aug 2016 18:45:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3726d5301c9bbc77a91c818fbe7b5cad07033418480071ff58c8e001b38c0c82`  
		Last Modified: Wed, 24 Aug 2016 18:45:06 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d050b0c56e0be13dd9afad7e6e8b128fd928af07d04fed96008cc9751b9b00e7`  
		Last Modified: Wed, 24 Aug 2016 19:09:34 GMT  
		Size: 8.2 MB (8227239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f710c228d1894fe0397973e9eb0306a085338470fb64110295216d8cb05bc5`  
		Last Modified: Wed, 24 Aug 2016 19:09:34 GMT  
		Size: 7.8 MB (7783854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76c785a4ba3e4a168cb310957609e0da2fb484760019f4cb56d87edf2620f2e`  
		Last Modified: Wed, 24 Aug 2016 19:09:31 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
