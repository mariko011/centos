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
$ docker pull drupal@sha256:6eb2ca68494bd8925579b1121edad3428e6c5997983873a438e65e9e08a9f368
```

-	Platforms:
	-	linux; amd64

### `drupal:7.50-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175575919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38c832c56cef4c3ef008fa547609474cd62fd462c4778cd07918f653daf6fa8a`
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
# Wed, 10 Aug 2016 19:34:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_VERSION=7.0.9
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Wed, 10 Aug 2016 19:34:57 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:34:59 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:34:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:40:17 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:40:19 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 19:40:19 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:57:34 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:00:52 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:00:53 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:00:54 GMT
ENV DRUPAL_VERSION=7.50
# Thu, 11 Aug 2016 17:00:55 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Thu, 11 Aug 2016 17:00:58 GMT
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
	-	`sha256:2a087b15ae9141b4fa5f420ec8e70def40a208486af2bebf6da4df61e57fbf85`  
		Last Modified: Wed, 10 Aug 2016 21:31:27 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5569e4a9586075be8d4cfc27dc08f324d057c5b210852a5d3c0f0fef9dc08d71`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 489.0 B
	-	`sha256:0920e679c7681863aa1694770549038a54e674945f243a2a72f233f20525813e`  
		Last Modified: Wed, 10 Aug 2016 21:31:33 GMT  
		Size: 20.2 MB (20175580 bytes)
	-	`sha256:a59fc2a253f2624b2149a9cc2a7d4e5752a96f55f91eeef86c079459a92244d1`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 1.8 KB (1833 bytes)
	-	`sha256:859330c5aa7cd540469c8f8d8d8d3f9937f03d9726c0b1d8a238cdc3ec7c7312`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 584.0 B
	-	`sha256:d24fb25e3c76b60de1ad35885517e1db3a3cb0e0183dfa192042f96c4a29d8e4`  
		Last Modified: Thu, 11 Aug 2016 17:01:08 GMT  
		Size: 295.0 B
	-	`sha256:cbd0ada15f8df0cf83fda9a31e8e4da82e6b243e5cae7b1f06d296ac55e7c23b`  
		Last Modified: Thu, 11 Aug 2016 17:01:18 GMT  
		Size: 8.1 MB (8073203 bytes)
	-	`sha256:1df89cb80982043589b4fa2325220496d879ae3d5e21ab85007ed675ca8f48f2`  
		Last Modified: Thu, 11 Aug 2016 17:01:10 GMT  
		Size: 3.3 MB (3283744 bytes)

## `drupal:7-apache`

```console
$ docker pull drupal@sha256:6eb2ca68494bd8925579b1121edad3428e6c5997983873a438e65e9e08a9f368
```

-	Platforms:
	-	linux; amd64

### `drupal:7-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175575919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38c832c56cef4c3ef008fa547609474cd62fd462c4778cd07918f653daf6fa8a`
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
# Wed, 10 Aug 2016 19:34:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_VERSION=7.0.9
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Wed, 10 Aug 2016 19:34:57 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:34:59 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:34:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:40:17 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:40:19 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 19:40:19 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:57:34 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:00:52 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:00:53 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:00:54 GMT
ENV DRUPAL_VERSION=7.50
# Thu, 11 Aug 2016 17:00:55 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Thu, 11 Aug 2016 17:00:58 GMT
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
	-	`sha256:2a087b15ae9141b4fa5f420ec8e70def40a208486af2bebf6da4df61e57fbf85`  
		Last Modified: Wed, 10 Aug 2016 21:31:27 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5569e4a9586075be8d4cfc27dc08f324d057c5b210852a5d3c0f0fef9dc08d71`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 489.0 B
	-	`sha256:0920e679c7681863aa1694770549038a54e674945f243a2a72f233f20525813e`  
		Last Modified: Wed, 10 Aug 2016 21:31:33 GMT  
		Size: 20.2 MB (20175580 bytes)
	-	`sha256:a59fc2a253f2624b2149a9cc2a7d4e5752a96f55f91eeef86c079459a92244d1`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 1.8 KB (1833 bytes)
	-	`sha256:859330c5aa7cd540469c8f8d8d8d3f9937f03d9726c0b1d8a238cdc3ec7c7312`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 584.0 B
	-	`sha256:d24fb25e3c76b60de1ad35885517e1db3a3cb0e0183dfa192042f96c4a29d8e4`  
		Last Modified: Thu, 11 Aug 2016 17:01:08 GMT  
		Size: 295.0 B
	-	`sha256:cbd0ada15f8df0cf83fda9a31e8e4da82e6b243e5cae7b1f06d296ac55e7c23b`  
		Last Modified: Thu, 11 Aug 2016 17:01:18 GMT  
		Size: 8.1 MB (8073203 bytes)
	-	`sha256:1df89cb80982043589b4fa2325220496d879ae3d5e21ab85007ed675ca8f48f2`  
		Last Modified: Thu, 11 Aug 2016 17:01:10 GMT  
		Size: 3.3 MB (3283744 bytes)

## `drupal:7.50`

```console
$ docker pull drupal@sha256:6eb2ca68494bd8925579b1121edad3428e6c5997983873a438e65e9e08a9f368
```

-	Platforms:
	-	linux; amd64

### `drupal:7.50` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175575919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38c832c56cef4c3ef008fa547609474cd62fd462c4778cd07918f653daf6fa8a`
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
# Wed, 10 Aug 2016 19:34:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_VERSION=7.0.9
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Wed, 10 Aug 2016 19:34:57 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:34:59 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:34:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:40:17 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:40:19 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 19:40:19 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:57:34 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:00:52 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:00:53 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:00:54 GMT
ENV DRUPAL_VERSION=7.50
# Thu, 11 Aug 2016 17:00:55 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Thu, 11 Aug 2016 17:00:58 GMT
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
	-	`sha256:2a087b15ae9141b4fa5f420ec8e70def40a208486af2bebf6da4df61e57fbf85`  
		Last Modified: Wed, 10 Aug 2016 21:31:27 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5569e4a9586075be8d4cfc27dc08f324d057c5b210852a5d3c0f0fef9dc08d71`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 489.0 B
	-	`sha256:0920e679c7681863aa1694770549038a54e674945f243a2a72f233f20525813e`  
		Last Modified: Wed, 10 Aug 2016 21:31:33 GMT  
		Size: 20.2 MB (20175580 bytes)
	-	`sha256:a59fc2a253f2624b2149a9cc2a7d4e5752a96f55f91eeef86c079459a92244d1`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 1.8 KB (1833 bytes)
	-	`sha256:859330c5aa7cd540469c8f8d8d8d3f9937f03d9726c0b1d8a238cdc3ec7c7312`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 584.0 B
	-	`sha256:d24fb25e3c76b60de1ad35885517e1db3a3cb0e0183dfa192042f96c4a29d8e4`  
		Last Modified: Thu, 11 Aug 2016 17:01:08 GMT  
		Size: 295.0 B
	-	`sha256:cbd0ada15f8df0cf83fda9a31e8e4da82e6b243e5cae7b1f06d296ac55e7c23b`  
		Last Modified: Thu, 11 Aug 2016 17:01:18 GMT  
		Size: 8.1 MB (8073203 bytes)
	-	`sha256:1df89cb80982043589b4fa2325220496d879ae3d5e21ab85007ed675ca8f48f2`  
		Last Modified: Thu, 11 Aug 2016 17:01:10 GMT  
		Size: 3.3 MB (3283744 bytes)

## `drupal:7`

```console
$ docker pull drupal@sha256:6eb2ca68494bd8925579b1121edad3428e6c5997983873a438e65e9e08a9f368
```

-	Platforms:
	-	linux; amd64

### `drupal:7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175575919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38c832c56cef4c3ef008fa547609474cd62fd462c4778cd07918f653daf6fa8a`
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
# Wed, 10 Aug 2016 19:34:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_VERSION=7.0.9
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Wed, 10 Aug 2016 19:34:57 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:34:59 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:34:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:40:17 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:40:19 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 19:40:19 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:57:34 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:00:52 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:00:53 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:00:54 GMT
ENV DRUPAL_VERSION=7.50
# Thu, 11 Aug 2016 17:00:55 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Thu, 11 Aug 2016 17:00:58 GMT
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
	-	`sha256:2a087b15ae9141b4fa5f420ec8e70def40a208486af2bebf6da4df61e57fbf85`  
		Last Modified: Wed, 10 Aug 2016 21:31:27 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5569e4a9586075be8d4cfc27dc08f324d057c5b210852a5d3c0f0fef9dc08d71`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 489.0 B
	-	`sha256:0920e679c7681863aa1694770549038a54e674945f243a2a72f233f20525813e`  
		Last Modified: Wed, 10 Aug 2016 21:31:33 GMT  
		Size: 20.2 MB (20175580 bytes)
	-	`sha256:a59fc2a253f2624b2149a9cc2a7d4e5752a96f55f91eeef86c079459a92244d1`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 1.8 KB (1833 bytes)
	-	`sha256:859330c5aa7cd540469c8f8d8d8d3f9937f03d9726c0b1d8a238cdc3ec7c7312`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 584.0 B
	-	`sha256:d24fb25e3c76b60de1ad35885517e1db3a3cb0e0183dfa192042f96c4a29d8e4`  
		Last Modified: Thu, 11 Aug 2016 17:01:08 GMT  
		Size: 295.0 B
	-	`sha256:cbd0ada15f8df0cf83fda9a31e8e4da82e6b243e5cae7b1f06d296ac55e7c23b`  
		Last Modified: Thu, 11 Aug 2016 17:01:18 GMT  
		Size: 8.1 MB (8073203 bytes)
	-	`sha256:1df89cb80982043589b4fa2325220496d879ae3d5e21ab85007ed675ca8f48f2`  
		Last Modified: Thu, 11 Aug 2016 17:01:10 GMT  
		Size: 3.3 MB (3283744 bytes)

## `drupal:7.50-fpm`

```console
$ docker pull drupal@sha256:7584a64b79e54753c109f0d175a19dbcfcd7bce4ff3c71646e5f1c3beae2f3ab
```

-	Platforms:
	-	linux; amd64

### `drupal:7.50-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.7 MB (165695542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00b646403232234ff95e44148aee8741adf96fedd75ea6e8ad573b99305c908e`
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
# Wed, 10 Aug 2016 19:40:23 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:40:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:07 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:47:08 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:08 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:47:10 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 19:47:10 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 19:47:10 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 17:15:06 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:15:07 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:15:08 GMT
ENV DRUPAL_VERSION=7.50
# Thu, 11 Aug 2016 17:15:08 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Thu, 11 Aug 2016 17:15:11 GMT
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
	-	`sha256:2c7f1896201042f5a56e69f0ad43dbf2a03bba37f1d363b86b084419bda9a36f`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 12.2 MB (12245152 bytes)
	-	`sha256:a6b6840b656be6f94a7dbc8b7118a4a1f006c5ffecfef31fca357e00207decde`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 490.0 B
	-	`sha256:1b9c85a7aa1b85a314324be3bf6491098cf6695b42d5ee3f08e0284b435b2808`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 13.2 MB (13158390 bytes)
	-	`sha256:96b5ad85eeda5d3c12c1dd135d2fffd44cf10de2a52cb37a3e6330e1384e95ca`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 1.8 KB (1837 bytes)
	-	`sha256:46f8c9ac406d307281a7e69f2d846905d3c5479912a1f18c79ed4b2faa4d8663`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 129.0 B
	-	`sha256:6b6079c882568d0a40d0266404f28416ae4cdb2e97a579d9d470ec6b768482f2`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 7.7 KB (7689 bytes)
	-	`sha256:66379454924f428f60aaab52e32b69a9fc694ea62a09d9e5de76ad6a6329674d`  
		Last Modified: Thu, 11 Aug 2016 17:15:25 GMT  
		Size: 8.1 MB (8051016 bytes)
	-	`sha256:1921e3e515c4d5f3cf982a01f2177a5bc86c662b22fa229ce313f1ab13e11e32`  
		Last Modified: Thu, 11 Aug 2016 17:15:23 GMT  
		Size: 3.3 MB (3283741 bytes)

## `drupal:7-fpm`

```console
$ docker pull drupal@sha256:7584a64b79e54753c109f0d175a19dbcfcd7bce4ff3c71646e5f1c3beae2f3ab
```

-	Platforms:
	-	linux; amd64

### `drupal:7-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.7 MB (165695542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00b646403232234ff95e44148aee8741adf96fedd75ea6e8ad573b99305c908e`
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
# Wed, 10 Aug 2016 19:40:23 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:40:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:07 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:47:08 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:08 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:47:10 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 19:47:10 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 19:47:10 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 17:15:06 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:15:07 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:15:08 GMT
ENV DRUPAL_VERSION=7.50
# Thu, 11 Aug 2016 17:15:08 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Thu, 11 Aug 2016 17:15:11 GMT
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
	-	`sha256:2c7f1896201042f5a56e69f0ad43dbf2a03bba37f1d363b86b084419bda9a36f`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 12.2 MB (12245152 bytes)
	-	`sha256:a6b6840b656be6f94a7dbc8b7118a4a1f006c5ffecfef31fca357e00207decde`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 490.0 B
	-	`sha256:1b9c85a7aa1b85a314324be3bf6491098cf6695b42d5ee3f08e0284b435b2808`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 13.2 MB (13158390 bytes)
	-	`sha256:96b5ad85eeda5d3c12c1dd135d2fffd44cf10de2a52cb37a3e6330e1384e95ca`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 1.8 KB (1837 bytes)
	-	`sha256:46f8c9ac406d307281a7e69f2d846905d3c5479912a1f18c79ed4b2faa4d8663`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 129.0 B
	-	`sha256:6b6079c882568d0a40d0266404f28416ae4cdb2e97a579d9d470ec6b768482f2`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 7.7 KB (7689 bytes)
	-	`sha256:66379454924f428f60aaab52e32b69a9fc694ea62a09d9e5de76ad6a6329674d`  
		Last Modified: Thu, 11 Aug 2016 17:15:25 GMT  
		Size: 8.1 MB (8051016 bytes)
	-	`sha256:1921e3e515c4d5f3cf982a01f2177a5bc86c662b22fa229ce313f1ab13e11e32`  
		Last Modified: Thu, 11 Aug 2016 17:15:23 GMT  
		Size: 3.3 MB (3283741 bytes)

## `drupal:8.1.8-apache`

```console
$ docker pull drupal@sha256:79f4c3836802875a8fd901f34d34f842d3ce78e93d7764431b8fc8b18adf5d61
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1.8-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185253428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e4a3dd45ff6ef667fafcfbc1b7f94eb0e5d04d7f238528852e3db6263228451`
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
# Wed, 10 Aug 2016 19:34:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_VERSION=7.0.9
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Wed, 10 Aug 2016 19:34:57 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:34:59 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:34:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:40:17 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:40:19 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 19:40:19 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:57:34 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:05:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:05:36 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 17:05:37 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:15:43 GMT
ENV DRUPAL_VERSION=8.1.8
# Thu, 11 Aug 2016 17:15:44 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Thu, 11 Aug 2016 17:15:53 GMT
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
	-	`sha256:2a087b15ae9141b4fa5f420ec8e70def40a208486af2bebf6da4df61e57fbf85`  
		Last Modified: Wed, 10 Aug 2016 21:31:27 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5569e4a9586075be8d4cfc27dc08f324d057c5b210852a5d3c0f0fef9dc08d71`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 489.0 B
	-	`sha256:0920e679c7681863aa1694770549038a54e674945f243a2a72f233f20525813e`  
		Last Modified: Wed, 10 Aug 2016 21:31:33 GMT  
		Size: 20.2 MB (20175580 bytes)
	-	`sha256:a59fc2a253f2624b2149a9cc2a7d4e5752a96f55f91eeef86c079459a92244d1`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 1.8 KB (1833 bytes)
	-	`sha256:859330c5aa7cd540469c8f8d8d8d3f9937f03d9726c0b1d8a238cdc3ec7c7312`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 584.0 B
	-	`sha256:d24fb25e3c76b60de1ad35885517e1db3a3cb0e0183dfa192042f96c4a29d8e4`  
		Last Modified: Thu, 11 Aug 2016 17:01:08 GMT  
		Size: 295.0 B
	-	`sha256:d16b3f5731ea768084f007efa30aedbd3d4ce7b7c70c9f0e2d84c8b1e4e96ae3`  
		Last Modified: Thu, 11 Aug 2016 17:06:03 GMT  
		Size: 8.4 MB (8429236 bytes)
	-	`sha256:7907a232d559021deec76fa58a52a56f7e62168b6b568284ea4940a2ef687c21`  
		Last Modified: Thu, 11 Aug 2016 17:05:59 GMT  
		Size: 333.0 B
	-	`sha256:69171f34d1179805449fdcc6f407769eef6ff37b6b73ccdaf9715b40620245a1`  
		Last Modified: Thu, 11 Aug 2016 17:16:10 GMT  
		Size: 12.6 MB (12604887 bytes)

## `drupal:8.1-apache`

```console
$ docker pull drupal@sha256:79f4c3836802875a8fd901f34d34f842d3ce78e93d7764431b8fc8b18adf5d61
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185253428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e4a3dd45ff6ef667fafcfbc1b7f94eb0e5d04d7f238528852e3db6263228451`
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
# Wed, 10 Aug 2016 19:34:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_VERSION=7.0.9
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Wed, 10 Aug 2016 19:34:57 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:34:59 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:34:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:40:17 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:40:19 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 19:40:19 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:57:34 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:05:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:05:36 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 17:05:37 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:15:43 GMT
ENV DRUPAL_VERSION=8.1.8
# Thu, 11 Aug 2016 17:15:44 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Thu, 11 Aug 2016 17:15:53 GMT
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
	-	`sha256:2a087b15ae9141b4fa5f420ec8e70def40a208486af2bebf6da4df61e57fbf85`  
		Last Modified: Wed, 10 Aug 2016 21:31:27 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5569e4a9586075be8d4cfc27dc08f324d057c5b210852a5d3c0f0fef9dc08d71`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 489.0 B
	-	`sha256:0920e679c7681863aa1694770549038a54e674945f243a2a72f233f20525813e`  
		Last Modified: Wed, 10 Aug 2016 21:31:33 GMT  
		Size: 20.2 MB (20175580 bytes)
	-	`sha256:a59fc2a253f2624b2149a9cc2a7d4e5752a96f55f91eeef86c079459a92244d1`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 1.8 KB (1833 bytes)
	-	`sha256:859330c5aa7cd540469c8f8d8d8d3f9937f03d9726c0b1d8a238cdc3ec7c7312`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 584.0 B
	-	`sha256:d24fb25e3c76b60de1ad35885517e1db3a3cb0e0183dfa192042f96c4a29d8e4`  
		Last Modified: Thu, 11 Aug 2016 17:01:08 GMT  
		Size: 295.0 B
	-	`sha256:d16b3f5731ea768084f007efa30aedbd3d4ce7b7c70c9f0e2d84c8b1e4e96ae3`  
		Last Modified: Thu, 11 Aug 2016 17:06:03 GMT  
		Size: 8.4 MB (8429236 bytes)
	-	`sha256:7907a232d559021deec76fa58a52a56f7e62168b6b568284ea4940a2ef687c21`  
		Last Modified: Thu, 11 Aug 2016 17:05:59 GMT  
		Size: 333.0 B
	-	`sha256:69171f34d1179805449fdcc6f407769eef6ff37b6b73ccdaf9715b40620245a1`  
		Last Modified: Thu, 11 Aug 2016 17:16:10 GMT  
		Size: 12.6 MB (12604887 bytes)

## `drupal:8-apache`

```console
$ docker pull drupal@sha256:79f4c3836802875a8fd901f34d34f842d3ce78e93d7764431b8fc8b18adf5d61
```

-	Platforms:
	-	linux; amd64

### `drupal:8-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185253428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e4a3dd45ff6ef667fafcfbc1b7f94eb0e5d04d7f238528852e3db6263228451`
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
# Wed, 10 Aug 2016 19:34:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_VERSION=7.0.9
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Wed, 10 Aug 2016 19:34:57 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:34:59 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:34:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:40:17 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:40:19 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 19:40:19 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:57:34 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:05:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:05:36 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 17:05:37 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:15:43 GMT
ENV DRUPAL_VERSION=8.1.8
# Thu, 11 Aug 2016 17:15:44 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Thu, 11 Aug 2016 17:15:53 GMT
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
	-	`sha256:2a087b15ae9141b4fa5f420ec8e70def40a208486af2bebf6da4df61e57fbf85`  
		Last Modified: Wed, 10 Aug 2016 21:31:27 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5569e4a9586075be8d4cfc27dc08f324d057c5b210852a5d3c0f0fef9dc08d71`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 489.0 B
	-	`sha256:0920e679c7681863aa1694770549038a54e674945f243a2a72f233f20525813e`  
		Last Modified: Wed, 10 Aug 2016 21:31:33 GMT  
		Size: 20.2 MB (20175580 bytes)
	-	`sha256:a59fc2a253f2624b2149a9cc2a7d4e5752a96f55f91eeef86c079459a92244d1`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 1.8 KB (1833 bytes)
	-	`sha256:859330c5aa7cd540469c8f8d8d8d3f9937f03d9726c0b1d8a238cdc3ec7c7312`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 584.0 B
	-	`sha256:d24fb25e3c76b60de1ad35885517e1db3a3cb0e0183dfa192042f96c4a29d8e4`  
		Last Modified: Thu, 11 Aug 2016 17:01:08 GMT  
		Size: 295.0 B
	-	`sha256:d16b3f5731ea768084f007efa30aedbd3d4ce7b7c70c9f0e2d84c8b1e4e96ae3`  
		Last Modified: Thu, 11 Aug 2016 17:06:03 GMT  
		Size: 8.4 MB (8429236 bytes)
	-	`sha256:7907a232d559021deec76fa58a52a56f7e62168b6b568284ea4940a2ef687c21`  
		Last Modified: Thu, 11 Aug 2016 17:05:59 GMT  
		Size: 333.0 B
	-	`sha256:69171f34d1179805449fdcc6f407769eef6ff37b6b73ccdaf9715b40620245a1`  
		Last Modified: Thu, 11 Aug 2016 17:16:10 GMT  
		Size: 12.6 MB (12604887 bytes)

## `drupal:apache`

```console
$ docker pull drupal@sha256:79f4c3836802875a8fd901f34d34f842d3ce78e93d7764431b8fc8b18adf5d61
```

-	Platforms:
	-	linux; amd64

### `drupal:apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185253428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e4a3dd45ff6ef667fafcfbc1b7f94eb0e5d04d7f238528852e3db6263228451`
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
# Wed, 10 Aug 2016 19:34:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_VERSION=7.0.9
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Wed, 10 Aug 2016 19:34:57 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:34:59 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:34:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:40:17 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:40:19 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 19:40:19 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:57:34 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:05:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:05:36 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 17:05:37 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:15:43 GMT
ENV DRUPAL_VERSION=8.1.8
# Thu, 11 Aug 2016 17:15:44 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Thu, 11 Aug 2016 17:15:53 GMT
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
	-	`sha256:2a087b15ae9141b4fa5f420ec8e70def40a208486af2bebf6da4df61e57fbf85`  
		Last Modified: Wed, 10 Aug 2016 21:31:27 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5569e4a9586075be8d4cfc27dc08f324d057c5b210852a5d3c0f0fef9dc08d71`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 489.0 B
	-	`sha256:0920e679c7681863aa1694770549038a54e674945f243a2a72f233f20525813e`  
		Last Modified: Wed, 10 Aug 2016 21:31:33 GMT  
		Size: 20.2 MB (20175580 bytes)
	-	`sha256:a59fc2a253f2624b2149a9cc2a7d4e5752a96f55f91eeef86c079459a92244d1`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 1.8 KB (1833 bytes)
	-	`sha256:859330c5aa7cd540469c8f8d8d8d3f9937f03d9726c0b1d8a238cdc3ec7c7312`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 584.0 B
	-	`sha256:d24fb25e3c76b60de1ad35885517e1db3a3cb0e0183dfa192042f96c4a29d8e4`  
		Last Modified: Thu, 11 Aug 2016 17:01:08 GMT  
		Size: 295.0 B
	-	`sha256:d16b3f5731ea768084f007efa30aedbd3d4ce7b7c70c9f0e2d84c8b1e4e96ae3`  
		Last Modified: Thu, 11 Aug 2016 17:06:03 GMT  
		Size: 8.4 MB (8429236 bytes)
	-	`sha256:7907a232d559021deec76fa58a52a56f7e62168b6b568284ea4940a2ef687c21`  
		Last Modified: Thu, 11 Aug 2016 17:05:59 GMT  
		Size: 333.0 B
	-	`sha256:69171f34d1179805449fdcc6f407769eef6ff37b6b73ccdaf9715b40620245a1`  
		Last Modified: Thu, 11 Aug 2016 17:16:10 GMT  
		Size: 12.6 MB (12604887 bytes)

## `drupal:8.1.8`

```console
$ docker pull drupal@sha256:79f4c3836802875a8fd901f34d34f842d3ce78e93d7764431b8fc8b18adf5d61
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1.8` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185253428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e4a3dd45ff6ef667fafcfbc1b7f94eb0e5d04d7f238528852e3db6263228451`
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
# Wed, 10 Aug 2016 19:34:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_VERSION=7.0.9
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Wed, 10 Aug 2016 19:34:57 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:34:59 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:34:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:40:17 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:40:19 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 19:40:19 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:57:34 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:05:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:05:36 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 17:05:37 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:15:43 GMT
ENV DRUPAL_VERSION=8.1.8
# Thu, 11 Aug 2016 17:15:44 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Thu, 11 Aug 2016 17:15:53 GMT
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
	-	`sha256:2a087b15ae9141b4fa5f420ec8e70def40a208486af2bebf6da4df61e57fbf85`  
		Last Modified: Wed, 10 Aug 2016 21:31:27 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5569e4a9586075be8d4cfc27dc08f324d057c5b210852a5d3c0f0fef9dc08d71`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 489.0 B
	-	`sha256:0920e679c7681863aa1694770549038a54e674945f243a2a72f233f20525813e`  
		Last Modified: Wed, 10 Aug 2016 21:31:33 GMT  
		Size: 20.2 MB (20175580 bytes)
	-	`sha256:a59fc2a253f2624b2149a9cc2a7d4e5752a96f55f91eeef86c079459a92244d1`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 1.8 KB (1833 bytes)
	-	`sha256:859330c5aa7cd540469c8f8d8d8d3f9937f03d9726c0b1d8a238cdc3ec7c7312`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 584.0 B
	-	`sha256:d24fb25e3c76b60de1ad35885517e1db3a3cb0e0183dfa192042f96c4a29d8e4`  
		Last Modified: Thu, 11 Aug 2016 17:01:08 GMT  
		Size: 295.0 B
	-	`sha256:d16b3f5731ea768084f007efa30aedbd3d4ce7b7c70c9f0e2d84c8b1e4e96ae3`  
		Last Modified: Thu, 11 Aug 2016 17:06:03 GMT  
		Size: 8.4 MB (8429236 bytes)
	-	`sha256:7907a232d559021deec76fa58a52a56f7e62168b6b568284ea4940a2ef687c21`  
		Last Modified: Thu, 11 Aug 2016 17:05:59 GMT  
		Size: 333.0 B
	-	`sha256:69171f34d1179805449fdcc6f407769eef6ff37b6b73ccdaf9715b40620245a1`  
		Last Modified: Thu, 11 Aug 2016 17:16:10 GMT  
		Size: 12.6 MB (12604887 bytes)

## `drupal:8.1`

```console
$ docker pull drupal@sha256:79f4c3836802875a8fd901f34d34f842d3ce78e93d7764431b8fc8b18adf5d61
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185253428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e4a3dd45ff6ef667fafcfbc1b7f94eb0e5d04d7f238528852e3db6263228451`
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
# Wed, 10 Aug 2016 19:34:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_VERSION=7.0.9
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Wed, 10 Aug 2016 19:34:57 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:34:59 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:34:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:40:17 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:40:19 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 19:40:19 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:57:34 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:05:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:05:36 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 17:05:37 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:15:43 GMT
ENV DRUPAL_VERSION=8.1.8
# Thu, 11 Aug 2016 17:15:44 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Thu, 11 Aug 2016 17:15:53 GMT
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
	-	`sha256:2a087b15ae9141b4fa5f420ec8e70def40a208486af2bebf6da4df61e57fbf85`  
		Last Modified: Wed, 10 Aug 2016 21:31:27 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5569e4a9586075be8d4cfc27dc08f324d057c5b210852a5d3c0f0fef9dc08d71`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 489.0 B
	-	`sha256:0920e679c7681863aa1694770549038a54e674945f243a2a72f233f20525813e`  
		Last Modified: Wed, 10 Aug 2016 21:31:33 GMT  
		Size: 20.2 MB (20175580 bytes)
	-	`sha256:a59fc2a253f2624b2149a9cc2a7d4e5752a96f55f91eeef86c079459a92244d1`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 1.8 KB (1833 bytes)
	-	`sha256:859330c5aa7cd540469c8f8d8d8d3f9937f03d9726c0b1d8a238cdc3ec7c7312`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 584.0 B
	-	`sha256:d24fb25e3c76b60de1ad35885517e1db3a3cb0e0183dfa192042f96c4a29d8e4`  
		Last Modified: Thu, 11 Aug 2016 17:01:08 GMT  
		Size: 295.0 B
	-	`sha256:d16b3f5731ea768084f007efa30aedbd3d4ce7b7c70c9f0e2d84c8b1e4e96ae3`  
		Last Modified: Thu, 11 Aug 2016 17:06:03 GMT  
		Size: 8.4 MB (8429236 bytes)
	-	`sha256:7907a232d559021deec76fa58a52a56f7e62168b6b568284ea4940a2ef687c21`  
		Last Modified: Thu, 11 Aug 2016 17:05:59 GMT  
		Size: 333.0 B
	-	`sha256:69171f34d1179805449fdcc6f407769eef6ff37b6b73ccdaf9715b40620245a1`  
		Last Modified: Thu, 11 Aug 2016 17:16:10 GMT  
		Size: 12.6 MB (12604887 bytes)

## `drupal:8`

```console
$ docker pull drupal@sha256:79f4c3836802875a8fd901f34d34f842d3ce78e93d7764431b8fc8b18adf5d61
```

-	Platforms:
	-	linux; amd64

### `drupal:8` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185253428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e4a3dd45ff6ef667fafcfbc1b7f94eb0e5d04d7f238528852e3db6263228451`
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
# Wed, 10 Aug 2016 19:34:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_VERSION=7.0.9
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Wed, 10 Aug 2016 19:34:57 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:34:59 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:34:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:40:17 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:40:19 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 19:40:19 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:57:34 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:05:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:05:36 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 17:05:37 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:15:43 GMT
ENV DRUPAL_VERSION=8.1.8
# Thu, 11 Aug 2016 17:15:44 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Thu, 11 Aug 2016 17:15:53 GMT
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
	-	`sha256:2a087b15ae9141b4fa5f420ec8e70def40a208486af2bebf6da4df61e57fbf85`  
		Last Modified: Wed, 10 Aug 2016 21:31:27 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5569e4a9586075be8d4cfc27dc08f324d057c5b210852a5d3c0f0fef9dc08d71`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 489.0 B
	-	`sha256:0920e679c7681863aa1694770549038a54e674945f243a2a72f233f20525813e`  
		Last Modified: Wed, 10 Aug 2016 21:31:33 GMT  
		Size: 20.2 MB (20175580 bytes)
	-	`sha256:a59fc2a253f2624b2149a9cc2a7d4e5752a96f55f91eeef86c079459a92244d1`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 1.8 KB (1833 bytes)
	-	`sha256:859330c5aa7cd540469c8f8d8d8d3f9937f03d9726c0b1d8a238cdc3ec7c7312`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 584.0 B
	-	`sha256:d24fb25e3c76b60de1ad35885517e1db3a3cb0e0183dfa192042f96c4a29d8e4`  
		Last Modified: Thu, 11 Aug 2016 17:01:08 GMT  
		Size: 295.0 B
	-	`sha256:d16b3f5731ea768084f007efa30aedbd3d4ce7b7c70c9f0e2d84c8b1e4e96ae3`  
		Last Modified: Thu, 11 Aug 2016 17:06:03 GMT  
		Size: 8.4 MB (8429236 bytes)
	-	`sha256:7907a232d559021deec76fa58a52a56f7e62168b6b568284ea4940a2ef687c21`  
		Last Modified: Thu, 11 Aug 2016 17:05:59 GMT  
		Size: 333.0 B
	-	`sha256:69171f34d1179805449fdcc6f407769eef6ff37b6b73ccdaf9715b40620245a1`  
		Last Modified: Thu, 11 Aug 2016 17:16:10 GMT  
		Size: 12.6 MB (12604887 bytes)

## `drupal:latest`

```console
$ docker pull drupal@sha256:79f4c3836802875a8fd901f34d34f842d3ce78e93d7764431b8fc8b18adf5d61
```

-	Platforms:
	-	linux; amd64

### `drupal:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185253428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e4a3dd45ff6ef667fafcfbc1b7f94eb0e5d04d7f238528852e3db6263228451`
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
# Wed, 10 Aug 2016 19:34:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_VERSION=7.0.9
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Wed, 10 Aug 2016 19:34:57 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:34:59 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:34:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:40:17 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:40:19 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 19:40:19 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:57:34 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:05:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:05:36 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 17:05:37 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:15:43 GMT
ENV DRUPAL_VERSION=8.1.8
# Thu, 11 Aug 2016 17:15:44 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Thu, 11 Aug 2016 17:15:53 GMT
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
	-	`sha256:2a087b15ae9141b4fa5f420ec8e70def40a208486af2bebf6da4df61e57fbf85`  
		Last Modified: Wed, 10 Aug 2016 21:31:27 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5569e4a9586075be8d4cfc27dc08f324d057c5b210852a5d3c0f0fef9dc08d71`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 489.0 B
	-	`sha256:0920e679c7681863aa1694770549038a54e674945f243a2a72f233f20525813e`  
		Last Modified: Wed, 10 Aug 2016 21:31:33 GMT  
		Size: 20.2 MB (20175580 bytes)
	-	`sha256:a59fc2a253f2624b2149a9cc2a7d4e5752a96f55f91eeef86c079459a92244d1`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 1.8 KB (1833 bytes)
	-	`sha256:859330c5aa7cd540469c8f8d8d8d3f9937f03d9726c0b1d8a238cdc3ec7c7312`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 584.0 B
	-	`sha256:d24fb25e3c76b60de1ad35885517e1db3a3cb0e0183dfa192042f96c4a29d8e4`  
		Last Modified: Thu, 11 Aug 2016 17:01:08 GMT  
		Size: 295.0 B
	-	`sha256:d16b3f5731ea768084f007efa30aedbd3d4ce7b7c70c9f0e2d84c8b1e4e96ae3`  
		Last Modified: Thu, 11 Aug 2016 17:06:03 GMT  
		Size: 8.4 MB (8429236 bytes)
	-	`sha256:7907a232d559021deec76fa58a52a56f7e62168b6b568284ea4940a2ef687c21`  
		Last Modified: Thu, 11 Aug 2016 17:05:59 GMT  
		Size: 333.0 B
	-	`sha256:69171f34d1179805449fdcc6f407769eef6ff37b6b73ccdaf9715b40620245a1`  
		Last Modified: Thu, 11 Aug 2016 17:16:10 GMT  
		Size: 12.6 MB (12604887 bytes)

## `drupal:8.1.8-fpm`

```console
$ docker pull drupal@sha256:098c5d1becf94b83a0d95f0b239171ee52a025e15a34594206c925faf9a769c0
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1.8-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.4 MB (175372887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4135dc806bace961d059cc49dff731394ba8e3697ee2527ed973a1d791dfb4e`
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
# Wed, 10 Aug 2016 19:40:23 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:40:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:07 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:47:08 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:08 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:47:10 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 19:47:10 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 19:47:10 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 17:10:49 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:10:51 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 17:10:52 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:17:36 GMT
ENV DRUPAL_VERSION=8.1.8
# Thu, 11 Aug 2016 17:17:37 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Thu, 11 Aug 2016 17:17:47 GMT
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
	-	`sha256:2c7f1896201042f5a56e69f0ad43dbf2a03bba37f1d363b86b084419bda9a36f`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 12.2 MB (12245152 bytes)
	-	`sha256:a6b6840b656be6f94a7dbc8b7118a4a1f006c5ffecfef31fca357e00207decde`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 490.0 B
	-	`sha256:1b9c85a7aa1b85a314324be3bf6491098cf6695b42d5ee3f08e0284b435b2808`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 13.2 MB (13158390 bytes)
	-	`sha256:96b5ad85eeda5d3c12c1dd135d2fffd44cf10de2a52cb37a3e6330e1384e95ca`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 1.8 KB (1837 bytes)
	-	`sha256:46f8c9ac406d307281a7e69f2d846905d3c5479912a1f18c79ed4b2faa4d8663`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 129.0 B
	-	`sha256:6b6079c882568d0a40d0266404f28416ae4cdb2e97a579d9d470ec6b768482f2`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 7.7 KB (7689 bytes)
	-	`sha256:d221bc22dc5f187e3f6d59c5aef03a97e4de097f0125c873ed2ae744076f3bd9`  
		Last Modified: Thu, 11 Aug 2016 17:11:17 GMT  
		Size: 8.4 MB (8406865 bytes)
	-	`sha256:567b97a13c6fe0b234be65d6afc181c6301aed3ee7c9400d875c596d28eca9bd`  
		Last Modified: Thu, 11 Aug 2016 17:11:14 GMT  
		Size: 332.0 B
	-	`sha256:f466cd228eb47fb89f64c88128e7dcab21ef4732487ed5c3ec72d2308da17586`  
		Last Modified: Thu, 11 Aug 2016 17:18:03 GMT  
		Size: 12.6 MB (12604905 bytes)

## `drupal:8.1-fpm`

```console
$ docker pull drupal@sha256:098c5d1becf94b83a0d95f0b239171ee52a025e15a34594206c925faf9a769c0
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.4 MB (175372887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4135dc806bace961d059cc49dff731394ba8e3697ee2527ed973a1d791dfb4e`
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
# Wed, 10 Aug 2016 19:40:23 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:40:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:07 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:47:08 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:08 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:47:10 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 19:47:10 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 19:47:10 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 17:10:49 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:10:51 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 17:10:52 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:17:36 GMT
ENV DRUPAL_VERSION=8.1.8
# Thu, 11 Aug 2016 17:17:37 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Thu, 11 Aug 2016 17:17:47 GMT
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
	-	`sha256:2c7f1896201042f5a56e69f0ad43dbf2a03bba37f1d363b86b084419bda9a36f`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 12.2 MB (12245152 bytes)
	-	`sha256:a6b6840b656be6f94a7dbc8b7118a4a1f006c5ffecfef31fca357e00207decde`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 490.0 B
	-	`sha256:1b9c85a7aa1b85a314324be3bf6491098cf6695b42d5ee3f08e0284b435b2808`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 13.2 MB (13158390 bytes)
	-	`sha256:96b5ad85eeda5d3c12c1dd135d2fffd44cf10de2a52cb37a3e6330e1384e95ca`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 1.8 KB (1837 bytes)
	-	`sha256:46f8c9ac406d307281a7e69f2d846905d3c5479912a1f18c79ed4b2faa4d8663`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 129.0 B
	-	`sha256:6b6079c882568d0a40d0266404f28416ae4cdb2e97a579d9d470ec6b768482f2`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 7.7 KB (7689 bytes)
	-	`sha256:d221bc22dc5f187e3f6d59c5aef03a97e4de097f0125c873ed2ae744076f3bd9`  
		Last Modified: Thu, 11 Aug 2016 17:11:17 GMT  
		Size: 8.4 MB (8406865 bytes)
	-	`sha256:567b97a13c6fe0b234be65d6afc181c6301aed3ee7c9400d875c596d28eca9bd`  
		Last Modified: Thu, 11 Aug 2016 17:11:14 GMT  
		Size: 332.0 B
	-	`sha256:f466cd228eb47fb89f64c88128e7dcab21ef4732487ed5c3ec72d2308da17586`  
		Last Modified: Thu, 11 Aug 2016 17:18:03 GMT  
		Size: 12.6 MB (12604905 bytes)

## `drupal:8-fpm`

```console
$ docker pull drupal@sha256:098c5d1becf94b83a0d95f0b239171ee52a025e15a34594206c925faf9a769c0
```

-	Platforms:
	-	linux; amd64

### `drupal:8-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.4 MB (175372887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4135dc806bace961d059cc49dff731394ba8e3697ee2527ed973a1d791dfb4e`
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
# Wed, 10 Aug 2016 19:40:23 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:40:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:07 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:47:08 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:08 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:47:10 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 19:47:10 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 19:47:10 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 17:10:49 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:10:51 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 17:10:52 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:17:36 GMT
ENV DRUPAL_VERSION=8.1.8
# Thu, 11 Aug 2016 17:17:37 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Thu, 11 Aug 2016 17:17:47 GMT
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
	-	`sha256:2c7f1896201042f5a56e69f0ad43dbf2a03bba37f1d363b86b084419bda9a36f`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 12.2 MB (12245152 bytes)
	-	`sha256:a6b6840b656be6f94a7dbc8b7118a4a1f006c5ffecfef31fca357e00207decde`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 490.0 B
	-	`sha256:1b9c85a7aa1b85a314324be3bf6491098cf6695b42d5ee3f08e0284b435b2808`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 13.2 MB (13158390 bytes)
	-	`sha256:96b5ad85eeda5d3c12c1dd135d2fffd44cf10de2a52cb37a3e6330e1384e95ca`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 1.8 KB (1837 bytes)
	-	`sha256:46f8c9ac406d307281a7e69f2d846905d3c5479912a1f18c79ed4b2faa4d8663`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 129.0 B
	-	`sha256:6b6079c882568d0a40d0266404f28416ae4cdb2e97a579d9d470ec6b768482f2`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 7.7 KB (7689 bytes)
	-	`sha256:d221bc22dc5f187e3f6d59c5aef03a97e4de097f0125c873ed2ae744076f3bd9`  
		Last Modified: Thu, 11 Aug 2016 17:11:17 GMT  
		Size: 8.4 MB (8406865 bytes)
	-	`sha256:567b97a13c6fe0b234be65d6afc181c6301aed3ee7c9400d875c596d28eca9bd`  
		Last Modified: Thu, 11 Aug 2016 17:11:14 GMT  
		Size: 332.0 B
	-	`sha256:f466cd228eb47fb89f64c88128e7dcab21ef4732487ed5c3ec72d2308da17586`  
		Last Modified: Thu, 11 Aug 2016 17:18:03 GMT  
		Size: 12.6 MB (12604905 bytes)

## `drupal:fpm`

```console
$ docker pull drupal@sha256:098c5d1becf94b83a0d95f0b239171ee52a025e15a34594206c925faf9a769c0
```

-	Platforms:
	-	linux; amd64

### `drupal:fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.4 MB (175372887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4135dc806bace961d059cc49dff731394ba8e3697ee2527ed973a1d791dfb4e`
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
# Wed, 10 Aug 2016 19:40:23 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:40:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:07 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:47:08 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:08 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:47:10 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 19:47:10 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 19:47:10 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 17:10:49 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:10:51 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 17:10:52 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:17:36 GMT
ENV DRUPAL_VERSION=8.1.8
# Thu, 11 Aug 2016 17:17:37 GMT
ENV DRUPAL_MD5=7c00b318590a22f2df7a18cf70df06dc
# Thu, 11 Aug 2016 17:17:47 GMT
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
	-	`sha256:2c7f1896201042f5a56e69f0ad43dbf2a03bba37f1d363b86b084419bda9a36f`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 12.2 MB (12245152 bytes)
	-	`sha256:a6b6840b656be6f94a7dbc8b7118a4a1f006c5ffecfef31fca357e00207decde`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 490.0 B
	-	`sha256:1b9c85a7aa1b85a314324be3bf6491098cf6695b42d5ee3f08e0284b435b2808`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 13.2 MB (13158390 bytes)
	-	`sha256:96b5ad85eeda5d3c12c1dd135d2fffd44cf10de2a52cb37a3e6330e1384e95ca`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 1.8 KB (1837 bytes)
	-	`sha256:46f8c9ac406d307281a7e69f2d846905d3c5479912a1f18c79ed4b2faa4d8663`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 129.0 B
	-	`sha256:6b6079c882568d0a40d0266404f28416ae4cdb2e97a579d9d470ec6b768482f2`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 7.7 KB (7689 bytes)
	-	`sha256:d221bc22dc5f187e3f6d59c5aef03a97e4de097f0125c873ed2ae744076f3bd9`  
		Last Modified: Thu, 11 Aug 2016 17:11:17 GMT  
		Size: 8.4 MB (8406865 bytes)
	-	`sha256:567b97a13c6fe0b234be65d6afc181c6301aed3ee7c9400d875c596d28eca9bd`  
		Last Modified: Thu, 11 Aug 2016 17:11:14 GMT  
		Size: 332.0 B
	-	`sha256:f466cd228eb47fb89f64c88128e7dcab21ef4732487ed5c3ec72d2308da17586`  
		Last Modified: Thu, 11 Aug 2016 17:18:03 GMT  
		Size: 12.6 MB (12604905 bytes)

## `drupal:8.2.0-beta1-apache`

```console
$ docker pull drupal@sha256:2c729939229e0a195214f2deeb41c514c1b4f72208b9dd7b0ee970ee2d087d77
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.0-beta1-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.4 MB (185353205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5799ab07d4925292133dc8b0e63c7cf1712ba0ec20606ddc517814e5d208210`
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
# Wed, 10 Aug 2016 19:34:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_VERSION=7.0.9
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Wed, 10 Aug 2016 19:34:57 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:34:59 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:34:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:40:17 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:40:19 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 19:40:19 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:57:34 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:05:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:05:36 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 17:05:37 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:05:38 GMT
ENV DRUPAL_VERSION=8.2.0-beta1
# Thu, 11 Aug 2016 17:05:38 GMT
ENV DRUPAL_MD5=35fed9378c738d6bf420399f56e740c9
# Thu, 11 Aug 2016 17:05:49 GMT
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
	-	`sha256:2a087b15ae9141b4fa5f420ec8e70def40a208486af2bebf6da4df61e57fbf85`  
		Last Modified: Wed, 10 Aug 2016 21:31:27 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5569e4a9586075be8d4cfc27dc08f324d057c5b210852a5d3c0f0fef9dc08d71`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 489.0 B
	-	`sha256:0920e679c7681863aa1694770549038a54e674945f243a2a72f233f20525813e`  
		Last Modified: Wed, 10 Aug 2016 21:31:33 GMT  
		Size: 20.2 MB (20175580 bytes)
	-	`sha256:a59fc2a253f2624b2149a9cc2a7d4e5752a96f55f91eeef86c079459a92244d1`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 1.8 KB (1833 bytes)
	-	`sha256:859330c5aa7cd540469c8f8d8d8d3f9937f03d9726c0b1d8a238cdc3ec7c7312`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 584.0 B
	-	`sha256:d24fb25e3c76b60de1ad35885517e1db3a3cb0e0183dfa192042f96c4a29d8e4`  
		Last Modified: Thu, 11 Aug 2016 17:01:08 GMT  
		Size: 295.0 B
	-	`sha256:d16b3f5731ea768084f007efa30aedbd3d4ce7b7c70c9f0e2d84c8b1e4e96ae3`  
		Last Modified: Thu, 11 Aug 2016 17:06:03 GMT  
		Size: 8.4 MB (8429236 bytes)
	-	`sha256:7907a232d559021deec76fa58a52a56f7e62168b6b568284ea4940a2ef687c21`  
		Last Modified: Thu, 11 Aug 2016 17:05:59 GMT  
		Size: 333.0 B
	-	`sha256:1eac349c523d39aa42bcb0490860d5ceab45ff8374ebb2a51729b978a8c86c2c`  
		Last Modified: Thu, 11 Aug 2016 17:06:06 GMT  
		Size: 12.7 MB (12704664 bytes)

## `drupal:8.2.0-apache`

```console
$ docker pull drupal@sha256:2c729939229e0a195214f2deeb41c514c1b4f72208b9dd7b0ee970ee2d087d77
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.0-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.4 MB (185353205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5799ab07d4925292133dc8b0e63c7cf1712ba0ec20606ddc517814e5d208210`
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
# Wed, 10 Aug 2016 19:34:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_VERSION=7.0.9
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Wed, 10 Aug 2016 19:34:57 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:34:59 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:34:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:40:17 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:40:19 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 19:40:19 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:57:34 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:05:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:05:36 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 17:05:37 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:05:38 GMT
ENV DRUPAL_VERSION=8.2.0-beta1
# Thu, 11 Aug 2016 17:05:38 GMT
ENV DRUPAL_MD5=35fed9378c738d6bf420399f56e740c9
# Thu, 11 Aug 2016 17:05:49 GMT
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
	-	`sha256:2a087b15ae9141b4fa5f420ec8e70def40a208486af2bebf6da4df61e57fbf85`  
		Last Modified: Wed, 10 Aug 2016 21:31:27 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5569e4a9586075be8d4cfc27dc08f324d057c5b210852a5d3c0f0fef9dc08d71`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 489.0 B
	-	`sha256:0920e679c7681863aa1694770549038a54e674945f243a2a72f233f20525813e`  
		Last Modified: Wed, 10 Aug 2016 21:31:33 GMT  
		Size: 20.2 MB (20175580 bytes)
	-	`sha256:a59fc2a253f2624b2149a9cc2a7d4e5752a96f55f91eeef86c079459a92244d1`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 1.8 KB (1833 bytes)
	-	`sha256:859330c5aa7cd540469c8f8d8d8d3f9937f03d9726c0b1d8a238cdc3ec7c7312`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 584.0 B
	-	`sha256:d24fb25e3c76b60de1ad35885517e1db3a3cb0e0183dfa192042f96c4a29d8e4`  
		Last Modified: Thu, 11 Aug 2016 17:01:08 GMT  
		Size: 295.0 B
	-	`sha256:d16b3f5731ea768084f007efa30aedbd3d4ce7b7c70c9f0e2d84c8b1e4e96ae3`  
		Last Modified: Thu, 11 Aug 2016 17:06:03 GMT  
		Size: 8.4 MB (8429236 bytes)
	-	`sha256:7907a232d559021deec76fa58a52a56f7e62168b6b568284ea4940a2ef687c21`  
		Last Modified: Thu, 11 Aug 2016 17:05:59 GMT  
		Size: 333.0 B
	-	`sha256:1eac349c523d39aa42bcb0490860d5ceab45ff8374ebb2a51729b978a8c86c2c`  
		Last Modified: Thu, 11 Aug 2016 17:06:06 GMT  
		Size: 12.7 MB (12704664 bytes)

## `drupal:8.2-apache`

```console
$ docker pull drupal@sha256:2c729939229e0a195214f2deeb41c514c1b4f72208b9dd7b0ee970ee2d087d77
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.4 MB (185353205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5799ab07d4925292133dc8b0e63c7cf1712ba0ec20606ddc517814e5d208210`
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
# Wed, 10 Aug 2016 19:34:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_VERSION=7.0.9
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Wed, 10 Aug 2016 19:34:57 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:34:59 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:34:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:40:17 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:40:19 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 19:40:19 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:57:34 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:05:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:05:36 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 17:05:37 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:05:38 GMT
ENV DRUPAL_VERSION=8.2.0-beta1
# Thu, 11 Aug 2016 17:05:38 GMT
ENV DRUPAL_MD5=35fed9378c738d6bf420399f56e740c9
# Thu, 11 Aug 2016 17:05:49 GMT
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
	-	`sha256:2a087b15ae9141b4fa5f420ec8e70def40a208486af2bebf6da4df61e57fbf85`  
		Last Modified: Wed, 10 Aug 2016 21:31:27 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5569e4a9586075be8d4cfc27dc08f324d057c5b210852a5d3c0f0fef9dc08d71`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 489.0 B
	-	`sha256:0920e679c7681863aa1694770549038a54e674945f243a2a72f233f20525813e`  
		Last Modified: Wed, 10 Aug 2016 21:31:33 GMT  
		Size: 20.2 MB (20175580 bytes)
	-	`sha256:a59fc2a253f2624b2149a9cc2a7d4e5752a96f55f91eeef86c079459a92244d1`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 1.8 KB (1833 bytes)
	-	`sha256:859330c5aa7cd540469c8f8d8d8d3f9937f03d9726c0b1d8a238cdc3ec7c7312`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 584.0 B
	-	`sha256:d24fb25e3c76b60de1ad35885517e1db3a3cb0e0183dfa192042f96c4a29d8e4`  
		Last Modified: Thu, 11 Aug 2016 17:01:08 GMT  
		Size: 295.0 B
	-	`sha256:d16b3f5731ea768084f007efa30aedbd3d4ce7b7c70c9f0e2d84c8b1e4e96ae3`  
		Last Modified: Thu, 11 Aug 2016 17:06:03 GMT  
		Size: 8.4 MB (8429236 bytes)
	-	`sha256:7907a232d559021deec76fa58a52a56f7e62168b6b568284ea4940a2ef687c21`  
		Last Modified: Thu, 11 Aug 2016 17:05:59 GMT  
		Size: 333.0 B
	-	`sha256:1eac349c523d39aa42bcb0490860d5ceab45ff8374ebb2a51729b978a8c86c2c`  
		Last Modified: Thu, 11 Aug 2016 17:06:06 GMT  
		Size: 12.7 MB (12704664 bytes)

## `drupal:8.2.0-beta1`

```console
$ docker pull drupal@sha256:2c729939229e0a195214f2deeb41c514c1b4f72208b9dd7b0ee970ee2d087d77
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.0-beta1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.4 MB (185353205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5799ab07d4925292133dc8b0e63c7cf1712ba0ec20606ddc517814e5d208210`
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
# Wed, 10 Aug 2016 19:34:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_VERSION=7.0.9
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Wed, 10 Aug 2016 19:34:57 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:34:59 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:34:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:40:17 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:40:19 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 19:40:19 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:57:34 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:05:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:05:36 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 17:05:37 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:05:38 GMT
ENV DRUPAL_VERSION=8.2.0-beta1
# Thu, 11 Aug 2016 17:05:38 GMT
ENV DRUPAL_MD5=35fed9378c738d6bf420399f56e740c9
# Thu, 11 Aug 2016 17:05:49 GMT
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
	-	`sha256:2a087b15ae9141b4fa5f420ec8e70def40a208486af2bebf6da4df61e57fbf85`  
		Last Modified: Wed, 10 Aug 2016 21:31:27 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5569e4a9586075be8d4cfc27dc08f324d057c5b210852a5d3c0f0fef9dc08d71`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 489.0 B
	-	`sha256:0920e679c7681863aa1694770549038a54e674945f243a2a72f233f20525813e`  
		Last Modified: Wed, 10 Aug 2016 21:31:33 GMT  
		Size: 20.2 MB (20175580 bytes)
	-	`sha256:a59fc2a253f2624b2149a9cc2a7d4e5752a96f55f91eeef86c079459a92244d1`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 1.8 KB (1833 bytes)
	-	`sha256:859330c5aa7cd540469c8f8d8d8d3f9937f03d9726c0b1d8a238cdc3ec7c7312`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 584.0 B
	-	`sha256:d24fb25e3c76b60de1ad35885517e1db3a3cb0e0183dfa192042f96c4a29d8e4`  
		Last Modified: Thu, 11 Aug 2016 17:01:08 GMT  
		Size: 295.0 B
	-	`sha256:d16b3f5731ea768084f007efa30aedbd3d4ce7b7c70c9f0e2d84c8b1e4e96ae3`  
		Last Modified: Thu, 11 Aug 2016 17:06:03 GMT  
		Size: 8.4 MB (8429236 bytes)
	-	`sha256:7907a232d559021deec76fa58a52a56f7e62168b6b568284ea4940a2ef687c21`  
		Last Modified: Thu, 11 Aug 2016 17:05:59 GMT  
		Size: 333.0 B
	-	`sha256:1eac349c523d39aa42bcb0490860d5ceab45ff8374ebb2a51729b978a8c86c2c`  
		Last Modified: Thu, 11 Aug 2016 17:06:06 GMT  
		Size: 12.7 MB (12704664 bytes)

## `drupal:8.2.0`

```console
$ docker pull drupal@sha256:2c729939229e0a195214f2deeb41c514c1b4f72208b9dd7b0ee970ee2d087d77
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.4 MB (185353205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5799ab07d4925292133dc8b0e63c7cf1712ba0ec20606ddc517814e5d208210`
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
# Wed, 10 Aug 2016 19:34:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_VERSION=7.0.9
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Wed, 10 Aug 2016 19:34:57 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:34:59 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:34:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:40:17 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:40:19 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 19:40:19 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:57:34 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:05:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:05:36 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 17:05:37 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:05:38 GMT
ENV DRUPAL_VERSION=8.2.0-beta1
# Thu, 11 Aug 2016 17:05:38 GMT
ENV DRUPAL_MD5=35fed9378c738d6bf420399f56e740c9
# Thu, 11 Aug 2016 17:05:49 GMT
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
	-	`sha256:2a087b15ae9141b4fa5f420ec8e70def40a208486af2bebf6da4df61e57fbf85`  
		Last Modified: Wed, 10 Aug 2016 21:31:27 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5569e4a9586075be8d4cfc27dc08f324d057c5b210852a5d3c0f0fef9dc08d71`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 489.0 B
	-	`sha256:0920e679c7681863aa1694770549038a54e674945f243a2a72f233f20525813e`  
		Last Modified: Wed, 10 Aug 2016 21:31:33 GMT  
		Size: 20.2 MB (20175580 bytes)
	-	`sha256:a59fc2a253f2624b2149a9cc2a7d4e5752a96f55f91eeef86c079459a92244d1`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 1.8 KB (1833 bytes)
	-	`sha256:859330c5aa7cd540469c8f8d8d8d3f9937f03d9726c0b1d8a238cdc3ec7c7312`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 584.0 B
	-	`sha256:d24fb25e3c76b60de1ad35885517e1db3a3cb0e0183dfa192042f96c4a29d8e4`  
		Last Modified: Thu, 11 Aug 2016 17:01:08 GMT  
		Size: 295.0 B
	-	`sha256:d16b3f5731ea768084f007efa30aedbd3d4ce7b7c70c9f0e2d84c8b1e4e96ae3`  
		Last Modified: Thu, 11 Aug 2016 17:06:03 GMT  
		Size: 8.4 MB (8429236 bytes)
	-	`sha256:7907a232d559021deec76fa58a52a56f7e62168b6b568284ea4940a2ef687c21`  
		Last Modified: Thu, 11 Aug 2016 17:05:59 GMT  
		Size: 333.0 B
	-	`sha256:1eac349c523d39aa42bcb0490860d5ceab45ff8374ebb2a51729b978a8c86c2c`  
		Last Modified: Thu, 11 Aug 2016 17:06:06 GMT  
		Size: 12.7 MB (12704664 bytes)

## `drupal:8.2`

```console
$ docker pull drupal@sha256:2c729939229e0a195214f2deeb41c514c1b4f72208b9dd7b0ee970ee2d087d77
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.4 MB (185353205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5799ab07d4925292133dc8b0e63c7cf1712ba0ec20606ddc517814e5d208210`
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
# Wed, 10 Aug 2016 19:34:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_VERSION=7.0.9
# Wed, 10 Aug 2016 19:34:56 GMT
ENV PHP_FILENAME=php-7.0.9.tar.xz
# Wed, 10 Aug 2016 19:34:57 GMT
ENV PHP_SHA256=970c322ba3e472cb0264b8ba9d4d92e87918da5d0cca53c4aba2a70545b8626d
# Wed, 10 Aug 2016 19:34:59 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:34:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:40:17 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 19:40:18 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:40:19 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 19:40:19 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 16:57:34 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 17:05:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:05:36 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 17:05:37 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:05:38 GMT
ENV DRUPAL_VERSION=8.2.0-beta1
# Thu, 11 Aug 2016 17:05:38 GMT
ENV DRUPAL_MD5=35fed9378c738d6bf420399f56e740c9
# Thu, 11 Aug 2016 17:05:49 GMT
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
	-	`sha256:2a087b15ae9141b4fa5f420ec8e70def40a208486af2bebf6da4df61e57fbf85`  
		Last Modified: Wed, 10 Aug 2016 21:31:27 GMT  
		Size: 12.2 MB (12245149 bytes)
	-	`sha256:5569e4a9586075be8d4cfc27dc08f324d057c5b210852a5d3c0f0fef9dc08d71`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 489.0 B
	-	`sha256:0920e679c7681863aa1694770549038a54e674945f243a2a72f233f20525813e`  
		Last Modified: Wed, 10 Aug 2016 21:31:33 GMT  
		Size: 20.2 MB (20175580 bytes)
	-	`sha256:a59fc2a253f2624b2149a9cc2a7d4e5752a96f55f91eeef86c079459a92244d1`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 1.8 KB (1833 bytes)
	-	`sha256:859330c5aa7cd540469c8f8d8d8d3f9937f03d9726c0b1d8a238cdc3ec7c7312`  
		Last Modified: Wed, 10 Aug 2016 21:31:25 GMT  
		Size: 584.0 B
	-	`sha256:d24fb25e3c76b60de1ad35885517e1db3a3cb0e0183dfa192042f96c4a29d8e4`  
		Last Modified: Thu, 11 Aug 2016 17:01:08 GMT  
		Size: 295.0 B
	-	`sha256:d16b3f5731ea768084f007efa30aedbd3d4ce7b7c70c9f0e2d84c8b1e4e96ae3`  
		Last Modified: Thu, 11 Aug 2016 17:06:03 GMT  
		Size: 8.4 MB (8429236 bytes)
	-	`sha256:7907a232d559021deec76fa58a52a56f7e62168b6b568284ea4940a2ef687c21`  
		Last Modified: Thu, 11 Aug 2016 17:05:59 GMT  
		Size: 333.0 B
	-	`sha256:1eac349c523d39aa42bcb0490860d5ceab45ff8374ebb2a51729b978a8c86c2c`  
		Last Modified: Thu, 11 Aug 2016 17:06:06 GMT  
		Size: 12.7 MB (12704664 bytes)

## `drupal:8.2.0-beta1-fpm`

```console
$ docker pull drupal@sha256:40baf942d68501f9ca4b61c37e54db1ee69455a0f093ee0135f57e6b6b1c68ce
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.0-beta1-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175472629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c20749b863a9960174b3e5910d971f913ecc04f9c9c95f36cf7aefb0a14a2a`
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
# Wed, 10 Aug 2016 19:40:23 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:40:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:07 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:47:08 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:08 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:47:10 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 19:47:10 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 19:47:10 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 17:10:49 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:10:51 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 17:10:52 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:10:53 GMT
ENV DRUPAL_VERSION=8.2.0-beta1
# Thu, 11 Aug 2016 17:10:53 GMT
ENV DRUPAL_MD5=35fed9378c738d6bf420399f56e740c9
# Thu, 11 Aug 2016 17:11:03 GMT
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
	-	`sha256:2c7f1896201042f5a56e69f0ad43dbf2a03bba37f1d363b86b084419bda9a36f`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 12.2 MB (12245152 bytes)
	-	`sha256:a6b6840b656be6f94a7dbc8b7118a4a1f006c5ffecfef31fca357e00207decde`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 490.0 B
	-	`sha256:1b9c85a7aa1b85a314324be3bf6491098cf6695b42d5ee3f08e0284b435b2808`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 13.2 MB (13158390 bytes)
	-	`sha256:96b5ad85eeda5d3c12c1dd135d2fffd44cf10de2a52cb37a3e6330e1384e95ca`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 1.8 KB (1837 bytes)
	-	`sha256:46f8c9ac406d307281a7e69f2d846905d3c5479912a1f18c79ed4b2faa4d8663`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 129.0 B
	-	`sha256:6b6079c882568d0a40d0266404f28416ae4cdb2e97a579d9d470ec6b768482f2`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 7.7 KB (7689 bytes)
	-	`sha256:d221bc22dc5f187e3f6d59c5aef03a97e4de097f0125c873ed2ae744076f3bd9`  
		Last Modified: Thu, 11 Aug 2016 17:11:17 GMT  
		Size: 8.4 MB (8406865 bytes)
	-	`sha256:567b97a13c6fe0b234be65d6afc181c6301aed3ee7c9400d875c596d28eca9bd`  
		Last Modified: Thu, 11 Aug 2016 17:11:14 GMT  
		Size: 332.0 B
	-	`sha256:ac21e22645cf361be065895e0bca40d11504bcbd2058f9e0f962287460a3b100`  
		Last Modified: Thu, 11 Aug 2016 17:11:20 GMT  
		Size: 12.7 MB (12704647 bytes)

## `drupal:8.2.0-fpm`

```console
$ docker pull drupal@sha256:40baf942d68501f9ca4b61c37e54db1ee69455a0f093ee0135f57e6b6b1c68ce
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.0-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175472629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c20749b863a9960174b3e5910d971f913ecc04f9c9c95f36cf7aefb0a14a2a`
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
# Wed, 10 Aug 2016 19:40:23 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:40:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:07 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:47:08 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:08 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:47:10 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 19:47:10 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 19:47:10 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 17:10:49 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:10:51 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 17:10:52 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:10:53 GMT
ENV DRUPAL_VERSION=8.2.0-beta1
# Thu, 11 Aug 2016 17:10:53 GMT
ENV DRUPAL_MD5=35fed9378c738d6bf420399f56e740c9
# Thu, 11 Aug 2016 17:11:03 GMT
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
	-	`sha256:2c7f1896201042f5a56e69f0ad43dbf2a03bba37f1d363b86b084419bda9a36f`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 12.2 MB (12245152 bytes)
	-	`sha256:a6b6840b656be6f94a7dbc8b7118a4a1f006c5ffecfef31fca357e00207decde`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 490.0 B
	-	`sha256:1b9c85a7aa1b85a314324be3bf6491098cf6695b42d5ee3f08e0284b435b2808`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 13.2 MB (13158390 bytes)
	-	`sha256:96b5ad85eeda5d3c12c1dd135d2fffd44cf10de2a52cb37a3e6330e1384e95ca`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 1.8 KB (1837 bytes)
	-	`sha256:46f8c9ac406d307281a7e69f2d846905d3c5479912a1f18c79ed4b2faa4d8663`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 129.0 B
	-	`sha256:6b6079c882568d0a40d0266404f28416ae4cdb2e97a579d9d470ec6b768482f2`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 7.7 KB (7689 bytes)
	-	`sha256:d221bc22dc5f187e3f6d59c5aef03a97e4de097f0125c873ed2ae744076f3bd9`  
		Last Modified: Thu, 11 Aug 2016 17:11:17 GMT  
		Size: 8.4 MB (8406865 bytes)
	-	`sha256:567b97a13c6fe0b234be65d6afc181c6301aed3ee7c9400d875c596d28eca9bd`  
		Last Modified: Thu, 11 Aug 2016 17:11:14 GMT  
		Size: 332.0 B
	-	`sha256:ac21e22645cf361be065895e0bca40d11504bcbd2058f9e0f962287460a3b100`  
		Last Modified: Thu, 11 Aug 2016 17:11:20 GMT  
		Size: 12.7 MB (12704647 bytes)

## `drupal:8.2-fpm`

```console
$ docker pull drupal@sha256:40baf942d68501f9ca4b61c37e54db1ee69455a0f093ee0135f57e6b6b1c68ce
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175472629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c20749b863a9960174b3e5910d971f913ecc04f9c9c95f36cf7aefb0a14a2a`
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
# Wed, 10 Aug 2016 19:40:23 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 19:40:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:07 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 19:47:08 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 19:47:08 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 19:47:10 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 19:47:10 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 19:47:10 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 17:10:49 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Thu, 11 Aug 2016 17:10:51 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 17:10:52 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 17:10:53 GMT
ENV DRUPAL_VERSION=8.2.0-beta1
# Thu, 11 Aug 2016 17:10:53 GMT
ENV DRUPAL_MD5=35fed9378c738d6bf420399f56e740c9
# Thu, 11 Aug 2016 17:11:03 GMT
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
	-	`sha256:2c7f1896201042f5a56e69f0ad43dbf2a03bba37f1d363b86b084419bda9a36f`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 12.2 MB (12245152 bytes)
	-	`sha256:a6b6840b656be6f94a7dbc8b7118a4a1f006c5ffecfef31fca357e00207decde`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 490.0 B
	-	`sha256:1b9c85a7aa1b85a314324be3bf6491098cf6695b42d5ee3f08e0284b435b2808`  
		Last Modified: Wed, 10 Aug 2016 21:32:37 GMT  
		Size: 13.2 MB (13158390 bytes)
	-	`sha256:96b5ad85eeda5d3c12c1dd135d2fffd44cf10de2a52cb37a3e6330e1384e95ca`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 1.8 KB (1837 bytes)
	-	`sha256:46f8c9ac406d307281a7e69f2d846905d3c5479912a1f18c79ed4b2faa4d8663`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 129.0 B
	-	`sha256:6b6079c882568d0a40d0266404f28416ae4cdb2e97a579d9d470ec6b768482f2`  
		Last Modified: Wed, 10 Aug 2016 21:32:32 GMT  
		Size: 7.7 KB (7689 bytes)
	-	`sha256:d221bc22dc5f187e3f6d59c5aef03a97e4de097f0125c873ed2ae744076f3bd9`  
		Last Modified: Thu, 11 Aug 2016 17:11:17 GMT  
		Size: 8.4 MB (8406865 bytes)
	-	`sha256:567b97a13c6fe0b234be65d6afc181c6301aed3ee7c9400d875c596d28eca9bd`  
		Last Modified: Thu, 11 Aug 2016 17:11:14 GMT  
		Size: 332.0 B
	-	`sha256:ac21e22645cf361be065895e0bca40d11504bcbd2058f9e0f962287460a3b100`  
		Last Modified: Thu, 11 Aug 2016 17:11:20 GMT  
		Size: 12.7 MB (12704647 bytes)
