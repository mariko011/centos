<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

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
$ docker pull backdrop@sha256:393d374c095e23bd504f031fb0dbeba2a7d99edb196e0d8ffaa3a9ede24ad23e
```

-	Platforms:
	-	linux; amd64

### `backdrop:1.3.4` - linux; amd64

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
$ docker pull backdrop@sha256:393d374c095e23bd504f031fb0dbeba2a7d99edb196e0d8ffaa3a9ede24ad23e
```

-	Platforms:
	-	linux; amd64

### `backdrop:1` - linux; amd64

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

## `backdrop:1.3.4-apache`

```console
$ docker pull backdrop@sha256:393d374c095e23bd504f031fb0dbeba2a7d99edb196e0d8ffaa3a9ede24ad23e
```

-	Platforms:
	-	linux; amd64

### `backdrop:1.3.4-apache` - linux; amd64

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

## `backdrop:1.3-apache`

```console
$ docker pull backdrop@sha256:393d374c095e23bd504f031fb0dbeba2a7d99edb196e0d8ffaa3a9ede24ad23e
```

-	Platforms:
	-	linux; amd64

### `backdrop:1.3-apache` - linux; amd64

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

## `backdrop:1-apache`

```console
$ docker pull backdrop@sha256:faf84537fc4be8ba1aaa47e40a897590c3aa07528118cb5b9618b036379a2e09
```

-	Platforms:
	-	linux; amd64

### `backdrop:1-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176616374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca564ba6804fe8746c02eb3b771354e031f18f50f2e12082446647586afa67c4`
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
# Wed, 17 Aug 2016 19:25:09 GMT
ENV PHP_VERSION=5.6.24
# Wed, 17 Aug 2016 19:25:09 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 17 Aug 2016 19:25:10 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 17 Aug 2016 19:25:14 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 17 Aug 2016 19:25:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 17 Aug 2016 19:30:25 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 17 Aug 2016 19:30:26 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 17 Aug 2016 19:30:27 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 17 Aug 2016 19:30:27 GMT
WORKDIR /var/www/html
# Wed, 17 Aug 2016 19:30:28 GMT
EXPOSE 80/tcp
# Wed, 17 Aug 2016 19:30:28 GMT
CMD ["apache2-foreground"]
# Wed, 17 Aug 2016 20:31:07 GMT
RUN a2enmod rewrite
# Wed, 17 Aug 2016 20:34:23 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Wed, 17 Aug 2016 20:34:24 GMT
WORKDIR /var/www/html
# Wed, 17 Aug 2016 20:34:24 GMT
ENV BACKDROP_VERSION=1.3.4
# Wed, 17 Aug 2016 20:34:25 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Wed, 17 Aug 2016 20:34:29 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Wed, 17 Aug 2016 20:34:30 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Wed, 17 Aug 2016 20:34:30 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Wed, 17 Aug 2016 20:34:31 GMT
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
	-	`sha256:f1f61150f4b4168ae22211317513054a7fc879c008d6295d790ff444d0d9bed7`  
		Last Modified: Wed, 17 Aug 2016 19:38:58 GMT  
		Size: 12.4 MB (12399122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a280d2e55d26498615c42abfdedbec63e62b85dfb45826ccf7fd91ed7c7a7b99`  
		Last Modified: Wed, 17 Aug 2016 19:38:55 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c512c19c1207763a6fdf56d90e51a96ad32722c16c29b582b4e97d5bce23f33`  
		Last Modified: Wed, 17 Aug 2016 19:39:02 GMT  
		Size: 16.4 MB (16386027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d98144b4a65c296e118bb6608156652fc6ed5b38c8b46e5c4d8bd5aa317d08`  
		Last Modified: Wed, 17 Aug 2016 19:38:55 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a032fdc86b649031dec65f81035ed93df28b0a1c9e3aca16ac7012d40523d6b8`  
		Last Modified: Wed, 17 Aug 2016 19:38:55 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8385304b7a8492d4052a1f66627631b2402b3d4342183d196e87469e7e2361ed`  
		Last Modified: Wed, 17 Aug 2016 20:34:42 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3e2fde29d86c5bb5ed6990ba93259b5c1c136279f53e2def8a2ac50bed732e`  
		Last Modified: Wed, 17 Aug 2016 20:34:46 GMT  
		Size: 8.2 MB (8247205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6398a1fc49e6d69e76da1cf349de90b8c1f5e6edd3e4899a7ffa464a4545c5b0`  
		Last Modified: Wed, 17 Aug 2016 20:34:47 GMT  
		Size: 7.8 MB (7783855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3703ea4789a4bc20102a63688a30ccae63db160df161b1cbc8030afb74da3599`  
		Last Modified: Wed, 17 Aug 2016 20:34:42 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:apache`

```console
$ docker pull backdrop@sha256:393d374c095e23bd504f031fb0dbeba2a7d99edb196e0d8ffaa3a9ede24ad23e
```

-	Platforms:
	-	linux; amd64

### `backdrop:apache` - linux; amd64

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

## `backdrop:latest`

```console
$ docker pull backdrop@sha256:393d374c095e23bd504f031fb0dbeba2a7d99edb196e0d8ffaa3a9ede24ad23e
```

-	Platforms:
	-	linux; amd64

### `backdrop:latest` - linux; amd64

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

## `backdrop:1.3.4-fpm`

```console
$ docker pull backdrop@sha256:81a96b5dd24d30c41f3437a9bd54fe09bfe5887bc83fbed3a872c2e08f0bb736
```

-	Platforms:
	-	linux; amd64

### `backdrop:1.3.4-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166721711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23f9f660678c2b5d4bccbff41cccfe7b9698601438c1b0a742dce83b8e9162f6`
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
# Mon, 22 Aug 2016 19:46:13 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 22 Aug 2016 19:46:13 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Mon, 22 Aug 2016 19:52:45 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 22 Aug 2016 19:52:46 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Mon, 22 Aug 2016 19:52:46 GMT
WORKDIR /var/www/html
# Mon, 22 Aug 2016 19:52:48 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 22 Aug 2016 19:52:48 GMT
EXPOSE 9000/tcp
# Mon, 22 Aug 2016 19:52:49 GMT
CMD ["php-fpm"]
# Tue, 23 Aug 2016 18:25:41 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 23 Aug 2016 18:25:42 GMT
WORKDIR /var/www/html
# Tue, 23 Aug 2016 18:25:43 GMT
ENV BACKDROP_VERSION=1.3.4
# Tue, 23 Aug 2016 18:25:44 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Tue, 23 Aug 2016 18:25:50 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Tue, 23 Aug 2016 18:25:51 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Tue, 23 Aug 2016 18:25:52 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 18:25:53 GMT
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
	-	`sha256:15c3a2b8d4c3b8ae95b3075cbc1a98c47ab623cbe1fb50e645a610154a0f6048`  
		Last Modified: Mon, 22 Aug 2016 20:20:24 GMT  
		Size: 12.4 MB (12409729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f240f6e0623cdb6af4c4eb1064405f1270dd26469cd754e1bb5a5b5fc6dbbaf`  
		Last Modified: Mon, 22 Aug 2016 20:20:19 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8540724cd2d50743be31770bd06460835acbfd8a02c1c2c6d975033a97fede24`  
		Last Modified: Mon, 22 Aug 2016 20:20:23 GMT  
		Size: 9.3 MB (9342781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fc85946ab07d0a3856de85a8c0ccbc255f19e02e35609d7900a699ba66cffb`  
		Last Modified: Mon, 22 Aug 2016 20:20:20 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cefed3a662633f684a1fc6d6ff297b62418d9144d095a5853347af13493e31b`  
		Last Modified: Mon, 22 Aug 2016 20:20:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c686039a3c93378ac40e815aba729748fbf68842aab35e251250219a9bd5b48d`  
		Last Modified: Mon, 22 Aug 2016 20:20:19 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4729c85d405e1999d9810b831d42370772ec4940859fe75af66496601f671b7e`  
		Last Modified: Tue, 23 Aug 2016 18:26:08 GMT  
		Size: 8.2 MB (8227220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dce772cddee10ec65c783e324e7da95ebcbcc1b134288bd70ce9500a11946a9`  
		Last Modified: Tue, 23 Aug 2016 18:26:08 GMT  
		Size: 7.8 MB (7783852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d00c886108e808dbf903c46747045a73ef9a7d0dfd5dee086157909a6f3e5be`  
		Last Modified: Tue, 23 Aug 2016 18:26:05 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1.3-fpm`

```console
$ docker pull backdrop@sha256:81a96b5dd24d30c41f3437a9bd54fe09bfe5887bc83fbed3a872c2e08f0bb736
```

-	Platforms:
	-	linux; amd64

### `backdrop:1.3-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166721711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23f9f660678c2b5d4bccbff41cccfe7b9698601438c1b0a742dce83b8e9162f6`
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
# Mon, 22 Aug 2016 19:46:13 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 22 Aug 2016 19:46:13 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Mon, 22 Aug 2016 19:52:45 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 22 Aug 2016 19:52:46 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Mon, 22 Aug 2016 19:52:46 GMT
WORKDIR /var/www/html
# Mon, 22 Aug 2016 19:52:48 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 22 Aug 2016 19:52:48 GMT
EXPOSE 9000/tcp
# Mon, 22 Aug 2016 19:52:49 GMT
CMD ["php-fpm"]
# Tue, 23 Aug 2016 18:25:41 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 23 Aug 2016 18:25:42 GMT
WORKDIR /var/www/html
# Tue, 23 Aug 2016 18:25:43 GMT
ENV BACKDROP_VERSION=1.3.4
# Tue, 23 Aug 2016 18:25:44 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Tue, 23 Aug 2016 18:25:50 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Tue, 23 Aug 2016 18:25:51 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Tue, 23 Aug 2016 18:25:52 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 18:25:53 GMT
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
	-	`sha256:15c3a2b8d4c3b8ae95b3075cbc1a98c47ab623cbe1fb50e645a610154a0f6048`  
		Last Modified: Mon, 22 Aug 2016 20:20:24 GMT  
		Size: 12.4 MB (12409729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f240f6e0623cdb6af4c4eb1064405f1270dd26469cd754e1bb5a5b5fc6dbbaf`  
		Last Modified: Mon, 22 Aug 2016 20:20:19 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8540724cd2d50743be31770bd06460835acbfd8a02c1c2c6d975033a97fede24`  
		Last Modified: Mon, 22 Aug 2016 20:20:23 GMT  
		Size: 9.3 MB (9342781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fc85946ab07d0a3856de85a8c0ccbc255f19e02e35609d7900a699ba66cffb`  
		Last Modified: Mon, 22 Aug 2016 20:20:20 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cefed3a662633f684a1fc6d6ff297b62418d9144d095a5853347af13493e31b`  
		Last Modified: Mon, 22 Aug 2016 20:20:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c686039a3c93378ac40e815aba729748fbf68842aab35e251250219a9bd5b48d`  
		Last Modified: Mon, 22 Aug 2016 20:20:19 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4729c85d405e1999d9810b831d42370772ec4940859fe75af66496601f671b7e`  
		Last Modified: Tue, 23 Aug 2016 18:26:08 GMT  
		Size: 8.2 MB (8227220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dce772cddee10ec65c783e324e7da95ebcbcc1b134288bd70ce9500a11946a9`  
		Last Modified: Tue, 23 Aug 2016 18:26:08 GMT  
		Size: 7.8 MB (7783852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d00c886108e808dbf903c46747045a73ef9a7d0dfd5dee086157909a6f3e5be`  
		Last Modified: Tue, 23 Aug 2016 18:26:05 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1-fpm`

```console
$ docker pull backdrop@sha256:81a96b5dd24d30c41f3437a9bd54fe09bfe5887bc83fbed3a872c2e08f0bb736
```

-	Platforms:
	-	linux; amd64

### `backdrop:1-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166721711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23f9f660678c2b5d4bccbff41cccfe7b9698601438c1b0a742dce83b8e9162f6`
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
# Mon, 22 Aug 2016 19:46:13 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 22 Aug 2016 19:46:13 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Mon, 22 Aug 2016 19:52:45 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 22 Aug 2016 19:52:46 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Mon, 22 Aug 2016 19:52:46 GMT
WORKDIR /var/www/html
# Mon, 22 Aug 2016 19:52:48 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 22 Aug 2016 19:52:48 GMT
EXPOSE 9000/tcp
# Mon, 22 Aug 2016 19:52:49 GMT
CMD ["php-fpm"]
# Tue, 23 Aug 2016 18:25:41 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 23 Aug 2016 18:25:42 GMT
WORKDIR /var/www/html
# Tue, 23 Aug 2016 18:25:43 GMT
ENV BACKDROP_VERSION=1.3.4
# Tue, 23 Aug 2016 18:25:44 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Tue, 23 Aug 2016 18:25:50 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Tue, 23 Aug 2016 18:25:51 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Tue, 23 Aug 2016 18:25:52 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 18:25:53 GMT
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
	-	`sha256:15c3a2b8d4c3b8ae95b3075cbc1a98c47ab623cbe1fb50e645a610154a0f6048`  
		Last Modified: Mon, 22 Aug 2016 20:20:24 GMT  
		Size: 12.4 MB (12409729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f240f6e0623cdb6af4c4eb1064405f1270dd26469cd754e1bb5a5b5fc6dbbaf`  
		Last Modified: Mon, 22 Aug 2016 20:20:19 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8540724cd2d50743be31770bd06460835acbfd8a02c1c2c6d975033a97fede24`  
		Last Modified: Mon, 22 Aug 2016 20:20:23 GMT  
		Size: 9.3 MB (9342781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fc85946ab07d0a3856de85a8c0ccbc255f19e02e35609d7900a699ba66cffb`  
		Last Modified: Mon, 22 Aug 2016 20:20:20 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cefed3a662633f684a1fc6d6ff297b62418d9144d095a5853347af13493e31b`  
		Last Modified: Mon, 22 Aug 2016 20:20:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c686039a3c93378ac40e815aba729748fbf68842aab35e251250219a9bd5b48d`  
		Last Modified: Mon, 22 Aug 2016 20:20:19 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4729c85d405e1999d9810b831d42370772ec4940859fe75af66496601f671b7e`  
		Last Modified: Tue, 23 Aug 2016 18:26:08 GMT  
		Size: 8.2 MB (8227220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dce772cddee10ec65c783e324e7da95ebcbcc1b134288bd70ce9500a11946a9`  
		Last Modified: Tue, 23 Aug 2016 18:26:08 GMT  
		Size: 7.8 MB (7783852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d00c886108e808dbf903c46747045a73ef9a7d0dfd5dee086157909a6f3e5be`  
		Last Modified: Tue, 23 Aug 2016 18:26:05 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:fpm`

```console
$ docker pull backdrop@sha256:81a96b5dd24d30c41f3437a9bd54fe09bfe5887bc83fbed3a872c2e08f0bb736
```

-	Platforms:
	-	linux; amd64

### `backdrop:fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166721711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23f9f660678c2b5d4bccbff41cccfe7b9698601438c1b0a742dce83b8e9162f6`
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
# Mon, 22 Aug 2016 19:46:13 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 22 Aug 2016 19:46:13 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Mon, 22 Aug 2016 19:52:45 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 22 Aug 2016 19:52:46 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Mon, 22 Aug 2016 19:52:46 GMT
WORKDIR /var/www/html
# Mon, 22 Aug 2016 19:52:48 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 22 Aug 2016 19:52:48 GMT
EXPOSE 9000/tcp
# Mon, 22 Aug 2016 19:52:49 GMT
CMD ["php-fpm"]
# Tue, 23 Aug 2016 18:25:41 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 23 Aug 2016 18:25:42 GMT
WORKDIR /var/www/html
# Tue, 23 Aug 2016 18:25:43 GMT
ENV BACKDROP_VERSION=1.3.4
# Tue, 23 Aug 2016 18:25:44 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Tue, 23 Aug 2016 18:25:50 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Tue, 23 Aug 2016 18:25:51 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Tue, 23 Aug 2016 18:25:52 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 18:25:53 GMT
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
	-	`sha256:15c3a2b8d4c3b8ae95b3075cbc1a98c47ab623cbe1fb50e645a610154a0f6048`  
		Last Modified: Mon, 22 Aug 2016 20:20:24 GMT  
		Size: 12.4 MB (12409729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f240f6e0623cdb6af4c4eb1064405f1270dd26469cd754e1bb5a5b5fc6dbbaf`  
		Last Modified: Mon, 22 Aug 2016 20:20:19 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8540724cd2d50743be31770bd06460835acbfd8a02c1c2c6d975033a97fede24`  
		Last Modified: Mon, 22 Aug 2016 20:20:23 GMT  
		Size: 9.3 MB (9342781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fc85946ab07d0a3856de85a8c0ccbc255f19e02e35609d7900a699ba66cffb`  
		Last Modified: Mon, 22 Aug 2016 20:20:20 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cefed3a662633f684a1fc6d6ff297b62418d9144d095a5853347af13493e31b`  
		Last Modified: Mon, 22 Aug 2016 20:20:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c686039a3c93378ac40e815aba729748fbf68842aab35e251250219a9bd5b48d`  
		Last Modified: Mon, 22 Aug 2016 20:20:19 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4729c85d405e1999d9810b831d42370772ec4940859fe75af66496601f671b7e`  
		Last Modified: Tue, 23 Aug 2016 18:26:08 GMT  
		Size: 8.2 MB (8227220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dce772cddee10ec65c783e324e7da95ebcbcc1b134288bd70ce9500a11946a9`  
		Last Modified: Tue, 23 Aug 2016 18:26:08 GMT  
		Size: 7.8 MB (7783852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d00c886108e808dbf903c46747045a73ef9a7d0dfd5dee086157909a6f3e5be`  
		Last Modified: Tue, 23 Aug 2016 18:26:05 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
