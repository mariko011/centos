<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `wordpress`

-	[`wordpress:4.5.3-apache`](#wordpress453-apache)
-	[`wordpress:4.5-apache`](#wordpress45-apache)
-	[`wordpress:4-apache`](#wordpress4-apache)
-	[`wordpress:apache`](#wordpressapache)
-	[`wordpress:4.5.3`](#wordpress453)
-	[`wordpress:4.5`](#wordpress45)
-	[`wordpress:4`](#wordpress4)
-	[`wordpress:latest`](#wordpresslatest)
-	[`wordpress:4.5.3-fpm`](#wordpress453-fpm)
-	[`wordpress:4.5-fpm`](#wordpress45-fpm)
-	[`wordpress:4-fpm`](#wordpress4-fpm)
-	[`wordpress:fpm`](#wordpressfpm)

## `wordpress:4.5.3-apache`

```console
$ docker pull wordpress@sha256:11c4349a3acec233075bec101157372ce81568e7fde9d42af9dbca1040dc7dbc
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.5.3-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.0 MB (171022781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7441ac916f3d4a80cdfac639b728c8f6a135869eeca0d8f5315c3c752d1bcb0`
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
# Thu, 11 Aug 2016 21:35:33 GMT
RUN a2enmod rewrite expires
# Thu, 11 Aug 2016 21:37:17 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Thu, 11 Aug 2016 21:37:19 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 21:37:19 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 21:37:19 GMT
ENV WORDPRESS_VERSION=4.5.3
# Thu, 11 Aug 2016 21:37:20 GMT
ENV WORDPRESS_SHA1=835b68748dae5a9d31c059313cd0150f03a49269
# Thu, 11 Aug 2016 21:37:22 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Thu, 11 Aug 2016 21:37:23 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Thu, 11 Aug 2016 21:37:24 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 21:37:24 GMT
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
	-	`sha256:b5d23c14e865ce2e09bdaf4677aff9158ac00a6203e70fb792984824cf751556`  
		Last Modified: Thu, 11 Aug 2016 21:39:31 GMT  
		Size: 326.0 B
	-	`sha256:9c164c8f133b84a634df0d6350e26ded92ca4ab0005fa186c79174e28377a704`  
		Last Modified: Thu, 11 Aug 2016 21:39:31 GMT  
		Size: 2.8 MB (2824570 bytes)
	-	`sha256:8eefb94fea07c2063965c4cd11b370e1e70162d0d00abef1b1eb40c78f20c4ff`  
		Last Modified: Thu, 11 Aug 2016 21:39:30 GMT  
		Size: 332.0 B
	-	`sha256:e3c1792c1550b70d75dad04eda61835a049899c099f19fb73cad3a4c3741a414`  
		Last Modified: Thu, 11 Aug 2016 21:39:32 GMT  
		Size: 7.6 MB (7611910 bytes)
	-	`sha256:a4d7a2ce9abda689d94fb16f7b094c0b368c49aed103791c47f21c883ce88a62`  
		Last Modified: Thu, 11 Aug 2016 21:39:30 GMT  
		Size: 2.6 KB (2594 bytes)

## `wordpress:4.5-apache`

```console
$ docker pull wordpress@sha256:11c4349a3acec233075bec101157372ce81568e7fde9d42af9dbca1040dc7dbc
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.5-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.0 MB (171022781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7441ac916f3d4a80cdfac639b728c8f6a135869eeca0d8f5315c3c752d1bcb0`
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
# Thu, 11 Aug 2016 21:35:33 GMT
RUN a2enmod rewrite expires
# Thu, 11 Aug 2016 21:37:17 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Thu, 11 Aug 2016 21:37:19 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 21:37:19 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 21:37:19 GMT
ENV WORDPRESS_VERSION=4.5.3
# Thu, 11 Aug 2016 21:37:20 GMT
ENV WORDPRESS_SHA1=835b68748dae5a9d31c059313cd0150f03a49269
# Thu, 11 Aug 2016 21:37:22 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Thu, 11 Aug 2016 21:37:23 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Thu, 11 Aug 2016 21:37:24 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 21:37:24 GMT
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
	-	`sha256:b5d23c14e865ce2e09bdaf4677aff9158ac00a6203e70fb792984824cf751556`  
		Last Modified: Thu, 11 Aug 2016 21:39:31 GMT  
		Size: 326.0 B
	-	`sha256:9c164c8f133b84a634df0d6350e26ded92ca4ab0005fa186c79174e28377a704`  
		Last Modified: Thu, 11 Aug 2016 21:39:31 GMT  
		Size: 2.8 MB (2824570 bytes)
	-	`sha256:8eefb94fea07c2063965c4cd11b370e1e70162d0d00abef1b1eb40c78f20c4ff`  
		Last Modified: Thu, 11 Aug 2016 21:39:30 GMT  
		Size: 332.0 B
	-	`sha256:e3c1792c1550b70d75dad04eda61835a049899c099f19fb73cad3a4c3741a414`  
		Last Modified: Thu, 11 Aug 2016 21:39:32 GMT  
		Size: 7.6 MB (7611910 bytes)
	-	`sha256:a4d7a2ce9abda689d94fb16f7b094c0b368c49aed103791c47f21c883ce88a62`  
		Last Modified: Thu, 11 Aug 2016 21:39:30 GMT  
		Size: 2.6 KB (2594 bytes)

## `wordpress:4-apache`

```console
$ docker pull wordpress@sha256:11c4349a3acec233075bec101157372ce81568e7fde9d42af9dbca1040dc7dbc
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.0 MB (171022781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7441ac916f3d4a80cdfac639b728c8f6a135869eeca0d8f5315c3c752d1bcb0`
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
# Thu, 11 Aug 2016 21:35:33 GMT
RUN a2enmod rewrite expires
# Thu, 11 Aug 2016 21:37:17 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Thu, 11 Aug 2016 21:37:19 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 21:37:19 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 21:37:19 GMT
ENV WORDPRESS_VERSION=4.5.3
# Thu, 11 Aug 2016 21:37:20 GMT
ENV WORDPRESS_SHA1=835b68748dae5a9d31c059313cd0150f03a49269
# Thu, 11 Aug 2016 21:37:22 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Thu, 11 Aug 2016 21:37:23 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Thu, 11 Aug 2016 21:37:24 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 21:37:24 GMT
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
	-	`sha256:b5d23c14e865ce2e09bdaf4677aff9158ac00a6203e70fb792984824cf751556`  
		Last Modified: Thu, 11 Aug 2016 21:39:31 GMT  
		Size: 326.0 B
	-	`sha256:9c164c8f133b84a634df0d6350e26ded92ca4ab0005fa186c79174e28377a704`  
		Last Modified: Thu, 11 Aug 2016 21:39:31 GMT  
		Size: 2.8 MB (2824570 bytes)
	-	`sha256:8eefb94fea07c2063965c4cd11b370e1e70162d0d00abef1b1eb40c78f20c4ff`  
		Last Modified: Thu, 11 Aug 2016 21:39:30 GMT  
		Size: 332.0 B
	-	`sha256:e3c1792c1550b70d75dad04eda61835a049899c099f19fb73cad3a4c3741a414`  
		Last Modified: Thu, 11 Aug 2016 21:39:32 GMT  
		Size: 7.6 MB (7611910 bytes)
	-	`sha256:a4d7a2ce9abda689d94fb16f7b094c0b368c49aed103791c47f21c883ce88a62`  
		Last Modified: Thu, 11 Aug 2016 21:39:30 GMT  
		Size: 2.6 KB (2594 bytes)

## `wordpress:apache`

```console
$ docker pull wordpress@sha256:11c4349a3acec233075bec101157372ce81568e7fde9d42af9dbca1040dc7dbc
```

-	Platforms:
	-	linux; amd64

### `wordpress:apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.0 MB (171022781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7441ac916f3d4a80cdfac639b728c8f6a135869eeca0d8f5315c3c752d1bcb0`
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
# Thu, 11 Aug 2016 21:35:33 GMT
RUN a2enmod rewrite expires
# Thu, 11 Aug 2016 21:37:17 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Thu, 11 Aug 2016 21:37:19 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 21:37:19 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 21:37:19 GMT
ENV WORDPRESS_VERSION=4.5.3
# Thu, 11 Aug 2016 21:37:20 GMT
ENV WORDPRESS_SHA1=835b68748dae5a9d31c059313cd0150f03a49269
# Thu, 11 Aug 2016 21:37:22 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Thu, 11 Aug 2016 21:37:23 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Thu, 11 Aug 2016 21:37:24 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 21:37:24 GMT
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
	-	`sha256:b5d23c14e865ce2e09bdaf4677aff9158ac00a6203e70fb792984824cf751556`  
		Last Modified: Thu, 11 Aug 2016 21:39:31 GMT  
		Size: 326.0 B
	-	`sha256:9c164c8f133b84a634df0d6350e26ded92ca4ab0005fa186c79174e28377a704`  
		Last Modified: Thu, 11 Aug 2016 21:39:31 GMT  
		Size: 2.8 MB (2824570 bytes)
	-	`sha256:8eefb94fea07c2063965c4cd11b370e1e70162d0d00abef1b1eb40c78f20c4ff`  
		Last Modified: Thu, 11 Aug 2016 21:39:30 GMT  
		Size: 332.0 B
	-	`sha256:e3c1792c1550b70d75dad04eda61835a049899c099f19fb73cad3a4c3741a414`  
		Last Modified: Thu, 11 Aug 2016 21:39:32 GMT  
		Size: 7.6 MB (7611910 bytes)
	-	`sha256:a4d7a2ce9abda689d94fb16f7b094c0b368c49aed103791c47f21c883ce88a62`  
		Last Modified: Thu, 11 Aug 2016 21:39:30 GMT  
		Size: 2.6 KB (2594 bytes)

## `wordpress:4.5.3`

```console
$ docker pull wordpress@sha256:11c4349a3acec233075bec101157372ce81568e7fde9d42af9dbca1040dc7dbc
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.5.3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.0 MB (171022781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7441ac916f3d4a80cdfac639b728c8f6a135869eeca0d8f5315c3c752d1bcb0`
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
# Thu, 11 Aug 2016 21:35:33 GMT
RUN a2enmod rewrite expires
# Thu, 11 Aug 2016 21:37:17 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Thu, 11 Aug 2016 21:37:19 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 21:37:19 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 21:37:19 GMT
ENV WORDPRESS_VERSION=4.5.3
# Thu, 11 Aug 2016 21:37:20 GMT
ENV WORDPRESS_SHA1=835b68748dae5a9d31c059313cd0150f03a49269
# Thu, 11 Aug 2016 21:37:22 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Thu, 11 Aug 2016 21:37:23 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Thu, 11 Aug 2016 21:37:24 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 21:37:24 GMT
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
	-	`sha256:b5d23c14e865ce2e09bdaf4677aff9158ac00a6203e70fb792984824cf751556`  
		Last Modified: Thu, 11 Aug 2016 21:39:31 GMT  
		Size: 326.0 B
	-	`sha256:9c164c8f133b84a634df0d6350e26ded92ca4ab0005fa186c79174e28377a704`  
		Last Modified: Thu, 11 Aug 2016 21:39:31 GMT  
		Size: 2.8 MB (2824570 bytes)
	-	`sha256:8eefb94fea07c2063965c4cd11b370e1e70162d0d00abef1b1eb40c78f20c4ff`  
		Last Modified: Thu, 11 Aug 2016 21:39:30 GMT  
		Size: 332.0 B
	-	`sha256:e3c1792c1550b70d75dad04eda61835a049899c099f19fb73cad3a4c3741a414`  
		Last Modified: Thu, 11 Aug 2016 21:39:32 GMT  
		Size: 7.6 MB (7611910 bytes)
	-	`sha256:a4d7a2ce9abda689d94fb16f7b094c0b368c49aed103791c47f21c883ce88a62`  
		Last Modified: Thu, 11 Aug 2016 21:39:30 GMT  
		Size: 2.6 KB (2594 bytes)

## `wordpress:4.5`

```console
$ docker pull wordpress@sha256:11c4349a3acec233075bec101157372ce81568e7fde9d42af9dbca1040dc7dbc
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.0 MB (171022781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7441ac916f3d4a80cdfac639b728c8f6a135869eeca0d8f5315c3c752d1bcb0`
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
# Thu, 11 Aug 2016 21:35:33 GMT
RUN a2enmod rewrite expires
# Thu, 11 Aug 2016 21:37:17 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Thu, 11 Aug 2016 21:37:19 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 21:37:19 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 21:37:19 GMT
ENV WORDPRESS_VERSION=4.5.3
# Thu, 11 Aug 2016 21:37:20 GMT
ENV WORDPRESS_SHA1=835b68748dae5a9d31c059313cd0150f03a49269
# Thu, 11 Aug 2016 21:37:22 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Thu, 11 Aug 2016 21:37:23 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Thu, 11 Aug 2016 21:37:24 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 21:37:24 GMT
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
	-	`sha256:b5d23c14e865ce2e09bdaf4677aff9158ac00a6203e70fb792984824cf751556`  
		Last Modified: Thu, 11 Aug 2016 21:39:31 GMT  
		Size: 326.0 B
	-	`sha256:9c164c8f133b84a634df0d6350e26ded92ca4ab0005fa186c79174e28377a704`  
		Last Modified: Thu, 11 Aug 2016 21:39:31 GMT  
		Size: 2.8 MB (2824570 bytes)
	-	`sha256:8eefb94fea07c2063965c4cd11b370e1e70162d0d00abef1b1eb40c78f20c4ff`  
		Last Modified: Thu, 11 Aug 2016 21:39:30 GMT  
		Size: 332.0 B
	-	`sha256:e3c1792c1550b70d75dad04eda61835a049899c099f19fb73cad3a4c3741a414`  
		Last Modified: Thu, 11 Aug 2016 21:39:32 GMT  
		Size: 7.6 MB (7611910 bytes)
	-	`sha256:a4d7a2ce9abda689d94fb16f7b094c0b368c49aed103791c47f21c883ce88a62`  
		Last Modified: Thu, 11 Aug 2016 21:39:30 GMT  
		Size: 2.6 KB (2594 bytes)

## `wordpress:4`

```console
$ docker pull wordpress@sha256:11c4349a3acec233075bec101157372ce81568e7fde9d42af9dbca1040dc7dbc
```

-	Platforms:
	-	linux; amd64

### `wordpress:4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.0 MB (171022781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7441ac916f3d4a80cdfac639b728c8f6a135869eeca0d8f5315c3c752d1bcb0`
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
# Thu, 11 Aug 2016 21:35:33 GMT
RUN a2enmod rewrite expires
# Thu, 11 Aug 2016 21:37:17 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Thu, 11 Aug 2016 21:37:19 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 21:37:19 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 21:37:19 GMT
ENV WORDPRESS_VERSION=4.5.3
# Thu, 11 Aug 2016 21:37:20 GMT
ENV WORDPRESS_SHA1=835b68748dae5a9d31c059313cd0150f03a49269
# Thu, 11 Aug 2016 21:37:22 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Thu, 11 Aug 2016 21:37:23 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Thu, 11 Aug 2016 21:37:24 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 21:37:24 GMT
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
	-	`sha256:b5d23c14e865ce2e09bdaf4677aff9158ac00a6203e70fb792984824cf751556`  
		Last Modified: Thu, 11 Aug 2016 21:39:31 GMT  
		Size: 326.0 B
	-	`sha256:9c164c8f133b84a634df0d6350e26ded92ca4ab0005fa186c79174e28377a704`  
		Last Modified: Thu, 11 Aug 2016 21:39:31 GMT  
		Size: 2.8 MB (2824570 bytes)
	-	`sha256:8eefb94fea07c2063965c4cd11b370e1e70162d0d00abef1b1eb40c78f20c4ff`  
		Last Modified: Thu, 11 Aug 2016 21:39:30 GMT  
		Size: 332.0 B
	-	`sha256:e3c1792c1550b70d75dad04eda61835a049899c099f19fb73cad3a4c3741a414`  
		Last Modified: Thu, 11 Aug 2016 21:39:32 GMT  
		Size: 7.6 MB (7611910 bytes)
	-	`sha256:a4d7a2ce9abda689d94fb16f7b094c0b368c49aed103791c47f21c883ce88a62`  
		Last Modified: Thu, 11 Aug 2016 21:39:30 GMT  
		Size: 2.6 KB (2594 bytes)

## `wordpress:latest`

```console
$ docker pull wordpress@sha256:11c4349a3acec233075bec101157372ce81568e7fde9d42af9dbca1040dc7dbc
```

-	Platforms:
	-	linux; amd64

### `wordpress:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.0 MB (171022781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7441ac916f3d4a80cdfac639b728c8f6a135869eeca0d8f5315c3c752d1bcb0`
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
# Thu, 11 Aug 2016 21:35:33 GMT
RUN a2enmod rewrite expires
# Thu, 11 Aug 2016 21:37:17 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Thu, 11 Aug 2016 21:37:19 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 21:37:19 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 21:37:19 GMT
ENV WORDPRESS_VERSION=4.5.3
# Thu, 11 Aug 2016 21:37:20 GMT
ENV WORDPRESS_SHA1=835b68748dae5a9d31c059313cd0150f03a49269
# Thu, 11 Aug 2016 21:37:22 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Thu, 11 Aug 2016 21:37:23 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Thu, 11 Aug 2016 21:37:24 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 21:37:24 GMT
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
	-	`sha256:b5d23c14e865ce2e09bdaf4677aff9158ac00a6203e70fb792984824cf751556`  
		Last Modified: Thu, 11 Aug 2016 21:39:31 GMT  
		Size: 326.0 B
	-	`sha256:9c164c8f133b84a634df0d6350e26ded92ca4ab0005fa186c79174e28377a704`  
		Last Modified: Thu, 11 Aug 2016 21:39:31 GMT  
		Size: 2.8 MB (2824570 bytes)
	-	`sha256:8eefb94fea07c2063965c4cd11b370e1e70162d0d00abef1b1eb40c78f20c4ff`  
		Last Modified: Thu, 11 Aug 2016 21:39:30 GMT  
		Size: 332.0 B
	-	`sha256:e3c1792c1550b70d75dad04eda61835a049899c099f19fb73cad3a4c3741a414`  
		Last Modified: Thu, 11 Aug 2016 21:39:32 GMT  
		Size: 7.6 MB (7611910 bytes)
	-	`sha256:a4d7a2ce9abda689d94fb16f7b094c0b368c49aed103791c47f21c883ce88a62`  
		Last Modified: Thu, 11 Aug 2016 21:39:30 GMT  
		Size: 2.6 KB (2594 bytes)

## `wordpress:4.5.3-fpm`

```console
$ docker pull wordpress@sha256:97fce48329322dfc986112e68ecc6cdf71a38875e9c125caacb43400b9d534be
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.5.3-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161107098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df1ce6c3eae968ae6e3d9cab039b1cc892796e0a91afc2bf1ad0555b12f10e12`
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
# Thu, 11 Aug 2016 21:39:12 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Thu, 11 Aug 2016 21:39:13 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 21:39:14 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 21:39:14 GMT
ENV WORDPRESS_VERSION=4.5.3
# Thu, 11 Aug 2016 21:39:15 GMT
ENV WORDPRESS_SHA1=835b68748dae5a9d31c059313cd0150f03a49269
# Thu, 11 Aug 2016 21:39:17 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Thu, 11 Aug 2016 21:39:18 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Thu, 11 Aug 2016 21:39:19 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 21:39:19 GMT
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
	-	`sha256:bec0308e7d00b73c304abf8b3f1f007aea7911ec33ba71af99628ec27638da5d`  
		Last Modified: Thu, 11 Aug 2016 21:41:14 GMT  
		Size: 2.8 MB (2802497 bytes)
	-	`sha256:76c1a4de1654b5973cf48a974bcba52197d09ec06760e770a20cd0b8547d2eb5`  
		Last Modified: Thu, 11 Aug 2016 21:41:13 GMT  
		Size: 333.0 B
	-	`sha256:20fa594fc30ac6ab3611369c6f1c023f9e166653b4f624e2c2546246bc1adb0d`  
		Last Modified: Thu, 11 Aug 2016 21:41:15 GMT  
		Size: 7.6 MB (7611912 bytes)
	-	`sha256:21c6dfcee7bd583ed05bf73da010a182fac9a5a36cf040a2d40ae771221f23c0`  
		Last Modified: Thu, 11 Aug 2016 21:41:15 GMT  
		Size: 2.6 KB (2594 bytes)

## `wordpress:4.5-fpm`

```console
$ docker pull wordpress@sha256:13ca3269ac31bc80c032702e4620d45067152d59d2e9fb2172ff34729bf29efc
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.5-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160569526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7de6d498e2e16ca3662c2fb483b816afb1d37ef8033fd7ed2279ea4aff89cdf3`
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
# Fri, 29 Jul 2016 21:39:56 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 21:39:57 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 21:46:44 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 21:46:45 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 21:46:46 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 21:46:48 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 29 Jul 2016 21:46:48 GMT
EXPOSE 9000/tcp
# Fri, 29 Jul 2016 21:46:49 GMT
CMD ["php-fpm"]
# Mon, 01 Aug 2016 18:22:13 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Mon, 01 Aug 2016 18:22:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 01 Aug 2016 18:22:15 GMT
VOLUME [/var/www/html]
# Mon, 01 Aug 2016 18:22:16 GMT
ENV WORDPRESS_VERSION=4.5.3
# Mon, 01 Aug 2016 18:22:17 GMT
ENV WORDPRESS_SHA1=835b68748dae5a9d31c059313cd0150f03a49269
# Mon, 01 Aug 2016 18:22:20 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Mon, 01 Aug 2016 18:22:21 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Mon, 01 Aug 2016 18:22:21 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Mon, 01 Aug 2016 18:22:22 GMT
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
	-	`sha256:313efb7f2797d96b93cdc6a1c1628cb0bb064db4082e1a75ad89ea416aba077c`  
		Last Modified: Fri, 29 Jul 2016 22:55:35 GMT  
		Size: 12.4 MB (12399119 bytes)
	-	`sha256:59137d1c51b6cd58a87d11262a2d78b9257747a3bbd6ec05bf4d049b124c8e70`  
		Last Modified: Fri, 29 Jul 2016 22:55:30 GMT  
		Size: 601.0 B
	-	`sha256:265ac2fa951d86cc8d6e91295f961f67bd5e283269334c02545b88265907c038`  
		Last Modified: Fri, 29 Jul 2016 22:55:34 GMT  
		Size: 8.8 MB (8796075 bytes)
	-	`sha256:8f71c291653e80fd8be4c19d5de021fd8ac543b92cfd1ad9ff8b3c3a5bb357bb`  
		Last Modified: Fri, 29 Jul 2016 22:55:30 GMT  
		Size: 1.8 KB (1753 bytes)
	-	`sha256:61edc0cbd1b43bc5c63d0fc1e67306c24e819d4f55c2e8705a7103e78d186922`  
		Last Modified: Fri, 29 Jul 2016 22:55:31 GMT  
		Size: 129.0 B
	-	`sha256:2310b95436007759599e7c1a784ce61d633ed86c55689af737f6907dcc8c6d14`  
		Last Modified: Fri, 29 Jul 2016 22:55:31 GMT  
		Size: 7.6 KB (7631 bytes)
	-	`sha256:cebe100c1c6b5bb386a32b1475c87110fe11e79ff5bec1b4c7d075f982b03949`  
		Last Modified: Mon, 01 Aug 2016 18:22:33 GMT  
		Size: 2.8 MB (2802281 bytes)
	-	`sha256:aa3db96aa3add2a3d5e10af1977c62bf94b0ed56571081bed0a5f636a9cb9816`  
		Last Modified: Mon, 01 Aug 2016 18:22:32 GMT  
		Size: 333.0 B
	-	`sha256:b918a97712d41f8ca5becbc47092c1c9e8a47c8b3df27fc130fd3627ce453f71`  
		Last Modified: Mon, 01 Aug 2016 18:22:35 GMT  
		Size: 7.6 MB (7611912 bytes)
	-	`sha256:61166f99023c2c7adb1008f1ebdf99e2735e97eb5e6b53def57ae25d8c197f70`  
		Last Modified: Mon, 01 Aug 2016 18:22:31 GMT  
		Size: 2.6 KB (2594 bytes)

## `wordpress:4-fpm`

```console
$ docker pull wordpress@sha256:97fce48329322dfc986112e68ecc6cdf71a38875e9c125caacb43400b9d534be
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161107098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df1ce6c3eae968ae6e3d9cab039b1cc892796e0a91afc2bf1ad0555b12f10e12`
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
# Thu, 11 Aug 2016 21:39:12 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Thu, 11 Aug 2016 21:39:13 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 21:39:14 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 21:39:14 GMT
ENV WORDPRESS_VERSION=4.5.3
# Thu, 11 Aug 2016 21:39:15 GMT
ENV WORDPRESS_SHA1=835b68748dae5a9d31c059313cd0150f03a49269
# Thu, 11 Aug 2016 21:39:17 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Thu, 11 Aug 2016 21:39:18 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Thu, 11 Aug 2016 21:39:19 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 21:39:19 GMT
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
	-	`sha256:bec0308e7d00b73c304abf8b3f1f007aea7911ec33ba71af99628ec27638da5d`  
		Last Modified: Thu, 11 Aug 2016 21:41:14 GMT  
		Size: 2.8 MB (2802497 bytes)
	-	`sha256:76c1a4de1654b5973cf48a974bcba52197d09ec06760e770a20cd0b8547d2eb5`  
		Last Modified: Thu, 11 Aug 2016 21:41:13 GMT  
		Size: 333.0 B
	-	`sha256:20fa594fc30ac6ab3611369c6f1c023f9e166653b4f624e2c2546246bc1adb0d`  
		Last Modified: Thu, 11 Aug 2016 21:41:15 GMT  
		Size: 7.6 MB (7611912 bytes)
	-	`sha256:21c6dfcee7bd583ed05bf73da010a182fac9a5a36cf040a2d40ae771221f23c0`  
		Last Modified: Thu, 11 Aug 2016 21:41:15 GMT  
		Size: 2.6 KB (2594 bytes)

## `wordpress:fpm`

```console
$ docker pull wordpress@sha256:97fce48329322dfc986112e68ecc6cdf71a38875e9c125caacb43400b9d534be
```

-	Platforms:
	-	linux; amd64

### `wordpress:fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161107098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df1ce6c3eae968ae6e3d9cab039b1cc892796e0a91afc2bf1ad0555b12f10e12`
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
# Thu, 11 Aug 2016 21:39:12 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Thu, 11 Aug 2016 21:39:13 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 21:39:14 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 21:39:14 GMT
ENV WORDPRESS_VERSION=4.5.3
# Thu, 11 Aug 2016 21:39:15 GMT
ENV WORDPRESS_SHA1=835b68748dae5a9d31c059313cd0150f03a49269
# Thu, 11 Aug 2016 21:39:17 GMT
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Thu, 11 Aug 2016 21:39:18 GMT
COPY file:2fd25399c5e019f7e3a27e0e13bd6c76f8fa6869aadbcbe1c7871afc4814d7ff in /entrypoint.sh
# Thu, 11 Aug 2016 21:39:19 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 21:39:19 GMT
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
	-	`sha256:bec0308e7d00b73c304abf8b3f1f007aea7911ec33ba71af99628ec27638da5d`  
		Last Modified: Thu, 11 Aug 2016 21:41:14 GMT  
		Size: 2.8 MB (2802497 bytes)
	-	`sha256:76c1a4de1654b5973cf48a974bcba52197d09ec06760e770a20cd0b8547d2eb5`  
		Last Modified: Thu, 11 Aug 2016 21:41:13 GMT  
		Size: 333.0 B
	-	`sha256:20fa594fc30ac6ab3611369c6f1c023f9e166653b4f624e2c2546246bc1adb0d`  
		Last Modified: Thu, 11 Aug 2016 21:41:15 GMT  
		Size: 7.6 MB (7611912 bytes)
	-	`sha256:21c6dfcee7bd583ed05bf73da010a182fac9a5a36cf040a2d40ae771221f23c0`  
		Last Modified: Thu, 11 Aug 2016 21:41:15 GMT  
		Size: 2.6 KB (2594 bytes)
