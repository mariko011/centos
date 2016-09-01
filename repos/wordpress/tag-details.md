<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `wordpress`

-	[`wordpress:4.6.0-apache`](#wordpress460-apache)
-	[`wordpress:4.6-apache`](#wordpress46-apache)
-	[`wordpress:4-apache`](#wordpress4-apache)
-	[`wordpress:apache`](#wordpressapache)
-	[`wordpress:4.6.0`](#wordpress460)
-	[`wordpress:4.6`](#wordpress46)
-	[`wordpress:4`](#wordpress4)
-	[`wordpress:latest`](#wordpresslatest)
-	[`wordpress:4.6.0-fpm`](#wordpress460-fpm)
-	[`wordpress:4.6-fpm`](#wordpress46-fpm)
-	[`wordpress:4-fpm`](#wordpress4-fpm)
-	[`wordpress:fpm`](#wordpressfpm)

## `wordpress:4.6.0-apache`

```console
$ docker pull wordpress@sha256:54021298de845acdcf5ccbf85ad69393eedbe573da533200ac7351c5c7d2dc13
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.6.0-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171228592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45bef4edad90000291abcdde291c2f0b7333f07ebefdc5cc647f51b68c37d9a3`
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
# Fri, 26 Aug 2016 21:59:48 GMT
RUN a2enmod rewrite expires
# Fri, 26 Aug 2016 22:02:07 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Fri, 26 Aug 2016 22:02:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 26 Aug 2016 22:02:17 GMT
VOLUME [/var/www/html]
# Fri, 26 Aug 2016 22:02:18 GMT
ENV WORDPRESS_VERSION=4.6
# Fri, 26 Aug 2016 22:02:19 GMT
ENV WORDPRESS_SHA1=830962689f350e43cd1a069f3a4f68a44c0339c8
# Fri, 26 Aug 2016 22:02:23 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Fri, 26 Aug 2016 22:02:31 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Fri, 26 Aug 2016 22:02:32 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 22:02:33 GMT
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
	-	`sha256:94a9393d2a92f22c9a82509ebde9e2e302704e6f0a6dac1b57075c680662108d`  
		Last Modified: Fri, 26 Aug 2016 22:02:46 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7168e9cea77bd4f9369c9ce3db728dcf9ba617feddd8941118877a339d915cd1`  
		Last Modified: Fri, 26 Aug 2016 22:02:47 GMT  
		Size: 2.8 MB (2825771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6b581834820453804206f4d1d8b02f71b664fbd0725f96038a2ae9844e319b`  
		Last Modified: Fri, 26 Aug 2016 22:02:45 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87562be77b739d57b3d89667175aa47cf5c8619189be13801f4d6a4b2d37862a`  
		Last Modified: Fri, 26 Aug 2016 22:02:48 GMT  
		Size: 7.8 MB (7787708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb143bdb06225d4d3c60414f31283bca3b0dc4f370065ab31e71a86838e0b85`  
		Last Modified: Fri, 26 Aug 2016 22:02:45 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.6-apache`

```console
$ docker pull wordpress@sha256:54021298de845acdcf5ccbf85ad69393eedbe573da533200ac7351c5c7d2dc13
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.6-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171228592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45bef4edad90000291abcdde291c2f0b7333f07ebefdc5cc647f51b68c37d9a3`
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
# Fri, 26 Aug 2016 21:59:48 GMT
RUN a2enmod rewrite expires
# Fri, 26 Aug 2016 22:02:07 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Fri, 26 Aug 2016 22:02:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 26 Aug 2016 22:02:17 GMT
VOLUME [/var/www/html]
# Fri, 26 Aug 2016 22:02:18 GMT
ENV WORDPRESS_VERSION=4.6
# Fri, 26 Aug 2016 22:02:19 GMT
ENV WORDPRESS_SHA1=830962689f350e43cd1a069f3a4f68a44c0339c8
# Fri, 26 Aug 2016 22:02:23 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Fri, 26 Aug 2016 22:02:31 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Fri, 26 Aug 2016 22:02:32 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 22:02:33 GMT
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
	-	`sha256:94a9393d2a92f22c9a82509ebde9e2e302704e6f0a6dac1b57075c680662108d`  
		Last Modified: Fri, 26 Aug 2016 22:02:46 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7168e9cea77bd4f9369c9ce3db728dcf9ba617feddd8941118877a339d915cd1`  
		Last Modified: Fri, 26 Aug 2016 22:02:47 GMT  
		Size: 2.8 MB (2825771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6b581834820453804206f4d1d8b02f71b664fbd0725f96038a2ae9844e319b`  
		Last Modified: Fri, 26 Aug 2016 22:02:45 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87562be77b739d57b3d89667175aa47cf5c8619189be13801f4d6a4b2d37862a`  
		Last Modified: Fri, 26 Aug 2016 22:02:48 GMT  
		Size: 7.8 MB (7787708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb143bdb06225d4d3c60414f31283bca3b0dc4f370065ab31e71a86838e0b85`  
		Last Modified: Fri, 26 Aug 2016 22:02:45 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-apache`

```console
$ docker pull wordpress@sha256:54021298de845acdcf5ccbf85ad69393eedbe573da533200ac7351c5c7d2dc13
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171228592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45bef4edad90000291abcdde291c2f0b7333f07ebefdc5cc647f51b68c37d9a3`
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
# Fri, 26 Aug 2016 21:59:48 GMT
RUN a2enmod rewrite expires
# Fri, 26 Aug 2016 22:02:07 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Fri, 26 Aug 2016 22:02:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 26 Aug 2016 22:02:17 GMT
VOLUME [/var/www/html]
# Fri, 26 Aug 2016 22:02:18 GMT
ENV WORDPRESS_VERSION=4.6
# Fri, 26 Aug 2016 22:02:19 GMT
ENV WORDPRESS_SHA1=830962689f350e43cd1a069f3a4f68a44c0339c8
# Fri, 26 Aug 2016 22:02:23 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Fri, 26 Aug 2016 22:02:31 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Fri, 26 Aug 2016 22:02:32 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 22:02:33 GMT
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
	-	`sha256:94a9393d2a92f22c9a82509ebde9e2e302704e6f0a6dac1b57075c680662108d`  
		Last Modified: Fri, 26 Aug 2016 22:02:46 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7168e9cea77bd4f9369c9ce3db728dcf9ba617feddd8941118877a339d915cd1`  
		Last Modified: Fri, 26 Aug 2016 22:02:47 GMT  
		Size: 2.8 MB (2825771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6b581834820453804206f4d1d8b02f71b664fbd0725f96038a2ae9844e319b`  
		Last Modified: Fri, 26 Aug 2016 22:02:45 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87562be77b739d57b3d89667175aa47cf5c8619189be13801f4d6a4b2d37862a`  
		Last Modified: Fri, 26 Aug 2016 22:02:48 GMT  
		Size: 7.8 MB (7787708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb143bdb06225d4d3c60414f31283bca3b0dc4f370065ab31e71a86838e0b85`  
		Last Modified: Fri, 26 Aug 2016 22:02:45 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:apache`

```console
$ docker pull wordpress@sha256:54021298de845acdcf5ccbf85ad69393eedbe573da533200ac7351c5c7d2dc13
```

-	Platforms:
	-	linux; amd64

### `wordpress:apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171228592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45bef4edad90000291abcdde291c2f0b7333f07ebefdc5cc647f51b68c37d9a3`
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
# Fri, 26 Aug 2016 21:59:48 GMT
RUN a2enmod rewrite expires
# Fri, 26 Aug 2016 22:02:07 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Fri, 26 Aug 2016 22:02:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 26 Aug 2016 22:02:17 GMT
VOLUME [/var/www/html]
# Fri, 26 Aug 2016 22:02:18 GMT
ENV WORDPRESS_VERSION=4.6
# Fri, 26 Aug 2016 22:02:19 GMT
ENV WORDPRESS_SHA1=830962689f350e43cd1a069f3a4f68a44c0339c8
# Fri, 26 Aug 2016 22:02:23 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Fri, 26 Aug 2016 22:02:31 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Fri, 26 Aug 2016 22:02:32 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 22:02:33 GMT
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
	-	`sha256:94a9393d2a92f22c9a82509ebde9e2e302704e6f0a6dac1b57075c680662108d`  
		Last Modified: Fri, 26 Aug 2016 22:02:46 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7168e9cea77bd4f9369c9ce3db728dcf9ba617feddd8941118877a339d915cd1`  
		Last Modified: Fri, 26 Aug 2016 22:02:47 GMT  
		Size: 2.8 MB (2825771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6b581834820453804206f4d1d8b02f71b664fbd0725f96038a2ae9844e319b`  
		Last Modified: Fri, 26 Aug 2016 22:02:45 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87562be77b739d57b3d89667175aa47cf5c8619189be13801f4d6a4b2d37862a`  
		Last Modified: Fri, 26 Aug 2016 22:02:48 GMT  
		Size: 7.8 MB (7787708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb143bdb06225d4d3c60414f31283bca3b0dc4f370065ab31e71a86838e0b85`  
		Last Modified: Fri, 26 Aug 2016 22:02:45 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.6.0`

```console
$ docker pull wordpress@sha256:54021298de845acdcf5ccbf85ad69393eedbe573da533200ac7351c5c7d2dc13
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.6.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171228592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45bef4edad90000291abcdde291c2f0b7333f07ebefdc5cc647f51b68c37d9a3`
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
# Fri, 26 Aug 2016 21:59:48 GMT
RUN a2enmod rewrite expires
# Fri, 26 Aug 2016 22:02:07 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Fri, 26 Aug 2016 22:02:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 26 Aug 2016 22:02:17 GMT
VOLUME [/var/www/html]
# Fri, 26 Aug 2016 22:02:18 GMT
ENV WORDPRESS_VERSION=4.6
# Fri, 26 Aug 2016 22:02:19 GMT
ENV WORDPRESS_SHA1=830962689f350e43cd1a069f3a4f68a44c0339c8
# Fri, 26 Aug 2016 22:02:23 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Fri, 26 Aug 2016 22:02:31 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Fri, 26 Aug 2016 22:02:32 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 22:02:33 GMT
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
	-	`sha256:94a9393d2a92f22c9a82509ebde9e2e302704e6f0a6dac1b57075c680662108d`  
		Last Modified: Fri, 26 Aug 2016 22:02:46 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7168e9cea77bd4f9369c9ce3db728dcf9ba617feddd8941118877a339d915cd1`  
		Last Modified: Fri, 26 Aug 2016 22:02:47 GMT  
		Size: 2.8 MB (2825771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6b581834820453804206f4d1d8b02f71b664fbd0725f96038a2ae9844e319b`  
		Last Modified: Fri, 26 Aug 2016 22:02:45 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87562be77b739d57b3d89667175aa47cf5c8619189be13801f4d6a4b2d37862a`  
		Last Modified: Fri, 26 Aug 2016 22:02:48 GMT  
		Size: 7.8 MB (7787708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb143bdb06225d4d3c60414f31283bca3b0dc4f370065ab31e71a86838e0b85`  
		Last Modified: Fri, 26 Aug 2016 22:02:45 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.6`

```console
$ docker pull wordpress@sha256:54021298de845acdcf5ccbf85ad69393eedbe573da533200ac7351c5c7d2dc13
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171228592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45bef4edad90000291abcdde291c2f0b7333f07ebefdc5cc647f51b68c37d9a3`
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
# Fri, 26 Aug 2016 21:59:48 GMT
RUN a2enmod rewrite expires
# Fri, 26 Aug 2016 22:02:07 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Fri, 26 Aug 2016 22:02:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 26 Aug 2016 22:02:17 GMT
VOLUME [/var/www/html]
# Fri, 26 Aug 2016 22:02:18 GMT
ENV WORDPRESS_VERSION=4.6
# Fri, 26 Aug 2016 22:02:19 GMT
ENV WORDPRESS_SHA1=830962689f350e43cd1a069f3a4f68a44c0339c8
# Fri, 26 Aug 2016 22:02:23 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Fri, 26 Aug 2016 22:02:31 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Fri, 26 Aug 2016 22:02:32 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 22:02:33 GMT
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
	-	`sha256:94a9393d2a92f22c9a82509ebde9e2e302704e6f0a6dac1b57075c680662108d`  
		Last Modified: Fri, 26 Aug 2016 22:02:46 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7168e9cea77bd4f9369c9ce3db728dcf9ba617feddd8941118877a339d915cd1`  
		Last Modified: Fri, 26 Aug 2016 22:02:47 GMT  
		Size: 2.8 MB (2825771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6b581834820453804206f4d1d8b02f71b664fbd0725f96038a2ae9844e319b`  
		Last Modified: Fri, 26 Aug 2016 22:02:45 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87562be77b739d57b3d89667175aa47cf5c8619189be13801f4d6a4b2d37862a`  
		Last Modified: Fri, 26 Aug 2016 22:02:48 GMT  
		Size: 7.8 MB (7787708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb143bdb06225d4d3c60414f31283bca3b0dc4f370065ab31e71a86838e0b85`  
		Last Modified: Fri, 26 Aug 2016 22:02:45 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4`

```console
$ docker pull wordpress@sha256:54021298de845acdcf5ccbf85ad69393eedbe573da533200ac7351c5c7d2dc13
```

-	Platforms:
	-	linux; amd64

### `wordpress:4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171228592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45bef4edad90000291abcdde291c2f0b7333f07ebefdc5cc647f51b68c37d9a3`
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
# Fri, 26 Aug 2016 21:59:48 GMT
RUN a2enmod rewrite expires
# Fri, 26 Aug 2016 22:02:07 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Fri, 26 Aug 2016 22:02:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 26 Aug 2016 22:02:17 GMT
VOLUME [/var/www/html]
# Fri, 26 Aug 2016 22:02:18 GMT
ENV WORDPRESS_VERSION=4.6
# Fri, 26 Aug 2016 22:02:19 GMT
ENV WORDPRESS_SHA1=830962689f350e43cd1a069f3a4f68a44c0339c8
# Fri, 26 Aug 2016 22:02:23 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Fri, 26 Aug 2016 22:02:31 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Fri, 26 Aug 2016 22:02:32 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 22:02:33 GMT
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
	-	`sha256:94a9393d2a92f22c9a82509ebde9e2e302704e6f0a6dac1b57075c680662108d`  
		Last Modified: Fri, 26 Aug 2016 22:02:46 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7168e9cea77bd4f9369c9ce3db728dcf9ba617feddd8941118877a339d915cd1`  
		Last Modified: Fri, 26 Aug 2016 22:02:47 GMT  
		Size: 2.8 MB (2825771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6b581834820453804206f4d1d8b02f71b664fbd0725f96038a2ae9844e319b`  
		Last Modified: Fri, 26 Aug 2016 22:02:45 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87562be77b739d57b3d89667175aa47cf5c8619189be13801f4d6a4b2d37862a`  
		Last Modified: Fri, 26 Aug 2016 22:02:48 GMT  
		Size: 7.8 MB (7787708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb143bdb06225d4d3c60414f31283bca3b0dc4f370065ab31e71a86838e0b85`  
		Last Modified: Fri, 26 Aug 2016 22:02:45 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:latest`

```console
$ docker pull wordpress@sha256:54021298de845acdcf5ccbf85ad69393eedbe573da533200ac7351c5c7d2dc13
```

-	Platforms:
	-	linux; amd64

### `wordpress:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171228592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45bef4edad90000291abcdde291c2f0b7333f07ebefdc5cc647f51b68c37d9a3`
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
# Fri, 26 Aug 2016 21:59:48 GMT
RUN a2enmod rewrite expires
# Fri, 26 Aug 2016 22:02:07 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Fri, 26 Aug 2016 22:02:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 26 Aug 2016 22:02:17 GMT
VOLUME [/var/www/html]
# Fri, 26 Aug 2016 22:02:18 GMT
ENV WORDPRESS_VERSION=4.6
# Fri, 26 Aug 2016 22:02:19 GMT
ENV WORDPRESS_SHA1=830962689f350e43cd1a069f3a4f68a44c0339c8
# Fri, 26 Aug 2016 22:02:23 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Fri, 26 Aug 2016 22:02:31 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Fri, 26 Aug 2016 22:02:32 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 22:02:33 GMT
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
	-	`sha256:94a9393d2a92f22c9a82509ebde9e2e302704e6f0a6dac1b57075c680662108d`  
		Last Modified: Fri, 26 Aug 2016 22:02:46 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7168e9cea77bd4f9369c9ce3db728dcf9ba617feddd8941118877a339d915cd1`  
		Last Modified: Fri, 26 Aug 2016 22:02:47 GMT  
		Size: 2.8 MB (2825771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6b581834820453804206f4d1d8b02f71b664fbd0725f96038a2ae9844e319b`  
		Last Modified: Fri, 26 Aug 2016 22:02:45 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87562be77b739d57b3d89667175aa47cf5c8619189be13801f4d6a4b2d37862a`  
		Last Modified: Fri, 26 Aug 2016 22:02:48 GMT  
		Size: 7.8 MB (7787708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb143bdb06225d4d3c60414f31283bca3b0dc4f370065ab31e71a86838e0b85`  
		Last Modified: Fri, 26 Aug 2016 22:02:45 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.6.0-fpm`

```console
$ docker pull wordpress@sha256:df26a966552e568ed5afbd224f3b4b7a49f5f34a4ca1e61a6ecd83cfcd0295a6
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.6.0-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161304048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e6f39e44230e9255ee3041c6654afb9ab9ec72124d25190bf116f349a6f591b`
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
# Fri, 26 Aug 2016 22:06:48 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Fri, 26 Aug 2016 22:06:50 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 26 Aug 2016 22:06:51 GMT
VOLUME [/var/www/html]
# Fri, 26 Aug 2016 22:06:52 GMT
ENV WORDPRESS_VERSION=4.6
# Fri, 26 Aug 2016 22:06:53 GMT
ENV WORDPRESS_SHA1=830962689f350e43cd1a069f3a4f68a44c0339c8
# Fri, 26 Aug 2016 22:06:57 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Fri, 26 Aug 2016 22:06:59 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Fri, 26 Aug 2016 22:07:00 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 22:07:01 GMT
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
	-	`sha256:a1d5e6f2f7a4bd670b127a747f2affeb6386edf30e626b182595b5fb6ca121ae`  
		Last Modified: Fri, 26 Aug 2016 22:07:14 GMT  
		Size: 2.8 MB (2803728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642044d3679fd759aade9077e431e54ac347506e94c155b41cfaac7200515329`  
		Last Modified: Fri, 26 Aug 2016 22:07:12 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e28d8592f18f306c6f66acf2187c96c6fa724126908feffd8d50e3d7e1ecc1`  
		Last Modified: Fri, 26 Aug 2016 22:07:16 GMT  
		Size: 7.8 MB (7787716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cbd020ae73d25da6a9c7125bd4547e22bbd2769d1f5f72bb4e05cfc7023c07`  
		Last Modified: Fri, 26 Aug 2016 22:07:13 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.6-fpm`

```console
$ docker pull wordpress@sha256:df26a966552e568ed5afbd224f3b4b7a49f5f34a4ca1e61a6ecd83cfcd0295a6
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.6-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161304048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e6f39e44230e9255ee3041c6654afb9ab9ec72124d25190bf116f349a6f591b`
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
# Fri, 26 Aug 2016 22:06:48 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Fri, 26 Aug 2016 22:06:50 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 26 Aug 2016 22:06:51 GMT
VOLUME [/var/www/html]
# Fri, 26 Aug 2016 22:06:52 GMT
ENV WORDPRESS_VERSION=4.6
# Fri, 26 Aug 2016 22:06:53 GMT
ENV WORDPRESS_SHA1=830962689f350e43cd1a069f3a4f68a44c0339c8
# Fri, 26 Aug 2016 22:06:57 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Fri, 26 Aug 2016 22:06:59 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Fri, 26 Aug 2016 22:07:00 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 22:07:01 GMT
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
	-	`sha256:a1d5e6f2f7a4bd670b127a747f2affeb6386edf30e626b182595b5fb6ca121ae`  
		Last Modified: Fri, 26 Aug 2016 22:07:14 GMT  
		Size: 2.8 MB (2803728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642044d3679fd759aade9077e431e54ac347506e94c155b41cfaac7200515329`  
		Last Modified: Fri, 26 Aug 2016 22:07:12 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e28d8592f18f306c6f66acf2187c96c6fa724126908feffd8d50e3d7e1ecc1`  
		Last Modified: Fri, 26 Aug 2016 22:07:16 GMT  
		Size: 7.8 MB (7787716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cbd020ae73d25da6a9c7125bd4547e22bbd2769d1f5f72bb4e05cfc7023c07`  
		Last Modified: Fri, 26 Aug 2016 22:07:13 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-fpm`

```console
$ docker pull wordpress@sha256:df26a966552e568ed5afbd224f3b4b7a49f5f34a4ca1e61a6ecd83cfcd0295a6
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161304048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e6f39e44230e9255ee3041c6654afb9ab9ec72124d25190bf116f349a6f591b`
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
# Fri, 26 Aug 2016 22:06:48 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Fri, 26 Aug 2016 22:06:50 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 26 Aug 2016 22:06:51 GMT
VOLUME [/var/www/html]
# Fri, 26 Aug 2016 22:06:52 GMT
ENV WORDPRESS_VERSION=4.6
# Fri, 26 Aug 2016 22:06:53 GMT
ENV WORDPRESS_SHA1=830962689f350e43cd1a069f3a4f68a44c0339c8
# Fri, 26 Aug 2016 22:06:57 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Fri, 26 Aug 2016 22:06:59 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Fri, 26 Aug 2016 22:07:00 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 22:07:01 GMT
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
	-	`sha256:a1d5e6f2f7a4bd670b127a747f2affeb6386edf30e626b182595b5fb6ca121ae`  
		Last Modified: Fri, 26 Aug 2016 22:07:14 GMT  
		Size: 2.8 MB (2803728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642044d3679fd759aade9077e431e54ac347506e94c155b41cfaac7200515329`  
		Last Modified: Fri, 26 Aug 2016 22:07:12 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e28d8592f18f306c6f66acf2187c96c6fa724126908feffd8d50e3d7e1ecc1`  
		Last Modified: Fri, 26 Aug 2016 22:07:16 GMT  
		Size: 7.8 MB (7787716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cbd020ae73d25da6a9c7125bd4547e22bbd2769d1f5f72bb4e05cfc7023c07`  
		Last Modified: Fri, 26 Aug 2016 22:07:13 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:fpm`

```console
$ docker pull wordpress@sha256:df26a966552e568ed5afbd224f3b4b7a49f5f34a4ca1e61a6ecd83cfcd0295a6
```

-	Platforms:
	-	linux; amd64

### `wordpress:fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161304048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e6f39e44230e9255ee3041c6654afb9ab9ec72124d25190bf116f349a6f591b`
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
# Fri, 26 Aug 2016 22:06:48 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Fri, 26 Aug 2016 22:06:50 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 26 Aug 2016 22:06:51 GMT
VOLUME [/var/www/html]
# Fri, 26 Aug 2016 22:06:52 GMT
ENV WORDPRESS_VERSION=4.6
# Fri, 26 Aug 2016 22:06:53 GMT
ENV WORDPRESS_SHA1=830962689f350e43cd1a069f3a4f68a44c0339c8
# Fri, 26 Aug 2016 22:06:57 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Fri, 26 Aug 2016 22:06:59 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Fri, 26 Aug 2016 22:07:00 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 22:07:01 GMT
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
	-	`sha256:a1d5e6f2f7a4bd670b127a747f2affeb6386edf30e626b182595b5fb6ca121ae`  
		Last Modified: Fri, 26 Aug 2016 22:07:14 GMT  
		Size: 2.8 MB (2803728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642044d3679fd759aade9077e431e54ac347506e94c155b41cfaac7200515329`  
		Last Modified: Fri, 26 Aug 2016 22:07:12 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e28d8592f18f306c6f66acf2187c96c6fa724126908feffd8d50e3d7e1ecc1`  
		Last Modified: Fri, 26 Aug 2016 22:07:16 GMT  
		Size: 7.8 MB (7787716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cbd020ae73d25da6a9c7125bd4547e22bbd2769d1f5f72bb4e05cfc7023c07`  
		Last Modified: Fri, 26 Aug 2016 22:07:13 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
