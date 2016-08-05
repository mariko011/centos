<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `drupal`

-	[`drupal:7.50-apache`](#drupal750-apache)
-	[`drupal:7-apache`](#drupal7-apache)
-	[`drupal:7.50`](#drupal750)
-	[`drupal:7`](#drupal7)
-	[`drupal:7.50-fpm`](#drupal750-fpm)
-	[`drupal:7-fpm`](#drupal7-fpm)
-	[`drupal:8.1.8-apache`](#drupal818-apache)
-	[`drupal:8.1-apache`](#drupal81-apache)
-	[`drupal:8-apache`](#drupal8-apache)
-	[`drupal:apache`](#drupalapache)
-	[`drupal:8.1.8`](#drupal818)
-	[`drupal:8.1`](#drupal81)
-	[`drupal:8`](#drupal8)
-	[`drupal:latest`](#drupallatest)
-	[`drupal:8.1.8-fpm`](#drupal818-fpm)
-	[`drupal:8.1-fpm`](#drupal81-fpm)
-	[`drupal:8-fpm`](#drupal8-fpm)
-	[`drupal:fpm`](#drupalfpm)
-	[`drupal:8.2.0-beta1-apache`](#drupal820-beta1-apache)
-	[`drupal:8.2.0-apache`](#drupal820-apache)
-	[`drupal:8.2-apache`](#drupal82-apache)
-	[`drupal:8.2.0-beta1`](#drupal820-beta1)
-	[`drupal:8.2.0`](#drupal820)
-	[`drupal:8.2`](#drupal82)
-	[`drupal:8.2.0-beta1-fpm`](#drupal820-beta1-fpm)
-	[`drupal:8.2.0-fpm`](#drupal820-fpm)
-	[`drupal:8.2-fpm`](#drupal82-fpm)

## `drupal:7.50-apache`

```console
$ docker pull drupal@sha256:476d1b24a3742f446b8a15edc6560295ddce10c2fb5414bbf1ac4cabc4a2a5d2
```

-	Platforms:
	-	linux; amd64

### `drupal:7.50-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (174969465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7243c9d1fac38b539ef07a6674d1b33816087fc222f6110ef257d242b9e8ba2e`
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
# Fri, 29 Jul 2016 20:49:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 29 Jul 2016 20:49:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 29 Jul 2016 20:49:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 29 Jul 2016 20:49:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 29 Jul 2016 20:49:49 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 29 Jul 2016 20:49:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 29 Jul 2016 20:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:49:54 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:49:54 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 20:55:34 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 20:55:35 GMT
EXPOSE 80/tcp
# Fri, 29 Jul 2016 20:55:35 GMT
CMD ["apache2-foreground"]
# Mon, 01 Aug 2016 17:07:59 GMT
RUN a2enmod rewrite
# Mon, 01 Aug 2016 17:11:50 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:11:51 GMT
WORKDIR /var/www/html
# Mon, 01 Aug 2016 17:11:51 GMT
ENV DRUPAL_VERSION=7.50
# Mon, 01 Aug 2016 17:11:52 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Mon, 01 Aug 2016 17:11:55 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:c0c9ad6136b5e7b142c48c7167eede3d15af54c538f7f3177c50693006cca242`  
		Last Modified: Fri, 29 Jul 2016 22:49:15 GMT  
		Size: 276.0 B
	-	`sha256:b4b0c030555d4340cfe8288272d2bcb291c2f483f1957f1341cfaaea369dc109`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 431.0 B
	-	`sha256:6e898edbabd79f8b8eaf7351077eff9966a11459347f335757f5341a0a889c16`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 222.0 B
	-	`sha256:e4b8d84dea782a5effd404eec31320063107e0bb56fccaffae77c4430c8082a3`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 475.0 B
	-	`sha256:1e6b3cc2b52718f773b43ca8767f59a7f047a156e9fb1621bda0c003fd0c657d`  
		Last Modified: Fri, 29 Jul 2016 22:49:12 GMT  
		Size: 12.2 MB (12245146 bytes)
	-	`sha256:a25fefc3be7a4e50472e4095107f806811a5ee29de98714b9d2860a6d795400f`  
		Last Modified: Fri, 29 Jul 2016 22:49:11 GMT  
		Size: 603.0 B
	-	`sha256:508a3f831da53af9233d89c5b841cb5cb5597c9a4e347e31299d2041ffe6510e`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 19.6 MB (19570015 bytes)
	-	`sha256:53c7d0452155a0552db75c4b94a818552dc8e2f6d5a3233ee86307bcedd93960`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 1.8 KB (1754 bytes)
	-	`sha256:3e27a721a2af317ae9f2ad1996c72c6b72699b69519fea1051317b2e1d33738d`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 583.0 B
	-	`sha256:3cedd137f581a331bd5d2734e85908fd43022fa91640ff3bfdab938dad82f79b`  
		Last Modified: Mon, 01 Aug 2016 17:12:04 GMT  
		Size: 294.0 B
	-	`sha256:cb6603bf581fc2a89f6c9d6ce2fb095abf414f12409729ddfbffdb9298f9ef0e`  
		Last Modified: Mon, 01 Aug 2016 17:12:07 GMT  
		Size: 8.1 MB (8072283 bytes)
	-	`sha256:676e0971530486f2dcf97eef4f2e14934b0a3457415766f35111303d57e798b7`  
		Last Modified: Mon, 01 Aug 2016 17:12:06 GMT  
		Size: 3.3 MB (3283741 bytes)

## `drupal:7-apache`

```console
$ docker pull drupal@sha256:476d1b24a3742f446b8a15edc6560295ddce10c2fb5414bbf1ac4cabc4a2a5d2
```

-	Platforms:
	-	linux; amd64

### `drupal:7-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (174969465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7243c9d1fac38b539ef07a6674d1b33816087fc222f6110ef257d242b9e8ba2e`
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
# Fri, 29 Jul 2016 20:49:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 29 Jul 2016 20:49:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 29 Jul 2016 20:49:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 29 Jul 2016 20:49:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 29 Jul 2016 20:49:49 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 29 Jul 2016 20:49:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 29 Jul 2016 20:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:49:54 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:49:54 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 20:55:34 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 20:55:35 GMT
EXPOSE 80/tcp
# Fri, 29 Jul 2016 20:55:35 GMT
CMD ["apache2-foreground"]
# Mon, 01 Aug 2016 17:07:59 GMT
RUN a2enmod rewrite
# Mon, 01 Aug 2016 17:11:50 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:11:51 GMT
WORKDIR /var/www/html
# Mon, 01 Aug 2016 17:11:51 GMT
ENV DRUPAL_VERSION=7.50
# Mon, 01 Aug 2016 17:11:52 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Mon, 01 Aug 2016 17:11:55 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:c0c9ad6136b5e7b142c48c7167eede3d15af54c538f7f3177c50693006cca242`  
		Last Modified: Fri, 29 Jul 2016 22:49:15 GMT  
		Size: 276.0 B
	-	`sha256:b4b0c030555d4340cfe8288272d2bcb291c2f483f1957f1341cfaaea369dc109`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 431.0 B
	-	`sha256:6e898edbabd79f8b8eaf7351077eff9966a11459347f335757f5341a0a889c16`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 222.0 B
	-	`sha256:e4b8d84dea782a5effd404eec31320063107e0bb56fccaffae77c4430c8082a3`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 475.0 B
	-	`sha256:1e6b3cc2b52718f773b43ca8767f59a7f047a156e9fb1621bda0c003fd0c657d`  
		Last Modified: Fri, 29 Jul 2016 22:49:12 GMT  
		Size: 12.2 MB (12245146 bytes)
	-	`sha256:a25fefc3be7a4e50472e4095107f806811a5ee29de98714b9d2860a6d795400f`  
		Last Modified: Fri, 29 Jul 2016 22:49:11 GMT  
		Size: 603.0 B
	-	`sha256:508a3f831da53af9233d89c5b841cb5cb5597c9a4e347e31299d2041ffe6510e`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 19.6 MB (19570015 bytes)
	-	`sha256:53c7d0452155a0552db75c4b94a818552dc8e2f6d5a3233ee86307bcedd93960`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 1.8 KB (1754 bytes)
	-	`sha256:3e27a721a2af317ae9f2ad1996c72c6b72699b69519fea1051317b2e1d33738d`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 583.0 B
	-	`sha256:3cedd137f581a331bd5d2734e85908fd43022fa91640ff3bfdab938dad82f79b`  
		Last Modified: Mon, 01 Aug 2016 17:12:04 GMT  
		Size: 294.0 B
	-	`sha256:cb6603bf581fc2a89f6c9d6ce2fb095abf414f12409729ddfbffdb9298f9ef0e`  
		Last Modified: Mon, 01 Aug 2016 17:12:07 GMT  
		Size: 8.1 MB (8072283 bytes)
	-	`sha256:676e0971530486f2dcf97eef4f2e14934b0a3457415766f35111303d57e798b7`  
		Last Modified: Mon, 01 Aug 2016 17:12:06 GMT  
		Size: 3.3 MB (3283741 bytes)

## `drupal:7.50`

```console
$ docker pull drupal@sha256:476d1b24a3742f446b8a15edc6560295ddce10c2fb5414bbf1ac4cabc4a2a5d2
```

-	Platforms:
	-	linux; amd64

### `drupal:7.50` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (174969465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7243c9d1fac38b539ef07a6674d1b33816087fc222f6110ef257d242b9e8ba2e`
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
# Fri, 29 Jul 2016 20:49:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 29 Jul 2016 20:49:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 29 Jul 2016 20:49:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 29 Jul 2016 20:49:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 29 Jul 2016 20:49:49 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 29 Jul 2016 20:49:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 29 Jul 2016 20:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:49:54 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:49:54 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 20:55:34 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 20:55:35 GMT
EXPOSE 80/tcp
# Fri, 29 Jul 2016 20:55:35 GMT
CMD ["apache2-foreground"]
# Mon, 01 Aug 2016 17:07:59 GMT
RUN a2enmod rewrite
# Mon, 01 Aug 2016 17:11:50 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:11:51 GMT
WORKDIR /var/www/html
# Mon, 01 Aug 2016 17:11:51 GMT
ENV DRUPAL_VERSION=7.50
# Mon, 01 Aug 2016 17:11:52 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Mon, 01 Aug 2016 17:11:55 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:c0c9ad6136b5e7b142c48c7167eede3d15af54c538f7f3177c50693006cca242`  
		Last Modified: Fri, 29 Jul 2016 22:49:15 GMT  
		Size: 276.0 B
	-	`sha256:b4b0c030555d4340cfe8288272d2bcb291c2f483f1957f1341cfaaea369dc109`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 431.0 B
	-	`sha256:6e898edbabd79f8b8eaf7351077eff9966a11459347f335757f5341a0a889c16`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 222.0 B
	-	`sha256:e4b8d84dea782a5effd404eec31320063107e0bb56fccaffae77c4430c8082a3`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 475.0 B
	-	`sha256:1e6b3cc2b52718f773b43ca8767f59a7f047a156e9fb1621bda0c003fd0c657d`  
		Last Modified: Fri, 29 Jul 2016 22:49:12 GMT  
		Size: 12.2 MB (12245146 bytes)
	-	`sha256:a25fefc3be7a4e50472e4095107f806811a5ee29de98714b9d2860a6d795400f`  
		Last Modified: Fri, 29 Jul 2016 22:49:11 GMT  
		Size: 603.0 B
	-	`sha256:508a3f831da53af9233d89c5b841cb5cb5597c9a4e347e31299d2041ffe6510e`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 19.6 MB (19570015 bytes)
	-	`sha256:53c7d0452155a0552db75c4b94a818552dc8e2f6d5a3233ee86307bcedd93960`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 1.8 KB (1754 bytes)
	-	`sha256:3e27a721a2af317ae9f2ad1996c72c6b72699b69519fea1051317b2e1d33738d`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 583.0 B
	-	`sha256:3cedd137f581a331bd5d2734e85908fd43022fa91640ff3bfdab938dad82f79b`  
		Last Modified: Mon, 01 Aug 2016 17:12:04 GMT  
		Size: 294.0 B
	-	`sha256:cb6603bf581fc2a89f6c9d6ce2fb095abf414f12409729ddfbffdb9298f9ef0e`  
		Last Modified: Mon, 01 Aug 2016 17:12:07 GMT  
		Size: 8.1 MB (8072283 bytes)
	-	`sha256:676e0971530486f2dcf97eef4f2e14934b0a3457415766f35111303d57e798b7`  
		Last Modified: Mon, 01 Aug 2016 17:12:06 GMT  
		Size: 3.3 MB (3283741 bytes)

## `drupal:7`

```console
$ docker pull drupal@sha256:476d1b24a3742f446b8a15edc6560295ddce10c2fb5414bbf1ac4cabc4a2a5d2
```

-	Platforms:
	-	linux; amd64

### `drupal:7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (174969465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7243c9d1fac38b539ef07a6674d1b33816087fc222f6110ef257d242b9e8ba2e`
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
# Fri, 29 Jul 2016 20:49:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 29 Jul 2016 20:49:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 29 Jul 2016 20:49:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 29 Jul 2016 20:49:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 29 Jul 2016 20:49:49 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 29 Jul 2016 20:49:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 29 Jul 2016 20:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:49:54 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:49:54 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 20:55:34 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 20:55:35 GMT
EXPOSE 80/tcp
# Fri, 29 Jul 2016 20:55:35 GMT
CMD ["apache2-foreground"]
# Mon, 01 Aug 2016 17:07:59 GMT
RUN a2enmod rewrite
# Mon, 01 Aug 2016 17:11:50 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:11:51 GMT
WORKDIR /var/www/html
# Mon, 01 Aug 2016 17:11:51 GMT
ENV DRUPAL_VERSION=7.50
# Mon, 01 Aug 2016 17:11:52 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Mon, 01 Aug 2016 17:11:55 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:c0c9ad6136b5e7b142c48c7167eede3d15af54c538f7f3177c50693006cca242`  
		Last Modified: Fri, 29 Jul 2016 22:49:15 GMT  
		Size: 276.0 B
	-	`sha256:b4b0c030555d4340cfe8288272d2bcb291c2f483f1957f1341cfaaea369dc109`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 431.0 B
	-	`sha256:6e898edbabd79f8b8eaf7351077eff9966a11459347f335757f5341a0a889c16`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 222.0 B
	-	`sha256:e4b8d84dea782a5effd404eec31320063107e0bb56fccaffae77c4430c8082a3`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 475.0 B
	-	`sha256:1e6b3cc2b52718f773b43ca8767f59a7f047a156e9fb1621bda0c003fd0c657d`  
		Last Modified: Fri, 29 Jul 2016 22:49:12 GMT  
		Size: 12.2 MB (12245146 bytes)
	-	`sha256:a25fefc3be7a4e50472e4095107f806811a5ee29de98714b9d2860a6d795400f`  
		Last Modified: Fri, 29 Jul 2016 22:49:11 GMT  
		Size: 603.0 B
	-	`sha256:508a3f831da53af9233d89c5b841cb5cb5597c9a4e347e31299d2041ffe6510e`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 19.6 MB (19570015 bytes)
	-	`sha256:53c7d0452155a0552db75c4b94a818552dc8e2f6d5a3233ee86307bcedd93960`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 1.8 KB (1754 bytes)
	-	`sha256:3e27a721a2af317ae9f2ad1996c72c6b72699b69519fea1051317b2e1d33738d`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 583.0 B
	-	`sha256:3cedd137f581a331bd5d2734e85908fd43022fa91640ff3bfdab938dad82f79b`  
		Last Modified: Mon, 01 Aug 2016 17:12:04 GMT  
		Size: 294.0 B
	-	`sha256:cb6603bf581fc2a89f6c9d6ce2fb095abf414f12409729ddfbffdb9298f9ef0e`  
		Last Modified: Mon, 01 Aug 2016 17:12:07 GMT  
		Size: 8.1 MB (8072283 bytes)
	-	`sha256:676e0971530486f2dcf97eef4f2e14934b0a3457415766f35111303d57e798b7`  
		Last Modified: Mon, 01 Aug 2016 17:12:06 GMT  
		Size: 3.3 MB (3283741 bytes)

## `drupal:7.50-fpm`

```console
$ docker pull drupal@sha256:5558f8e078e94aed0ae21dfe8622fe77575f76e17cf49e58a77fa70cf6afd70e
```

-	Platforms:
	-	linux; amd64

### `drupal:7.50-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.1 MB (165149129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f9f940b44367f4261c9cdcb2236e68edf3144018fe11c84531bf1d448d5e65`
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
# Fri, 29 Jul 2016 20:55:36 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:55:38 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:55:41 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:55:42 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 21:03:31 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 21:03:33 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 21:03:33 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 21:03:35 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 29 Jul 2016 21:03:35 GMT
EXPOSE 9000/tcp
# Fri, 29 Jul 2016 21:03:36 GMT
CMD ["php-fpm"]
# Mon, 01 Aug 2016 17:27:29 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:27:29 GMT
WORKDIR /var/www/html
# Mon, 01 Aug 2016 17:27:30 GMT
ENV DRUPAL_VERSION=7.50
# Mon, 01 Aug 2016 17:27:31 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Mon, 01 Aug 2016 17:27:34 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:8c3225e17fffca635cd998e31ec3d64611324c552cdd362239d379e3edcaebc8`  
		Last Modified: Fri, 29 Jul 2016 22:50:05 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5a54ff814bfe44ab207d1870d77b14e90f1686fa303d3095058f5d1489ec034c`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 601.0 B
	-	`sha256:dfae4accf5c015e402ac54bde22cbadf7394aec72f132227a5f0d284d05babcc`  
		Last Modified: Fri, 29 Jul 2016 22:50:05 GMT  
		Size: 12.6 MB (12613088 bytes)
	-	`sha256:7f65f3924117e7cb8c91bb126c730d3beeaa1d9b8e77409c0a28385b026f0801`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 1.8 KB (1753 bytes)
	-	`sha256:97f23dcb5d021b11fc14039ade2bfe2c71df9ee7dceb0aeb09bf594a318f9400`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 127.0 B
	-	`sha256:c3fc7300be3912993816fa6f109851e1f87acad0692c8fce70f83e253e48d0a8`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 7.7 KB (7692 bytes)
	-	`sha256:721e0985152643a7b039f9a4903dab4f91a9e5b8e0b24fdfa88b06f2989b063c`  
		Last Modified: Mon, 01 Aug 2016 17:27:52 GMT  
		Size: 8.0 MB (8049878 bytes)
	-	`sha256:160a3a49ed5c7d045b7703ea4164928a1fd07e612d2cc6861f73811ac1097723`  
		Last Modified: Mon, 01 Aug 2016 17:27:48 GMT  
		Size: 3.3 MB (3283743 bytes)

## `drupal:7-fpm`

```console
$ docker pull drupal@sha256:5558f8e078e94aed0ae21dfe8622fe77575f76e17cf49e58a77fa70cf6afd70e
```

-	Platforms:
	-	linux; amd64

### `drupal:7-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.1 MB (165149129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f9f940b44367f4261c9cdcb2236e68edf3144018fe11c84531bf1d448d5e65`
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
# Fri, 29 Jul 2016 20:55:36 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:55:38 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:55:41 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:55:42 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 21:03:31 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 21:03:33 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 21:03:33 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 21:03:35 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 29 Jul 2016 21:03:35 GMT
EXPOSE 9000/tcp
# Fri, 29 Jul 2016 21:03:36 GMT
CMD ["php-fpm"]
# Mon, 01 Aug 2016 17:27:29 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:27:29 GMT
WORKDIR /var/www/html
# Mon, 01 Aug 2016 17:27:30 GMT
ENV DRUPAL_VERSION=7.50
# Mon, 01 Aug 2016 17:27:31 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Mon, 01 Aug 2016 17:27:34 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:8c3225e17fffca635cd998e31ec3d64611324c552cdd362239d379e3edcaebc8`  
		Last Modified: Fri, 29 Jul 2016 22:50:05 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5a54ff814bfe44ab207d1870d77b14e90f1686fa303d3095058f5d1489ec034c`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 601.0 B
	-	`sha256:dfae4accf5c015e402ac54bde22cbadf7394aec72f132227a5f0d284d05babcc`  
		Last Modified: Fri, 29 Jul 2016 22:50:05 GMT  
		Size: 12.6 MB (12613088 bytes)
	-	`sha256:7f65f3924117e7cb8c91bb126c730d3beeaa1d9b8e77409c0a28385b026f0801`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 1.8 KB (1753 bytes)
	-	`sha256:97f23dcb5d021b11fc14039ade2bfe2c71df9ee7dceb0aeb09bf594a318f9400`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 127.0 B
	-	`sha256:c3fc7300be3912993816fa6f109851e1f87acad0692c8fce70f83e253e48d0a8`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 7.7 KB (7692 bytes)
	-	`sha256:721e0985152643a7b039f9a4903dab4f91a9e5b8e0b24fdfa88b06f2989b063c`  
		Last Modified: Mon, 01 Aug 2016 17:27:52 GMT  
		Size: 8.0 MB (8049878 bytes)
	-	`sha256:160a3a49ed5c7d045b7703ea4164928a1fd07e612d2cc6861f73811ac1097723`  
		Last Modified: Mon, 01 Aug 2016 17:27:48 GMT  
		Size: 3.3 MB (3283743 bytes)

## `drupal:8.1.8-apache`

```console
$ docker pull drupal@sha256:cad66d91ba91a551ebc67bb9438bd479a14a74d447fd8ea17e0fa59ef7772471
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1.8-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.6 MB (184646498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4749933ceea01d4cd1ec0bddec4a7b9820989e47c1ad1c45b1211f14cfc7fb1`
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
# Fri, 29 Jul 2016 20:49:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 29 Jul 2016 20:49:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 29 Jul 2016 20:49:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 29 Jul 2016 20:49:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 29 Jul 2016 20:49:49 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 29 Jul 2016 20:49:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 29 Jul 2016 20:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:49:54 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:49:54 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 20:55:34 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 20:55:35 GMT
EXPOSE 80/tcp
# Fri, 29 Jul 2016 20:55:35 GMT
CMD ["apache2-foreground"]
# Mon, 01 Aug 2016 17:07:59 GMT
RUN a2enmod rewrite
# Mon, 01 Aug 2016 17:16:53 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:16:55 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 01 Aug 2016 17:16:56 GMT
WORKDIR /var/www/html
# Fri, 05 Aug 2016 22:27:04 GMT
ENV DRUPAL_VERSION=8.1.8
# Fri, 05 Aug 2016 22:27:04 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Fri, 05 Aug 2016 22:27:14 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:c0c9ad6136b5e7b142c48c7167eede3d15af54c538f7f3177c50693006cca242`  
		Last Modified: Fri, 29 Jul 2016 22:49:15 GMT  
		Size: 276.0 B
	-	`sha256:b4b0c030555d4340cfe8288272d2bcb291c2f483f1957f1341cfaaea369dc109`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 431.0 B
	-	`sha256:6e898edbabd79f8b8eaf7351077eff9966a11459347f335757f5341a0a889c16`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 222.0 B
	-	`sha256:e4b8d84dea782a5effd404eec31320063107e0bb56fccaffae77c4430c8082a3`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 475.0 B
	-	`sha256:1e6b3cc2b52718f773b43ca8767f59a7f047a156e9fb1621bda0c003fd0c657d`  
		Last Modified: Fri, 29 Jul 2016 22:49:12 GMT  
		Size: 12.2 MB (12245146 bytes)
	-	`sha256:a25fefc3be7a4e50472e4095107f806811a5ee29de98714b9d2860a6d795400f`  
		Last Modified: Fri, 29 Jul 2016 22:49:11 GMT  
		Size: 603.0 B
	-	`sha256:508a3f831da53af9233d89c5b841cb5cb5597c9a4e347e31299d2041ffe6510e`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 19.6 MB (19570015 bytes)
	-	`sha256:53c7d0452155a0552db75c4b94a818552dc8e2f6d5a3233ee86307bcedd93960`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 1.8 KB (1754 bytes)
	-	`sha256:3e27a721a2af317ae9f2ad1996c72c6b72699b69519fea1051317b2e1d33738d`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 583.0 B
	-	`sha256:3cedd137f581a331bd5d2734e85908fd43022fa91640ff3bfdab938dad82f79b`  
		Last Modified: Mon, 01 Aug 2016 17:12:04 GMT  
		Size: 294.0 B
	-	`sha256:9c0c13623477deaa365cdc205f41b3372f89f292fa4c5dd457cc4d673057b950`  
		Last Modified: Mon, 01 Aug 2016 17:17:23 GMT  
		Size: 8.4 MB (8427831 bytes)
	-	`sha256:4c4f8a67fe3a7701764e06f717d80c97b5fb0517ffe6730e0e3b7c1a06f02e92`  
		Last Modified: Mon, 01 Aug 2016 17:17:21 GMT  
		Size: 331.0 B
	-	`sha256:8aad70fafb4bb02497f0ce27983b7f7717f0c5f55317e388d948069ded36f2e5`  
		Last Modified: Fri, 05 Aug 2016 22:29:15 GMT  
		Size: 12.6 MB (12604895 bytes)

## `drupal:8.1-apache`

```console
$ docker pull drupal@sha256:cad66d91ba91a551ebc67bb9438bd479a14a74d447fd8ea17e0fa59ef7772471
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.6 MB (184646498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4749933ceea01d4cd1ec0bddec4a7b9820989e47c1ad1c45b1211f14cfc7fb1`
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
# Fri, 29 Jul 2016 20:49:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 29 Jul 2016 20:49:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 29 Jul 2016 20:49:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 29 Jul 2016 20:49:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 29 Jul 2016 20:49:49 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 29 Jul 2016 20:49:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 29 Jul 2016 20:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:49:54 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:49:54 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 20:55:34 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 20:55:35 GMT
EXPOSE 80/tcp
# Fri, 29 Jul 2016 20:55:35 GMT
CMD ["apache2-foreground"]
# Mon, 01 Aug 2016 17:07:59 GMT
RUN a2enmod rewrite
# Mon, 01 Aug 2016 17:16:53 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:16:55 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 01 Aug 2016 17:16:56 GMT
WORKDIR /var/www/html
# Fri, 05 Aug 2016 22:27:04 GMT
ENV DRUPAL_VERSION=8.1.8
# Fri, 05 Aug 2016 22:27:04 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Fri, 05 Aug 2016 22:27:14 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:c0c9ad6136b5e7b142c48c7167eede3d15af54c538f7f3177c50693006cca242`  
		Last Modified: Fri, 29 Jul 2016 22:49:15 GMT  
		Size: 276.0 B
	-	`sha256:b4b0c030555d4340cfe8288272d2bcb291c2f483f1957f1341cfaaea369dc109`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 431.0 B
	-	`sha256:6e898edbabd79f8b8eaf7351077eff9966a11459347f335757f5341a0a889c16`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 222.0 B
	-	`sha256:e4b8d84dea782a5effd404eec31320063107e0bb56fccaffae77c4430c8082a3`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 475.0 B
	-	`sha256:1e6b3cc2b52718f773b43ca8767f59a7f047a156e9fb1621bda0c003fd0c657d`  
		Last Modified: Fri, 29 Jul 2016 22:49:12 GMT  
		Size: 12.2 MB (12245146 bytes)
	-	`sha256:a25fefc3be7a4e50472e4095107f806811a5ee29de98714b9d2860a6d795400f`  
		Last Modified: Fri, 29 Jul 2016 22:49:11 GMT  
		Size: 603.0 B
	-	`sha256:508a3f831da53af9233d89c5b841cb5cb5597c9a4e347e31299d2041ffe6510e`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 19.6 MB (19570015 bytes)
	-	`sha256:53c7d0452155a0552db75c4b94a818552dc8e2f6d5a3233ee86307bcedd93960`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 1.8 KB (1754 bytes)
	-	`sha256:3e27a721a2af317ae9f2ad1996c72c6b72699b69519fea1051317b2e1d33738d`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 583.0 B
	-	`sha256:3cedd137f581a331bd5d2734e85908fd43022fa91640ff3bfdab938dad82f79b`  
		Last Modified: Mon, 01 Aug 2016 17:12:04 GMT  
		Size: 294.0 B
	-	`sha256:9c0c13623477deaa365cdc205f41b3372f89f292fa4c5dd457cc4d673057b950`  
		Last Modified: Mon, 01 Aug 2016 17:17:23 GMT  
		Size: 8.4 MB (8427831 bytes)
	-	`sha256:4c4f8a67fe3a7701764e06f717d80c97b5fb0517ffe6730e0e3b7c1a06f02e92`  
		Last Modified: Mon, 01 Aug 2016 17:17:21 GMT  
		Size: 331.0 B
	-	`sha256:8aad70fafb4bb02497f0ce27983b7f7717f0c5f55317e388d948069ded36f2e5`  
		Last Modified: Fri, 05 Aug 2016 22:29:15 GMT  
		Size: 12.6 MB (12604895 bytes)

## `drupal:8-apache`

```console
$ docker pull drupal@sha256:cad66d91ba91a551ebc67bb9438bd479a14a74d447fd8ea17e0fa59ef7772471
```

-	Platforms:
	-	linux; amd64

### `drupal:8-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.6 MB (184646498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4749933ceea01d4cd1ec0bddec4a7b9820989e47c1ad1c45b1211f14cfc7fb1`
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
# Fri, 29 Jul 2016 20:49:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 29 Jul 2016 20:49:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 29 Jul 2016 20:49:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 29 Jul 2016 20:49:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 29 Jul 2016 20:49:49 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 29 Jul 2016 20:49:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 29 Jul 2016 20:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:49:54 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:49:54 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 20:55:34 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 20:55:35 GMT
EXPOSE 80/tcp
# Fri, 29 Jul 2016 20:55:35 GMT
CMD ["apache2-foreground"]
# Mon, 01 Aug 2016 17:07:59 GMT
RUN a2enmod rewrite
# Mon, 01 Aug 2016 17:16:53 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:16:55 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 01 Aug 2016 17:16:56 GMT
WORKDIR /var/www/html
# Fri, 05 Aug 2016 22:27:04 GMT
ENV DRUPAL_VERSION=8.1.8
# Fri, 05 Aug 2016 22:27:04 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Fri, 05 Aug 2016 22:27:14 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:c0c9ad6136b5e7b142c48c7167eede3d15af54c538f7f3177c50693006cca242`  
		Last Modified: Fri, 29 Jul 2016 22:49:15 GMT  
		Size: 276.0 B
	-	`sha256:b4b0c030555d4340cfe8288272d2bcb291c2f483f1957f1341cfaaea369dc109`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 431.0 B
	-	`sha256:6e898edbabd79f8b8eaf7351077eff9966a11459347f335757f5341a0a889c16`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 222.0 B
	-	`sha256:e4b8d84dea782a5effd404eec31320063107e0bb56fccaffae77c4430c8082a3`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 475.0 B
	-	`sha256:1e6b3cc2b52718f773b43ca8767f59a7f047a156e9fb1621bda0c003fd0c657d`  
		Last Modified: Fri, 29 Jul 2016 22:49:12 GMT  
		Size: 12.2 MB (12245146 bytes)
	-	`sha256:a25fefc3be7a4e50472e4095107f806811a5ee29de98714b9d2860a6d795400f`  
		Last Modified: Fri, 29 Jul 2016 22:49:11 GMT  
		Size: 603.0 B
	-	`sha256:508a3f831da53af9233d89c5b841cb5cb5597c9a4e347e31299d2041ffe6510e`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 19.6 MB (19570015 bytes)
	-	`sha256:53c7d0452155a0552db75c4b94a818552dc8e2f6d5a3233ee86307bcedd93960`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 1.8 KB (1754 bytes)
	-	`sha256:3e27a721a2af317ae9f2ad1996c72c6b72699b69519fea1051317b2e1d33738d`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 583.0 B
	-	`sha256:3cedd137f581a331bd5d2734e85908fd43022fa91640ff3bfdab938dad82f79b`  
		Last Modified: Mon, 01 Aug 2016 17:12:04 GMT  
		Size: 294.0 B
	-	`sha256:9c0c13623477deaa365cdc205f41b3372f89f292fa4c5dd457cc4d673057b950`  
		Last Modified: Mon, 01 Aug 2016 17:17:23 GMT  
		Size: 8.4 MB (8427831 bytes)
	-	`sha256:4c4f8a67fe3a7701764e06f717d80c97b5fb0517ffe6730e0e3b7c1a06f02e92`  
		Last Modified: Mon, 01 Aug 2016 17:17:21 GMT  
		Size: 331.0 B
	-	`sha256:8aad70fafb4bb02497f0ce27983b7f7717f0c5f55317e388d948069ded36f2e5`  
		Last Modified: Fri, 05 Aug 2016 22:29:15 GMT  
		Size: 12.6 MB (12604895 bytes)

## `drupal:apache`

```console
$ docker pull drupal@sha256:cad66d91ba91a551ebc67bb9438bd479a14a74d447fd8ea17e0fa59ef7772471
```

-	Platforms:
	-	linux; amd64

### `drupal:apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.6 MB (184646498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4749933ceea01d4cd1ec0bddec4a7b9820989e47c1ad1c45b1211f14cfc7fb1`
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
# Fri, 29 Jul 2016 20:49:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 29 Jul 2016 20:49:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 29 Jul 2016 20:49:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 29 Jul 2016 20:49:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 29 Jul 2016 20:49:49 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 29 Jul 2016 20:49:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 29 Jul 2016 20:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:49:54 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:49:54 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 20:55:34 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 20:55:35 GMT
EXPOSE 80/tcp
# Fri, 29 Jul 2016 20:55:35 GMT
CMD ["apache2-foreground"]
# Mon, 01 Aug 2016 17:07:59 GMT
RUN a2enmod rewrite
# Mon, 01 Aug 2016 17:16:53 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:16:55 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 01 Aug 2016 17:16:56 GMT
WORKDIR /var/www/html
# Fri, 05 Aug 2016 22:27:04 GMT
ENV DRUPAL_VERSION=8.1.8
# Fri, 05 Aug 2016 22:27:04 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Fri, 05 Aug 2016 22:27:14 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:c0c9ad6136b5e7b142c48c7167eede3d15af54c538f7f3177c50693006cca242`  
		Last Modified: Fri, 29 Jul 2016 22:49:15 GMT  
		Size: 276.0 B
	-	`sha256:b4b0c030555d4340cfe8288272d2bcb291c2f483f1957f1341cfaaea369dc109`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 431.0 B
	-	`sha256:6e898edbabd79f8b8eaf7351077eff9966a11459347f335757f5341a0a889c16`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 222.0 B
	-	`sha256:e4b8d84dea782a5effd404eec31320063107e0bb56fccaffae77c4430c8082a3`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 475.0 B
	-	`sha256:1e6b3cc2b52718f773b43ca8767f59a7f047a156e9fb1621bda0c003fd0c657d`  
		Last Modified: Fri, 29 Jul 2016 22:49:12 GMT  
		Size: 12.2 MB (12245146 bytes)
	-	`sha256:a25fefc3be7a4e50472e4095107f806811a5ee29de98714b9d2860a6d795400f`  
		Last Modified: Fri, 29 Jul 2016 22:49:11 GMT  
		Size: 603.0 B
	-	`sha256:508a3f831da53af9233d89c5b841cb5cb5597c9a4e347e31299d2041ffe6510e`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 19.6 MB (19570015 bytes)
	-	`sha256:53c7d0452155a0552db75c4b94a818552dc8e2f6d5a3233ee86307bcedd93960`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 1.8 KB (1754 bytes)
	-	`sha256:3e27a721a2af317ae9f2ad1996c72c6b72699b69519fea1051317b2e1d33738d`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 583.0 B
	-	`sha256:3cedd137f581a331bd5d2734e85908fd43022fa91640ff3bfdab938dad82f79b`  
		Last Modified: Mon, 01 Aug 2016 17:12:04 GMT  
		Size: 294.0 B
	-	`sha256:9c0c13623477deaa365cdc205f41b3372f89f292fa4c5dd457cc4d673057b950`  
		Last Modified: Mon, 01 Aug 2016 17:17:23 GMT  
		Size: 8.4 MB (8427831 bytes)
	-	`sha256:4c4f8a67fe3a7701764e06f717d80c97b5fb0517ffe6730e0e3b7c1a06f02e92`  
		Last Modified: Mon, 01 Aug 2016 17:17:21 GMT  
		Size: 331.0 B
	-	`sha256:8aad70fafb4bb02497f0ce27983b7f7717f0c5f55317e388d948069ded36f2e5`  
		Last Modified: Fri, 05 Aug 2016 22:29:15 GMT  
		Size: 12.6 MB (12604895 bytes)

## `drupal:8.1.8`

```console
$ docker pull drupal@sha256:cad66d91ba91a551ebc67bb9438bd479a14a74d447fd8ea17e0fa59ef7772471
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1.8` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.6 MB (184646498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4749933ceea01d4cd1ec0bddec4a7b9820989e47c1ad1c45b1211f14cfc7fb1`
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
# Fri, 29 Jul 2016 20:49:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 29 Jul 2016 20:49:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 29 Jul 2016 20:49:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 29 Jul 2016 20:49:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 29 Jul 2016 20:49:49 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 29 Jul 2016 20:49:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 29 Jul 2016 20:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:49:54 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:49:54 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 20:55:34 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 20:55:35 GMT
EXPOSE 80/tcp
# Fri, 29 Jul 2016 20:55:35 GMT
CMD ["apache2-foreground"]
# Mon, 01 Aug 2016 17:07:59 GMT
RUN a2enmod rewrite
# Mon, 01 Aug 2016 17:16:53 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:16:55 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 01 Aug 2016 17:16:56 GMT
WORKDIR /var/www/html
# Fri, 05 Aug 2016 22:27:04 GMT
ENV DRUPAL_VERSION=8.1.8
# Fri, 05 Aug 2016 22:27:04 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Fri, 05 Aug 2016 22:27:14 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:c0c9ad6136b5e7b142c48c7167eede3d15af54c538f7f3177c50693006cca242`  
		Last Modified: Fri, 29 Jul 2016 22:49:15 GMT  
		Size: 276.0 B
	-	`sha256:b4b0c030555d4340cfe8288272d2bcb291c2f483f1957f1341cfaaea369dc109`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 431.0 B
	-	`sha256:6e898edbabd79f8b8eaf7351077eff9966a11459347f335757f5341a0a889c16`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 222.0 B
	-	`sha256:e4b8d84dea782a5effd404eec31320063107e0bb56fccaffae77c4430c8082a3`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 475.0 B
	-	`sha256:1e6b3cc2b52718f773b43ca8767f59a7f047a156e9fb1621bda0c003fd0c657d`  
		Last Modified: Fri, 29 Jul 2016 22:49:12 GMT  
		Size: 12.2 MB (12245146 bytes)
	-	`sha256:a25fefc3be7a4e50472e4095107f806811a5ee29de98714b9d2860a6d795400f`  
		Last Modified: Fri, 29 Jul 2016 22:49:11 GMT  
		Size: 603.0 B
	-	`sha256:508a3f831da53af9233d89c5b841cb5cb5597c9a4e347e31299d2041ffe6510e`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 19.6 MB (19570015 bytes)
	-	`sha256:53c7d0452155a0552db75c4b94a818552dc8e2f6d5a3233ee86307bcedd93960`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 1.8 KB (1754 bytes)
	-	`sha256:3e27a721a2af317ae9f2ad1996c72c6b72699b69519fea1051317b2e1d33738d`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 583.0 B
	-	`sha256:3cedd137f581a331bd5d2734e85908fd43022fa91640ff3bfdab938dad82f79b`  
		Last Modified: Mon, 01 Aug 2016 17:12:04 GMT  
		Size: 294.0 B
	-	`sha256:9c0c13623477deaa365cdc205f41b3372f89f292fa4c5dd457cc4d673057b950`  
		Last Modified: Mon, 01 Aug 2016 17:17:23 GMT  
		Size: 8.4 MB (8427831 bytes)
	-	`sha256:4c4f8a67fe3a7701764e06f717d80c97b5fb0517ffe6730e0e3b7c1a06f02e92`  
		Last Modified: Mon, 01 Aug 2016 17:17:21 GMT  
		Size: 331.0 B
	-	`sha256:8aad70fafb4bb02497f0ce27983b7f7717f0c5f55317e388d948069ded36f2e5`  
		Last Modified: Fri, 05 Aug 2016 22:29:15 GMT  
		Size: 12.6 MB (12604895 bytes)

## `drupal:8.1`

```console
$ docker pull drupal@sha256:cad66d91ba91a551ebc67bb9438bd479a14a74d447fd8ea17e0fa59ef7772471
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.6 MB (184646498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4749933ceea01d4cd1ec0bddec4a7b9820989e47c1ad1c45b1211f14cfc7fb1`
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
# Fri, 29 Jul 2016 20:49:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 29 Jul 2016 20:49:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 29 Jul 2016 20:49:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 29 Jul 2016 20:49:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 29 Jul 2016 20:49:49 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 29 Jul 2016 20:49:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 29 Jul 2016 20:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:49:54 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:49:54 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 20:55:34 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 20:55:35 GMT
EXPOSE 80/tcp
# Fri, 29 Jul 2016 20:55:35 GMT
CMD ["apache2-foreground"]
# Mon, 01 Aug 2016 17:07:59 GMT
RUN a2enmod rewrite
# Mon, 01 Aug 2016 17:16:53 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:16:55 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 01 Aug 2016 17:16:56 GMT
WORKDIR /var/www/html
# Fri, 05 Aug 2016 22:27:04 GMT
ENV DRUPAL_VERSION=8.1.8
# Fri, 05 Aug 2016 22:27:04 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Fri, 05 Aug 2016 22:27:14 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:c0c9ad6136b5e7b142c48c7167eede3d15af54c538f7f3177c50693006cca242`  
		Last Modified: Fri, 29 Jul 2016 22:49:15 GMT  
		Size: 276.0 B
	-	`sha256:b4b0c030555d4340cfe8288272d2bcb291c2f483f1957f1341cfaaea369dc109`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 431.0 B
	-	`sha256:6e898edbabd79f8b8eaf7351077eff9966a11459347f335757f5341a0a889c16`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 222.0 B
	-	`sha256:e4b8d84dea782a5effd404eec31320063107e0bb56fccaffae77c4430c8082a3`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 475.0 B
	-	`sha256:1e6b3cc2b52718f773b43ca8767f59a7f047a156e9fb1621bda0c003fd0c657d`  
		Last Modified: Fri, 29 Jul 2016 22:49:12 GMT  
		Size: 12.2 MB (12245146 bytes)
	-	`sha256:a25fefc3be7a4e50472e4095107f806811a5ee29de98714b9d2860a6d795400f`  
		Last Modified: Fri, 29 Jul 2016 22:49:11 GMT  
		Size: 603.0 B
	-	`sha256:508a3f831da53af9233d89c5b841cb5cb5597c9a4e347e31299d2041ffe6510e`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 19.6 MB (19570015 bytes)
	-	`sha256:53c7d0452155a0552db75c4b94a818552dc8e2f6d5a3233ee86307bcedd93960`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 1.8 KB (1754 bytes)
	-	`sha256:3e27a721a2af317ae9f2ad1996c72c6b72699b69519fea1051317b2e1d33738d`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 583.0 B
	-	`sha256:3cedd137f581a331bd5d2734e85908fd43022fa91640ff3bfdab938dad82f79b`  
		Last Modified: Mon, 01 Aug 2016 17:12:04 GMT  
		Size: 294.0 B
	-	`sha256:9c0c13623477deaa365cdc205f41b3372f89f292fa4c5dd457cc4d673057b950`  
		Last Modified: Mon, 01 Aug 2016 17:17:23 GMT  
		Size: 8.4 MB (8427831 bytes)
	-	`sha256:4c4f8a67fe3a7701764e06f717d80c97b5fb0517ffe6730e0e3b7c1a06f02e92`  
		Last Modified: Mon, 01 Aug 2016 17:17:21 GMT  
		Size: 331.0 B
	-	`sha256:8aad70fafb4bb02497f0ce27983b7f7717f0c5f55317e388d948069ded36f2e5`  
		Last Modified: Fri, 05 Aug 2016 22:29:15 GMT  
		Size: 12.6 MB (12604895 bytes)

## `drupal:8`

```console
$ docker pull drupal@sha256:cad66d91ba91a551ebc67bb9438bd479a14a74d447fd8ea17e0fa59ef7772471
```

-	Platforms:
	-	linux; amd64

### `drupal:8` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.6 MB (184646498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4749933ceea01d4cd1ec0bddec4a7b9820989e47c1ad1c45b1211f14cfc7fb1`
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
# Fri, 29 Jul 2016 20:49:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 29 Jul 2016 20:49:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 29 Jul 2016 20:49:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 29 Jul 2016 20:49:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 29 Jul 2016 20:49:49 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 29 Jul 2016 20:49:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 29 Jul 2016 20:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:49:54 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:49:54 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 20:55:34 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 20:55:35 GMT
EXPOSE 80/tcp
# Fri, 29 Jul 2016 20:55:35 GMT
CMD ["apache2-foreground"]
# Mon, 01 Aug 2016 17:07:59 GMT
RUN a2enmod rewrite
# Mon, 01 Aug 2016 17:16:53 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:16:55 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 01 Aug 2016 17:16:56 GMT
WORKDIR /var/www/html
# Fri, 05 Aug 2016 22:27:04 GMT
ENV DRUPAL_VERSION=8.1.8
# Fri, 05 Aug 2016 22:27:04 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Fri, 05 Aug 2016 22:27:14 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:c0c9ad6136b5e7b142c48c7167eede3d15af54c538f7f3177c50693006cca242`  
		Last Modified: Fri, 29 Jul 2016 22:49:15 GMT  
		Size: 276.0 B
	-	`sha256:b4b0c030555d4340cfe8288272d2bcb291c2f483f1957f1341cfaaea369dc109`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 431.0 B
	-	`sha256:6e898edbabd79f8b8eaf7351077eff9966a11459347f335757f5341a0a889c16`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 222.0 B
	-	`sha256:e4b8d84dea782a5effd404eec31320063107e0bb56fccaffae77c4430c8082a3`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 475.0 B
	-	`sha256:1e6b3cc2b52718f773b43ca8767f59a7f047a156e9fb1621bda0c003fd0c657d`  
		Last Modified: Fri, 29 Jul 2016 22:49:12 GMT  
		Size: 12.2 MB (12245146 bytes)
	-	`sha256:a25fefc3be7a4e50472e4095107f806811a5ee29de98714b9d2860a6d795400f`  
		Last Modified: Fri, 29 Jul 2016 22:49:11 GMT  
		Size: 603.0 B
	-	`sha256:508a3f831da53af9233d89c5b841cb5cb5597c9a4e347e31299d2041ffe6510e`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 19.6 MB (19570015 bytes)
	-	`sha256:53c7d0452155a0552db75c4b94a818552dc8e2f6d5a3233ee86307bcedd93960`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 1.8 KB (1754 bytes)
	-	`sha256:3e27a721a2af317ae9f2ad1996c72c6b72699b69519fea1051317b2e1d33738d`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 583.0 B
	-	`sha256:3cedd137f581a331bd5d2734e85908fd43022fa91640ff3bfdab938dad82f79b`  
		Last Modified: Mon, 01 Aug 2016 17:12:04 GMT  
		Size: 294.0 B
	-	`sha256:9c0c13623477deaa365cdc205f41b3372f89f292fa4c5dd457cc4d673057b950`  
		Last Modified: Mon, 01 Aug 2016 17:17:23 GMT  
		Size: 8.4 MB (8427831 bytes)
	-	`sha256:4c4f8a67fe3a7701764e06f717d80c97b5fb0517ffe6730e0e3b7c1a06f02e92`  
		Last Modified: Mon, 01 Aug 2016 17:17:21 GMT  
		Size: 331.0 B
	-	`sha256:8aad70fafb4bb02497f0ce27983b7f7717f0c5f55317e388d948069ded36f2e5`  
		Last Modified: Fri, 05 Aug 2016 22:29:15 GMT  
		Size: 12.6 MB (12604895 bytes)

## `drupal:latest`

```console
$ docker pull drupal@sha256:cad66d91ba91a551ebc67bb9438bd479a14a74d447fd8ea17e0fa59ef7772471
```

-	Platforms:
	-	linux; amd64

### `drupal:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.6 MB (184646498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4749933ceea01d4cd1ec0bddec4a7b9820989e47c1ad1c45b1211f14cfc7fb1`
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
# Fri, 29 Jul 2016 20:49:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 29 Jul 2016 20:49:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 29 Jul 2016 20:49:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 29 Jul 2016 20:49:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 29 Jul 2016 20:49:49 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 29 Jul 2016 20:49:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 29 Jul 2016 20:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:49:54 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:49:54 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 20:55:34 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 20:55:35 GMT
EXPOSE 80/tcp
# Fri, 29 Jul 2016 20:55:35 GMT
CMD ["apache2-foreground"]
# Mon, 01 Aug 2016 17:07:59 GMT
RUN a2enmod rewrite
# Mon, 01 Aug 2016 17:16:53 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:16:55 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 01 Aug 2016 17:16:56 GMT
WORKDIR /var/www/html
# Fri, 05 Aug 2016 22:27:04 GMT
ENV DRUPAL_VERSION=8.1.8
# Fri, 05 Aug 2016 22:27:04 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Fri, 05 Aug 2016 22:27:14 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:c0c9ad6136b5e7b142c48c7167eede3d15af54c538f7f3177c50693006cca242`  
		Last Modified: Fri, 29 Jul 2016 22:49:15 GMT  
		Size: 276.0 B
	-	`sha256:b4b0c030555d4340cfe8288272d2bcb291c2f483f1957f1341cfaaea369dc109`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 431.0 B
	-	`sha256:6e898edbabd79f8b8eaf7351077eff9966a11459347f335757f5341a0a889c16`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 222.0 B
	-	`sha256:e4b8d84dea782a5effd404eec31320063107e0bb56fccaffae77c4430c8082a3`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 475.0 B
	-	`sha256:1e6b3cc2b52718f773b43ca8767f59a7f047a156e9fb1621bda0c003fd0c657d`  
		Last Modified: Fri, 29 Jul 2016 22:49:12 GMT  
		Size: 12.2 MB (12245146 bytes)
	-	`sha256:a25fefc3be7a4e50472e4095107f806811a5ee29de98714b9d2860a6d795400f`  
		Last Modified: Fri, 29 Jul 2016 22:49:11 GMT  
		Size: 603.0 B
	-	`sha256:508a3f831da53af9233d89c5b841cb5cb5597c9a4e347e31299d2041ffe6510e`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 19.6 MB (19570015 bytes)
	-	`sha256:53c7d0452155a0552db75c4b94a818552dc8e2f6d5a3233ee86307bcedd93960`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 1.8 KB (1754 bytes)
	-	`sha256:3e27a721a2af317ae9f2ad1996c72c6b72699b69519fea1051317b2e1d33738d`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 583.0 B
	-	`sha256:3cedd137f581a331bd5d2734e85908fd43022fa91640ff3bfdab938dad82f79b`  
		Last Modified: Mon, 01 Aug 2016 17:12:04 GMT  
		Size: 294.0 B
	-	`sha256:9c0c13623477deaa365cdc205f41b3372f89f292fa4c5dd457cc4d673057b950`  
		Last Modified: Mon, 01 Aug 2016 17:17:23 GMT  
		Size: 8.4 MB (8427831 bytes)
	-	`sha256:4c4f8a67fe3a7701764e06f717d80c97b5fb0517ffe6730e0e3b7c1a06f02e92`  
		Last Modified: Mon, 01 Aug 2016 17:17:21 GMT  
		Size: 331.0 B
	-	`sha256:8aad70fafb4bb02497f0ce27983b7f7717f0c5f55317e388d948069ded36f2e5`  
		Last Modified: Fri, 05 Aug 2016 22:29:15 GMT  
		Size: 12.6 MB (12604895 bytes)

## `drupal:8.1.8-fpm`

```console
$ docker pull drupal@sha256:be101af73ffe0d6d9681a83128219d740455c3ba1b3c8cc5663b9a59513bfadf
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1.8-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.8 MB (174826331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e25558d641fd242d5d506c26cb68af98e56c4fa38e30c934ed434d1ff8a0aa1`
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
# Fri, 29 Jul 2016 20:55:36 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:55:38 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:55:41 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:55:42 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 21:03:31 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 21:03:33 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 21:03:33 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 21:03:35 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 29 Jul 2016 21:03:35 GMT
EXPOSE 9000/tcp
# Fri, 29 Jul 2016 21:03:36 GMT
CMD ["php-fpm"]
# Mon, 01 Aug 2016 17:22:41 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:22:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 01 Aug 2016 17:22:43 GMT
WORKDIR /var/www/html
# Fri, 05 Aug 2016 22:27:16 GMT
ENV DRUPAL_VERSION=8.1.8
# Fri, 05 Aug 2016 22:27:17 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Fri, 05 Aug 2016 22:27:27 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:8c3225e17fffca635cd998e31ec3d64611324c552cdd362239d379e3edcaebc8`  
		Last Modified: Fri, 29 Jul 2016 22:50:05 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5a54ff814bfe44ab207d1870d77b14e90f1686fa303d3095058f5d1489ec034c`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 601.0 B
	-	`sha256:dfae4accf5c015e402ac54bde22cbadf7394aec72f132227a5f0d284d05babcc`  
		Last Modified: Fri, 29 Jul 2016 22:50:05 GMT  
		Size: 12.6 MB (12613088 bytes)
	-	`sha256:7f65f3924117e7cb8c91bb126c730d3beeaa1d9b8e77409c0a28385b026f0801`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 1.8 KB (1753 bytes)
	-	`sha256:97f23dcb5d021b11fc14039ade2bfe2c71df9ee7dceb0aeb09bf594a318f9400`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 127.0 B
	-	`sha256:c3fc7300be3912993816fa6f109851e1f87acad0692c8fce70f83e253e48d0a8`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 7.7 KB (7692 bytes)
	-	`sha256:474c8e1dd883ef98a3d09b478550917982a487ee65555480ee97088f5abc45ea`  
		Last Modified: Mon, 01 Aug 2016 17:23:07 GMT  
		Size: 8.4 MB (8405605 bytes)
	-	`sha256:9470561e074ff57f405eb3da87e9df614a66d18161c2570bfbd0d522a592758d`  
		Last Modified: Mon, 01 Aug 2016 17:23:03 GMT  
		Size: 332.0 B
	-	`sha256:9de9c7a293961a0af4792955abdfa97c1eaaf4fa4429781f3c23cd03c0160706`  
		Last Modified: Fri, 05 Aug 2016 22:30:52 GMT  
		Size: 12.6 MB (12604886 bytes)

## `drupal:8.1-fpm`

```console
$ docker pull drupal@sha256:be101af73ffe0d6d9681a83128219d740455c3ba1b3c8cc5663b9a59513bfadf
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.8 MB (174826331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e25558d641fd242d5d506c26cb68af98e56c4fa38e30c934ed434d1ff8a0aa1`
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
# Fri, 29 Jul 2016 20:55:36 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:55:38 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:55:41 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:55:42 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 21:03:31 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 21:03:33 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 21:03:33 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 21:03:35 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 29 Jul 2016 21:03:35 GMT
EXPOSE 9000/tcp
# Fri, 29 Jul 2016 21:03:36 GMT
CMD ["php-fpm"]
# Mon, 01 Aug 2016 17:22:41 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:22:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 01 Aug 2016 17:22:43 GMT
WORKDIR /var/www/html
# Fri, 05 Aug 2016 22:27:16 GMT
ENV DRUPAL_VERSION=8.1.8
# Fri, 05 Aug 2016 22:27:17 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Fri, 05 Aug 2016 22:27:27 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:8c3225e17fffca635cd998e31ec3d64611324c552cdd362239d379e3edcaebc8`  
		Last Modified: Fri, 29 Jul 2016 22:50:05 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5a54ff814bfe44ab207d1870d77b14e90f1686fa303d3095058f5d1489ec034c`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 601.0 B
	-	`sha256:dfae4accf5c015e402ac54bde22cbadf7394aec72f132227a5f0d284d05babcc`  
		Last Modified: Fri, 29 Jul 2016 22:50:05 GMT  
		Size: 12.6 MB (12613088 bytes)
	-	`sha256:7f65f3924117e7cb8c91bb126c730d3beeaa1d9b8e77409c0a28385b026f0801`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 1.8 KB (1753 bytes)
	-	`sha256:97f23dcb5d021b11fc14039ade2bfe2c71df9ee7dceb0aeb09bf594a318f9400`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 127.0 B
	-	`sha256:c3fc7300be3912993816fa6f109851e1f87acad0692c8fce70f83e253e48d0a8`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 7.7 KB (7692 bytes)
	-	`sha256:474c8e1dd883ef98a3d09b478550917982a487ee65555480ee97088f5abc45ea`  
		Last Modified: Mon, 01 Aug 2016 17:23:07 GMT  
		Size: 8.4 MB (8405605 bytes)
	-	`sha256:9470561e074ff57f405eb3da87e9df614a66d18161c2570bfbd0d522a592758d`  
		Last Modified: Mon, 01 Aug 2016 17:23:03 GMT  
		Size: 332.0 B
	-	`sha256:9de9c7a293961a0af4792955abdfa97c1eaaf4fa4429781f3c23cd03c0160706`  
		Last Modified: Fri, 05 Aug 2016 22:30:52 GMT  
		Size: 12.6 MB (12604886 bytes)

## `drupal:8-fpm`

```console
$ docker pull drupal@sha256:be101af73ffe0d6d9681a83128219d740455c3ba1b3c8cc5663b9a59513bfadf
```

-	Platforms:
	-	linux; amd64

### `drupal:8-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.8 MB (174826331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e25558d641fd242d5d506c26cb68af98e56c4fa38e30c934ed434d1ff8a0aa1`
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
# Fri, 29 Jul 2016 20:55:36 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:55:38 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:55:41 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:55:42 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 21:03:31 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 21:03:33 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 21:03:33 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 21:03:35 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 29 Jul 2016 21:03:35 GMT
EXPOSE 9000/tcp
# Fri, 29 Jul 2016 21:03:36 GMT
CMD ["php-fpm"]
# Mon, 01 Aug 2016 17:22:41 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:22:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 01 Aug 2016 17:22:43 GMT
WORKDIR /var/www/html
# Fri, 05 Aug 2016 22:27:16 GMT
ENV DRUPAL_VERSION=8.1.8
# Fri, 05 Aug 2016 22:27:17 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Fri, 05 Aug 2016 22:27:27 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:8c3225e17fffca635cd998e31ec3d64611324c552cdd362239d379e3edcaebc8`  
		Last Modified: Fri, 29 Jul 2016 22:50:05 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5a54ff814bfe44ab207d1870d77b14e90f1686fa303d3095058f5d1489ec034c`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 601.0 B
	-	`sha256:dfae4accf5c015e402ac54bde22cbadf7394aec72f132227a5f0d284d05babcc`  
		Last Modified: Fri, 29 Jul 2016 22:50:05 GMT  
		Size: 12.6 MB (12613088 bytes)
	-	`sha256:7f65f3924117e7cb8c91bb126c730d3beeaa1d9b8e77409c0a28385b026f0801`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 1.8 KB (1753 bytes)
	-	`sha256:97f23dcb5d021b11fc14039ade2bfe2c71df9ee7dceb0aeb09bf594a318f9400`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 127.0 B
	-	`sha256:c3fc7300be3912993816fa6f109851e1f87acad0692c8fce70f83e253e48d0a8`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 7.7 KB (7692 bytes)
	-	`sha256:474c8e1dd883ef98a3d09b478550917982a487ee65555480ee97088f5abc45ea`  
		Last Modified: Mon, 01 Aug 2016 17:23:07 GMT  
		Size: 8.4 MB (8405605 bytes)
	-	`sha256:9470561e074ff57f405eb3da87e9df614a66d18161c2570bfbd0d522a592758d`  
		Last Modified: Mon, 01 Aug 2016 17:23:03 GMT  
		Size: 332.0 B
	-	`sha256:9de9c7a293961a0af4792955abdfa97c1eaaf4fa4429781f3c23cd03c0160706`  
		Last Modified: Fri, 05 Aug 2016 22:30:52 GMT  
		Size: 12.6 MB (12604886 bytes)

## `drupal:fpm`

```console
$ docker pull drupal@sha256:be101af73ffe0d6d9681a83128219d740455c3ba1b3c8cc5663b9a59513bfadf
```

-	Platforms:
	-	linux; amd64

### `drupal:fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.8 MB (174826331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e25558d641fd242d5d506c26cb68af98e56c4fa38e30c934ed434d1ff8a0aa1`
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
# Fri, 29 Jul 2016 20:55:36 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:55:38 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:55:41 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:55:42 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 21:03:31 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 21:03:33 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 21:03:33 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 21:03:35 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 29 Jul 2016 21:03:35 GMT
EXPOSE 9000/tcp
# Fri, 29 Jul 2016 21:03:36 GMT
CMD ["php-fpm"]
# Mon, 01 Aug 2016 17:22:41 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:22:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 01 Aug 2016 17:22:43 GMT
WORKDIR /var/www/html
# Fri, 05 Aug 2016 22:27:16 GMT
ENV DRUPAL_VERSION=8.1.8
# Fri, 05 Aug 2016 22:27:17 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Fri, 05 Aug 2016 22:27:27 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:8c3225e17fffca635cd998e31ec3d64611324c552cdd362239d379e3edcaebc8`  
		Last Modified: Fri, 29 Jul 2016 22:50:05 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5a54ff814bfe44ab207d1870d77b14e90f1686fa303d3095058f5d1489ec034c`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 601.0 B
	-	`sha256:dfae4accf5c015e402ac54bde22cbadf7394aec72f132227a5f0d284d05babcc`  
		Last Modified: Fri, 29 Jul 2016 22:50:05 GMT  
		Size: 12.6 MB (12613088 bytes)
	-	`sha256:7f65f3924117e7cb8c91bb126c730d3beeaa1d9b8e77409c0a28385b026f0801`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 1.8 KB (1753 bytes)
	-	`sha256:97f23dcb5d021b11fc14039ade2bfe2c71df9ee7dceb0aeb09bf594a318f9400`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 127.0 B
	-	`sha256:c3fc7300be3912993816fa6f109851e1f87acad0692c8fce70f83e253e48d0a8`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 7.7 KB (7692 bytes)
	-	`sha256:474c8e1dd883ef98a3d09b478550917982a487ee65555480ee97088f5abc45ea`  
		Last Modified: Mon, 01 Aug 2016 17:23:07 GMT  
		Size: 8.4 MB (8405605 bytes)
	-	`sha256:9470561e074ff57f405eb3da87e9df614a66d18161c2570bfbd0d522a592758d`  
		Last Modified: Mon, 01 Aug 2016 17:23:03 GMT  
		Size: 332.0 B
	-	`sha256:9de9c7a293961a0af4792955abdfa97c1eaaf4fa4429781f3c23cd03c0160706`  
		Last Modified: Fri, 05 Aug 2016 22:30:52 GMT  
		Size: 12.6 MB (12604886 bytes)

## `drupal:8.2.0-beta1-apache`

```console
$ docker pull drupal@sha256:1fb32f1c72c208a24edc141e636723e1e77babd403c3ff788e21680d76b6da62
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.0-beta1-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184746251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2489b9654f9c1546eb3ec75a9cfb533917835189b0628f071774c485dacfa95d`
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
# Fri, 29 Jul 2016 20:49:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 29 Jul 2016 20:49:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 29 Jul 2016 20:49:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 29 Jul 2016 20:49:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 29 Jul 2016 20:49:49 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 29 Jul 2016 20:49:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 29 Jul 2016 20:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:49:54 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:49:54 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 20:55:34 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 20:55:35 GMT
EXPOSE 80/tcp
# Fri, 29 Jul 2016 20:55:35 GMT
CMD ["apache2-foreground"]
# Mon, 01 Aug 2016 17:07:59 GMT
RUN a2enmod rewrite
# Mon, 01 Aug 2016 17:16:53 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:16:55 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 01 Aug 2016 17:16:56 GMT
WORKDIR /var/www/html
# Fri, 05 Aug 2016 22:27:29 GMT
ENV DRUPAL_VERSION=8.2.0-beta1
# Fri, 05 Aug 2016 22:27:29 GMT
ENV DRUPAL_MD5=35fed9378c738d6bf420399f56e740c9
# Fri, 05 Aug 2016 22:27:39 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:c0c9ad6136b5e7b142c48c7167eede3d15af54c538f7f3177c50693006cca242`  
		Last Modified: Fri, 29 Jul 2016 22:49:15 GMT  
		Size: 276.0 B
	-	`sha256:b4b0c030555d4340cfe8288272d2bcb291c2f483f1957f1341cfaaea369dc109`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 431.0 B
	-	`sha256:6e898edbabd79f8b8eaf7351077eff9966a11459347f335757f5341a0a889c16`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 222.0 B
	-	`sha256:e4b8d84dea782a5effd404eec31320063107e0bb56fccaffae77c4430c8082a3`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 475.0 B
	-	`sha256:1e6b3cc2b52718f773b43ca8767f59a7f047a156e9fb1621bda0c003fd0c657d`  
		Last Modified: Fri, 29 Jul 2016 22:49:12 GMT  
		Size: 12.2 MB (12245146 bytes)
	-	`sha256:a25fefc3be7a4e50472e4095107f806811a5ee29de98714b9d2860a6d795400f`  
		Last Modified: Fri, 29 Jul 2016 22:49:11 GMT  
		Size: 603.0 B
	-	`sha256:508a3f831da53af9233d89c5b841cb5cb5597c9a4e347e31299d2041ffe6510e`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 19.6 MB (19570015 bytes)
	-	`sha256:53c7d0452155a0552db75c4b94a818552dc8e2f6d5a3233ee86307bcedd93960`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 1.8 KB (1754 bytes)
	-	`sha256:3e27a721a2af317ae9f2ad1996c72c6b72699b69519fea1051317b2e1d33738d`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 583.0 B
	-	`sha256:3cedd137f581a331bd5d2734e85908fd43022fa91640ff3bfdab938dad82f79b`  
		Last Modified: Mon, 01 Aug 2016 17:12:04 GMT  
		Size: 294.0 B
	-	`sha256:9c0c13623477deaa365cdc205f41b3372f89f292fa4c5dd457cc4d673057b950`  
		Last Modified: Mon, 01 Aug 2016 17:17:23 GMT  
		Size: 8.4 MB (8427831 bytes)
	-	`sha256:4c4f8a67fe3a7701764e06f717d80c97b5fb0517ffe6730e0e3b7c1a06f02e92`  
		Last Modified: Mon, 01 Aug 2016 17:17:21 GMT  
		Size: 331.0 B
	-	`sha256:40766e375f0030ad65694033beedb8da2d6d046c5d96b8fbbb6cb6255d953d4e`  
		Last Modified: Fri, 05 Aug 2016 22:31:45 GMT  
		Size: 12.7 MB (12704648 bytes)

## `drupal:8.2.0-apache`

```console
$ docker pull drupal@sha256:1fb32f1c72c208a24edc141e636723e1e77babd403c3ff788e21680d76b6da62
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.0-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184746251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2489b9654f9c1546eb3ec75a9cfb533917835189b0628f071774c485dacfa95d`
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
# Fri, 29 Jul 2016 20:49:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 29 Jul 2016 20:49:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 29 Jul 2016 20:49:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 29 Jul 2016 20:49:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 29 Jul 2016 20:49:49 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 29 Jul 2016 20:49:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 29 Jul 2016 20:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:49:54 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:49:54 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 20:55:34 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 20:55:35 GMT
EXPOSE 80/tcp
# Fri, 29 Jul 2016 20:55:35 GMT
CMD ["apache2-foreground"]
# Mon, 01 Aug 2016 17:07:59 GMT
RUN a2enmod rewrite
# Mon, 01 Aug 2016 17:16:53 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:16:55 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 01 Aug 2016 17:16:56 GMT
WORKDIR /var/www/html
# Fri, 05 Aug 2016 22:27:29 GMT
ENV DRUPAL_VERSION=8.2.0-beta1
# Fri, 05 Aug 2016 22:27:29 GMT
ENV DRUPAL_MD5=35fed9378c738d6bf420399f56e740c9
# Fri, 05 Aug 2016 22:27:39 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:c0c9ad6136b5e7b142c48c7167eede3d15af54c538f7f3177c50693006cca242`  
		Last Modified: Fri, 29 Jul 2016 22:49:15 GMT  
		Size: 276.0 B
	-	`sha256:b4b0c030555d4340cfe8288272d2bcb291c2f483f1957f1341cfaaea369dc109`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 431.0 B
	-	`sha256:6e898edbabd79f8b8eaf7351077eff9966a11459347f335757f5341a0a889c16`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 222.0 B
	-	`sha256:e4b8d84dea782a5effd404eec31320063107e0bb56fccaffae77c4430c8082a3`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 475.0 B
	-	`sha256:1e6b3cc2b52718f773b43ca8767f59a7f047a156e9fb1621bda0c003fd0c657d`  
		Last Modified: Fri, 29 Jul 2016 22:49:12 GMT  
		Size: 12.2 MB (12245146 bytes)
	-	`sha256:a25fefc3be7a4e50472e4095107f806811a5ee29de98714b9d2860a6d795400f`  
		Last Modified: Fri, 29 Jul 2016 22:49:11 GMT  
		Size: 603.0 B
	-	`sha256:508a3f831da53af9233d89c5b841cb5cb5597c9a4e347e31299d2041ffe6510e`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 19.6 MB (19570015 bytes)
	-	`sha256:53c7d0452155a0552db75c4b94a818552dc8e2f6d5a3233ee86307bcedd93960`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 1.8 KB (1754 bytes)
	-	`sha256:3e27a721a2af317ae9f2ad1996c72c6b72699b69519fea1051317b2e1d33738d`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 583.0 B
	-	`sha256:3cedd137f581a331bd5d2734e85908fd43022fa91640ff3bfdab938dad82f79b`  
		Last Modified: Mon, 01 Aug 2016 17:12:04 GMT  
		Size: 294.0 B
	-	`sha256:9c0c13623477deaa365cdc205f41b3372f89f292fa4c5dd457cc4d673057b950`  
		Last Modified: Mon, 01 Aug 2016 17:17:23 GMT  
		Size: 8.4 MB (8427831 bytes)
	-	`sha256:4c4f8a67fe3a7701764e06f717d80c97b5fb0517ffe6730e0e3b7c1a06f02e92`  
		Last Modified: Mon, 01 Aug 2016 17:17:21 GMT  
		Size: 331.0 B
	-	`sha256:40766e375f0030ad65694033beedb8da2d6d046c5d96b8fbbb6cb6255d953d4e`  
		Last Modified: Fri, 05 Aug 2016 22:31:45 GMT  
		Size: 12.7 MB (12704648 bytes)

## `drupal:8.2-apache`

```console
$ docker pull drupal@sha256:1fb32f1c72c208a24edc141e636723e1e77babd403c3ff788e21680d76b6da62
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184746251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2489b9654f9c1546eb3ec75a9cfb533917835189b0628f071774c485dacfa95d`
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
# Fri, 29 Jul 2016 20:49:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 29 Jul 2016 20:49:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 29 Jul 2016 20:49:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 29 Jul 2016 20:49:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 29 Jul 2016 20:49:49 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 29 Jul 2016 20:49:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 29 Jul 2016 20:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:49:54 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:49:54 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 20:55:34 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 20:55:35 GMT
EXPOSE 80/tcp
# Fri, 29 Jul 2016 20:55:35 GMT
CMD ["apache2-foreground"]
# Mon, 01 Aug 2016 17:07:59 GMT
RUN a2enmod rewrite
# Mon, 01 Aug 2016 17:16:53 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:16:55 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 01 Aug 2016 17:16:56 GMT
WORKDIR /var/www/html
# Fri, 05 Aug 2016 22:27:29 GMT
ENV DRUPAL_VERSION=8.2.0-beta1
# Fri, 05 Aug 2016 22:27:29 GMT
ENV DRUPAL_MD5=35fed9378c738d6bf420399f56e740c9
# Fri, 05 Aug 2016 22:27:39 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:c0c9ad6136b5e7b142c48c7167eede3d15af54c538f7f3177c50693006cca242`  
		Last Modified: Fri, 29 Jul 2016 22:49:15 GMT  
		Size: 276.0 B
	-	`sha256:b4b0c030555d4340cfe8288272d2bcb291c2f483f1957f1341cfaaea369dc109`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 431.0 B
	-	`sha256:6e898edbabd79f8b8eaf7351077eff9966a11459347f335757f5341a0a889c16`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 222.0 B
	-	`sha256:e4b8d84dea782a5effd404eec31320063107e0bb56fccaffae77c4430c8082a3`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 475.0 B
	-	`sha256:1e6b3cc2b52718f773b43ca8767f59a7f047a156e9fb1621bda0c003fd0c657d`  
		Last Modified: Fri, 29 Jul 2016 22:49:12 GMT  
		Size: 12.2 MB (12245146 bytes)
	-	`sha256:a25fefc3be7a4e50472e4095107f806811a5ee29de98714b9d2860a6d795400f`  
		Last Modified: Fri, 29 Jul 2016 22:49:11 GMT  
		Size: 603.0 B
	-	`sha256:508a3f831da53af9233d89c5b841cb5cb5597c9a4e347e31299d2041ffe6510e`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 19.6 MB (19570015 bytes)
	-	`sha256:53c7d0452155a0552db75c4b94a818552dc8e2f6d5a3233ee86307bcedd93960`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 1.8 KB (1754 bytes)
	-	`sha256:3e27a721a2af317ae9f2ad1996c72c6b72699b69519fea1051317b2e1d33738d`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 583.0 B
	-	`sha256:3cedd137f581a331bd5d2734e85908fd43022fa91640ff3bfdab938dad82f79b`  
		Last Modified: Mon, 01 Aug 2016 17:12:04 GMT  
		Size: 294.0 B
	-	`sha256:9c0c13623477deaa365cdc205f41b3372f89f292fa4c5dd457cc4d673057b950`  
		Last Modified: Mon, 01 Aug 2016 17:17:23 GMT  
		Size: 8.4 MB (8427831 bytes)
	-	`sha256:4c4f8a67fe3a7701764e06f717d80c97b5fb0517ffe6730e0e3b7c1a06f02e92`  
		Last Modified: Mon, 01 Aug 2016 17:17:21 GMT  
		Size: 331.0 B
	-	`sha256:40766e375f0030ad65694033beedb8da2d6d046c5d96b8fbbb6cb6255d953d4e`  
		Last Modified: Fri, 05 Aug 2016 22:31:45 GMT  
		Size: 12.7 MB (12704648 bytes)

## `drupal:8.2.0-beta1`

```console
$ docker pull drupal@sha256:1fb32f1c72c208a24edc141e636723e1e77babd403c3ff788e21680d76b6da62
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.0-beta1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184746251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2489b9654f9c1546eb3ec75a9cfb533917835189b0628f071774c485dacfa95d`
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
# Fri, 29 Jul 2016 20:49:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 29 Jul 2016 20:49:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 29 Jul 2016 20:49:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 29 Jul 2016 20:49:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 29 Jul 2016 20:49:49 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 29 Jul 2016 20:49:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 29 Jul 2016 20:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:49:54 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:49:54 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 20:55:34 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 20:55:35 GMT
EXPOSE 80/tcp
# Fri, 29 Jul 2016 20:55:35 GMT
CMD ["apache2-foreground"]
# Mon, 01 Aug 2016 17:07:59 GMT
RUN a2enmod rewrite
# Mon, 01 Aug 2016 17:16:53 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:16:55 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 01 Aug 2016 17:16:56 GMT
WORKDIR /var/www/html
# Fri, 05 Aug 2016 22:27:29 GMT
ENV DRUPAL_VERSION=8.2.0-beta1
# Fri, 05 Aug 2016 22:27:29 GMT
ENV DRUPAL_MD5=35fed9378c738d6bf420399f56e740c9
# Fri, 05 Aug 2016 22:27:39 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:c0c9ad6136b5e7b142c48c7167eede3d15af54c538f7f3177c50693006cca242`  
		Last Modified: Fri, 29 Jul 2016 22:49:15 GMT  
		Size: 276.0 B
	-	`sha256:b4b0c030555d4340cfe8288272d2bcb291c2f483f1957f1341cfaaea369dc109`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 431.0 B
	-	`sha256:6e898edbabd79f8b8eaf7351077eff9966a11459347f335757f5341a0a889c16`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 222.0 B
	-	`sha256:e4b8d84dea782a5effd404eec31320063107e0bb56fccaffae77c4430c8082a3`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 475.0 B
	-	`sha256:1e6b3cc2b52718f773b43ca8767f59a7f047a156e9fb1621bda0c003fd0c657d`  
		Last Modified: Fri, 29 Jul 2016 22:49:12 GMT  
		Size: 12.2 MB (12245146 bytes)
	-	`sha256:a25fefc3be7a4e50472e4095107f806811a5ee29de98714b9d2860a6d795400f`  
		Last Modified: Fri, 29 Jul 2016 22:49:11 GMT  
		Size: 603.0 B
	-	`sha256:508a3f831da53af9233d89c5b841cb5cb5597c9a4e347e31299d2041ffe6510e`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 19.6 MB (19570015 bytes)
	-	`sha256:53c7d0452155a0552db75c4b94a818552dc8e2f6d5a3233ee86307bcedd93960`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 1.8 KB (1754 bytes)
	-	`sha256:3e27a721a2af317ae9f2ad1996c72c6b72699b69519fea1051317b2e1d33738d`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 583.0 B
	-	`sha256:3cedd137f581a331bd5d2734e85908fd43022fa91640ff3bfdab938dad82f79b`  
		Last Modified: Mon, 01 Aug 2016 17:12:04 GMT  
		Size: 294.0 B
	-	`sha256:9c0c13623477deaa365cdc205f41b3372f89f292fa4c5dd457cc4d673057b950`  
		Last Modified: Mon, 01 Aug 2016 17:17:23 GMT  
		Size: 8.4 MB (8427831 bytes)
	-	`sha256:4c4f8a67fe3a7701764e06f717d80c97b5fb0517ffe6730e0e3b7c1a06f02e92`  
		Last Modified: Mon, 01 Aug 2016 17:17:21 GMT  
		Size: 331.0 B
	-	`sha256:40766e375f0030ad65694033beedb8da2d6d046c5d96b8fbbb6cb6255d953d4e`  
		Last Modified: Fri, 05 Aug 2016 22:31:45 GMT  
		Size: 12.7 MB (12704648 bytes)

## `drupal:8.2.0`

```console
$ docker pull drupal@sha256:1fb32f1c72c208a24edc141e636723e1e77babd403c3ff788e21680d76b6da62
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184746251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2489b9654f9c1546eb3ec75a9cfb533917835189b0628f071774c485dacfa95d`
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
# Fri, 29 Jul 2016 20:49:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 29 Jul 2016 20:49:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 29 Jul 2016 20:49:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 29 Jul 2016 20:49:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 29 Jul 2016 20:49:49 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 29 Jul 2016 20:49:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 29 Jul 2016 20:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:49:54 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:49:54 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 20:55:34 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 20:55:35 GMT
EXPOSE 80/tcp
# Fri, 29 Jul 2016 20:55:35 GMT
CMD ["apache2-foreground"]
# Mon, 01 Aug 2016 17:07:59 GMT
RUN a2enmod rewrite
# Mon, 01 Aug 2016 17:16:53 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:16:55 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 01 Aug 2016 17:16:56 GMT
WORKDIR /var/www/html
# Fri, 05 Aug 2016 22:27:29 GMT
ENV DRUPAL_VERSION=8.2.0-beta1
# Fri, 05 Aug 2016 22:27:29 GMT
ENV DRUPAL_MD5=35fed9378c738d6bf420399f56e740c9
# Fri, 05 Aug 2016 22:27:39 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:c0c9ad6136b5e7b142c48c7167eede3d15af54c538f7f3177c50693006cca242`  
		Last Modified: Fri, 29 Jul 2016 22:49:15 GMT  
		Size: 276.0 B
	-	`sha256:b4b0c030555d4340cfe8288272d2bcb291c2f483f1957f1341cfaaea369dc109`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 431.0 B
	-	`sha256:6e898edbabd79f8b8eaf7351077eff9966a11459347f335757f5341a0a889c16`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 222.0 B
	-	`sha256:e4b8d84dea782a5effd404eec31320063107e0bb56fccaffae77c4430c8082a3`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 475.0 B
	-	`sha256:1e6b3cc2b52718f773b43ca8767f59a7f047a156e9fb1621bda0c003fd0c657d`  
		Last Modified: Fri, 29 Jul 2016 22:49:12 GMT  
		Size: 12.2 MB (12245146 bytes)
	-	`sha256:a25fefc3be7a4e50472e4095107f806811a5ee29de98714b9d2860a6d795400f`  
		Last Modified: Fri, 29 Jul 2016 22:49:11 GMT  
		Size: 603.0 B
	-	`sha256:508a3f831da53af9233d89c5b841cb5cb5597c9a4e347e31299d2041ffe6510e`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 19.6 MB (19570015 bytes)
	-	`sha256:53c7d0452155a0552db75c4b94a818552dc8e2f6d5a3233ee86307bcedd93960`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 1.8 KB (1754 bytes)
	-	`sha256:3e27a721a2af317ae9f2ad1996c72c6b72699b69519fea1051317b2e1d33738d`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 583.0 B
	-	`sha256:3cedd137f581a331bd5d2734e85908fd43022fa91640ff3bfdab938dad82f79b`  
		Last Modified: Mon, 01 Aug 2016 17:12:04 GMT  
		Size: 294.0 B
	-	`sha256:9c0c13623477deaa365cdc205f41b3372f89f292fa4c5dd457cc4d673057b950`  
		Last Modified: Mon, 01 Aug 2016 17:17:23 GMT  
		Size: 8.4 MB (8427831 bytes)
	-	`sha256:4c4f8a67fe3a7701764e06f717d80c97b5fb0517ffe6730e0e3b7c1a06f02e92`  
		Last Modified: Mon, 01 Aug 2016 17:17:21 GMT  
		Size: 331.0 B
	-	`sha256:40766e375f0030ad65694033beedb8da2d6d046c5d96b8fbbb6cb6255d953d4e`  
		Last Modified: Fri, 05 Aug 2016 22:31:45 GMT  
		Size: 12.7 MB (12704648 bytes)

## `drupal:8.2`

```console
$ docker pull drupal@sha256:1fb32f1c72c208a24edc141e636723e1e77babd403c3ff788e21680d76b6da62
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184746251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2489b9654f9c1546eb3ec75a9cfb533917835189b0628f071774c485dacfa95d`
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
# Fri, 29 Jul 2016 20:49:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 29 Jul 2016 20:49:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 29 Jul 2016 20:49:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 29 Jul 2016 20:49:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 29 Jul 2016 20:49:49 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 29 Jul 2016 20:49:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 29 Jul 2016 20:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:49:51 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:49:54 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:49:54 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 20:55:34 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Fri, 29 Jul 2016 20:55:34 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 20:55:35 GMT
EXPOSE 80/tcp
# Fri, 29 Jul 2016 20:55:35 GMT
CMD ["apache2-foreground"]
# Mon, 01 Aug 2016 17:07:59 GMT
RUN a2enmod rewrite
# Mon, 01 Aug 2016 17:16:53 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:16:55 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 01 Aug 2016 17:16:56 GMT
WORKDIR /var/www/html
# Fri, 05 Aug 2016 22:27:29 GMT
ENV DRUPAL_VERSION=8.2.0-beta1
# Fri, 05 Aug 2016 22:27:29 GMT
ENV DRUPAL_MD5=35fed9378c738d6bf420399f56e740c9
# Fri, 05 Aug 2016 22:27:39 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:c0c9ad6136b5e7b142c48c7167eede3d15af54c538f7f3177c50693006cca242`  
		Last Modified: Fri, 29 Jul 2016 22:49:15 GMT  
		Size: 276.0 B
	-	`sha256:b4b0c030555d4340cfe8288272d2bcb291c2f483f1957f1341cfaaea369dc109`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 431.0 B
	-	`sha256:6e898edbabd79f8b8eaf7351077eff9966a11459347f335757f5341a0a889c16`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 222.0 B
	-	`sha256:e4b8d84dea782a5effd404eec31320063107e0bb56fccaffae77c4430c8082a3`  
		Last Modified: Fri, 29 Jul 2016 22:49:13 GMT  
		Size: 475.0 B
	-	`sha256:1e6b3cc2b52718f773b43ca8767f59a7f047a156e9fb1621bda0c003fd0c657d`  
		Last Modified: Fri, 29 Jul 2016 22:49:12 GMT  
		Size: 12.2 MB (12245146 bytes)
	-	`sha256:a25fefc3be7a4e50472e4095107f806811a5ee29de98714b9d2860a6d795400f`  
		Last Modified: Fri, 29 Jul 2016 22:49:11 GMT  
		Size: 603.0 B
	-	`sha256:508a3f831da53af9233d89c5b841cb5cb5597c9a4e347e31299d2041ffe6510e`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 19.6 MB (19570015 bytes)
	-	`sha256:53c7d0452155a0552db75c4b94a818552dc8e2f6d5a3233ee86307bcedd93960`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 1.8 KB (1754 bytes)
	-	`sha256:3e27a721a2af317ae9f2ad1996c72c6b72699b69519fea1051317b2e1d33738d`  
		Last Modified: Fri, 29 Jul 2016 22:49:10 GMT  
		Size: 583.0 B
	-	`sha256:3cedd137f581a331bd5d2734e85908fd43022fa91640ff3bfdab938dad82f79b`  
		Last Modified: Mon, 01 Aug 2016 17:12:04 GMT  
		Size: 294.0 B
	-	`sha256:9c0c13623477deaa365cdc205f41b3372f89f292fa4c5dd457cc4d673057b950`  
		Last Modified: Mon, 01 Aug 2016 17:17:23 GMT  
		Size: 8.4 MB (8427831 bytes)
	-	`sha256:4c4f8a67fe3a7701764e06f717d80c97b5fb0517ffe6730e0e3b7c1a06f02e92`  
		Last Modified: Mon, 01 Aug 2016 17:17:21 GMT  
		Size: 331.0 B
	-	`sha256:40766e375f0030ad65694033beedb8da2d6d046c5d96b8fbbb6cb6255d953d4e`  
		Last Modified: Fri, 05 Aug 2016 22:31:45 GMT  
		Size: 12.7 MB (12704648 bytes)

## `drupal:8.2.0-beta1-fpm`

```console
$ docker pull drupal@sha256:f2502316c0a9ee2362521e09cf4616b7c7663c7da95e0113542828f98213ba0d
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.0-beta1-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174926101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4365f1653137122f41d068a88f00a9b14e0044f8062652080754a76c6df2b129`
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
# Fri, 29 Jul 2016 20:55:36 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:55:38 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:55:41 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:55:42 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 21:03:31 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 21:03:33 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 21:03:33 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 21:03:35 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 29 Jul 2016 21:03:35 GMT
EXPOSE 9000/tcp
# Fri, 29 Jul 2016 21:03:36 GMT
CMD ["php-fpm"]
# Mon, 01 Aug 2016 17:22:41 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:22:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 01 Aug 2016 17:22:43 GMT
WORKDIR /var/www/html
# Fri, 05 Aug 2016 22:27:41 GMT
ENV DRUPAL_VERSION=8.2.0-beta1
# Fri, 05 Aug 2016 22:27:42 GMT
ENV DRUPAL_MD5=35fed9378c738d6bf420399f56e740c9
# Fri, 05 Aug 2016 22:27:52 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:8c3225e17fffca635cd998e31ec3d64611324c552cdd362239d379e3edcaebc8`  
		Last Modified: Fri, 29 Jul 2016 22:50:05 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5a54ff814bfe44ab207d1870d77b14e90f1686fa303d3095058f5d1489ec034c`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 601.0 B
	-	`sha256:dfae4accf5c015e402ac54bde22cbadf7394aec72f132227a5f0d284d05babcc`  
		Last Modified: Fri, 29 Jul 2016 22:50:05 GMT  
		Size: 12.6 MB (12613088 bytes)
	-	`sha256:7f65f3924117e7cb8c91bb126c730d3beeaa1d9b8e77409c0a28385b026f0801`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 1.8 KB (1753 bytes)
	-	`sha256:97f23dcb5d021b11fc14039ade2bfe2c71df9ee7dceb0aeb09bf594a318f9400`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 127.0 B
	-	`sha256:c3fc7300be3912993816fa6f109851e1f87acad0692c8fce70f83e253e48d0a8`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 7.7 KB (7692 bytes)
	-	`sha256:474c8e1dd883ef98a3d09b478550917982a487ee65555480ee97088f5abc45ea`  
		Last Modified: Mon, 01 Aug 2016 17:23:07 GMT  
		Size: 8.4 MB (8405605 bytes)
	-	`sha256:9470561e074ff57f405eb3da87e9df614a66d18161c2570bfbd0d522a592758d`  
		Last Modified: Mon, 01 Aug 2016 17:23:03 GMT  
		Size: 332.0 B
	-	`sha256:0eed6c355264214850aec43138de4e7d5f32a3ad9b8edceca8afde8b7b52c558`  
		Last Modified: Fri, 05 Aug 2016 22:33:03 GMT  
		Size: 12.7 MB (12704656 bytes)

## `drupal:8.2.0-fpm`

```console
$ docker pull drupal@sha256:f2502316c0a9ee2362521e09cf4616b7c7663c7da95e0113542828f98213ba0d
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.0-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174926101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4365f1653137122f41d068a88f00a9b14e0044f8062652080754a76c6df2b129`
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
# Fri, 29 Jul 2016 20:55:36 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:55:38 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:55:41 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:55:42 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 21:03:31 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 21:03:33 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 21:03:33 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 21:03:35 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 29 Jul 2016 21:03:35 GMT
EXPOSE 9000/tcp
# Fri, 29 Jul 2016 21:03:36 GMT
CMD ["php-fpm"]
# Mon, 01 Aug 2016 17:22:41 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:22:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 01 Aug 2016 17:22:43 GMT
WORKDIR /var/www/html
# Fri, 05 Aug 2016 22:27:41 GMT
ENV DRUPAL_VERSION=8.2.0-beta1
# Fri, 05 Aug 2016 22:27:42 GMT
ENV DRUPAL_MD5=35fed9378c738d6bf420399f56e740c9
# Fri, 05 Aug 2016 22:27:52 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:8c3225e17fffca635cd998e31ec3d64611324c552cdd362239d379e3edcaebc8`  
		Last Modified: Fri, 29 Jul 2016 22:50:05 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5a54ff814bfe44ab207d1870d77b14e90f1686fa303d3095058f5d1489ec034c`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 601.0 B
	-	`sha256:dfae4accf5c015e402ac54bde22cbadf7394aec72f132227a5f0d284d05babcc`  
		Last Modified: Fri, 29 Jul 2016 22:50:05 GMT  
		Size: 12.6 MB (12613088 bytes)
	-	`sha256:7f65f3924117e7cb8c91bb126c730d3beeaa1d9b8e77409c0a28385b026f0801`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 1.8 KB (1753 bytes)
	-	`sha256:97f23dcb5d021b11fc14039ade2bfe2c71df9ee7dceb0aeb09bf594a318f9400`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 127.0 B
	-	`sha256:c3fc7300be3912993816fa6f109851e1f87acad0692c8fce70f83e253e48d0a8`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 7.7 KB (7692 bytes)
	-	`sha256:474c8e1dd883ef98a3d09b478550917982a487ee65555480ee97088f5abc45ea`  
		Last Modified: Mon, 01 Aug 2016 17:23:07 GMT  
		Size: 8.4 MB (8405605 bytes)
	-	`sha256:9470561e074ff57f405eb3da87e9df614a66d18161c2570bfbd0d522a592758d`  
		Last Modified: Mon, 01 Aug 2016 17:23:03 GMT  
		Size: 332.0 B
	-	`sha256:0eed6c355264214850aec43138de4e7d5f32a3ad9b8edceca8afde8b7b52c558`  
		Last Modified: Fri, 05 Aug 2016 22:33:03 GMT  
		Size: 12.7 MB (12704656 bytes)

## `drupal:8.2-fpm`

```console
$ docker pull drupal@sha256:f2502316c0a9ee2362521e09cf4616b7c7663c7da95e0113542828f98213ba0d
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174926101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4365f1653137122f41d068a88f00a9b14e0044f8062652080754a76c6df2b129`
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
# Fri, 29 Jul 2016 20:55:36 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_VERSION=7.0.9
# Fri, 29 Jul 2016 20:55:37 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Fri, 29 Jul 2016 20:55:38 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Fri, 29 Jul 2016 20:55:41 GMT
RUN set -xe 	&& cd /usr/src/ 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 29 Jul 2016 20:55:42 GMT
COPY file:2cb3361ad95f7488a8a7f2b07b4c9b350c37169a746a83f90cd8e6d164e3e963 in /usr/local/bin/
# Fri, 29 Jul 2016 21:03:31 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 		$PHP_EXTRA_CONFIGURE_ARGS 		--disable-cgi 		--enable-mysqlnd 		--enable-mbstring 		--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 	&& docker-php-source delete
# Fri, 29 Jul 2016 21:03:33 GMT
COPY multi:7012ef5427b419b7651e580b27dfd5ff65ccfb6e160d0381521f279d6a86cf08 in /usr/local/bin/
# Fri, 29 Jul 2016 21:03:33 GMT
WORKDIR /var/www/html
# Fri, 29 Jul 2016 21:03:35 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 29 Jul 2016 21:03:35 GMT
EXPOSE 9000/tcp
# Fri, 29 Jul 2016 21:03:36 GMT
CMD ["php-fpm"]
# Mon, 01 Aug 2016 17:22:41 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 01 Aug 2016 17:22:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 01 Aug 2016 17:22:43 GMT
WORKDIR /var/www/html
# Fri, 05 Aug 2016 22:27:41 GMT
ENV DRUPAL_VERSION=8.2.0-beta1
# Fri, 05 Aug 2016 22:27:42 GMT
ENV DRUPAL_MD5=35fed9378c738d6bf420399f56e740c9
# Fri, 05 Aug 2016 22:27:52 GMT
RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:8c3225e17fffca635cd998e31ec3d64611324c552cdd362239d379e3edcaebc8`  
		Last Modified: Fri, 29 Jul 2016 22:50:05 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5a54ff814bfe44ab207d1870d77b14e90f1686fa303d3095058f5d1489ec034c`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 601.0 B
	-	`sha256:dfae4accf5c015e402ac54bde22cbadf7394aec72f132227a5f0d284d05babcc`  
		Last Modified: Fri, 29 Jul 2016 22:50:05 GMT  
		Size: 12.6 MB (12613088 bytes)
	-	`sha256:7f65f3924117e7cb8c91bb126c730d3beeaa1d9b8e77409c0a28385b026f0801`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 1.8 KB (1753 bytes)
	-	`sha256:97f23dcb5d021b11fc14039ade2bfe2c71df9ee7dceb0aeb09bf594a318f9400`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 127.0 B
	-	`sha256:c3fc7300be3912993816fa6f109851e1f87acad0692c8fce70f83e253e48d0a8`  
		Last Modified: Fri, 29 Jul 2016 22:50:00 GMT  
		Size: 7.7 KB (7692 bytes)
	-	`sha256:474c8e1dd883ef98a3d09b478550917982a487ee65555480ee97088f5abc45ea`  
		Last Modified: Mon, 01 Aug 2016 17:23:07 GMT  
		Size: 8.4 MB (8405605 bytes)
	-	`sha256:9470561e074ff57f405eb3da87e9df614a66d18161c2570bfbd0d522a592758d`  
		Last Modified: Mon, 01 Aug 2016 17:23:03 GMT  
		Size: 332.0 B
	-	`sha256:0eed6c355264214850aec43138de4e7d5f32a3ad9b8edceca8afde8b7b52c558`  
		Last Modified: Fri, 05 Aug 2016 22:33:03 GMT  
		Size: 12.7 MB (12704656 bytes)
