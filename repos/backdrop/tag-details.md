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
$ docker pull backdrop@sha256:faf84537fc4be8ba1aaa47e40a897590c3aa07528118cb5b9618b036379a2e09
```

-	Platforms:
	-	linux; amd64

### `backdrop:1.3.4` - linux; amd64

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
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:f68011060d728c45931c97d00825982e6f7f9950293268a3e4d144bbf422090b`  
		Last Modified: Wed, 17 Aug 2016 19:33:09 GMT  
		Size: 1.3 KB (1251 bytes)
	-	`sha256:ee509c18e9948af83808e7196540071f8beced6821c04083677c0b648a1ffffe`  
		Last Modified: Wed, 17 Aug 2016 19:33:08 GMT  
		Size: 431.0 B
	-	`sha256:530fa759e3b480fc41b4d85530c8a73170e5caf4a08c0954cad6f5c89bbe9bcf`  
		Last Modified: Wed, 17 Aug 2016 19:33:06 GMT  
		Size: 224.0 B
	-	`sha256:1f475346111bcd2dddb362570f2234995b10e2b46016562aa7cc523f057f23fa`  
		Last Modified: Wed, 17 Aug 2016 19:33:06 GMT  
		Size: 476.0 B
	-	`sha256:f1f61150f4b4168ae22211317513054a7fc879c008d6295d790ff444d0d9bed7`  
		Last Modified: Wed, 17 Aug 2016 19:38:58 GMT  
		Size: 12.4 MB (12399122 bytes)
	-	`sha256:a280d2e55d26498615c42abfdedbec63e62b85dfb45826ccf7fd91ed7c7a7b99`  
		Last Modified: Wed, 17 Aug 2016 19:38:55 GMT  
		Size: 490.0 B
	-	`sha256:8c512c19c1207763a6fdf56d90e51a96ad32722c16c29b582b4e97d5bce23f33`  
		Last Modified: Wed, 17 Aug 2016 19:39:02 GMT  
		Size: 16.4 MB (16386027 bytes)
	-	`sha256:62d98144b4a65c296e118bb6608156652fc6ed5b38c8b46e5c4d8bd5aa317d08`  
		Last Modified: Wed, 17 Aug 2016 19:38:55 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:a032fdc86b649031dec65f81035ed93df28b0a1c9e3aca16ac7012d40523d6b8`  
		Last Modified: Wed, 17 Aug 2016 19:38:55 GMT  
		Size: 580.0 B
	-	`sha256:8385304b7a8492d4052a1f66627631b2402b3d4342183d196e87469e7e2361ed`  
		Last Modified: Wed, 17 Aug 2016 20:34:42 GMT  
		Size: 296.0 B
	-	`sha256:7c3e2fde29d86c5bb5ed6990ba93259b5c1c136279f53e2def8a2ac50bed732e`  
		Last Modified: Wed, 17 Aug 2016 20:34:46 GMT  
		Size: 8.2 MB (8247205 bytes)
	-	`sha256:6398a1fc49e6d69e76da1cf349de90b8c1f5e6edd3e4899a7ffa464a4545c5b0`  
		Last Modified: Wed, 17 Aug 2016 20:34:47 GMT  
		Size: 7.8 MB (7783855 bytes)
	-	`sha256:3703ea4789a4bc20102a63688a30ccae63db160df161b1cbc8030afb74da3599`  
		Last Modified: Wed, 17 Aug 2016 20:34:42 GMT  
		Size: 946.0 B

## `backdrop:1.3`

```console
$ docker pull backdrop@sha256:8b5552a982491c24325700f0ef860a32f0c550a4ce54b50d2dea24cf7592c298
```

-	Platforms:
	-	linux; amd64

### `backdrop:1.3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176615337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f7cfbd939277dcd509c02171d2ed00b32a8ec4c2ccb852da79a06eb6a9d7e76`
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
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:43:09 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 16:46:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 16:46:27 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 16:46:27 GMT
ENV BACKDROP_VERSION=1.3.4
# Thu, 11 Aug 2016 16:46:28 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Thu, 11 Aug 2016 16:46:32 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Thu, 11 Aug 2016 16:46:33 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Thu, 11 Aug 2016 16:46:34 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 16:46:34 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:1124754333cc0a780eb94e269aad9cfc8980bb8b4f23ccc7a26b7d7fe4ba9dc4`  
		Last Modified: Thu, 11 Aug 2016 16:46:44 GMT  
		Size: 294.0 B
	-	`sha256:0b4a0f2fb948df71b09a1e0aab2e5c3b0f2c502f82a79dcd0a26f9dc43ff6906`  
		Last Modified: Thu, 11 Aug 2016 16:46:48 GMT  
		Size: 8.2 MB (8247182 bytes)
	-	`sha256:22f79abcb189f13be47a2cdf2e6b6411cfe52b28289f9162f04b96d4fb1e99dd`  
		Last Modified: Thu, 11 Aug 2016 16:46:49 GMT  
		Size: 7.8 MB (7783866 bytes)
	-	`sha256:88f683e9e71036ad3380a1135d4f120c66dacf811ea41d89c02a765ec8385da2`  
		Last Modified: Thu, 11 Aug 2016 16:46:45 GMT  
		Size: 946.0 B

## `backdrop:1`

```console
$ docker pull backdrop@sha256:8b5552a982491c24325700f0ef860a32f0c550a4ce54b50d2dea24cf7592c298
```

-	Platforms:
	-	linux; amd64

### `backdrop:1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176615337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f7cfbd939277dcd509c02171d2ed00b32a8ec4c2ccb852da79a06eb6a9d7e76`
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
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:43:09 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 16:46:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 16:46:27 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 16:46:27 GMT
ENV BACKDROP_VERSION=1.3.4
# Thu, 11 Aug 2016 16:46:28 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Thu, 11 Aug 2016 16:46:32 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Thu, 11 Aug 2016 16:46:33 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Thu, 11 Aug 2016 16:46:34 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 16:46:34 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:1124754333cc0a780eb94e269aad9cfc8980bb8b4f23ccc7a26b7d7fe4ba9dc4`  
		Last Modified: Thu, 11 Aug 2016 16:46:44 GMT  
		Size: 294.0 B
	-	`sha256:0b4a0f2fb948df71b09a1e0aab2e5c3b0f2c502f82a79dcd0a26f9dc43ff6906`  
		Last Modified: Thu, 11 Aug 2016 16:46:48 GMT  
		Size: 8.2 MB (8247182 bytes)
	-	`sha256:22f79abcb189f13be47a2cdf2e6b6411cfe52b28289f9162f04b96d4fb1e99dd`  
		Last Modified: Thu, 11 Aug 2016 16:46:49 GMT  
		Size: 7.8 MB (7783866 bytes)
	-	`sha256:88f683e9e71036ad3380a1135d4f120c66dacf811ea41d89c02a765ec8385da2`  
		Last Modified: Thu, 11 Aug 2016 16:46:45 GMT  
		Size: 946.0 B

## `backdrop:1.3.4-apache`

```console
$ docker pull backdrop@sha256:faf84537fc4be8ba1aaa47e40a897590c3aa07528118cb5b9618b036379a2e09
```

-	Platforms:
	-	linux; amd64

### `backdrop:1.3.4-apache` - linux; amd64

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
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:f68011060d728c45931c97d00825982e6f7f9950293268a3e4d144bbf422090b`  
		Last Modified: Wed, 17 Aug 2016 19:33:09 GMT  
		Size: 1.3 KB (1251 bytes)
	-	`sha256:ee509c18e9948af83808e7196540071f8beced6821c04083677c0b648a1ffffe`  
		Last Modified: Wed, 17 Aug 2016 19:33:08 GMT  
		Size: 431.0 B
	-	`sha256:530fa759e3b480fc41b4d85530c8a73170e5caf4a08c0954cad6f5c89bbe9bcf`  
		Last Modified: Wed, 17 Aug 2016 19:33:06 GMT  
		Size: 224.0 B
	-	`sha256:1f475346111bcd2dddb362570f2234995b10e2b46016562aa7cc523f057f23fa`  
		Last Modified: Wed, 17 Aug 2016 19:33:06 GMT  
		Size: 476.0 B
	-	`sha256:f1f61150f4b4168ae22211317513054a7fc879c008d6295d790ff444d0d9bed7`  
		Last Modified: Wed, 17 Aug 2016 19:38:58 GMT  
		Size: 12.4 MB (12399122 bytes)
	-	`sha256:a280d2e55d26498615c42abfdedbec63e62b85dfb45826ccf7fd91ed7c7a7b99`  
		Last Modified: Wed, 17 Aug 2016 19:38:55 GMT  
		Size: 490.0 B
	-	`sha256:8c512c19c1207763a6fdf56d90e51a96ad32722c16c29b582b4e97d5bce23f33`  
		Last Modified: Wed, 17 Aug 2016 19:39:02 GMT  
		Size: 16.4 MB (16386027 bytes)
	-	`sha256:62d98144b4a65c296e118bb6608156652fc6ed5b38c8b46e5c4d8bd5aa317d08`  
		Last Modified: Wed, 17 Aug 2016 19:38:55 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:a032fdc86b649031dec65f81035ed93df28b0a1c9e3aca16ac7012d40523d6b8`  
		Last Modified: Wed, 17 Aug 2016 19:38:55 GMT  
		Size: 580.0 B
	-	`sha256:8385304b7a8492d4052a1f66627631b2402b3d4342183d196e87469e7e2361ed`  
		Last Modified: Wed, 17 Aug 2016 20:34:42 GMT  
		Size: 296.0 B
	-	`sha256:7c3e2fde29d86c5bb5ed6990ba93259b5c1c136279f53e2def8a2ac50bed732e`  
		Last Modified: Wed, 17 Aug 2016 20:34:46 GMT  
		Size: 8.2 MB (8247205 bytes)
	-	`sha256:6398a1fc49e6d69e76da1cf349de90b8c1f5e6edd3e4899a7ffa464a4545c5b0`  
		Last Modified: Wed, 17 Aug 2016 20:34:47 GMT  
		Size: 7.8 MB (7783855 bytes)
	-	`sha256:3703ea4789a4bc20102a63688a30ccae63db160df161b1cbc8030afb74da3599`  
		Last Modified: Wed, 17 Aug 2016 20:34:42 GMT  
		Size: 946.0 B

## `backdrop:1.3-apache`

```console
$ docker pull backdrop@sha256:8b5552a982491c24325700f0ef860a32f0c550a4ce54b50d2dea24cf7592c298
```

-	Platforms:
	-	linux; amd64

### `backdrop:1.3-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176615337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f7cfbd939277dcd509c02171d2ed00b32a8ec4c2ccb852da79a06eb6a9d7e76`
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
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:43:09 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 16:46:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 16:46:27 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 16:46:27 GMT
ENV BACKDROP_VERSION=1.3.4
# Thu, 11 Aug 2016 16:46:28 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Thu, 11 Aug 2016 16:46:32 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Thu, 11 Aug 2016 16:46:33 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Thu, 11 Aug 2016 16:46:34 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 16:46:34 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:1124754333cc0a780eb94e269aad9cfc8980bb8b4f23ccc7a26b7d7fe4ba9dc4`  
		Last Modified: Thu, 11 Aug 2016 16:46:44 GMT  
		Size: 294.0 B
	-	`sha256:0b4a0f2fb948df71b09a1e0aab2e5c3b0f2c502f82a79dcd0a26f9dc43ff6906`  
		Last Modified: Thu, 11 Aug 2016 16:46:48 GMT  
		Size: 8.2 MB (8247182 bytes)
	-	`sha256:22f79abcb189f13be47a2cdf2e6b6411cfe52b28289f9162f04b96d4fb1e99dd`  
		Last Modified: Thu, 11 Aug 2016 16:46:49 GMT  
		Size: 7.8 MB (7783866 bytes)
	-	`sha256:88f683e9e71036ad3380a1135d4f120c66dacf811ea41d89c02a765ec8385da2`  
		Last Modified: Thu, 11 Aug 2016 16:46:45 GMT  
		Size: 946.0 B

## `backdrop:1-apache`

```console
$ docker pull backdrop@sha256:8b5552a982491c24325700f0ef860a32f0c550a4ce54b50d2dea24cf7592c298
```

-	Platforms:
	-	linux; amd64

### `backdrop:1-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176615337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f7cfbd939277dcd509c02171d2ed00b32a8ec4c2ccb852da79a06eb6a9d7e76`
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
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:43:09 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 16:46:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 16:46:27 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 16:46:27 GMT
ENV BACKDROP_VERSION=1.3.4
# Thu, 11 Aug 2016 16:46:28 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Thu, 11 Aug 2016 16:46:32 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Thu, 11 Aug 2016 16:46:33 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Thu, 11 Aug 2016 16:46:34 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 16:46:34 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:1124754333cc0a780eb94e269aad9cfc8980bb8b4f23ccc7a26b7d7fe4ba9dc4`  
		Last Modified: Thu, 11 Aug 2016 16:46:44 GMT  
		Size: 294.0 B
	-	`sha256:0b4a0f2fb948df71b09a1e0aab2e5c3b0f2c502f82a79dcd0a26f9dc43ff6906`  
		Last Modified: Thu, 11 Aug 2016 16:46:48 GMT  
		Size: 8.2 MB (8247182 bytes)
	-	`sha256:22f79abcb189f13be47a2cdf2e6b6411cfe52b28289f9162f04b96d4fb1e99dd`  
		Last Modified: Thu, 11 Aug 2016 16:46:49 GMT  
		Size: 7.8 MB (7783866 bytes)
	-	`sha256:88f683e9e71036ad3380a1135d4f120c66dacf811ea41d89c02a765ec8385da2`  
		Last Modified: Thu, 11 Aug 2016 16:46:45 GMT  
		Size: 946.0 B

## `backdrop:apache`

```console
$ docker pull backdrop@sha256:8b5552a982491c24325700f0ef860a32f0c550a4ce54b50d2dea24cf7592c298
```

-	Platforms:
	-	linux; amd64

### `backdrop:apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176615337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f7cfbd939277dcd509c02171d2ed00b32a8ec4c2ccb852da79a06eb6a9d7e76`
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
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:43:09 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 16:46:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 16:46:27 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 16:46:27 GMT
ENV BACKDROP_VERSION=1.3.4
# Thu, 11 Aug 2016 16:46:28 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Thu, 11 Aug 2016 16:46:32 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Thu, 11 Aug 2016 16:46:33 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Thu, 11 Aug 2016 16:46:34 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 16:46:34 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:1124754333cc0a780eb94e269aad9cfc8980bb8b4f23ccc7a26b7d7fe4ba9dc4`  
		Last Modified: Thu, 11 Aug 2016 16:46:44 GMT  
		Size: 294.0 B
	-	`sha256:0b4a0f2fb948df71b09a1e0aab2e5c3b0f2c502f82a79dcd0a26f9dc43ff6906`  
		Last Modified: Thu, 11 Aug 2016 16:46:48 GMT  
		Size: 8.2 MB (8247182 bytes)
	-	`sha256:22f79abcb189f13be47a2cdf2e6b6411cfe52b28289f9162f04b96d4fb1e99dd`  
		Last Modified: Thu, 11 Aug 2016 16:46:49 GMT  
		Size: 7.8 MB (7783866 bytes)
	-	`sha256:88f683e9e71036ad3380a1135d4f120c66dacf811ea41d89c02a765ec8385da2`  
		Last Modified: Thu, 11 Aug 2016 16:46:45 GMT  
		Size: 946.0 B

## `backdrop:latest`

```console
$ docker pull backdrop@sha256:8b5552a982491c24325700f0ef860a32f0c550a4ce54b50d2dea24cf7592c298
```

-	Platforms:
	-	linux; amd64

### `backdrop:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176615337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f7cfbd939277dcd509c02171d2ed00b32a8ec4c2ccb852da79a06eb6a9d7e76`
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
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:43:09 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 16:46:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 16:46:27 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 16:46:27 GMT
ENV BACKDROP_VERSION=1.3.4
# Thu, 11 Aug 2016 16:46:28 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Thu, 11 Aug 2016 16:46:32 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Thu, 11 Aug 2016 16:46:33 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Thu, 11 Aug 2016 16:46:34 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 16:46:34 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:1124754333cc0a780eb94e269aad9cfc8980bb8b4f23ccc7a26b7d7fe4ba9dc4`  
		Last Modified: Thu, 11 Aug 2016 16:46:44 GMT  
		Size: 294.0 B
	-	`sha256:0b4a0f2fb948df71b09a1e0aab2e5c3b0f2c502f82a79dcd0a26f9dc43ff6906`  
		Last Modified: Thu, 11 Aug 2016 16:46:48 GMT  
		Size: 8.2 MB (8247182 bytes)
	-	`sha256:22f79abcb189f13be47a2cdf2e6b6411cfe52b28289f9162f04b96d4fb1e99dd`  
		Last Modified: Thu, 11 Aug 2016 16:46:49 GMT  
		Size: 7.8 MB (7783866 bytes)
	-	`sha256:88f683e9e71036ad3380a1135d4f120c66dacf811ea41d89c02a765ec8385da2`  
		Last Modified: Thu, 11 Aug 2016 16:46:45 GMT  
		Size: 946.0 B

## `backdrop:1.3.4-fpm`

```console
$ docker pull backdrop@sha256:b98c63f8929c23649e358c6bf61fcd5a046e23319651abf51fc094363b6b8dac
```

-	Platforms:
	-	linux; amd64

### `backdrop:1.3.4-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166699572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5976a83d013c42562efb702995c975bd01665faf26a5a7ad4baa4bea119de81a`
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
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_VERSION=5.6.24
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:23:19 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:23:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:29:50 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:50 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:29:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 20:29:52 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 20:29:52 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 16:51:31 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 16:51:32 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 16:51:32 GMT
ENV BACKDROP_VERSION=1.3.4
# Thu, 11 Aug 2016 16:51:33 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Thu, 11 Aug 2016 16:51:38 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Thu, 11 Aug 2016 16:51:40 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Thu, 11 Aug 2016 16:51:40 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 16:51:41 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:1a0ed20d7752971350ab581861731d7d71a6eb560b93d48382b5cc2aa07fed8b`  
		Last Modified: Wed, 10 Aug 2016 21:38:50 GMT  
		Size: 12.4 MB (12399120 bytes)
	-	`sha256:d17456fd86bcf1eb916ff4c4b4909dd6ad98736369cff4e5ee9c79e02782fc67`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 490.0 B
	-	`sha256:c8bd75b8802c8ce64c4a28486fbfb4bde4247b27f5f8363dd8a8469ac89b1e85`  
		Last Modified: Wed, 10 Aug 2016 21:38:48 GMT  
		Size: 9.3 MB (9333467 bytes)
	-	`sha256:0054f99dc6ca14454002cd76f78264c84cdfd9c57cea265ea0a6f601dab80158`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:1c8ec71281514f1d63f59000b5fd9082baa8a6d34e7e591d7cd22928879a5d18`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 129.0 B
	-	`sha256:fa513925a4eb93b436ccdb48c9b0edca88237b4abdebea3245da69a6b37deaf9`  
		Last Modified: Wed, 10 Aug 2016 21:38:46 GMT  
		Size: 7.6 KB (7629 bytes)
	-	`sha256:80808cc77e4ce918422e0afda0f1438bb3b521746f67791e4407ede8fe93d968`  
		Last Modified: Thu, 11 Aug 2016 16:51:56 GMT  
		Size: 8.2 MB (8224999 bytes)
	-	`sha256:94fcd68fac537f027a4a9eaf7bf18cb3023a1ef930f5935b0065d86f4b28c584`  
		Last Modified: Thu, 11 Aug 2016 16:51:55 GMT  
		Size: 7.8 MB (7783865 bytes)
	-	`sha256:ffe11633b1620b8daecbc56791831e66ce2ee2b15242905de06aa69f2ffa3510`  
		Last Modified: Thu, 11 Aug 2016 16:51:51 GMT  
		Size: 946.0 B

## `backdrop:1.3-fpm`

```console
$ docker pull backdrop@sha256:b98c63f8929c23649e358c6bf61fcd5a046e23319651abf51fc094363b6b8dac
```

-	Platforms:
	-	linux; amd64

### `backdrop:1.3-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166699572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5976a83d013c42562efb702995c975bd01665faf26a5a7ad4baa4bea119de81a`
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
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_VERSION=5.6.24
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:23:19 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:23:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:29:50 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:50 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:29:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 20:29:52 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 20:29:52 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 16:51:31 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 16:51:32 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 16:51:32 GMT
ENV BACKDROP_VERSION=1.3.4
# Thu, 11 Aug 2016 16:51:33 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Thu, 11 Aug 2016 16:51:38 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Thu, 11 Aug 2016 16:51:40 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Thu, 11 Aug 2016 16:51:40 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 16:51:41 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:1a0ed20d7752971350ab581861731d7d71a6eb560b93d48382b5cc2aa07fed8b`  
		Last Modified: Wed, 10 Aug 2016 21:38:50 GMT  
		Size: 12.4 MB (12399120 bytes)
	-	`sha256:d17456fd86bcf1eb916ff4c4b4909dd6ad98736369cff4e5ee9c79e02782fc67`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 490.0 B
	-	`sha256:c8bd75b8802c8ce64c4a28486fbfb4bde4247b27f5f8363dd8a8469ac89b1e85`  
		Last Modified: Wed, 10 Aug 2016 21:38:48 GMT  
		Size: 9.3 MB (9333467 bytes)
	-	`sha256:0054f99dc6ca14454002cd76f78264c84cdfd9c57cea265ea0a6f601dab80158`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:1c8ec71281514f1d63f59000b5fd9082baa8a6d34e7e591d7cd22928879a5d18`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 129.0 B
	-	`sha256:fa513925a4eb93b436ccdb48c9b0edca88237b4abdebea3245da69a6b37deaf9`  
		Last Modified: Wed, 10 Aug 2016 21:38:46 GMT  
		Size: 7.6 KB (7629 bytes)
	-	`sha256:80808cc77e4ce918422e0afda0f1438bb3b521746f67791e4407ede8fe93d968`  
		Last Modified: Thu, 11 Aug 2016 16:51:56 GMT  
		Size: 8.2 MB (8224999 bytes)
	-	`sha256:94fcd68fac537f027a4a9eaf7bf18cb3023a1ef930f5935b0065d86f4b28c584`  
		Last Modified: Thu, 11 Aug 2016 16:51:55 GMT  
		Size: 7.8 MB (7783865 bytes)
	-	`sha256:ffe11633b1620b8daecbc56791831e66ce2ee2b15242905de06aa69f2ffa3510`  
		Last Modified: Thu, 11 Aug 2016 16:51:51 GMT  
		Size: 946.0 B

## `backdrop:1-fpm`

```console
$ docker pull backdrop@sha256:b98c63f8929c23649e358c6bf61fcd5a046e23319651abf51fc094363b6b8dac
```

-	Platforms:
	-	linux; amd64

### `backdrop:1-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166699572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5976a83d013c42562efb702995c975bd01665faf26a5a7ad4baa4bea119de81a`
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
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_VERSION=5.6.24
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:23:19 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:23:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:29:50 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:50 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:29:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 20:29:52 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 20:29:52 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 16:51:31 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 16:51:32 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 16:51:32 GMT
ENV BACKDROP_VERSION=1.3.4
# Thu, 11 Aug 2016 16:51:33 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Thu, 11 Aug 2016 16:51:38 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Thu, 11 Aug 2016 16:51:40 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Thu, 11 Aug 2016 16:51:40 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 16:51:41 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:1a0ed20d7752971350ab581861731d7d71a6eb560b93d48382b5cc2aa07fed8b`  
		Last Modified: Wed, 10 Aug 2016 21:38:50 GMT  
		Size: 12.4 MB (12399120 bytes)
	-	`sha256:d17456fd86bcf1eb916ff4c4b4909dd6ad98736369cff4e5ee9c79e02782fc67`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 490.0 B
	-	`sha256:c8bd75b8802c8ce64c4a28486fbfb4bde4247b27f5f8363dd8a8469ac89b1e85`  
		Last Modified: Wed, 10 Aug 2016 21:38:48 GMT  
		Size: 9.3 MB (9333467 bytes)
	-	`sha256:0054f99dc6ca14454002cd76f78264c84cdfd9c57cea265ea0a6f601dab80158`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:1c8ec71281514f1d63f59000b5fd9082baa8a6d34e7e591d7cd22928879a5d18`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 129.0 B
	-	`sha256:fa513925a4eb93b436ccdb48c9b0edca88237b4abdebea3245da69a6b37deaf9`  
		Last Modified: Wed, 10 Aug 2016 21:38:46 GMT  
		Size: 7.6 KB (7629 bytes)
	-	`sha256:80808cc77e4ce918422e0afda0f1438bb3b521746f67791e4407ede8fe93d968`  
		Last Modified: Thu, 11 Aug 2016 16:51:56 GMT  
		Size: 8.2 MB (8224999 bytes)
	-	`sha256:94fcd68fac537f027a4a9eaf7bf18cb3023a1ef930f5935b0065d86f4b28c584`  
		Last Modified: Thu, 11 Aug 2016 16:51:55 GMT  
		Size: 7.8 MB (7783865 bytes)
	-	`sha256:ffe11633b1620b8daecbc56791831e66ce2ee2b15242905de06aa69f2ffa3510`  
		Last Modified: Thu, 11 Aug 2016 16:51:51 GMT  
		Size: 946.0 B

## `backdrop:fpm`

```console
$ docker pull backdrop@sha256:b98c63f8929c23649e358c6bf61fcd5a046e23319651abf51fc094363b6b8dac
```

-	Platforms:
	-	linux; amd64

### `backdrop:fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166699572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5976a83d013c42562efb702995c975bd01665faf26a5a7ad4baa4bea119de81a`
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
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_VERSION=5.6.24
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:23:19 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:23:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:29:50 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:50 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:29:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 20:29:52 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 20:29:52 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 16:51:31 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 16:51:32 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 16:51:32 GMT
ENV BACKDROP_VERSION=1.3.4
# Thu, 11 Aug 2016 16:51:33 GMT
ENV BACKDROP_MD5=1bcfacab25cd71743ad87bdf391a53c8
# Thu, 11 Aug 2016 16:51:38 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Thu, 11 Aug 2016 16:51:40 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh
# Thu, 11 Aug 2016 16:51:40 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 16:51:41 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:1a0ed20d7752971350ab581861731d7d71a6eb560b93d48382b5cc2aa07fed8b`  
		Last Modified: Wed, 10 Aug 2016 21:38:50 GMT  
		Size: 12.4 MB (12399120 bytes)
	-	`sha256:d17456fd86bcf1eb916ff4c4b4909dd6ad98736369cff4e5ee9c79e02782fc67`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 490.0 B
	-	`sha256:c8bd75b8802c8ce64c4a28486fbfb4bde4247b27f5f8363dd8a8469ac89b1e85`  
		Last Modified: Wed, 10 Aug 2016 21:38:48 GMT  
		Size: 9.3 MB (9333467 bytes)
	-	`sha256:0054f99dc6ca14454002cd76f78264c84cdfd9c57cea265ea0a6f601dab80158`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:1c8ec71281514f1d63f59000b5fd9082baa8a6d34e7e591d7cd22928879a5d18`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 129.0 B
	-	`sha256:fa513925a4eb93b436ccdb48c9b0edca88237b4abdebea3245da69a6b37deaf9`  
		Last Modified: Wed, 10 Aug 2016 21:38:46 GMT  
		Size: 7.6 KB (7629 bytes)
	-	`sha256:80808cc77e4ce918422e0afda0f1438bb3b521746f67791e4407ede8fe93d968`  
		Last Modified: Thu, 11 Aug 2016 16:51:56 GMT  
		Size: 8.2 MB (8224999 bytes)
	-	`sha256:94fcd68fac537f027a4a9eaf7bf18cb3023a1ef930f5935b0065d86f4b28c584`  
		Last Modified: Thu, 11 Aug 2016 16:51:55 GMT  
		Size: 7.8 MB (7783865 bytes)
	-	`sha256:ffe11633b1620b8daecbc56791831e66ce2ee2b15242905de06aa69f2ffa3510`  
		Last Modified: Thu, 11 Aug 2016 16:51:51 GMT  
		Size: 946.0 B
