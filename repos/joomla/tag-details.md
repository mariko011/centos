<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `joomla`

-	[`joomla:3.6.2-apache`](#joomla362-apache)
-	[`joomla:3.6-apache`](#joomla36-apache)
-	[`joomla:3-apache`](#joomla3-apache)
-	[`joomla:apache`](#joomlaapache)
-	[`joomla:3.6.2`](#joomla362)
-	[`joomla:3.6`](#joomla36)
-	[`joomla:3`](#joomla3)
-	[`joomla:latest`](#joomlalatest)
-	[`joomla:3.6.2-apache-php7`](#joomla362-apache-php7)
-	[`joomla:3.6-apache-php7`](#joomla36-apache-php7)
-	[`joomla:3-apache-php7`](#joomla3-apache-php7)
-	[`joomla:apache-php7`](#joomlaapache-php7)
-	[`joomla:3.6.2-fpm`](#joomla362-fpm)
-	[`joomla:3.6-fpm`](#joomla36-fpm)
-	[`joomla:3-fpm`](#joomla3-fpm)
-	[`joomla:fpm`](#joomlafpm)
-	[`joomla:3.6.2-fpm-php7`](#joomla362-fpm-php7)
-	[`joomla:3.6-fpm-php7`](#joomla36-fpm-php7)
-	[`joomla:3-fpm-php7`](#joomla3-fpm-php7)
-	[`joomla:fpm-php7`](#joomlafpm-php7)

## `joomla:3.6.2-apache`

```console
$ docker pull joomla@sha256:5af6278357f6c3dd0531e6191d97d312a5e300af3db38a14072159411dd86092
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.2-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.1 MB (172073072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:818b172fbc7967519cf21f8715f49190893d2afcfa60efb93f93fd5f792db484`
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
# Tue, 23 Aug 2016 18:38:46 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 23 Aug 2016 18:38:48 GMT
RUN a2enmod rewrite
# Tue, 23 Aug 2016 18:40:13 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 23 Aug 2016 18:40:28 GMT
RUN docker-php-ext-install mysqli
# Tue, 23 Aug 2016 18:40:29 GMT
VOLUME [/var/www/html]
# Tue, 23 Aug 2016 18:40:30 GMT
ENV JOOMLA_VERSION=3.6.2
# Tue, 23 Aug 2016 18:40:31 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Tue, 23 Aug 2016 18:40:40 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 23 Aug 2016 18:40:42 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Tue, 23 Aug 2016 18:40:44 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Tue, 23 Aug 2016 18:40:45 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 18:40:46 GMT
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
	-	`sha256:53116373ff40ba18cc1c483cee84d9ab3e4afca0c5a86d1f2ab77d39dcf4a99e`  
		Last Modified: Tue, 23 Aug 2016 18:41:01 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66a8c8cc8fadda24d671a320337e8b50a20559f73ea675ba5c0e9ffc2d9a1e3`  
		Last Modified: Tue, 23 Aug 2016 18:40:59 GMT  
		Size: 2.8 MB (2841120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3c57c0f987214140b0deec35091a2a62ddaed66a2a0de0085ac1365935ac5d`  
		Last Modified: Tue, 23 Aug 2016 18:40:58 GMT  
		Size: 266.1 KB (266134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6700e0f3afc0ec5b487ea7773d2e1671c018cf94f4c7691425bfba9c6d5d49`  
		Last Modified: Tue, 23 Aug 2016 18:41:01 GMT  
		Size: 8.4 MB (8351889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e585acf51260b8b3f84c8e2b461036508234363bc5a1b2030da48984f7904a50`  
		Last Modified: Tue, 23 Aug 2016 18:40:57 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980b07173f892fe21ec17ea643781823fb576cb6d84fb0c958edeaca7cf5a0d`  
		Last Modified: Tue, 23 Aug 2016 18:40:58 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-apache`

```console
$ docker pull joomla@sha256:5af6278357f6c3dd0531e6191d97d312a5e300af3db38a14072159411dd86092
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.1 MB (172073072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:818b172fbc7967519cf21f8715f49190893d2afcfa60efb93f93fd5f792db484`
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
# Tue, 23 Aug 2016 18:38:46 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 23 Aug 2016 18:38:48 GMT
RUN a2enmod rewrite
# Tue, 23 Aug 2016 18:40:13 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 23 Aug 2016 18:40:28 GMT
RUN docker-php-ext-install mysqli
# Tue, 23 Aug 2016 18:40:29 GMT
VOLUME [/var/www/html]
# Tue, 23 Aug 2016 18:40:30 GMT
ENV JOOMLA_VERSION=3.6.2
# Tue, 23 Aug 2016 18:40:31 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Tue, 23 Aug 2016 18:40:40 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 23 Aug 2016 18:40:42 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Tue, 23 Aug 2016 18:40:44 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Tue, 23 Aug 2016 18:40:45 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 18:40:46 GMT
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
	-	`sha256:53116373ff40ba18cc1c483cee84d9ab3e4afca0c5a86d1f2ab77d39dcf4a99e`  
		Last Modified: Tue, 23 Aug 2016 18:41:01 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66a8c8cc8fadda24d671a320337e8b50a20559f73ea675ba5c0e9ffc2d9a1e3`  
		Last Modified: Tue, 23 Aug 2016 18:40:59 GMT  
		Size: 2.8 MB (2841120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3c57c0f987214140b0deec35091a2a62ddaed66a2a0de0085ac1365935ac5d`  
		Last Modified: Tue, 23 Aug 2016 18:40:58 GMT  
		Size: 266.1 KB (266134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6700e0f3afc0ec5b487ea7773d2e1671c018cf94f4c7691425bfba9c6d5d49`  
		Last Modified: Tue, 23 Aug 2016 18:41:01 GMT  
		Size: 8.4 MB (8351889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e585acf51260b8b3f84c8e2b461036508234363bc5a1b2030da48984f7904a50`  
		Last Modified: Tue, 23 Aug 2016 18:40:57 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980b07173f892fe21ec17ea643781823fb576cb6d84fb0c958edeaca7cf5a0d`  
		Last Modified: Tue, 23 Aug 2016 18:40:58 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache`

```console
$ docker pull joomla@sha256:5af6278357f6c3dd0531e6191d97d312a5e300af3db38a14072159411dd86092
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.1 MB (172073072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:818b172fbc7967519cf21f8715f49190893d2afcfa60efb93f93fd5f792db484`
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
# Tue, 23 Aug 2016 18:38:46 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 23 Aug 2016 18:38:48 GMT
RUN a2enmod rewrite
# Tue, 23 Aug 2016 18:40:13 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 23 Aug 2016 18:40:28 GMT
RUN docker-php-ext-install mysqli
# Tue, 23 Aug 2016 18:40:29 GMT
VOLUME [/var/www/html]
# Tue, 23 Aug 2016 18:40:30 GMT
ENV JOOMLA_VERSION=3.6.2
# Tue, 23 Aug 2016 18:40:31 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Tue, 23 Aug 2016 18:40:40 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 23 Aug 2016 18:40:42 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Tue, 23 Aug 2016 18:40:44 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Tue, 23 Aug 2016 18:40:45 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 18:40:46 GMT
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
	-	`sha256:53116373ff40ba18cc1c483cee84d9ab3e4afca0c5a86d1f2ab77d39dcf4a99e`  
		Last Modified: Tue, 23 Aug 2016 18:41:01 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66a8c8cc8fadda24d671a320337e8b50a20559f73ea675ba5c0e9ffc2d9a1e3`  
		Last Modified: Tue, 23 Aug 2016 18:40:59 GMT  
		Size: 2.8 MB (2841120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3c57c0f987214140b0deec35091a2a62ddaed66a2a0de0085ac1365935ac5d`  
		Last Modified: Tue, 23 Aug 2016 18:40:58 GMT  
		Size: 266.1 KB (266134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6700e0f3afc0ec5b487ea7773d2e1671c018cf94f4c7691425bfba9c6d5d49`  
		Last Modified: Tue, 23 Aug 2016 18:41:01 GMT  
		Size: 8.4 MB (8351889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e585acf51260b8b3f84c8e2b461036508234363bc5a1b2030da48984f7904a50`  
		Last Modified: Tue, 23 Aug 2016 18:40:57 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980b07173f892fe21ec17ea643781823fb576cb6d84fb0c958edeaca7cf5a0d`  
		Last Modified: Tue, 23 Aug 2016 18:40:58 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:apache`

```console
$ docker pull joomla@sha256:5af6278357f6c3dd0531e6191d97d312a5e300af3db38a14072159411dd86092
```

-	Platforms:
	-	linux; amd64

### `joomla:apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.1 MB (172073072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:818b172fbc7967519cf21f8715f49190893d2afcfa60efb93f93fd5f792db484`
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
# Tue, 23 Aug 2016 18:38:46 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 23 Aug 2016 18:38:48 GMT
RUN a2enmod rewrite
# Tue, 23 Aug 2016 18:40:13 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 23 Aug 2016 18:40:28 GMT
RUN docker-php-ext-install mysqli
# Tue, 23 Aug 2016 18:40:29 GMT
VOLUME [/var/www/html]
# Tue, 23 Aug 2016 18:40:30 GMT
ENV JOOMLA_VERSION=3.6.2
# Tue, 23 Aug 2016 18:40:31 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Tue, 23 Aug 2016 18:40:40 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 23 Aug 2016 18:40:42 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Tue, 23 Aug 2016 18:40:44 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Tue, 23 Aug 2016 18:40:45 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 18:40:46 GMT
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
	-	`sha256:53116373ff40ba18cc1c483cee84d9ab3e4afca0c5a86d1f2ab77d39dcf4a99e`  
		Last Modified: Tue, 23 Aug 2016 18:41:01 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66a8c8cc8fadda24d671a320337e8b50a20559f73ea675ba5c0e9ffc2d9a1e3`  
		Last Modified: Tue, 23 Aug 2016 18:40:59 GMT  
		Size: 2.8 MB (2841120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3c57c0f987214140b0deec35091a2a62ddaed66a2a0de0085ac1365935ac5d`  
		Last Modified: Tue, 23 Aug 2016 18:40:58 GMT  
		Size: 266.1 KB (266134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6700e0f3afc0ec5b487ea7773d2e1671c018cf94f4c7691425bfba9c6d5d49`  
		Last Modified: Tue, 23 Aug 2016 18:41:01 GMT  
		Size: 8.4 MB (8351889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e585acf51260b8b3f84c8e2b461036508234363bc5a1b2030da48984f7904a50`  
		Last Modified: Tue, 23 Aug 2016 18:40:57 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980b07173f892fe21ec17ea643781823fb576cb6d84fb0c958edeaca7cf5a0d`  
		Last Modified: Tue, 23 Aug 2016 18:40:58 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.2`

```console
$ docker pull joomla@sha256:5af6278357f6c3dd0531e6191d97d312a5e300af3db38a14072159411dd86092
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.1 MB (172073072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:818b172fbc7967519cf21f8715f49190893d2afcfa60efb93f93fd5f792db484`
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
# Tue, 23 Aug 2016 18:38:46 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 23 Aug 2016 18:38:48 GMT
RUN a2enmod rewrite
# Tue, 23 Aug 2016 18:40:13 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 23 Aug 2016 18:40:28 GMT
RUN docker-php-ext-install mysqli
# Tue, 23 Aug 2016 18:40:29 GMT
VOLUME [/var/www/html]
# Tue, 23 Aug 2016 18:40:30 GMT
ENV JOOMLA_VERSION=3.6.2
# Tue, 23 Aug 2016 18:40:31 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Tue, 23 Aug 2016 18:40:40 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 23 Aug 2016 18:40:42 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Tue, 23 Aug 2016 18:40:44 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Tue, 23 Aug 2016 18:40:45 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 18:40:46 GMT
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
	-	`sha256:53116373ff40ba18cc1c483cee84d9ab3e4afca0c5a86d1f2ab77d39dcf4a99e`  
		Last Modified: Tue, 23 Aug 2016 18:41:01 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66a8c8cc8fadda24d671a320337e8b50a20559f73ea675ba5c0e9ffc2d9a1e3`  
		Last Modified: Tue, 23 Aug 2016 18:40:59 GMT  
		Size: 2.8 MB (2841120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3c57c0f987214140b0deec35091a2a62ddaed66a2a0de0085ac1365935ac5d`  
		Last Modified: Tue, 23 Aug 2016 18:40:58 GMT  
		Size: 266.1 KB (266134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6700e0f3afc0ec5b487ea7773d2e1671c018cf94f4c7691425bfba9c6d5d49`  
		Last Modified: Tue, 23 Aug 2016 18:41:01 GMT  
		Size: 8.4 MB (8351889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e585acf51260b8b3f84c8e2b461036508234363bc5a1b2030da48984f7904a50`  
		Last Modified: Tue, 23 Aug 2016 18:40:57 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980b07173f892fe21ec17ea643781823fb576cb6d84fb0c958edeaca7cf5a0d`  
		Last Modified: Tue, 23 Aug 2016 18:40:58 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6`

```console
$ docker pull joomla@sha256:5af6278357f6c3dd0531e6191d97d312a5e300af3db38a14072159411dd86092
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.1 MB (172073072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:818b172fbc7967519cf21f8715f49190893d2afcfa60efb93f93fd5f792db484`
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
# Tue, 23 Aug 2016 18:38:46 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 23 Aug 2016 18:38:48 GMT
RUN a2enmod rewrite
# Tue, 23 Aug 2016 18:40:13 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 23 Aug 2016 18:40:28 GMT
RUN docker-php-ext-install mysqli
# Tue, 23 Aug 2016 18:40:29 GMT
VOLUME [/var/www/html]
# Tue, 23 Aug 2016 18:40:30 GMT
ENV JOOMLA_VERSION=3.6.2
# Tue, 23 Aug 2016 18:40:31 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Tue, 23 Aug 2016 18:40:40 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 23 Aug 2016 18:40:42 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Tue, 23 Aug 2016 18:40:44 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Tue, 23 Aug 2016 18:40:45 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 18:40:46 GMT
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
	-	`sha256:53116373ff40ba18cc1c483cee84d9ab3e4afca0c5a86d1f2ab77d39dcf4a99e`  
		Last Modified: Tue, 23 Aug 2016 18:41:01 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66a8c8cc8fadda24d671a320337e8b50a20559f73ea675ba5c0e9ffc2d9a1e3`  
		Last Modified: Tue, 23 Aug 2016 18:40:59 GMT  
		Size: 2.8 MB (2841120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3c57c0f987214140b0deec35091a2a62ddaed66a2a0de0085ac1365935ac5d`  
		Last Modified: Tue, 23 Aug 2016 18:40:58 GMT  
		Size: 266.1 KB (266134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6700e0f3afc0ec5b487ea7773d2e1671c018cf94f4c7691425bfba9c6d5d49`  
		Last Modified: Tue, 23 Aug 2016 18:41:01 GMT  
		Size: 8.4 MB (8351889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e585acf51260b8b3f84c8e2b461036508234363bc5a1b2030da48984f7904a50`  
		Last Modified: Tue, 23 Aug 2016 18:40:57 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980b07173f892fe21ec17ea643781823fb576cb6d84fb0c958edeaca7cf5a0d`  
		Last Modified: Tue, 23 Aug 2016 18:40:58 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3`

```console
$ docker pull joomla@sha256:5af6278357f6c3dd0531e6191d97d312a5e300af3db38a14072159411dd86092
```

-	Platforms:
	-	linux; amd64

### `joomla:3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.1 MB (172073072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:818b172fbc7967519cf21f8715f49190893d2afcfa60efb93f93fd5f792db484`
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
# Tue, 23 Aug 2016 18:38:46 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 23 Aug 2016 18:38:48 GMT
RUN a2enmod rewrite
# Tue, 23 Aug 2016 18:40:13 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 23 Aug 2016 18:40:28 GMT
RUN docker-php-ext-install mysqli
# Tue, 23 Aug 2016 18:40:29 GMT
VOLUME [/var/www/html]
# Tue, 23 Aug 2016 18:40:30 GMT
ENV JOOMLA_VERSION=3.6.2
# Tue, 23 Aug 2016 18:40:31 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Tue, 23 Aug 2016 18:40:40 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 23 Aug 2016 18:40:42 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Tue, 23 Aug 2016 18:40:44 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Tue, 23 Aug 2016 18:40:45 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 18:40:46 GMT
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
	-	`sha256:53116373ff40ba18cc1c483cee84d9ab3e4afca0c5a86d1f2ab77d39dcf4a99e`  
		Last Modified: Tue, 23 Aug 2016 18:41:01 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66a8c8cc8fadda24d671a320337e8b50a20559f73ea675ba5c0e9ffc2d9a1e3`  
		Last Modified: Tue, 23 Aug 2016 18:40:59 GMT  
		Size: 2.8 MB (2841120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3c57c0f987214140b0deec35091a2a62ddaed66a2a0de0085ac1365935ac5d`  
		Last Modified: Tue, 23 Aug 2016 18:40:58 GMT  
		Size: 266.1 KB (266134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6700e0f3afc0ec5b487ea7773d2e1671c018cf94f4c7691425bfba9c6d5d49`  
		Last Modified: Tue, 23 Aug 2016 18:41:01 GMT  
		Size: 8.4 MB (8351889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e585acf51260b8b3f84c8e2b461036508234363bc5a1b2030da48984f7904a50`  
		Last Modified: Tue, 23 Aug 2016 18:40:57 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980b07173f892fe21ec17ea643781823fb576cb6d84fb0c958edeaca7cf5a0d`  
		Last Modified: Tue, 23 Aug 2016 18:40:58 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:latest`

```console
$ docker pull joomla@sha256:5af6278357f6c3dd0531e6191d97d312a5e300af3db38a14072159411dd86092
```

-	Platforms:
	-	linux; amd64

### `joomla:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.1 MB (172073072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:818b172fbc7967519cf21f8715f49190893d2afcfa60efb93f93fd5f792db484`
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
# Tue, 23 Aug 2016 18:38:46 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 23 Aug 2016 18:38:48 GMT
RUN a2enmod rewrite
# Tue, 23 Aug 2016 18:40:13 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 23 Aug 2016 18:40:28 GMT
RUN docker-php-ext-install mysqli
# Tue, 23 Aug 2016 18:40:29 GMT
VOLUME [/var/www/html]
# Tue, 23 Aug 2016 18:40:30 GMT
ENV JOOMLA_VERSION=3.6.2
# Tue, 23 Aug 2016 18:40:31 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Tue, 23 Aug 2016 18:40:40 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 23 Aug 2016 18:40:42 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Tue, 23 Aug 2016 18:40:44 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Tue, 23 Aug 2016 18:40:45 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 18:40:46 GMT
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
	-	`sha256:53116373ff40ba18cc1c483cee84d9ab3e4afca0c5a86d1f2ab77d39dcf4a99e`  
		Last Modified: Tue, 23 Aug 2016 18:41:01 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66a8c8cc8fadda24d671a320337e8b50a20559f73ea675ba5c0e9ffc2d9a1e3`  
		Last Modified: Tue, 23 Aug 2016 18:40:59 GMT  
		Size: 2.8 MB (2841120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3c57c0f987214140b0deec35091a2a62ddaed66a2a0de0085ac1365935ac5d`  
		Last Modified: Tue, 23 Aug 2016 18:40:58 GMT  
		Size: 266.1 KB (266134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6700e0f3afc0ec5b487ea7773d2e1671c018cf94f4c7691425bfba9c6d5d49`  
		Last Modified: Tue, 23 Aug 2016 18:41:01 GMT  
		Size: 8.4 MB (8351889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e585acf51260b8b3f84c8e2b461036508234363bc5a1b2030da48984f7904a50`  
		Last Modified: Tue, 23 Aug 2016 18:40:57 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980b07173f892fe21ec17ea643781823fb576cb6d84fb0c958edeaca7cf5a0d`  
		Last Modified: Tue, 23 Aug 2016 18:40:58 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.2-apache-php7`

```console
$ docker pull joomla@sha256:b6360e52230412fe4e93ce96cddace1cbec56099810895701b4c7f55cbd0d1c4
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.2-apache-php7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.0 MB (175988276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c15136c73ee76c8b2dbfbc2b7346e2fed8d3e081f04168009447f5042240dea4`
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
# Wed, 17 Aug 2016 19:19:35 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 19 Aug 2016 18:35:21 GMT
ENV PHP_VERSION=7.0.10
# Fri, 19 Aug 2016 18:35:21 GMT
ENV PHP_FILENAME=php-7.0.10.tar.xz
# Fri, 19 Aug 2016 18:35:22 GMT
ENV PHP_SHA256=348476ff7ba8d95a1e28e1059430c10470c5f8110f6d9133d30153dda4cdf56a
# Fri, 19 Aug 2016 18:35:24 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 19 Aug 2016 18:35:25 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Fri, 19 Aug 2016 18:40:42 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 19 Aug 2016 18:40:43 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Fri, 19 Aug 2016 18:40:43 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Fri, 19 Aug 2016 18:40:44 GMT
WORKDIR /var/www/html
# Fri, 19 Aug 2016 18:40:44 GMT
EXPOSE 80/tcp
# Fri, 19 Aug 2016 18:40:45 GMT
CMD ["apache2-foreground"]
# Fri, 19 Aug 2016 20:46:28 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 19 Aug 2016 20:46:30 GMT
RUN a2enmod rewrite
# Fri, 19 Aug 2016 20:47:54 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 19 Aug 2016 20:48:09 GMT
RUN docker-php-ext-install mysqli
# Fri, 19 Aug 2016 20:48:10 GMT
VOLUME [/var/www/html]
# Fri, 19 Aug 2016 20:48:11 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 19 Aug 2016 20:48:12 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 19 Aug 2016 20:48:21 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 19 Aug 2016 20:48:23 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Fri, 19 Aug 2016 20:48:24 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Fri, 19 Aug 2016 20:48:25 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 19 Aug 2016 20:48:26 GMT
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
	-	`sha256:860f9d193b604989c552317f53a21bd1eecf52a90cbb9b55d7c78a34b318450c`  
		Last Modified: Fri, 19 Aug 2016 19:09:15 GMT  
		Size: 12.5 MB (12479364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fb9123913839e0a5d0ddb450fea87837752e14f32cfd6b903abcf10aba1463`  
		Last Modified: Fri, 19 Aug 2016 19:09:12 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac0066a78fe14f8bbc0302fe9e22bcbdf5b3bbf7a7e88f69db9da06c84136b0`  
		Last Modified: Fri, 19 Aug 2016 19:09:19 GMT  
		Size: 20.3 MB (20281061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddcbcf21bf44a1d450b0a700dca27b92a40c29aba37191c181584a9b6301d71`  
		Last Modified: Fri, 19 Aug 2016 19:09:13 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46b54c81c37b5eace83e4bf9ccb600a702be9302cac575e644084db521b4796`  
		Last Modified: Fri, 19 Aug 2016 19:09:12 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33e13398591c11196d4c3ed116b7e183c88d644738d6784c164112e4f1ad2d1`  
		Last Modified: Fri, 19 Aug 2016 20:48:40 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b333494817352fc82aa79a3ddb4507750a7e5c86535e684054b4cc29cb053a`  
		Last Modified: Fri, 19 Aug 2016 20:48:39 GMT  
		Size: 2.8 MB (2817644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae2f78ff61ec66b0aeebd33e8c850c27e02cd018899cafc91d62dbfd73553a2`  
		Last Modified: Fri, 19 Aug 2016 20:48:38 GMT  
		Size: 257.3 KB (257334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c17f12131849b94cac75c9877e9cced278afc990caeaad3c995e6a1374433b`  
		Last Modified: Fri, 19 Aug 2016 20:48:41 GMT  
		Size: 8.4 MB (8351886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68085437e8e7bdfea4b8655a6a442cea771d9dc226a6cf7b8e625c06e651e96`  
		Last Modified: Fri, 19 Aug 2016 20:48:38 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06eea31825ff2eaf568dfb56e9185af179fe0b15ea322abb012c73cf188bd72d`  
		Last Modified: Fri, 19 Aug 2016 20:48:37 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-apache-php7`

```console
$ docker pull joomla@sha256:b6360e52230412fe4e93ce96cddace1cbec56099810895701b4c7f55cbd0d1c4
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-apache-php7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.0 MB (175988276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c15136c73ee76c8b2dbfbc2b7346e2fed8d3e081f04168009447f5042240dea4`
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
# Wed, 17 Aug 2016 19:19:35 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 19 Aug 2016 18:35:21 GMT
ENV PHP_VERSION=7.0.10
# Fri, 19 Aug 2016 18:35:21 GMT
ENV PHP_FILENAME=php-7.0.10.tar.xz
# Fri, 19 Aug 2016 18:35:22 GMT
ENV PHP_SHA256=348476ff7ba8d95a1e28e1059430c10470c5f8110f6d9133d30153dda4cdf56a
# Fri, 19 Aug 2016 18:35:24 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 19 Aug 2016 18:35:25 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Fri, 19 Aug 2016 18:40:42 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 19 Aug 2016 18:40:43 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Fri, 19 Aug 2016 18:40:43 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Fri, 19 Aug 2016 18:40:44 GMT
WORKDIR /var/www/html
# Fri, 19 Aug 2016 18:40:44 GMT
EXPOSE 80/tcp
# Fri, 19 Aug 2016 18:40:45 GMT
CMD ["apache2-foreground"]
# Fri, 19 Aug 2016 20:46:28 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 19 Aug 2016 20:46:30 GMT
RUN a2enmod rewrite
# Fri, 19 Aug 2016 20:47:54 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 19 Aug 2016 20:48:09 GMT
RUN docker-php-ext-install mysqli
# Fri, 19 Aug 2016 20:48:10 GMT
VOLUME [/var/www/html]
# Fri, 19 Aug 2016 20:48:11 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 19 Aug 2016 20:48:12 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 19 Aug 2016 20:48:21 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 19 Aug 2016 20:48:23 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Fri, 19 Aug 2016 20:48:24 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Fri, 19 Aug 2016 20:48:25 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 19 Aug 2016 20:48:26 GMT
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
	-	`sha256:860f9d193b604989c552317f53a21bd1eecf52a90cbb9b55d7c78a34b318450c`  
		Last Modified: Fri, 19 Aug 2016 19:09:15 GMT  
		Size: 12.5 MB (12479364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fb9123913839e0a5d0ddb450fea87837752e14f32cfd6b903abcf10aba1463`  
		Last Modified: Fri, 19 Aug 2016 19:09:12 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac0066a78fe14f8bbc0302fe9e22bcbdf5b3bbf7a7e88f69db9da06c84136b0`  
		Last Modified: Fri, 19 Aug 2016 19:09:19 GMT  
		Size: 20.3 MB (20281061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddcbcf21bf44a1d450b0a700dca27b92a40c29aba37191c181584a9b6301d71`  
		Last Modified: Fri, 19 Aug 2016 19:09:13 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46b54c81c37b5eace83e4bf9ccb600a702be9302cac575e644084db521b4796`  
		Last Modified: Fri, 19 Aug 2016 19:09:12 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33e13398591c11196d4c3ed116b7e183c88d644738d6784c164112e4f1ad2d1`  
		Last Modified: Fri, 19 Aug 2016 20:48:40 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b333494817352fc82aa79a3ddb4507750a7e5c86535e684054b4cc29cb053a`  
		Last Modified: Fri, 19 Aug 2016 20:48:39 GMT  
		Size: 2.8 MB (2817644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae2f78ff61ec66b0aeebd33e8c850c27e02cd018899cafc91d62dbfd73553a2`  
		Last Modified: Fri, 19 Aug 2016 20:48:38 GMT  
		Size: 257.3 KB (257334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c17f12131849b94cac75c9877e9cced278afc990caeaad3c995e6a1374433b`  
		Last Modified: Fri, 19 Aug 2016 20:48:41 GMT  
		Size: 8.4 MB (8351886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68085437e8e7bdfea4b8655a6a442cea771d9dc226a6cf7b8e625c06e651e96`  
		Last Modified: Fri, 19 Aug 2016 20:48:38 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06eea31825ff2eaf568dfb56e9185af179fe0b15ea322abb012c73cf188bd72d`  
		Last Modified: Fri, 19 Aug 2016 20:48:37 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache-php7`

```console
$ docker pull joomla@sha256:b6360e52230412fe4e93ce96cddace1cbec56099810895701b4c7f55cbd0d1c4
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache-php7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.0 MB (175988276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c15136c73ee76c8b2dbfbc2b7346e2fed8d3e081f04168009447f5042240dea4`
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
# Wed, 17 Aug 2016 19:19:35 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 19 Aug 2016 18:35:21 GMT
ENV PHP_VERSION=7.0.10
# Fri, 19 Aug 2016 18:35:21 GMT
ENV PHP_FILENAME=php-7.0.10.tar.xz
# Fri, 19 Aug 2016 18:35:22 GMT
ENV PHP_SHA256=348476ff7ba8d95a1e28e1059430c10470c5f8110f6d9133d30153dda4cdf56a
# Fri, 19 Aug 2016 18:35:24 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 19 Aug 2016 18:35:25 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Fri, 19 Aug 2016 18:40:42 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 19 Aug 2016 18:40:43 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Fri, 19 Aug 2016 18:40:43 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Fri, 19 Aug 2016 18:40:44 GMT
WORKDIR /var/www/html
# Fri, 19 Aug 2016 18:40:44 GMT
EXPOSE 80/tcp
# Fri, 19 Aug 2016 18:40:45 GMT
CMD ["apache2-foreground"]
# Fri, 19 Aug 2016 20:46:28 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 19 Aug 2016 20:46:30 GMT
RUN a2enmod rewrite
# Fri, 19 Aug 2016 20:47:54 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 19 Aug 2016 20:48:09 GMT
RUN docker-php-ext-install mysqli
# Fri, 19 Aug 2016 20:48:10 GMT
VOLUME [/var/www/html]
# Fri, 19 Aug 2016 20:48:11 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 19 Aug 2016 20:48:12 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 19 Aug 2016 20:48:21 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 19 Aug 2016 20:48:23 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Fri, 19 Aug 2016 20:48:24 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Fri, 19 Aug 2016 20:48:25 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 19 Aug 2016 20:48:26 GMT
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
	-	`sha256:860f9d193b604989c552317f53a21bd1eecf52a90cbb9b55d7c78a34b318450c`  
		Last Modified: Fri, 19 Aug 2016 19:09:15 GMT  
		Size: 12.5 MB (12479364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fb9123913839e0a5d0ddb450fea87837752e14f32cfd6b903abcf10aba1463`  
		Last Modified: Fri, 19 Aug 2016 19:09:12 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac0066a78fe14f8bbc0302fe9e22bcbdf5b3bbf7a7e88f69db9da06c84136b0`  
		Last Modified: Fri, 19 Aug 2016 19:09:19 GMT  
		Size: 20.3 MB (20281061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddcbcf21bf44a1d450b0a700dca27b92a40c29aba37191c181584a9b6301d71`  
		Last Modified: Fri, 19 Aug 2016 19:09:13 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46b54c81c37b5eace83e4bf9ccb600a702be9302cac575e644084db521b4796`  
		Last Modified: Fri, 19 Aug 2016 19:09:12 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33e13398591c11196d4c3ed116b7e183c88d644738d6784c164112e4f1ad2d1`  
		Last Modified: Fri, 19 Aug 2016 20:48:40 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b333494817352fc82aa79a3ddb4507750a7e5c86535e684054b4cc29cb053a`  
		Last Modified: Fri, 19 Aug 2016 20:48:39 GMT  
		Size: 2.8 MB (2817644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae2f78ff61ec66b0aeebd33e8c850c27e02cd018899cafc91d62dbfd73553a2`  
		Last Modified: Fri, 19 Aug 2016 20:48:38 GMT  
		Size: 257.3 KB (257334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c17f12131849b94cac75c9877e9cced278afc990caeaad3c995e6a1374433b`  
		Last Modified: Fri, 19 Aug 2016 20:48:41 GMT  
		Size: 8.4 MB (8351886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68085437e8e7bdfea4b8655a6a442cea771d9dc226a6cf7b8e625c06e651e96`  
		Last Modified: Fri, 19 Aug 2016 20:48:38 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06eea31825ff2eaf568dfb56e9185af179fe0b15ea322abb012c73cf188bd72d`  
		Last Modified: Fri, 19 Aug 2016 20:48:37 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:apache-php7`

```console
$ docker pull joomla@sha256:b6360e52230412fe4e93ce96cddace1cbec56099810895701b4c7f55cbd0d1c4
```

-	Platforms:
	-	linux; amd64

### `joomla:apache-php7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.0 MB (175988276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c15136c73ee76c8b2dbfbc2b7346e2fed8d3e081f04168009447f5042240dea4`
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
# Wed, 17 Aug 2016 19:19:35 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 19 Aug 2016 18:35:21 GMT
ENV PHP_VERSION=7.0.10
# Fri, 19 Aug 2016 18:35:21 GMT
ENV PHP_FILENAME=php-7.0.10.tar.xz
# Fri, 19 Aug 2016 18:35:22 GMT
ENV PHP_SHA256=348476ff7ba8d95a1e28e1059430c10470c5f8110f6d9133d30153dda4cdf56a
# Fri, 19 Aug 2016 18:35:24 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 19 Aug 2016 18:35:25 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Fri, 19 Aug 2016 18:40:42 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 19 Aug 2016 18:40:43 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Fri, 19 Aug 2016 18:40:43 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Fri, 19 Aug 2016 18:40:44 GMT
WORKDIR /var/www/html
# Fri, 19 Aug 2016 18:40:44 GMT
EXPOSE 80/tcp
# Fri, 19 Aug 2016 18:40:45 GMT
CMD ["apache2-foreground"]
# Fri, 19 Aug 2016 20:46:28 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 19 Aug 2016 20:46:30 GMT
RUN a2enmod rewrite
# Fri, 19 Aug 2016 20:47:54 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 19 Aug 2016 20:48:09 GMT
RUN docker-php-ext-install mysqli
# Fri, 19 Aug 2016 20:48:10 GMT
VOLUME [/var/www/html]
# Fri, 19 Aug 2016 20:48:11 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 19 Aug 2016 20:48:12 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 19 Aug 2016 20:48:21 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 19 Aug 2016 20:48:23 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Fri, 19 Aug 2016 20:48:24 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Fri, 19 Aug 2016 20:48:25 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 19 Aug 2016 20:48:26 GMT
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
	-	`sha256:860f9d193b604989c552317f53a21bd1eecf52a90cbb9b55d7c78a34b318450c`  
		Last Modified: Fri, 19 Aug 2016 19:09:15 GMT  
		Size: 12.5 MB (12479364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fb9123913839e0a5d0ddb450fea87837752e14f32cfd6b903abcf10aba1463`  
		Last Modified: Fri, 19 Aug 2016 19:09:12 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac0066a78fe14f8bbc0302fe9e22bcbdf5b3bbf7a7e88f69db9da06c84136b0`  
		Last Modified: Fri, 19 Aug 2016 19:09:19 GMT  
		Size: 20.3 MB (20281061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddcbcf21bf44a1d450b0a700dca27b92a40c29aba37191c181584a9b6301d71`  
		Last Modified: Fri, 19 Aug 2016 19:09:13 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46b54c81c37b5eace83e4bf9ccb600a702be9302cac575e644084db521b4796`  
		Last Modified: Fri, 19 Aug 2016 19:09:12 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33e13398591c11196d4c3ed116b7e183c88d644738d6784c164112e4f1ad2d1`  
		Last Modified: Fri, 19 Aug 2016 20:48:40 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b333494817352fc82aa79a3ddb4507750a7e5c86535e684054b4cc29cb053a`  
		Last Modified: Fri, 19 Aug 2016 20:48:39 GMT  
		Size: 2.8 MB (2817644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae2f78ff61ec66b0aeebd33e8c850c27e02cd018899cafc91d62dbfd73553a2`  
		Last Modified: Fri, 19 Aug 2016 20:48:38 GMT  
		Size: 257.3 KB (257334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c17f12131849b94cac75c9877e9cced278afc990caeaad3c995e6a1374433b`  
		Last Modified: Fri, 19 Aug 2016 20:48:41 GMT  
		Size: 8.4 MB (8351886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68085437e8e7bdfea4b8655a6a442cea771d9dc226a6cf7b8e625c06e651e96`  
		Last Modified: Fri, 19 Aug 2016 20:48:38 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06eea31825ff2eaf568dfb56e9185af179fe0b15ea322abb012c73cf188bd72d`  
		Last Modified: Fri, 19 Aug 2016 20:48:37 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.2-fpm`

```console
$ docker pull joomla@sha256:75f6404714b627c03f2f9dc5931f071d27f136e225d5e445936819ab4088f7bd
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.2-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.1 MB (162147371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ccc39229445d8d778f479bdcb4b5774dccd0adede544fad5ae28098216da87`
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
# Tue, 23 Aug 2016 18:42:36 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 23 Aug 2016 18:44:03 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 23 Aug 2016 18:44:17 GMT
RUN docker-php-ext-install mysqli
# Tue, 23 Aug 2016 18:44:18 GMT
VOLUME [/var/www/html]
# Tue, 23 Aug 2016 18:44:19 GMT
ENV JOOMLA_VERSION=3.6.2
# Tue, 23 Aug 2016 18:44:20 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Tue, 23 Aug 2016 18:44:29 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 23 Aug 2016 18:44:31 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Tue, 23 Aug 2016 18:44:32 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Tue, 23 Aug 2016 18:44:33 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 18:44:34 GMT
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
	-	`sha256:5561dfd2ad0ddcba2288ea94aa2d3fc43a8a88beccba961894bcd537db13a57d`  
		Last Modified: Tue, 23 Aug 2016 18:44:47 GMT  
		Size: 2.8 MB (2817916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0a1e9d530fc3ae889201b324126488b29a726f29523642392719a27a565c3a`  
		Last Modified: Tue, 23 Aug 2016 18:44:46 GMT  
		Size: 266.1 KB (266111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0da8ef3d3cb7582d5c3cb0ac9c3fdb2d2ea944cee8cee59a431a94f09bc6560`  
		Last Modified: Tue, 23 Aug 2016 18:44:49 GMT  
		Size: 8.4 MB (8351880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdee557ba63629d835c535e72cbb4d6d379797075cf89fc84c7c9508ca1186d9`  
		Last Modified: Tue, 23 Aug 2016 18:44:46 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d1542549f4d230d4f98c9c65c3d559d992fd502fa0ca9aec05734804aff977`  
		Last Modified: Tue, 23 Aug 2016 18:44:46 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-fpm`

```console
$ docker pull joomla@sha256:75f6404714b627c03f2f9dc5931f071d27f136e225d5e445936819ab4088f7bd
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.1 MB (162147371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ccc39229445d8d778f479bdcb4b5774dccd0adede544fad5ae28098216da87`
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
# Tue, 23 Aug 2016 18:42:36 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 23 Aug 2016 18:44:03 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 23 Aug 2016 18:44:17 GMT
RUN docker-php-ext-install mysqli
# Tue, 23 Aug 2016 18:44:18 GMT
VOLUME [/var/www/html]
# Tue, 23 Aug 2016 18:44:19 GMT
ENV JOOMLA_VERSION=3.6.2
# Tue, 23 Aug 2016 18:44:20 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Tue, 23 Aug 2016 18:44:29 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 23 Aug 2016 18:44:31 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Tue, 23 Aug 2016 18:44:32 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Tue, 23 Aug 2016 18:44:33 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 18:44:34 GMT
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
	-	`sha256:5561dfd2ad0ddcba2288ea94aa2d3fc43a8a88beccba961894bcd537db13a57d`  
		Last Modified: Tue, 23 Aug 2016 18:44:47 GMT  
		Size: 2.8 MB (2817916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0a1e9d530fc3ae889201b324126488b29a726f29523642392719a27a565c3a`  
		Last Modified: Tue, 23 Aug 2016 18:44:46 GMT  
		Size: 266.1 KB (266111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0da8ef3d3cb7582d5c3cb0ac9c3fdb2d2ea944cee8cee59a431a94f09bc6560`  
		Last Modified: Tue, 23 Aug 2016 18:44:49 GMT  
		Size: 8.4 MB (8351880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdee557ba63629d835c535e72cbb4d6d379797075cf89fc84c7c9508ca1186d9`  
		Last Modified: Tue, 23 Aug 2016 18:44:46 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d1542549f4d230d4f98c9c65c3d559d992fd502fa0ca9aec05734804aff977`  
		Last Modified: Tue, 23 Aug 2016 18:44:46 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-fpm`

```console
$ docker pull joomla@sha256:75f6404714b627c03f2f9dc5931f071d27f136e225d5e445936819ab4088f7bd
```

-	Platforms:
	-	linux; amd64

### `joomla:3-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.1 MB (162147371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ccc39229445d8d778f479bdcb4b5774dccd0adede544fad5ae28098216da87`
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
# Tue, 23 Aug 2016 18:42:36 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 23 Aug 2016 18:44:03 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 23 Aug 2016 18:44:17 GMT
RUN docker-php-ext-install mysqli
# Tue, 23 Aug 2016 18:44:18 GMT
VOLUME [/var/www/html]
# Tue, 23 Aug 2016 18:44:19 GMT
ENV JOOMLA_VERSION=3.6.2
# Tue, 23 Aug 2016 18:44:20 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Tue, 23 Aug 2016 18:44:29 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 23 Aug 2016 18:44:31 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Tue, 23 Aug 2016 18:44:32 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Tue, 23 Aug 2016 18:44:33 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 18:44:34 GMT
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
	-	`sha256:5561dfd2ad0ddcba2288ea94aa2d3fc43a8a88beccba961894bcd537db13a57d`  
		Last Modified: Tue, 23 Aug 2016 18:44:47 GMT  
		Size: 2.8 MB (2817916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0a1e9d530fc3ae889201b324126488b29a726f29523642392719a27a565c3a`  
		Last Modified: Tue, 23 Aug 2016 18:44:46 GMT  
		Size: 266.1 KB (266111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0da8ef3d3cb7582d5c3cb0ac9c3fdb2d2ea944cee8cee59a431a94f09bc6560`  
		Last Modified: Tue, 23 Aug 2016 18:44:49 GMT  
		Size: 8.4 MB (8351880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdee557ba63629d835c535e72cbb4d6d379797075cf89fc84c7c9508ca1186d9`  
		Last Modified: Tue, 23 Aug 2016 18:44:46 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d1542549f4d230d4f98c9c65c3d559d992fd502fa0ca9aec05734804aff977`  
		Last Modified: Tue, 23 Aug 2016 18:44:46 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:fpm`

```console
$ docker pull joomla@sha256:2ca207701c5bd82732ca23935c79d627f84e16476323b69790da89cd7ea7a02d
```

-	Platforms:
	-	linux; amd64

### `joomla:fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.1 MB (162126189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d7792422adc5f244356938cbcd819ecc33c6d40c67d45f80a6ccacff6b12755`
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
# Thu, 11 Aug 2016 17:49:49 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Thu, 11 Aug 2016 17:51:18 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Thu, 11 Aug 2016 17:51:35 GMT
RUN docker-php-ext-install mysqli
# Thu, 11 Aug 2016 17:51:36 GMT
VOLUME [/var/www/html]
# Tue, 16 Aug 2016 16:45:36 GMT
ENV JOOMLA_VERSION=3.6.2
# Tue, 16 Aug 2016 16:45:38 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Tue, 16 Aug 2016 16:45:48 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 16 Aug 2016 16:45:50 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Tue, 16 Aug 2016 16:45:51 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Tue, 16 Aug 2016 16:45:52 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 16 Aug 2016 16:45:54 GMT
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
	-	`sha256:1a0ed20d7752971350ab581861731d7d71a6eb560b93d48382b5cc2aa07fed8b`  
		Last Modified: Wed, 10 Aug 2016 21:38:50 GMT  
		Size: 12.4 MB (12399120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17456fd86bcf1eb916ff4c4b4909dd6ad98736369cff4e5ee9c79e02782fc67`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8bd75b8802c8ce64c4a28486fbfb4bde4247b27f5f8363dd8a8469ac89b1e85`  
		Last Modified: Wed, 10 Aug 2016 21:38:48 GMT  
		Size: 9.3 MB (9333467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0054f99dc6ca14454002cd76f78264c84cdfd9c57cea265ea0a6f601dab80158`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8ec71281514f1d63f59000b5fd9082baa8a6d34e7e591d7cd22928879a5d18`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa513925a4eb93b436ccdb48c9b0edca88237b4abdebea3245da69a6b37deaf9`  
		Last Modified: Wed, 10 Aug 2016 21:38:46 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e821128dd53e9174efa3cbe4d8a43ecfe3f7a39093cda4a2a1954e6cbc6fedb6`  
		Last Modified: Thu, 11 Aug 2016 17:52:14 GMT  
		Size: 2.8 MB (2817703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bdbaf8023248506ae15267264d651baec2ed2161e5065ce83c885315a2fdbb`  
		Last Modified: Thu, 11 Aug 2016 17:52:13 GMT  
		Size: 265.1 KB (265068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a294d7e6bd07594b1557b517aaf4e3582e7b20cd09a8f13695b6faaa669c9f`  
		Last Modified: Tue, 16 Aug 2016 16:50:07 GMT  
		Size: 8.4 MB (8351888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bd8bbb71e45b2524b8b36097381b347f9d309d0d04f64158434d95ff8c6e70`  
		Last Modified: Tue, 16 Aug 2016 16:50:03 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10a305c66d2bb0d0302e779be51df6065d32ab76e4adb49145e7c3f53cfedb1`  
		Last Modified: Tue, 16 Aug 2016 16:50:03 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.2-fpm-php7`

```console
$ docker pull joomla@sha256:f56330406a1a4e93653b1c318c1180497cf9bc653ee62328f75463faae4a9c9e
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.2-fpm-php7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166071937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:692ec622fae0bb679d7b49a614cd9fd2e3da22b5ca1c306656e6345ff8483dd1`
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
# Fri, 29 Jul 2016 20:55:36 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 19 Aug 2016 18:40:46 GMT
ENV PHP_VERSION=7.0.10
# Fri, 19 Aug 2016 18:40:46 GMT
ENV PHP_FILENAME=php-7.0.10.tar.xz
# Fri, 19 Aug 2016 18:40:47 GMT
ENV PHP_SHA256=348476ff7ba8d95a1e28e1059430c10470c5f8110f6d9133d30153dda4cdf56a
# Fri, 19 Aug 2016 18:40:50 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 19 Aug 2016 18:40:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Fri, 19 Aug 2016 18:47:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 19 Aug 2016 18:47:40 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Fri, 19 Aug 2016 18:47:41 GMT
WORKDIR /var/www/html
# Fri, 19 Aug 2016 18:47:42 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 19 Aug 2016 18:47:43 GMT
EXPOSE 9000/tcp
# Fri, 19 Aug 2016 18:47:43 GMT
CMD ["php-fpm"]
# Fri, 19 Aug 2016 20:43:33 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 19 Aug 2016 20:44:56 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 19 Aug 2016 20:45:12 GMT
RUN docker-php-ext-install mysqli
# Fri, 19 Aug 2016 20:45:13 GMT
VOLUME [/var/www/html]
# Fri, 19 Aug 2016 20:45:14 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 19 Aug 2016 20:45:14 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 19 Aug 2016 20:45:23 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 19 Aug 2016 20:45:25 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Fri, 19 Aug 2016 20:45:27 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Fri, 19 Aug 2016 20:45:28 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 19 Aug 2016 20:45:29 GMT
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
	-	`sha256:df93805f281e97310a537a5572a75996e789ada11167b7639194a8bd4a4d7178`  
		Last Modified: Fri, 19 Aug 2016 19:10:17 GMT  
		Size: 12.5 MB (12479373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f7ed242b41cc0b646a2d4e9954ce4a9054e98826ed5da8f720e41d0ab090f5`  
		Last Modified: Fri, 19 Aug 2016 19:10:12 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3a63bd4711440d522c2f3532747dbfcfa29a1b4178675f6754e3ece1a0ab37`  
		Last Modified: Fri, 19 Aug 2016 19:10:18 GMT  
		Size: 13.2 MB (13229660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3114bb1f04332303220c70d5b1ffdfbc23e3dd0fc525f3dce86d990220c43b57`  
		Last Modified: Fri, 19 Aug 2016 19:10:14 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a2628f1f984a20b33ee92af39b5c0022742b383b255cd38e6467bdaa4717a2`  
		Last Modified: Fri, 19 Aug 2016 19:10:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:212a7f7ab581e492715f1be69e61e067f83d3615c054d318f608a76556f50cc4`  
		Last Modified: Fri, 19 Aug 2016 19:10:12 GMT  
		Size: 7.7 KB (7689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a947e4ff122ba9a7862e9c032a4db3e84b5a029c57b64f5e59904dbad8bf70ea`  
		Last Modified: Fri, 19 Aug 2016 20:45:41 GMT  
		Size: 2.8 MB (2794680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b09c471dea9c6c0762b1653bbb9c5dcddd1ad103852fe7974eb4d2e75d61c4a`  
		Last Modified: Fri, 19 Aug 2016 20:45:41 GMT  
		Size: 257.3 KB (257339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6088063545845bf923fdcb20c41ca2a0773f1bfa7e2458beb8d5f264e88087`  
		Last Modified: Fri, 19 Aug 2016 20:45:44 GMT  
		Size: 8.4 MB (8351882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563f00aa534e033bfcf407ddd99e19a476d44762b6114e4cc9931f2990fb5786`  
		Last Modified: Fri, 19 Aug 2016 20:45:40 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b95180e322417bf27b516005082db0742eee00ba2c98216d7d62d789e8aa88`  
		Last Modified: Fri, 19 Aug 2016 20:45:41 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-fpm-php7`

```console
$ docker pull joomla@sha256:f56330406a1a4e93653b1c318c1180497cf9bc653ee62328f75463faae4a9c9e
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-fpm-php7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166071937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:692ec622fae0bb679d7b49a614cd9fd2e3da22b5ca1c306656e6345ff8483dd1`
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
# Fri, 29 Jul 2016 20:55:36 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 19 Aug 2016 18:40:46 GMT
ENV PHP_VERSION=7.0.10
# Fri, 19 Aug 2016 18:40:46 GMT
ENV PHP_FILENAME=php-7.0.10.tar.xz
# Fri, 19 Aug 2016 18:40:47 GMT
ENV PHP_SHA256=348476ff7ba8d95a1e28e1059430c10470c5f8110f6d9133d30153dda4cdf56a
# Fri, 19 Aug 2016 18:40:50 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 19 Aug 2016 18:40:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Fri, 19 Aug 2016 18:47:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 19 Aug 2016 18:47:40 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Fri, 19 Aug 2016 18:47:41 GMT
WORKDIR /var/www/html
# Fri, 19 Aug 2016 18:47:42 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 19 Aug 2016 18:47:43 GMT
EXPOSE 9000/tcp
# Fri, 19 Aug 2016 18:47:43 GMT
CMD ["php-fpm"]
# Fri, 19 Aug 2016 20:43:33 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 19 Aug 2016 20:44:56 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 19 Aug 2016 20:45:12 GMT
RUN docker-php-ext-install mysqli
# Fri, 19 Aug 2016 20:45:13 GMT
VOLUME [/var/www/html]
# Fri, 19 Aug 2016 20:45:14 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 19 Aug 2016 20:45:14 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 19 Aug 2016 20:45:23 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 19 Aug 2016 20:45:25 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Fri, 19 Aug 2016 20:45:27 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Fri, 19 Aug 2016 20:45:28 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 19 Aug 2016 20:45:29 GMT
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
	-	`sha256:df93805f281e97310a537a5572a75996e789ada11167b7639194a8bd4a4d7178`  
		Last Modified: Fri, 19 Aug 2016 19:10:17 GMT  
		Size: 12.5 MB (12479373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f7ed242b41cc0b646a2d4e9954ce4a9054e98826ed5da8f720e41d0ab090f5`  
		Last Modified: Fri, 19 Aug 2016 19:10:12 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3a63bd4711440d522c2f3532747dbfcfa29a1b4178675f6754e3ece1a0ab37`  
		Last Modified: Fri, 19 Aug 2016 19:10:18 GMT  
		Size: 13.2 MB (13229660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3114bb1f04332303220c70d5b1ffdfbc23e3dd0fc525f3dce86d990220c43b57`  
		Last Modified: Fri, 19 Aug 2016 19:10:14 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a2628f1f984a20b33ee92af39b5c0022742b383b255cd38e6467bdaa4717a2`  
		Last Modified: Fri, 19 Aug 2016 19:10:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:212a7f7ab581e492715f1be69e61e067f83d3615c054d318f608a76556f50cc4`  
		Last Modified: Fri, 19 Aug 2016 19:10:12 GMT  
		Size: 7.7 KB (7689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a947e4ff122ba9a7862e9c032a4db3e84b5a029c57b64f5e59904dbad8bf70ea`  
		Last Modified: Fri, 19 Aug 2016 20:45:41 GMT  
		Size: 2.8 MB (2794680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b09c471dea9c6c0762b1653bbb9c5dcddd1ad103852fe7974eb4d2e75d61c4a`  
		Last Modified: Fri, 19 Aug 2016 20:45:41 GMT  
		Size: 257.3 KB (257339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6088063545845bf923fdcb20c41ca2a0773f1bfa7e2458beb8d5f264e88087`  
		Last Modified: Fri, 19 Aug 2016 20:45:44 GMT  
		Size: 8.4 MB (8351882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563f00aa534e033bfcf407ddd99e19a476d44762b6114e4cc9931f2990fb5786`  
		Last Modified: Fri, 19 Aug 2016 20:45:40 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b95180e322417bf27b516005082db0742eee00ba2c98216d7d62d789e8aa88`  
		Last Modified: Fri, 19 Aug 2016 20:45:41 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-fpm-php7`

```console
$ docker pull joomla@sha256:f56330406a1a4e93653b1c318c1180497cf9bc653ee62328f75463faae4a9c9e
```

-	Platforms:
	-	linux; amd64

### `joomla:3-fpm-php7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166071937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:692ec622fae0bb679d7b49a614cd9fd2e3da22b5ca1c306656e6345ff8483dd1`
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
# Fri, 29 Jul 2016 20:55:36 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 19 Aug 2016 18:40:46 GMT
ENV PHP_VERSION=7.0.10
# Fri, 19 Aug 2016 18:40:46 GMT
ENV PHP_FILENAME=php-7.0.10.tar.xz
# Fri, 19 Aug 2016 18:40:47 GMT
ENV PHP_SHA256=348476ff7ba8d95a1e28e1059430c10470c5f8110f6d9133d30153dda4cdf56a
# Fri, 19 Aug 2016 18:40:50 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 19 Aug 2016 18:40:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Fri, 19 Aug 2016 18:47:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 19 Aug 2016 18:47:40 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Fri, 19 Aug 2016 18:47:41 GMT
WORKDIR /var/www/html
# Fri, 19 Aug 2016 18:47:42 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 19 Aug 2016 18:47:43 GMT
EXPOSE 9000/tcp
# Fri, 19 Aug 2016 18:47:43 GMT
CMD ["php-fpm"]
# Fri, 19 Aug 2016 20:43:33 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 19 Aug 2016 20:44:56 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 19 Aug 2016 20:45:12 GMT
RUN docker-php-ext-install mysqli
# Fri, 19 Aug 2016 20:45:13 GMT
VOLUME [/var/www/html]
# Fri, 19 Aug 2016 20:45:14 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 19 Aug 2016 20:45:14 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 19 Aug 2016 20:45:23 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 19 Aug 2016 20:45:25 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Fri, 19 Aug 2016 20:45:27 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Fri, 19 Aug 2016 20:45:28 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 19 Aug 2016 20:45:29 GMT
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
	-	`sha256:df93805f281e97310a537a5572a75996e789ada11167b7639194a8bd4a4d7178`  
		Last Modified: Fri, 19 Aug 2016 19:10:17 GMT  
		Size: 12.5 MB (12479373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f7ed242b41cc0b646a2d4e9954ce4a9054e98826ed5da8f720e41d0ab090f5`  
		Last Modified: Fri, 19 Aug 2016 19:10:12 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3a63bd4711440d522c2f3532747dbfcfa29a1b4178675f6754e3ece1a0ab37`  
		Last Modified: Fri, 19 Aug 2016 19:10:18 GMT  
		Size: 13.2 MB (13229660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3114bb1f04332303220c70d5b1ffdfbc23e3dd0fc525f3dce86d990220c43b57`  
		Last Modified: Fri, 19 Aug 2016 19:10:14 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a2628f1f984a20b33ee92af39b5c0022742b383b255cd38e6467bdaa4717a2`  
		Last Modified: Fri, 19 Aug 2016 19:10:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:212a7f7ab581e492715f1be69e61e067f83d3615c054d318f608a76556f50cc4`  
		Last Modified: Fri, 19 Aug 2016 19:10:12 GMT  
		Size: 7.7 KB (7689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a947e4ff122ba9a7862e9c032a4db3e84b5a029c57b64f5e59904dbad8bf70ea`  
		Last Modified: Fri, 19 Aug 2016 20:45:41 GMT  
		Size: 2.8 MB (2794680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b09c471dea9c6c0762b1653bbb9c5dcddd1ad103852fe7974eb4d2e75d61c4a`  
		Last Modified: Fri, 19 Aug 2016 20:45:41 GMT  
		Size: 257.3 KB (257339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6088063545845bf923fdcb20c41ca2a0773f1bfa7e2458beb8d5f264e88087`  
		Last Modified: Fri, 19 Aug 2016 20:45:44 GMT  
		Size: 8.4 MB (8351882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563f00aa534e033bfcf407ddd99e19a476d44762b6114e4cc9931f2990fb5786`  
		Last Modified: Fri, 19 Aug 2016 20:45:40 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b95180e322417bf27b516005082db0742eee00ba2c98216d7d62d789e8aa88`  
		Last Modified: Fri, 19 Aug 2016 20:45:41 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:fpm-php7`

```console
$ docker pull joomla@sha256:f56330406a1a4e93653b1c318c1180497cf9bc653ee62328f75463faae4a9c9e
```

-	Platforms:
	-	linux; amd64

### `joomla:fpm-php7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166071937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:692ec622fae0bb679d7b49a614cd9fd2e3da22b5ca1c306656e6345ff8483dd1`
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
# Fri, 29 Jul 2016 20:55:36 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 19 Aug 2016 18:40:46 GMT
ENV PHP_VERSION=7.0.10
# Fri, 19 Aug 2016 18:40:46 GMT
ENV PHP_FILENAME=php-7.0.10.tar.xz
# Fri, 19 Aug 2016 18:40:47 GMT
ENV PHP_SHA256=348476ff7ba8d95a1e28e1059430c10470c5f8110f6d9133d30153dda4cdf56a
# Fri, 19 Aug 2016 18:40:50 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 19 Aug 2016 18:40:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Fri, 19 Aug 2016 18:47:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 19 Aug 2016 18:47:40 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Fri, 19 Aug 2016 18:47:41 GMT
WORKDIR /var/www/html
# Fri, 19 Aug 2016 18:47:42 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 19 Aug 2016 18:47:43 GMT
EXPOSE 9000/tcp
# Fri, 19 Aug 2016 18:47:43 GMT
CMD ["php-fpm"]
# Fri, 19 Aug 2016 20:43:33 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 19 Aug 2016 20:44:56 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 19 Aug 2016 20:45:12 GMT
RUN docker-php-ext-install mysqli
# Fri, 19 Aug 2016 20:45:13 GMT
VOLUME [/var/www/html]
# Fri, 19 Aug 2016 20:45:14 GMT
ENV JOOMLA_VERSION=3.6.2
# Fri, 19 Aug 2016 20:45:14 GMT
ENV JOOMLA_SHA1=fdaa25337aaabd0d673aafc0ff90e7375de2d6e3
# Fri, 19 Aug 2016 20:45:23 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 19 Aug 2016 20:45:25 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh
# Fri, 19 Aug 2016 20:45:27 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php
# Fri, 19 Aug 2016 20:45:28 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 19 Aug 2016 20:45:29 GMT
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
	-	`sha256:df93805f281e97310a537a5572a75996e789ada11167b7639194a8bd4a4d7178`  
		Last Modified: Fri, 19 Aug 2016 19:10:17 GMT  
		Size: 12.5 MB (12479373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f7ed242b41cc0b646a2d4e9954ce4a9054e98826ed5da8f720e41d0ab090f5`  
		Last Modified: Fri, 19 Aug 2016 19:10:12 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3a63bd4711440d522c2f3532747dbfcfa29a1b4178675f6754e3ece1a0ab37`  
		Last Modified: Fri, 19 Aug 2016 19:10:18 GMT  
		Size: 13.2 MB (13229660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3114bb1f04332303220c70d5b1ffdfbc23e3dd0fc525f3dce86d990220c43b57`  
		Last Modified: Fri, 19 Aug 2016 19:10:14 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a2628f1f984a20b33ee92af39b5c0022742b383b255cd38e6467bdaa4717a2`  
		Last Modified: Fri, 19 Aug 2016 19:10:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:212a7f7ab581e492715f1be69e61e067f83d3615c054d318f608a76556f50cc4`  
		Last Modified: Fri, 19 Aug 2016 19:10:12 GMT  
		Size: 7.7 KB (7689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a947e4ff122ba9a7862e9c032a4db3e84b5a029c57b64f5e59904dbad8bf70ea`  
		Last Modified: Fri, 19 Aug 2016 20:45:41 GMT  
		Size: 2.8 MB (2794680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b09c471dea9c6c0762b1653bbb9c5dcddd1ad103852fe7974eb4d2e75d61c4a`  
		Last Modified: Fri, 19 Aug 2016 20:45:41 GMT  
		Size: 257.3 KB (257339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6088063545845bf923fdcb20c41ca2a0773f1bfa7e2458beb8d5f264e88087`  
		Last Modified: Fri, 19 Aug 2016 20:45:44 GMT  
		Size: 8.4 MB (8351882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563f00aa534e033bfcf407ddd99e19a476d44762b6114e4cc9931f2990fb5786`  
		Last Modified: Fri, 19 Aug 2016 20:45:40 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b95180e322417bf27b516005082db0742eee00ba2c98216d7d62d789e8aa88`  
		Last Modified: Fri, 19 Aug 2016 20:45:41 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
