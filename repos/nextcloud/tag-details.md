<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nextcloud`

-	[`nextcloud:10.0.5-apache`](#nextcloud1005-apache)
-	[`nextcloud:10.0-apache`](#nextcloud100-apache)
-	[`nextcloud:10-apache`](#nextcloud10-apache)
-	[`nextcloud:10.0.5`](#nextcloud1005)
-	[`nextcloud:10.0`](#nextcloud100)
-	[`nextcloud:10`](#nextcloud10)
-	[`nextcloud:10.0.5-fpm`](#nextcloud1005-fpm)
-	[`nextcloud:10.0-fpm`](#nextcloud100-fpm)
-	[`nextcloud:10-fpm`](#nextcloud10-fpm)
-	[`nextcloud:11.0.3-apache`](#nextcloud1103-apache)
-	[`nextcloud:11.0-apache`](#nextcloud110-apache)
-	[`nextcloud:11-apache`](#nextcloud11-apache)
-	[`nextcloud:11.0.3`](#nextcloud1103)
-	[`nextcloud:11.0`](#nextcloud110)
-	[`nextcloud:11`](#nextcloud11)
-	[`nextcloud:11.0.3-fpm`](#nextcloud1103-fpm)
-	[`nextcloud:11.0-fpm`](#nextcloud110-fpm)
-	[`nextcloud:11-fpm`](#nextcloud11-fpm)
-	[`nextcloud:12.0.0-apache`](#nextcloud1200-apache)
-	[`nextcloud:12.0-apache`](#nextcloud120-apache)
-	[`nextcloud:12-apache`](#nextcloud12-apache)
-	[`nextcloud:apache`](#nextcloudapache)
-	[`nextcloud:12.0.0`](#nextcloud1200)
-	[`nextcloud:12.0`](#nextcloud120)
-	[`nextcloud:12`](#nextcloud12)
-	[`nextcloud:latest`](#nextcloudlatest)
-	[`nextcloud:12.0.0-fpm`](#nextcloud1200-fpm)
-	[`nextcloud:12.0-fpm`](#nextcloud120-fpm)
-	[`nextcloud:12-fpm`](#nextcloud12-fpm)
-	[`nextcloud:fpm`](#nextcloudfpm)
-	[`nextcloud:9.0.58-apache`](#nextcloud9058-apache)
-	[`nextcloud:9.0-apache`](#nextcloud90-apache)
-	[`nextcloud:9-apache`](#nextcloud9-apache)
-	[`nextcloud:9.0.58`](#nextcloud9058)
-	[`nextcloud:9.0`](#nextcloud90)
-	[`nextcloud:9`](#nextcloud9)
-	[`nextcloud:9.0.58-fpm`](#nextcloud9058-fpm)
-	[`nextcloud:9.0-fpm`](#nextcloud90-fpm)
-	[`nextcloud:9-fpm`](#nextcloud9-fpm)

## `nextcloud:10.0.5-apache`

```console
$ docker pull nextcloud@sha256:93e3715f8f9cd7f11fe21f20d65885e73cd21bbb6f6b104eb4a5b855fb774445
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10.0.5-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238176368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2355c2bb38368b24d298630cb6248b2fd4dea89adba0eb268460dc381464c46f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:20:23 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:20:24 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:20:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:20:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:21:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:21:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:10 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 09 Jun 2017 15:26:13 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Jun 2017 15:26:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:38 GMT
WORKDIR /var/www/html
# Fri, 09 Jun 2017 15:26:39 GMT
EXPOSE 80/tcp
# Fri, 09 Jun 2017 15:26:40 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:42:09 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:43:54 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:43:55 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:43:57 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:44:23 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:44:25 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:44:26 GMT
ENV NEXTCLOUD_VERSION=10.0.5
# Fri, 09 Jun 2017 18:44:26 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:44:40 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:44:42 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:44:43 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:44:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:44:45 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b692e57dd378e12ed64795750adaf512987b8829af9bee479518dc09d83a4`  
		Last Modified: Fri, 09 Jun 2017 16:03:52 GMT  
		Size: 12.6 MB (12576817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f393a2429aaf4dc105a6fead7aa3a3e829bde6262a451fc28c5f32c456eaa5`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3eb4c13a16074aea1c0e031d218badcfa79d830e977c2f387ff5d7255c7fa55`  
		Last Modified: Fri, 09 Jun 2017 16:03:53 GMT  
		Size: 9.2 MB (9173931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6fa63e71a134861015c634153da0cf128aacd44ce84918a799463965d735891`  
		Last Modified: Fri, 09 Jun 2017 16:03:51 GMT  
		Size: 2.1 KB (2127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561abb46edf50002eb8d5ca120c3ed717d1d7e7f17ce5ca13e69afe0ab16bd4b`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f2e158f999c3d8cb0997921ffd4d66e467adfc0c2d7dc3894342ca1348821`  
		Last Modified: Fri, 09 Jun 2017 18:58:39 GMT  
		Size: 35.9 MB (35886888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50c060386bbbe30de134217b77ec4d6da2c20538a162a1892103c8620a04d93`  
		Last Modified: Fri, 09 Jun 2017 18:58:29 GMT  
		Size: 1.7 MB (1740534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fa4722bc66c0203f74dfc5d2db592f93bd5ab713bffcc548abc4856e15af75`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820e1f8ad8c319094ccdd4750d19fa53fd670026e75a03b59635ef816330cd59`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3af94f4399f7acd215404ad0858d0992572d4bee0f86ff3de9915b4b847cf4`  
		Last Modified: Fri, 09 Jun 2017 18:58:27 GMT  
		Size: 1.3 MB (1338403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1568210dc6b0d397367df669167ca4e712f218df4a8070b9c16825c6c068ab72`  
		Last Modified: Fri, 09 Jun 2017 18:58:41 GMT  
		Size: 39.6 MB (39606125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8aac9ee113089487ff442b922d336900ea1cdb93217e4c4e7fba365017bad`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4f082c9fcd8c5a3a1d3a0c86a53d73fb9566de6b9400308dd1c837907fc1a`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10.0-apache`

```console
$ docker pull nextcloud@sha256:93e3715f8f9cd7f11fe21f20d65885e73cd21bbb6f6b104eb4a5b855fb774445
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10.0-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238176368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2355c2bb38368b24d298630cb6248b2fd4dea89adba0eb268460dc381464c46f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:20:23 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:20:24 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:20:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:20:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:21:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:21:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:10 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 09 Jun 2017 15:26:13 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Jun 2017 15:26:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:38 GMT
WORKDIR /var/www/html
# Fri, 09 Jun 2017 15:26:39 GMT
EXPOSE 80/tcp
# Fri, 09 Jun 2017 15:26:40 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:42:09 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:43:54 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:43:55 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:43:57 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:44:23 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:44:25 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:44:26 GMT
ENV NEXTCLOUD_VERSION=10.0.5
# Fri, 09 Jun 2017 18:44:26 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:44:40 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:44:42 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:44:43 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:44:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:44:45 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b692e57dd378e12ed64795750adaf512987b8829af9bee479518dc09d83a4`  
		Last Modified: Fri, 09 Jun 2017 16:03:52 GMT  
		Size: 12.6 MB (12576817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f393a2429aaf4dc105a6fead7aa3a3e829bde6262a451fc28c5f32c456eaa5`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3eb4c13a16074aea1c0e031d218badcfa79d830e977c2f387ff5d7255c7fa55`  
		Last Modified: Fri, 09 Jun 2017 16:03:53 GMT  
		Size: 9.2 MB (9173931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6fa63e71a134861015c634153da0cf128aacd44ce84918a799463965d735891`  
		Last Modified: Fri, 09 Jun 2017 16:03:51 GMT  
		Size: 2.1 KB (2127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561abb46edf50002eb8d5ca120c3ed717d1d7e7f17ce5ca13e69afe0ab16bd4b`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f2e158f999c3d8cb0997921ffd4d66e467adfc0c2d7dc3894342ca1348821`  
		Last Modified: Fri, 09 Jun 2017 18:58:39 GMT  
		Size: 35.9 MB (35886888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50c060386bbbe30de134217b77ec4d6da2c20538a162a1892103c8620a04d93`  
		Last Modified: Fri, 09 Jun 2017 18:58:29 GMT  
		Size: 1.7 MB (1740534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fa4722bc66c0203f74dfc5d2db592f93bd5ab713bffcc548abc4856e15af75`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820e1f8ad8c319094ccdd4750d19fa53fd670026e75a03b59635ef816330cd59`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3af94f4399f7acd215404ad0858d0992572d4bee0f86ff3de9915b4b847cf4`  
		Last Modified: Fri, 09 Jun 2017 18:58:27 GMT  
		Size: 1.3 MB (1338403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1568210dc6b0d397367df669167ca4e712f218df4a8070b9c16825c6c068ab72`  
		Last Modified: Fri, 09 Jun 2017 18:58:41 GMT  
		Size: 39.6 MB (39606125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8aac9ee113089487ff442b922d336900ea1cdb93217e4c4e7fba365017bad`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4f082c9fcd8c5a3a1d3a0c86a53d73fb9566de6b9400308dd1c837907fc1a`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10-apache`

```console
$ docker pull nextcloud@sha256:93e3715f8f9cd7f11fe21f20d65885e73cd21bbb6f6b104eb4a5b855fb774445
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238176368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2355c2bb38368b24d298630cb6248b2fd4dea89adba0eb268460dc381464c46f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:20:23 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:20:24 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:20:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:20:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:21:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:21:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:10 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 09 Jun 2017 15:26:13 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Jun 2017 15:26:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:38 GMT
WORKDIR /var/www/html
# Fri, 09 Jun 2017 15:26:39 GMT
EXPOSE 80/tcp
# Fri, 09 Jun 2017 15:26:40 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:42:09 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:43:54 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:43:55 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:43:57 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:44:23 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:44:25 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:44:26 GMT
ENV NEXTCLOUD_VERSION=10.0.5
# Fri, 09 Jun 2017 18:44:26 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:44:40 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:44:42 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:44:43 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:44:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:44:45 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b692e57dd378e12ed64795750adaf512987b8829af9bee479518dc09d83a4`  
		Last Modified: Fri, 09 Jun 2017 16:03:52 GMT  
		Size: 12.6 MB (12576817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f393a2429aaf4dc105a6fead7aa3a3e829bde6262a451fc28c5f32c456eaa5`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3eb4c13a16074aea1c0e031d218badcfa79d830e977c2f387ff5d7255c7fa55`  
		Last Modified: Fri, 09 Jun 2017 16:03:53 GMT  
		Size: 9.2 MB (9173931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6fa63e71a134861015c634153da0cf128aacd44ce84918a799463965d735891`  
		Last Modified: Fri, 09 Jun 2017 16:03:51 GMT  
		Size: 2.1 KB (2127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561abb46edf50002eb8d5ca120c3ed717d1d7e7f17ce5ca13e69afe0ab16bd4b`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f2e158f999c3d8cb0997921ffd4d66e467adfc0c2d7dc3894342ca1348821`  
		Last Modified: Fri, 09 Jun 2017 18:58:39 GMT  
		Size: 35.9 MB (35886888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50c060386bbbe30de134217b77ec4d6da2c20538a162a1892103c8620a04d93`  
		Last Modified: Fri, 09 Jun 2017 18:58:29 GMT  
		Size: 1.7 MB (1740534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fa4722bc66c0203f74dfc5d2db592f93bd5ab713bffcc548abc4856e15af75`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820e1f8ad8c319094ccdd4750d19fa53fd670026e75a03b59635ef816330cd59`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3af94f4399f7acd215404ad0858d0992572d4bee0f86ff3de9915b4b847cf4`  
		Last Modified: Fri, 09 Jun 2017 18:58:27 GMT  
		Size: 1.3 MB (1338403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1568210dc6b0d397367df669167ca4e712f218df4a8070b9c16825c6c068ab72`  
		Last Modified: Fri, 09 Jun 2017 18:58:41 GMT  
		Size: 39.6 MB (39606125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8aac9ee113089487ff442b922d336900ea1cdb93217e4c4e7fba365017bad`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4f082c9fcd8c5a3a1d3a0c86a53d73fb9566de6b9400308dd1c837907fc1a`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10.0.5`

```console
$ docker pull nextcloud@sha256:93e3715f8f9cd7f11fe21f20d65885e73cd21bbb6f6b104eb4a5b855fb774445
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10.0.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238176368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2355c2bb38368b24d298630cb6248b2fd4dea89adba0eb268460dc381464c46f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:20:23 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:20:24 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:20:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:20:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:21:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:21:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:10 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 09 Jun 2017 15:26:13 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Jun 2017 15:26:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:38 GMT
WORKDIR /var/www/html
# Fri, 09 Jun 2017 15:26:39 GMT
EXPOSE 80/tcp
# Fri, 09 Jun 2017 15:26:40 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:42:09 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:43:54 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:43:55 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:43:57 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:44:23 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:44:25 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:44:26 GMT
ENV NEXTCLOUD_VERSION=10.0.5
# Fri, 09 Jun 2017 18:44:26 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:44:40 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:44:42 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:44:43 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:44:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:44:45 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b692e57dd378e12ed64795750adaf512987b8829af9bee479518dc09d83a4`  
		Last Modified: Fri, 09 Jun 2017 16:03:52 GMT  
		Size: 12.6 MB (12576817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f393a2429aaf4dc105a6fead7aa3a3e829bde6262a451fc28c5f32c456eaa5`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3eb4c13a16074aea1c0e031d218badcfa79d830e977c2f387ff5d7255c7fa55`  
		Last Modified: Fri, 09 Jun 2017 16:03:53 GMT  
		Size: 9.2 MB (9173931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6fa63e71a134861015c634153da0cf128aacd44ce84918a799463965d735891`  
		Last Modified: Fri, 09 Jun 2017 16:03:51 GMT  
		Size: 2.1 KB (2127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561abb46edf50002eb8d5ca120c3ed717d1d7e7f17ce5ca13e69afe0ab16bd4b`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f2e158f999c3d8cb0997921ffd4d66e467adfc0c2d7dc3894342ca1348821`  
		Last Modified: Fri, 09 Jun 2017 18:58:39 GMT  
		Size: 35.9 MB (35886888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50c060386bbbe30de134217b77ec4d6da2c20538a162a1892103c8620a04d93`  
		Last Modified: Fri, 09 Jun 2017 18:58:29 GMT  
		Size: 1.7 MB (1740534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fa4722bc66c0203f74dfc5d2db592f93bd5ab713bffcc548abc4856e15af75`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820e1f8ad8c319094ccdd4750d19fa53fd670026e75a03b59635ef816330cd59`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3af94f4399f7acd215404ad0858d0992572d4bee0f86ff3de9915b4b847cf4`  
		Last Modified: Fri, 09 Jun 2017 18:58:27 GMT  
		Size: 1.3 MB (1338403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1568210dc6b0d397367df669167ca4e712f218df4a8070b9c16825c6c068ab72`  
		Last Modified: Fri, 09 Jun 2017 18:58:41 GMT  
		Size: 39.6 MB (39606125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8aac9ee113089487ff442b922d336900ea1cdb93217e4c4e7fba365017bad`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4f082c9fcd8c5a3a1d3a0c86a53d73fb9566de6b9400308dd1c837907fc1a`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10.0`

```console
$ docker pull nextcloud@sha256:93e3715f8f9cd7f11fe21f20d65885e73cd21bbb6f6b104eb4a5b855fb774445
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238176368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2355c2bb38368b24d298630cb6248b2fd4dea89adba0eb268460dc381464c46f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:20:23 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:20:24 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:20:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:20:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:21:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:21:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:10 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 09 Jun 2017 15:26:13 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Jun 2017 15:26:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:38 GMT
WORKDIR /var/www/html
# Fri, 09 Jun 2017 15:26:39 GMT
EXPOSE 80/tcp
# Fri, 09 Jun 2017 15:26:40 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:42:09 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:43:54 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:43:55 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:43:57 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:44:23 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:44:25 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:44:26 GMT
ENV NEXTCLOUD_VERSION=10.0.5
# Fri, 09 Jun 2017 18:44:26 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:44:40 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:44:42 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:44:43 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:44:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:44:45 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b692e57dd378e12ed64795750adaf512987b8829af9bee479518dc09d83a4`  
		Last Modified: Fri, 09 Jun 2017 16:03:52 GMT  
		Size: 12.6 MB (12576817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f393a2429aaf4dc105a6fead7aa3a3e829bde6262a451fc28c5f32c456eaa5`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3eb4c13a16074aea1c0e031d218badcfa79d830e977c2f387ff5d7255c7fa55`  
		Last Modified: Fri, 09 Jun 2017 16:03:53 GMT  
		Size: 9.2 MB (9173931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6fa63e71a134861015c634153da0cf128aacd44ce84918a799463965d735891`  
		Last Modified: Fri, 09 Jun 2017 16:03:51 GMT  
		Size: 2.1 KB (2127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561abb46edf50002eb8d5ca120c3ed717d1d7e7f17ce5ca13e69afe0ab16bd4b`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f2e158f999c3d8cb0997921ffd4d66e467adfc0c2d7dc3894342ca1348821`  
		Last Modified: Fri, 09 Jun 2017 18:58:39 GMT  
		Size: 35.9 MB (35886888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50c060386bbbe30de134217b77ec4d6da2c20538a162a1892103c8620a04d93`  
		Last Modified: Fri, 09 Jun 2017 18:58:29 GMT  
		Size: 1.7 MB (1740534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fa4722bc66c0203f74dfc5d2db592f93bd5ab713bffcc548abc4856e15af75`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820e1f8ad8c319094ccdd4750d19fa53fd670026e75a03b59635ef816330cd59`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3af94f4399f7acd215404ad0858d0992572d4bee0f86ff3de9915b4b847cf4`  
		Last Modified: Fri, 09 Jun 2017 18:58:27 GMT  
		Size: 1.3 MB (1338403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1568210dc6b0d397367df669167ca4e712f218df4a8070b9c16825c6c068ab72`  
		Last Modified: Fri, 09 Jun 2017 18:58:41 GMT  
		Size: 39.6 MB (39606125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8aac9ee113089487ff442b922d336900ea1cdb93217e4c4e7fba365017bad`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4f082c9fcd8c5a3a1d3a0c86a53d73fb9566de6b9400308dd1c837907fc1a`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10`

```console
$ docker pull nextcloud@sha256:93e3715f8f9cd7f11fe21f20d65885e73cd21bbb6f6b104eb4a5b855fb774445
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238176368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2355c2bb38368b24d298630cb6248b2fd4dea89adba0eb268460dc381464c46f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:20:23 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:20:24 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:20:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:20:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:21:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:21:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:10 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 09 Jun 2017 15:26:13 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Jun 2017 15:26:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:38 GMT
WORKDIR /var/www/html
# Fri, 09 Jun 2017 15:26:39 GMT
EXPOSE 80/tcp
# Fri, 09 Jun 2017 15:26:40 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:42:09 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:43:54 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:43:55 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:43:57 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:44:23 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:44:25 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:44:26 GMT
ENV NEXTCLOUD_VERSION=10.0.5
# Fri, 09 Jun 2017 18:44:26 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:44:40 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:44:42 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:44:43 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:44:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:44:45 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b692e57dd378e12ed64795750adaf512987b8829af9bee479518dc09d83a4`  
		Last Modified: Fri, 09 Jun 2017 16:03:52 GMT  
		Size: 12.6 MB (12576817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f393a2429aaf4dc105a6fead7aa3a3e829bde6262a451fc28c5f32c456eaa5`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3eb4c13a16074aea1c0e031d218badcfa79d830e977c2f387ff5d7255c7fa55`  
		Last Modified: Fri, 09 Jun 2017 16:03:53 GMT  
		Size: 9.2 MB (9173931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6fa63e71a134861015c634153da0cf128aacd44ce84918a799463965d735891`  
		Last Modified: Fri, 09 Jun 2017 16:03:51 GMT  
		Size: 2.1 KB (2127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561abb46edf50002eb8d5ca120c3ed717d1d7e7f17ce5ca13e69afe0ab16bd4b`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f2e158f999c3d8cb0997921ffd4d66e467adfc0c2d7dc3894342ca1348821`  
		Last Modified: Fri, 09 Jun 2017 18:58:39 GMT  
		Size: 35.9 MB (35886888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50c060386bbbe30de134217b77ec4d6da2c20538a162a1892103c8620a04d93`  
		Last Modified: Fri, 09 Jun 2017 18:58:29 GMT  
		Size: 1.7 MB (1740534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fa4722bc66c0203f74dfc5d2db592f93bd5ab713bffcc548abc4856e15af75`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820e1f8ad8c319094ccdd4750d19fa53fd670026e75a03b59635ef816330cd59`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3af94f4399f7acd215404ad0858d0992572d4bee0f86ff3de9915b4b847cf4`  
		Last Modified: Fri, 09 Jun 2017 18:58:27 GMT  
		Size: 1.3 MB (1338403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1568210dc6b0d397367df669167ca4e712f218df4a8070b9c16825c6c068ab72`  
		Last Modified: Fri, 09 Jun 2017 18:58:41 GMT  
		Size: 39.6 MB (39606125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8aac9ee113089487ff442b922d336900ea1cdb93217e4c4e7fba365017bad`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4f082c9fcd8c5a3a1d3a0c86a53d73fb9566de6b9400308dd1c837907fc1a`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10.0.5-fpm`

```console
$ docker pull nextcloud@sha256:e5fb694e979e4d445331a0f17712b08adf9f021b0c728d74d380597a6b0e9311
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10.0.5-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.8 MB (234808715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:913e36346a4df89f93a91c982b5cd0927485519c9e2fca3819d20c43f9b3157f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 23:00:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 08 Jun 2017 23:00:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:27:45 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:27:46 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:27:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:27:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:28:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:28:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:33:55 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 09 Jun 2017 15:33:58 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:33:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Jun 2017 15:34:00 GMT
WORKDIR /var/www/html
# Fri, 09 Jun 2017 15:34:02 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 09 Jun 2017 15:34:02 GMT
EXPOSE 9000/tcp
# Fri, 09 Jun 2017 15:34:03 GMT
CMD ["php-fpm"]
# Fri, 09 Jun 2017 18:45:23 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:47:07 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:47:09 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:47:34 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:47:35 GMT
ENV NEXTCLOUD_VERSION=10.0.5
# Fri, 09 Jun 2017 18:47:36 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:47:50 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:47:51 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:47:53 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:47:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:47:54 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea53502a7b9aca8f75ca6614e8e36aaa6c91ec32e1177a14229913e4edcad43`  
		Last Modified: Fri, 09 Jun 2017 16:05:13 GMT  
		Size: 12.6 MB (12559561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1043355cdd71d7c0e8c10129c0ed3cbe4fdfd2df91db58ca82b38234527ce3`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c09a911fcbbcfbd80f0988de820bce3cf61e3eb9839d444463dfc256dff5553`  
		Last Modified: Fri, 09 Jun 2017 16:05:13 GMT  
		Size: 8.6 MB (8623496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e033dc7bbf6c5cf119144d6d702bf3c86865ee8171bb380294e3e1e7a8d82c8`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 2.1 KB (2119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ff2afd9b58bfbce171d626ccbb26d6925275ae9c73293e9f6c555892d0e91`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac214bd3ded27b96cd080ccf0c8f4f422b4a2335e817bfef81f3cca6e5c42533`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 7.6 KB (7608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14a196b6db591e3c448fccbe14b9dc6039281a5c3ce1a69cb70e0e4eb7c5db2`  
		Last Modified: Fri, 09 Jun 2017 19:01:28 GMT  
		Size: 35.9 MB (35866482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a77554477fe22cf3a7fd3605700a8a23d690ada6417582ca64356d08d9d79a1`  
		Last Modified: Fri, 09 Jun 2017 19:01:17 GMT  
		Size: 1.7 MB (1740748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7336282e14980523572d57a1efe79c51fe78103d5d4e6bd6c7ad4fdd16eed1`  
		Last Modified: Fri, 09 Jun 2017 19:01:16 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a611fa77213fbacf10cc509609e2749e0dda4fb5e7093d4ebb5ae7a6f95aef`  
		Last Modified: Fri, 09 Jun 2017 19:01:17 GMT  
		Size: 1.3 MB (1338376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e671c0fbdbc0e56c66647a85c472eb28460353534296d1e7c5b3a6fa4ee5ec61`  
		Last Modified: Fri, 09 Jun 2017 19:01:30 GMT  
		Size: 39.6 MB (39606125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6751d9eaa5348ba0f1d5fbca3d5a4eb67402cea9507568f641c1dbe1d48186ed`  
		Last Modified: Fri, 09 Jun 2017 19:01:16 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3c8ec6f73d0334c82844d7e4bfba87b44b2a2383ccaae9a10514676cebb933e`  
		Last Modified: Fri, 09 Jun 2017 19:01:16 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10.0-fpm`

```console
$ docker pull nextcloud@sha256:e5fb694e979e4d445331a0f17712b08adf9f021b0c728d74d380597a6b0e9311
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10.0-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.8 MB (234808715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:913e36346a4df89f93a91c982b5cd0927485519c9e2fca3819d20c43f9b3157f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 23:00:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 08 Jun 2017 23:00:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:27:45 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:27:46 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:27:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:27:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:28:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:28:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:33:55 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 09 Jun 2017 15:33:58 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:33:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Jun 2017 15:34:00 GMT
WORKDIR /var/www/html
# Fri, 09 Jun 2017 15:34:02 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 09 Jun 2017 15:34:02 GMT
EXPOSE 9000/tcp
# Fri, 09 Jun 2017 15:34:03 GMT
CMD ["php-fpm"]
# Fri, 09 Jun 2017 18:45:23 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:47:07 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:47:09 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:47:34 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:47:35 GMT
ENV NEXTCLOUD_VERSION=10.0.5
# Fri, 09 Jun 2017 18:47:36 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:47:50 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:47:51 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:47:53 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:47:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:47:54 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea53502a7b9aca8f75ca6614e8e36aaa6c91ec32e1177a14229913e4edcad43`  
		Last Modified: Fri, 09 Jun 2017 16:05:13 GMT  
		Size: 12.6 MB (12559561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1043355cdd71d7c0e8c10129c0ed3cbe4fdfd2df91db58ca82b38234527ce3`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c09a911fcbbcfbd80f0988de820bce3cf61e3eb9839d444463dfc256dff5553`  
		Last Modified: Fri, 09 Jun 2017 16:05:13 GMT  
		Size: 8.6 MB (8623496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e033dc7bbf6c5cf119144d6d702bf3c86865ee8171bb380294e3e1e7a8d82c8`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 2.1 KB (2119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ff2afd9b58bfbce171d626ccbb26d6925275ae9c73293e9f6c555892d0e91`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac214bd3ded27b96cd080ccf0c8f4f422b4a2335e817bfef81f3cca6e5c42533`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 7.6 KB (7608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14a196b6db591e3c448fccbe14b9dc6039281a5c3ce1a69cb70e0e4eb7c5db2`  
		Last Modified: Fri, 09 Jun 2017 19:01:28 GMT  
		Size: 35.9 MB (35866482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a77554477fe22cf3a7fd3605700a8a23d690ada6417582ca64356d08d9d79a1`  
		Last Modified: Fri, 09 Jun 2017 19:01:17 GMT  
		Size: 1.7 MB (1740748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7336282e14980523572d57a1efe79c51fe78103d5d4e6bd6c7ad4fdd16eed1`  
		Last Modified: Fri, 09 Jun 2017 19:01:16 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a611fa77213fbacf10cc509609e2749e0dda4fb5e7093d4ebb5ae7a6f95aef`  
		Last Modified: Fri, 09 Jun 2017 19:01:17 GMT  
		Size: 1.3 MB (1338376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e671c0fbdbc0e56c66647a85c472eb28460353534296d1e7c5b3a6fa4ee5ec61`  
		Last Modified: Fri, 09 Jun 2017 19:01:30 GMT  
		Size: 39.6 MB (39606125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6751d9eaa5348ba0f1d5fbca3d5a4eb67402cea9507568f641c1dbe1d48186ed`  
		Last Modified: Fri, 09 Jun 2017 19:01:16 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3c8ec6f73d0334c82844d7e4bfba87b44b2a2383ccaae9a10514676cebb933e`  
		Last Modified: Fri, 09 Jun 2017 19:01:16 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10-fpm`

```console
$ docker pull nextcloud@sha256:e5fb694e979e4d445331a0f17712b08adf9f021b0c728d74d380597a6b0e9311
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.8 MB (234808715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:913e36346a4df89f93a91c982b5cd0927485519c9e2fca3819d20c43f9b3157f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 23:00:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 08 Jun 2017 23:00:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:27:45 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:27:46 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:27:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:27:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:28:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:28:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:33:55 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 09 Jun 2017 15:33:58 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:33:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Jun 2017 15:34:00 GMT
WORKDIR /var/www/html
# Fri, 09 Jun 2017 15:34:02 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 09 Jun 2017 15:34:02 GMT
EXPOSE 9000/tcp
# Fri, 09 Jun 2017 15:34:03 GMT
CMD ["php-fpm"]
# Fri, 09 Jun 2017 18:45:23 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:47:07 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:47:09 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:47:34 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:47:35 GMT
ENV NEXTCLOUD_VERSION=10.0.5
# Fri, 09 Jun 2017 18:47:36 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:47:50 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:47:51 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:47:53 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:47:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:47:54 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea53502a7b9aca8f75ca6614e8e36aaa6c91ec32e1177a14229913e4edcad43`  
		Last Modified: Fri, 09 Jun 2017 16:05:13 GMT  
		Size: 12.6 MB (12559561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1043355cdd71d7c0e8c10129c0ed3cbe4fdfd2df91db58ca82b38234527ce3`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c09a911fcbbcfbd80f0988de820bce3cf61e3eb9839d444463dfc256dff5553`  
		Last Modified: Fri, 09 Jun 2017 16:05:13 GMT  
		Size: 8.6 MB (8623496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e033dc7bbf6c5cf119144d6d702bf3c86865ee8171bb380294e3e1e7a8d82c8`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 2.1 KB (2119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ff2afd9b58bfbce171d626ccbb26d6925275ae9c73293e9f6c555892d0e91`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac214bd3ded27b96cd080ccf0c8f4f422b4a2335e817bfef81f3cca6e5c42533`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 7.6 KB (7608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14a196b6db591e3c448fccbe14b9dc6039281a5c3ce1a69cb70e0e4eb7c5db2`  
		Last Modified: Fri, 09 Jun 2017 19:01:28 GMT  
		Size: 35.9 MB (35866482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a77554477fe22cf3a7fd3605700a8a23d690ada6417582ca64356d08d9d79a1`  
		Last Modified: Fri, 09 Jun 2017 19:01:17 GMT  
		Size: 1.7 MB (1740748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7336282e14980523572d57a1efe79c51fe78103d5d4e6bd6c7ad4fdd16eed1`  
		Last Modified: Fri, 09 Jun 2017 19:01:16 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a611fa77213fbacf10cc509609e2749e0dda4fb5e7093d4ebb5ae7a6f95aef`  
		Last Modified: Fri, 09 Jun 2017 19:01:17 GMT  
		Size: 1.3 MB (1338376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e671c0fbdbc0e56c66647a85c472eb28460353534296d1e7c5b3a6fa4ee5ec61`  
		Last Modified: Fri, 09 Jun 2017 19:01:30 GMT  
		Size: 39.6 MB (39606125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6751d9eaa5348ba0f1d5fbca3d5a4eb67402cea9507568f641c1dbe1d48186ed`  
		Last Modified: Fri, 09 Jun 2017 19:01:16 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3c8ec6f73d0334c82844d7e4bfba87b44b2a2383ccaae9a10514676cebb933e`  
		Last Modified: Fri, 09 Jun 2017 19:01:16 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0.3-apache`

```console
$ docker pull nextcloud@sha256:342af1ddf528d7c78d3e780fad13ea3591c8bc230d8013c69e5f4cd4e5ac8320
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0.3-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246939827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be508914f498a0e40552a11241e7ce109d24bb5a507de0300ba67b6ebe9b8a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 08 Jun 2017 22:53:12 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 08 Jun 2017 22:53:13 GMT
ENV PHP_VERSION=7.1.5
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Thu, 08 Jun 2017 22:53:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 08 Jun 2017 22:53:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:56:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 08 Jun 2017 22:59:42 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 08 Jun 2017 22:59:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:45 GMT
WORKDIR /var/www/html
# Thu, 08 Jun 2017 22:59:46 GMT
EXPOSE 80/tcp
# Thu, 08 Jun 2017 22:59:47 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:48:41 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:50:40 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:50:41 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:50:43 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:51:15 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:51:16 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:51:17 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Fri, 09 Jun 2017 18:51:17 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:51:32 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:51:34 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:51:35 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:51:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:51:36 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b816d914b8a222a0ce6a116e3667f5a0daa258bbc69fef8e374ffd0d2263347`  
		Last Modified: Fri, 09 Jun 2017 05:51:19 GMT  
		Size: 12.9 MB (12925645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d132d3206bc994878eb81bcdc980b8d21fabdb66f9ef517ee7ac115818f6e2`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e09aa92a921d6c91cc7b673476e05adc1cfcd5b3e2030b0973a1dbfe43cfec1`  
		Last Modified: Fri, 09 Jun 2017 05:51:25 GMT  
		Size: 13.5 MB (13520070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4fe1fce8f952592eed2a1a4155bc91821e0c33f4da3e54d3e3e5a78356e011`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99eafb09b5521dcf438995e32a11a38a7b8edeeefc9817e0ebd16ff1a0e97f5`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cd9d6e2fc15cb078b56ca155edd8c175c1abd5e2cd63a01834234162c05ada`  
		Last Modified: Fri, 09 Jun 2017 19:03:01 GMT  
		Size: 35.9 MB (35886835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50199521063d02456d0c23f48a6f3aab4fee92e1a4774cf08e7d23479e521ac`  
		Last Modified: Fri, 09 Jun 2017 19:02:52 GMT  
		Size: 1.9 MB (1903553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6005df2ae02cdf098c6a8f8603018efbe53eb435075ca7ea0d8c015c54e40362`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47470c1a77e3d973bca0050e5f24dded185c5bc59e7bc64e82d087972a01a87`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fed95590d1155581740e3f9340d3b0efe9d08017a03cafe9e34f65a6c97724`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 1.3 MB (1321310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe55b3bf5319d155680718e0594163e68a35d2020c2803dddb8a01b8832db2fa`  
		Last Modified: Fri, 09 Jun 2017 19:03:05 GMT  
		Size: 43.5 MB (43528750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273fcfacd00f596246dbcc5116f2e52d9bac599114729a4842e7292630fe11ef`  
		Last Modified: Fri, 09 Jun 2017 19:02:48 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faae9055cfb0c9115b9fee8a349e87f2654cdc0655285abf1c6b08675a4525a4`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0-apache`

```console
$ docker pull nextcloud@sha256:342af1ddf528d7c78d3e780fad13ea3591c8bc230d8013c69e5f4cd4e5ac8320
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246939827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be508914f498a0e40552a11241e7ce109d24bb5a507de0300ba67b6ebe9b8a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 08 Jun 2017 22:53:12 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 08 Jun 2017 22:53:13 GMT
ENV PHP_VERSION=7.1.5
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Thu, 08 Jun 2017 22:53:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 08 Jun 2017 22:53:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:56:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 08 Jun 2017 22:59:42 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 08 Jun 2017 22:59:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:45 GMT
WORKDIR /var/www/html
# Thu, 08 Jun 2017 22:59:46 GMT
EXPOSE 80/tcp
# Thu, 08 Jun 2017 22:59:47 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:48:41 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:50:40 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:50:41 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:50:43 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:51:15 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:51:16 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:51:17 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Fri, 09 Jun 2017 18:51:17 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:51:32 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:51:34 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:51:35 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:51:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:51:36 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b816d914b8a222a0ce6a116e3667f5a0daa258bbc69fef8e374ffd0d2263347`  
		Last Modified: Fri, 09 Jun 2017 05:51:19 GMT  
		Size: 12.9 MB (12925645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d132d3206bc994878eb81bcdc980b8d21fabdb66f9ef517ee7ac115818f6e2`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e09aa92a921d6c91cc7b673476e05adc1cfcd5b3e2030b0973a1dbfe43cfec1`  
		Last Modified: Fri, 09 Jun 2017 05:51:25 GMT  
		Size: 13.5 MB (13520070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4fe1fce8f952592eed2a1a4155bc91821e0c33f4da3e54d3e3e5a78356e011`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99eafb09b5521dcf438995e32a11a38a7b8edeeefc9817e0ebd16ff1a0e97f5`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cd9d6e2fc15cb078b56ca155edd8c175c1abd5e2cd63a01834234162c05ada`  
		Last Modified: Fri, 09 Jun 2017 19:03:01 GMT  
		Size: 35.9 MB (35886835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50199521063d02456d0c23f48a6f3aab4fee92e1a4774cf08e7d23479e521ac`  
		Last Modified: Fri, 09 Jun 2017 19:02:52 GMT  
		Size: 1.9 MB (1903553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6005df2ae02cdf098c6a8f8603018efbe53eb435075ca7ea0d8c015c54e40362`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47470c1a77e3d973bca0050e5f24dded185c5bc59e7bc64e82d087972a01a87`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fed95590d1155581740e3f9340d3b0efe9d08017a03cafe9e34f65a6c97724`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 1.3 MB (1321310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe55b3bf5319d155680718e0594163e68a35d2020c2803dddb8a01b8832db2fa`  
		Last Modified: Fri, 09 Jun 2017 19:03:05 GMT  
		Size: 43.5 MB (43528750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273fcfacd00f596246dbcc5116f2e52d9bac599114729a4842e7292630fe11ef`  
		Last Modified: Fri, 09 Jun 2017 19:02:48 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faae9055cfb0c9115b9fee8a349e87f2654cdc0655285abf1c6b08675a4525a4`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11-apache`

```console
$ docker pull nextcloud@sha256:342af1ddf528d7c78d3e780fad13ea3591c8bc230d8013c69e5f4cd4e5ac8320
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246939827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be508914f498a0e40552a11241e7ce109d24bb5a507de0300ba67b6ebe9b8a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 08 Jun 2017 22:53:12 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 08 Jun 2017 22:53:13 GMT
ENV PHP_VERSION=7.1.5
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Thu, 08 Jun 2017 22:53:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 08 Jun 2017 22:53:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:56:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 08 Jun 2017 22:59:42 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 08 Jun 2017 22:59:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:45 GMT
WORKDIR /var/www/html
# Thu, 08 Jun 2017 22:59:46 GMT
EXPOSE 80/tcp
# Thu, 08 Jun 2017 22:59:47 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:48:41 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:50:40 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:50:41 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:50:43 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:51:15 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:51:16 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:51:17 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Fri, 09 Jun 2017 18:51:17 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:51:32 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:51:34 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:51:35 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:51:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:51:36 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b816d914b8a222a0ce6a116e3667f5a0daa258bbc69fef8e374ffd0d2263347`  
		Last Modified: Fri, 09 Jun 2017 05:51:19 GMT  
		Size: 12.9 MB (12925645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d132d3206bc994878eb81bcdc980b8d21fabdb66f9ef517ee7ac115818f6e2`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e09aa92a921d6c91cc7b673476e05adc1cfcd5b3e2030b0973a1dbfe43cfec1`  
		Last Modified: Fri, 09 Jun 2017 05:51:25 GMT  
		Size: 13.5 MB (13520070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4fe1fce8f952592eed2a1a4155bc91821e0c33f4da3e54d3e3e5a78356e011`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99eafb09b5521dcf438995e32a11a38a7b8edeeefc9817e0ebd16ff1a0e97f5`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cd9d6e2fc15cb078b56ca155edd8c175c1abd5e2cd63a01834234162c05ada`  
		Last Modified: Fri, 09 Jun 2017 19:03:01 GMT  
		Size: 35.9 MB (35886835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50199521063d02456d0c23f48a6f3aab4fee92e1a4774cf08e7d23479e521ac`  
		Last Modified: Fri, 09 Jun 2017 19:02:52 GMT  
		Size: 1.9 MB (1903553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6005df2ae02cdf098c6a8f8603018efbe53eb435075ca7ea0d8c015c54e40362`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47470c1a77e3d973bca0050e5f24dded185c5bc59e7bc64e82d087972a01a87`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fed95590d1155581740e3f9340d3b0efe9d08017a03cafe9e34f65a6c97724`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 1.3 MB (1321310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe55b3bf5319d155680718e0594163e68a35d2020c2803dddb8a01b8832db2fa`  
		Last Modified: Fri, 09 Jun 2017 19:03:05 GMT  
		Size: 43.5 MB (43528750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273fcfacd00f596246dbcc5116f2e52d9bac599114729a4842e7292630fe11ef`  
		Last Modified: Fri, 09 Jun 2017 19:02:48 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faae9055cfb0c9115b9fee8a349e87f2654cdc0655285abf1c6b08675a4525a4`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0.3`

```console
$ docker pull nextcloud@sha256:342af1ddf528d7c78d3e780fad13ea3591c8bc230d8013c69e5f4cd4e5ac8320
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246939827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be508914f498a0e40552a11241e7ce109d24bb5a507de0300ba67b6ebe9b8a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 08 Jun 2017 22:53:12 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 08 Jun 2017 22:53:13 GMT
ENV PHP_VERSION=7.1.5
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Thu, 08 Jun 2017 22:53:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 08 Jun 2017 22:53:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:56:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 08 Jun 2017 22:59:42 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 08 Jun 2017 22:59:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:45 GMT
WORKDIR /var/www/html
# Thu, 08 Jun 2017 22:59:46 GMT
EXPOSE 80/tcp
# Thu, 08 Jun 2017 22:59:47 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:48:41 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:50:40 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:50:41 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:50:43 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:51:15 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:51:16 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:51:17 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Fri, 09 Jun 2017 18:51:17 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:51:32 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:51:34 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:51:35 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:51:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:51:36 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b816d914b8a222a0ce6a116e3667f5a0daa258bbc69fef8e374ffd0d2263347`  
		Last Modified: Fri, 09 Jun 2017 05:51:19 GMT  
		Size: 12.9 MB (12925645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d132d3206bc994878eb81bcdc980b8d21fabdb66f9ef517ee7ac115818f6e2`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e09aa92a921d6c91cc7b673476e05adc1cfcd5b3e2030b0973a1dbfe43cfec1`  
		Last Modified: Fri, 09 Jun 2017 05:51:25 GMT  
		Size: 13.5 MB (13520070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4fe1fce8f952592eed2a1a4155bc91821e0c33f4da3e54d3e3e5a78356e011`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99eafb09b5521dcf438995e32a11a38a7b8edeeefc9817e0ebd16ff1a0e97f5`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cd9d6e2fc15cb078b56ca155edd8c175c1abd5e2cd63a01834234162c05ada`  
		Last Modified: Fri, 09 Jun 2017 19:03:01 GMT  
		Size: 35.9 MB (35886835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50199521063d02456d0c23f48a6f3aab4fee92e1a4774cf08e7d23479e521ac`  
		Last Modified: Fri, 09 Jun 2017 19:02:52 GMT  
		Size: 1.9 MB (1903553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6005df2ae02cdf098c6a8f8603018efbe53eb435075ca7ea0d8c015c54e40362`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47470c1a77e3d973bca0050e5f24dded185c5bc59e7bc64e82d087972a01a87`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fed95590d1155581740e3f9340d3b0efe9d08017a03cafe9e34f65a6c97724`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 1.3 MB (1321310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe55b3bf5319d155680718e0594163e68a35d2020c2803dddb8a01b8832db2fa`  
		Last Modified: Fri, 09 Jun 2017 19:03:05 GMT  
		Size: 43.5 MB (43528750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273fcfacd00f596246dbcc5116f2e52d9bac599114729a4842e7292630fe11ef`  
		Last Modified: Fri, 09 Jun 2017 19:02:48 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faae9055cfb0c9115b9fee8a349e87f2654cdc0655285abf1c6b08675a4525a4`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0`

```console
$ docker pull nextcloud@sha256:342af1ddf528d7c78d3e780fad13ea3591c8bc230d8013c69e5f4cd4e5ac8320
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246939827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be508914f498a0e40552a11241e7ce109d24bb5a507de0300ba67b6ebe9b8a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 08 Jun 2017 22:53:12 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 08 Jun 2017 22:53:13 GMT
ENV PHP_VERSION=7.1.5
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Thu, 08 Jun 2017 22:53:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 08 Jun 2017 22:53:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:56:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 08 Jun 2017 22:59:42 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 08 Jun 2017 22:59:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:45 GMT
WORKDIR /var/www/html
# Thu, 08 Jun 2017 22:59:46 GMT
EXPOSE 80/tcp
# Thu, 08 Jun 2017 22:59:47 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:48:41 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:50:40 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:50:41 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:50:43 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:51:15 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:51:16 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:51:17 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Fri, 09 Jun 2017 18:51:17 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:51:32 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:51:34 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:51:35 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:51:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:51:36 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b816d914b8a222a0ce6a116e3667f5a0daa258bbc69fef8e374ffd0d2263347`  
		Last Modified: Fri, 09 Jun 2017 05:51:19 GMT  
		Size: 12.9 MB (12925645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d132d3206bc994878eb81bcdc980b8d21fabdb66f9ef517ee7ac115818f6e2`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e09aa92a921d6c91cc7b673476e05adc1cfcd5b3e2030b0973a1dbfe43cfec1`  
		Last Modified: Fri, 09 Jun 2017 05:51:25 GMT  
		Size: 13.5 MB (13520070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4fe1fce8f952592eed2a1a4155bc91821e0c33f4da3e54d3e3e5a78356e011`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99eafb09b5521dcf438995e32a11a38a7b8edeeefc9817e0ebd16ff1a0e97f5`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cd9d6e2fc15cb078b56ca155edd8c175c1abd5e2cd63a01834234162c05ada`  
		Last Modified: Fri, 09 Jun 2017 19:03:01 GMT  
		Size: 35.9 MB (35886835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50199521063d02456d0c23f48a6f3aab4fee92e1a4774cf08e7d23479e521ac`  
		Last Modified: Fri, 09 Jun 2017 19:02:52 GMT  
		Size: 1.9 MB (1903553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6005df2ae02cdf098c6a8f8603018efbe53eb435075ca7ea0d8c015c54e40362`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47470c1a77e3d973bca0050e5f24dded185c5bc59e7bc64e82d087972a01a87`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fed95590d1155581740e3f9340d3b0efe9d08017a03cafe9e34f65a6c97724`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 1.3 MB (1321310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe55b3bf5319d155680718e0594163e68a35d2020c2803dddb8a01b8832db2fa`  
		Last Modified: Fri, 09 Jun 2017 19:03:05 GMT  
		Size: 43.5 MB (43528750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273fcfacd00f596246dbcc5116f2e52d9bac599114729a4842e7292630fe11ef`  
		Last Modified: Fri, 09 Jun 2017 19:02:48 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faae9055cfb0c9115b9fee8a349e87f2654cdc0655285abf1c6b08675a4525a4`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11`

```console
$ docker pull nextcloud@sha256:342af1ddf528d7c78d3e780fad13ea3591c8bc230d8013c69e5f4cd4e5ac8320
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246939827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be508914f498a0e40552a11241e7ce109d24bb5a507de0300ba67b6ebe9b8a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 08 Jun 2017 22:53:12 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 08 Jun 2017 22:53:13 GMT
ENV PHP_VERSION=7.1.5
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Thu, 08 Jun 2017 22:53:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 08 Jun 2017 22:53:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:56:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 08 Jun 2017 22:59:42 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 08 Jun 2017 22:59:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:45 GMT
WORKDIR /var/www/html
# Thu, 08 Jun 2017 22:59:46 GMT
EXPOSE 80/tcp
# Thu, 08 Jun 2017 22:59:47 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:48:41 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:50:40 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:50:41 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:50:43 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:51:15 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:51:16 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:51:17 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Fri, 09 Jun 2017 18:51:17 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:51:32 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:51:34 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:51:35 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:51:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:51:36 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b816d914b8a222a0ce6a116e3667f5a0daa258bbc69fef8e374ffd0d2263347`  
		Last Modified: Fri, 09 Jun 2017 05:51:19 GMT  
		Size: 12.9 MB (12925645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d132d3206bc994878eb81bcdc980b8d21fabdb66f9ef517ee7ac115818f6e2`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e09aa92a921d6c91cc7b673476e05adc1cfcd5b3e2030b0973a1dbfe43cfec1`  
		Last Modified: Fri, 09 Jun 2017 05:51:25 GMT  
		Size: 13.5 MB (13520070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4fe1fce8f952592eed2a1a4155bc91821e0c33f4da3e54d3e3e5a78356e011`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99eafb09b5521dcf438995e32a11a38a7b8edeeefc9817e0ebd16ff1a0e97f5`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cd9d6e2fc15cb078b56ca155edd8c175c1abd5e2cd63a01834234162c05ada`  
		Last Modified: Fri, 09 Jun 2017 19:03:01 GMT  
		Size: 35.9 MB (35886835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50199521063d02456d0c23f48a6f3aab4fee92e1a4774cf08e7d23479e521ac`  
		Last Modified: Fri, 09 Jun 2017 19:02:52 GMT  
		Size: 1.9 MB (1903553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6005df2ae02cdf098c6a8f8603018efbe53eb435075ca7ea0d8c015c54e40362`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47470c1a77e3d973bca0050e5f24dded185c5bc59e7bc64e82d087972a01a87`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fed95590d1155581740e3f9340d3b0efe9d08017a03cafe9e34f65a6c97724`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 1.3 MB (1321310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe55b3bf5319d155680718e0594163e68a35d2020c2803dddb8a01b8832db2fa`  
		Last Modified: Fri, 09 Jun 2017 19:03:05 GMT  
		Size: 43.5 MB (43528750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273fcfacd00f596246dbcc5116f2e52d9bac599114729a4842e7292630fe11ef`  
		Last Modified: Fri, 09 Jun 2017 19:02:48 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faae9055cfb0c9115b9fee8a349e87f2654cdc0655285abf1c6b08675a4525a4`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0.3-fpm`

```console
$ docker pull nextcloud@sha256:595a91e0a6dbf30663ae45aaa4900736531ea3cbed96367679ec9d3dc1fb556e
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0.3-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243683331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08ebc4b8d41fab85989d7dd4401bd1ea3561df433b96a339ad5338f5c5b8d4da`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 23:00:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 08 Jun 2017 23:00:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 08 Jun 2017 23:00:57 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 08 Jun 2017 23:00:57 GMT
ENV PHP_VERSION=7.1.5
# Thu, 08 Jun 2017 23:00:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Thu, 08 Jun 2017 23:01:21 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Thu, 08 Jun 2017 23:03:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 08 Jun 2017 23:03:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 08 Jun 2017 23:09:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 08 Jun 2017 23:09:16 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Thu, 08 Jun 2017 23:09:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 08 Jun 2017 23:09:19 GMT
WORKDIR /var/www/html
# Thu, 08 Jun 2017 23:09:21 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 08 Jun 2017 23:09:23 GMT
EXPOSE 9000/tcp
# Thu, 08 Jun 2017 23:09:24 GMT
CMD ["php-fpm"]
# Fri, 09 Jun 2017 18:52:14 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:54:12 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:54:13 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:54:43 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:54:44 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Fri, 09 Jun 2017 18:54:45 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:54:59 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:55:01 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:55:02 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:55:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:55:03 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4669260bef5ff4083fa9c96b9bf6368fcd51cd80590075d7e40d48a06dd3e1d0`  
		Last Modified: Fri, 09 Jun 2017 05:59:08 GMT  
		Size: 12.9 MB (12908437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0cfc4ea049c170fcd8428c4852599cb8c8217a961835169c350e12904b2b69`  
		Last Modified: Fri, 09 Jun 2017 05:59:07 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc9fca93e827ad4aba6c278662a9135d559aa19c7124d22067043f8c9c6ecab`  
		Last Modified: Fri, 09 Jun 2017 05:59:12 GMT  
		Size: 13.1 MB (13080621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325f0d444dcf7975d032fde5c637ebe56c711cb127d85417a22cfe90fa310cd3`  
		Last Modified: Fri, 09 Jun 2017 05:59:04 GMT  
		Size: 2.1 KB (2117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4848b3b5f83851e2c1b3b2a7dada66e5bea85cee76867dcdfd60749a7ae8e1`  
		Last Modified: Fri, 09 Jun 2017 05:59:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0196b75ea169d0fddf6c4c492223cd60d57d6546f55be9be13ec18beba583703`  
		Last Modified: Fri, 09 Jun 2017 05:59:04 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6233da26d0273e9058d894808b0dbb2fa48636fad5fc633ec901d048b2ce51e`  
		Last Modified: Fri, 09 Jun 2017 19:05:54 GMT  
		Size: 35.9 MB (35866491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a069c964a0b0f46528736902de1241d09833d5fa0e7297e550e453c88069ba0`  
		Last Modified: Fri, 09 Jun 2017 19:05:41 GMT  
		Size: 1.9 MB (1903768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd85982d731105767a1bebc92e20310557e0787bfb77a93526954b037f43fb78`  
		Last Modified: Fri, 09 Jun 2017 19:05:40 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b871055054a96f75b878690bc982f82c8972f8b549adf8417ab057a1faf78dc`  
		Last Modified: Fri, 09 Jun 2017 19:05:42 GMT  
		Size: 1.3 MB (1321268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81414eec1414753e55b61e609660ab7252062b031e39b97681dfffbde417aa5e`  
		Last Modified: Fri, 09 Jun 2017 19:05:56 GMT  
		Size: 43.5 MB (43528751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0895e6c4ce7c0f2a39cb585a6e61dcbe6eb9c3aca8008e178b7d948cdab8612d`  
		Last Modified: Fri, 09 Jun 2017 19:05:41 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff1509ad393f18bf7bef5de23994add4b7351fc5d32583fb6a11014b1dfb271`  
		Last Modified: Fri, 09 Jun 2017 19:05:40 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0-fpm`

```console
$ docker pull nextcloud@sha256:595a91e0a6dbf30663ae45aaa4900736531ea3cbed96367679ec9d3dc1fb556e
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243683331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08ebc4b8d41fab85989d7dd4401bd1ea3561df433b96a339ad5338f5c5b8d4da`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 23:00:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 08 Jun 2017 23:00:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 08 Jun 2017 23:00:57 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 08 Jun 2017 23:00:57 GMT
ENV PHP_VERSION=7.1.5
# Thu, 08 Jun 2017 23:00:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Thu, 08 Jun 2017 23:01:21 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Thu, 08 Jun 2017 23:03:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 08 Jun 2017 23:03:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 08 Jun 2017 23:09:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 08 Jun 2017 23:09:16 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Thu, 08 Jun 2017 23:09:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 08 Jun 2017 23:09:19 GMT
WORKDIR /var/www/html
# Thu, 08 Jun 2017 23:09:21 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 08 Jun 2017 23:09:23 GMT
EXPOSE 9000/tcp
# Thu, 08 Jun 2017 23:09:24 GMT
CMD ["php-fpm"]
# Fri, 09 Jun 2017 18:52:14 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:54:12 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:54:13 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:54:43 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:54:44 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Fri, 09 Jun 2017 18:54:45 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:54:59 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:55:01 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:55:02 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:55:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:55:03 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4669260bef5ff4083fa9c96b9bf6368fcd51cd80590075d7e40d48a06dd3e1d0`  
		Last Modified: Fri, 09 Jun 2017 05:59:08 GMT  
		Size: 12.9 MB (12908437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0cfc4ea049c170fcd8428c4852599cb8c8217a961835169c350e12904b2b69`  
		Last Modified: Fri, 09 Jun 2017 05:59:07 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc9fca93e827ad4aba6c278662a9135d559aa19c7124d22067043f8c9c6ecab`  
		Last Modified: Fri, 09 Jun 2017 05:59:12 GMT  
		Size: 13.1 MB (13080621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325f0d444dcf7975d032fde5c637ebe56c711cb127d85417a22cfe90fa310cd3`  
		Last Modified: Fri, 09 Jun 2017 05:59:04 GMT  
		Size: 2.1 KB (2117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4848b3b5f83851e2c1b3b2a7dada66e5bea85cee76867dcdfd60749a7ae8e1`  
		Last Modified: Fri, 09 Jun 2017 05:59:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0196b75ea169d0fddf6c4c492223cd60d57d6546f55be9be13ec18beba583703`  
		Last Modified: Fri, 09 Jun 2017 05:59:04 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6233da26d0273e9058d894808b0dbb2fa48636fad5fc633ec901d048b2ce51e`  
		Last Modified: Fri, 09 Jun 2017 19:05:54 GMT  
		Size: 35.9 MB (35866491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a069c964a0b0f46528736902de1241d09833d5fa0e7297e550e453c88069ba0`  
		Last Modified: Fri, 09 Jun 2017 19:05:41 GMT  
		Size: 1.9 MB (1903768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd85982d731105767a1bebc92e20310557e0787bfb77a93526954b037f43fb78`  
		Last Modified: Fri, 09 Jun 2017 19:05:40 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b871055054a96f75b878690bc982f82c8972f8b549adf8417ab057a1faf78dc`  
		Last Modified: Fri, 09 Jun 2017 19:05:42 GMT  
		Size: 1.3 MB (1321268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81414eec1414753e55b61e609660ab7252062b031e39b97681dfffbde417aa5e`  
		Last Modified: Fri, 09 Jun 2017 19:05:56 GMT  
		Size: 43.5 MB (43528751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0895e6c4ce7c0f2a39cb585a6e61dcbe6eb9c3aca8008e178b7d948cdab8612d`  
		Last Modified: Fri, 09 Jun 2017 19:05:41 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff1509ad393f18bf7bef5de23994add4b7351fc5d32583fb6a11014b1dfb271`  
		Last Modified: Fri, 09 Jun 2017 19:05:40 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11-fpm`

```console
$ docker pull nextcloud@sha256:595a91e0a6dbf30663ae45aaa4900736531ea3cbed96367679ec9d3dc1fb556e
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243683331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08ebc4b8d41fab85989d7dd4401bd1ea3561df433b96a339ad5338f5c5b8d4da`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 23:00:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 08 Jun 2017 23:00:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 08 Jun 2017 23:00:57 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 08 Jun 2017 23:00:57 GMT
ENV PHP_VERSION=7.1.5
# Thu, 08 Jun 2017 23:00:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Thu, 08 Jun 2017 23:01:21 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Thu, 08 Jun 2017 23:03:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 08 Jun 2017 23:03:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 08 Jun 2017 23:09:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 08 Jun 2017 23:09:16 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Thu, 08 Jun 2017 23:09:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 08 Jun 2017 23:09:19 GMT
WORKDIR /var/www/html
# Thu, 08 Jun 2017 23:09:21 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 08 Jun 2017 23:09:23 GMT
EXPOSE 9000/tcp
# Thu, 08 Jun 2017 23:09:24 GMT
CMD ["php-fpm"]
# Fri, 09 Jun 2017 18:52:14 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:54:12 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:54:13 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:54:43 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:54:44 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Fri, 09 Jun 2017 18:54:45 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:54:59 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:55:01 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:55:02 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:55:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:55:03 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4669260bef5ff4083fa9c96b9bf6368fcd51cd80590075d7e40d48a06dd3e1d0`  
		Last Modified: Fri, 09 Jun 2017 05:59:08 GMT  
		Size: 12.9 MB (12908437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0cfc4ea049c170fcd8428c4852599cb8c8217a961835169c350e12904b2b69`  
		Last Modified: Fri, 09 Jun 2017 05:59:07 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc9fca93e827ad4aba6c278662a9135d559aa19c7124d22067043f8c9c6ecab`  
		Last Modified: Fri, 09 Jun 2017 05:59:12 GMT  
		Size: 13.1 MB (13080621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325f0d444dcf7975d032fde5c637ebe56c711cb127d85417a22cfe90fa310cd3`  
		Last Modified: Fri, 09 Jun 2017 05:59:04 GMT  
		Size: 2.1 KB (2117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4848b3b5f83851e2c1b3b2a7dada66e5bea85cee76867dcdfd60749a7ae8e1`  
		Last Modified: Fri, 09 Jun 2017 05:59:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0196b75ea169d0fddf6c4c492223cd60d57d6546f55be9be13ec18beba583703`  
		Last Modified: Fri, 09 Jun 2017 05:59:04 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6233da26d0273e9058d894808b0dbb2fa48636fad5fc633ec901d048b2ce51e`  
		Last Modified: Fri, 09 Jun 2017 19:05:54 GMT  
		Size: 35.9 MB (35866491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a069c964a0b0f46528736902de1241d09833d5fa0e7297e550e453c88069ba0`  
		Last Modified: Fri, 09 Jun 2017 19:05:41 GMT  
		Size: 1.9 MB (1903768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd85982d731105767a1bebc92e20310557e0787bfb77a93526954b037f43fb78`  
		Last Modified: Fri, 09 Jun 2017 19:05:40 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b871055054a96f75b878690bc982f82c8972f8b549adf8417ab057a1faf78dc`  
		Last Modified: Fri, 09 Jun 2017 19:05:42 GMT  
		Size: 1.3 MB (1321268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81414eec1414753e55b61e609660ab7252062b031e39b97681dfffbde417aa5e`  
		Last Modified: Fri, 09 Jun 2017 19:05:56 GMT  
		Size: 43.5 MB (43528751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0895e6c4ce7c0f2a39cb585a6e61dcbe6eb9c3aca8008e178b7d948cdab8612d`  
		Last Modified: Fri, 09 Jun 2017 19:05:41 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff1509ad393f18bf7bef5de23994add4b7351fc5d32583fb6a11014b1dfb271`  
		Last Modified: Fri, 09 Jun 2017 19:05:40 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0.0-apache`

```console
$ docker pull nextcloud@sha256:0c421e2d3fd1a9ed078ede0019e9375f4f039fc7c6b0f2c6defa07e12e5758ae
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0.0-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.2 MB (249165080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5020813b5d2486f2ffe81c06e0a6250b8f1ea3b76bec06d74432a43552712fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 08 Jun 2017 22:53:12 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 08 Jun 2017 22:53:13 GMT
ENV PHP_VERSION=7.1.5
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Thu, 08 Jun 2017 22:53:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 08 Jun 2017 22:53:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:56:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 08 Jun 2017 22:59:42 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 08 Jun 2017 22:59:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:45 GMT
WORKDIR /var/www/html
# Thu, 08 Jun 2017 22:59:46 GMT
EXPOSE 80/tcp
# Thu, 08 Jun 2017 22:59:47 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:48:41 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:50:40 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:50:41 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:50:43 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:51:15 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:51:16 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:55:27 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Fri, 09 Jun 2017 18:55:28 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:55:42 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:55:43 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:55:45 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:55:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:55:46 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b816d914b8a222a0ce6a116e3667f5a0daa258bbc69fef8e374ffd0d2263347`  
		Last Modified: Fri, 09 Jun 2017 05:51:19 GMT  
		Size: 12.9 MB (12925645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d132d3206bc994878eb81bcdc980b8d21fabdb66f9ef517ee7ac115818f6e2`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e09aa92a921d6c91cc7b673476e05adc1cfcd5b3e2030b0973a1dbfe43cfec1`  
		Last Modified: Fri, 09 Jun 2017 05:51:25 GMT  
		Size: 13.5 MB (13520070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4fe1fce8f952592eed2a1a4155bc91821e0c33f4da3e54d3e3e5a78356e011`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99eafb09b5521dcf438995e32a11a38a7b8edeeefc9817e0ebd16ff1a0e97f5`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cd9d6e2fc15cb078b56ca155edd8c175c1abd5e2cd63a01834234162c05ada`  
		Last Modified: Fri, 09 Jun 2017 19:03:01 GMT  
		Size: 35.9 MB (35886835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50199521063d02456d0c23f48a6f3aab4fee92e1a4774cf08e7d23479e521ac`  
		Last Modified: Fri, 09 Jun 2017 19:02:52 GMT  
		Size: 1.9 MB (1903553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6005df2ae02cdf098c6a8f8603018efbe53eb435075ca7ea0d8c015c54e40362`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47470c1a77e3d973bca0050e5f24dded185c5bc59e7bc64e82d087972a01a87`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fed95590d1155581740e3f9340d3b0efe9d08017a03cafe9e34f65a6c97724`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 1.3 MB (1321310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab40c25e882874dc56b4652e9008abddcf899bba324c86b38fe7708b20fc5797`  
		Last Modified: Fri, 09 Jun 2017 19:07:30 GMT  
		Size: 45.8 MB (45754005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a032852d41d166e8d32d198486a3d75aa4fcbd5d0d7548d436b5b338d30f2ed`  
		Last Modified: Fri, 09 Jun 2017 19:07:15 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea994f68614da1220a5cd077cfd06f96970f2d096782adc41966068ac441fc9`  
		Last Modified: Fri, 09 Jun 2017 19:07:14 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0-apache`

```console
$ docker pull nextcloud@sha256:0c421e2d3fd1a9ed078ede0019e9375f4f039fc7c6b0f2c6defa07e12e5758ae
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.2 MB (249165080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5020813b5d2486f2ffe81c06e0a6250b8f1ea3b76bec06d74432a43552712fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 08 Jun 2017 22:53:12 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 08 Jun 2017 22:53:13 GMT
ENV PHP_VERSION=7.1.5
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Thu, 08 Jun 2017 22:53:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 08 Jun 2017 22:53:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:56:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 08 Jun 2017 22:59:42 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 08 Jun 2017 22:59:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:45 GMT
WORKDIR /var/www/html
# Thu, 08 Jun 2017 22:59:46 GMT
EXPOSE 80/tcp
# Thu, 08 Jun 2017 22:59:47 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:48:41 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:50:40 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:50:41 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:50:43 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:51:15 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:51:16 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:55:27 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Fri, 09 Jun 2017 18:55:28 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:55:42 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:55:43 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:55:45 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:55:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:55:46 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b816d914b8a222a0ce6a116e3667f5a0daa258bbc69fef8e374ffd0d2263347`  
		Last Modified: Fri, 09 Jun 2017 05:51:19 GMT  
		Size: 12.9 MB (12925645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d132d3206bc994878eb81bcdc980b8d21fabdb66f9ef517ee7ac115818f6e2`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e09aa92a921d6c91cc7b673476e05adc1cfcd5b3e2030b0973a1dbfe43cfec1`  
		Last Modified: Fri, 09 Jun 2017 05:51:25 GMT  
		Size: 13.5 MB (13520070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4fe1fce8f952592eed2a1a4155bc91821e0c33f4da3e54d3e3e5a78356e011`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99eafb09b5521dcf438995e32a11a38a7b8edeeefc9817e0ebd16ff1a0e97f5`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cd9d6e2fc15cb078b56ca155edd8c175c1abd5e2cd63a01834234162c05ada`  
		Last Modified: Fri, 09 Jun 2017 19:03:01 GMT  
		Size: 35.9 MB (35886835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50199521063d02456d0c23f48a6f3aab4fee92e1a4774cf08e7d23479e521ac`  
		Last Modified: Fri, 09 Jun 2017 19:02:52 GMT  
		Size: 1.9 MB (1903553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6005df2ae02cdf098c6a8f8603018efbe53eb435075ca7ea0d8c015c54e40362`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47470c1a77e3d973bca0050e5f24dded185c5bc59e7bc64e82d087972a01a87`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fed95590d1155581740e3f9340d3b0efe9d08017a03cafe9e34f65a6c97724`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 1.3 MB (1321310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab40c25e882874dc56b4652e9008abddcf899bba324c86b38fe7708b20fc5797`  
		Last Modified: Fri, 09 Jun 2017 19:07:30 GMT  
		Size: 45.8 MB (45754005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a032852d41d166e8d32d198486a3d75aa4fcbd5d0d7548d436b5b338d30f2ed`  
		Last Modified: Fri, 09 Jun 2017 19:07:15 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea994f68614da1220a5cd077cfd06f96970f2d096782adc41966068ac441fc9`  
		Last Modified: Fri, 09 Jun 2017 19:07:14 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12-apache`

```console
$ docker pull nextcloud@sha256:0c421e2d3fd1a9ed078ede0019e9375f4f039fc7c6b0f2c6defa07e12e5758ae
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.2 MB (249165080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5020813b5d2486f2ffe81c06e0a6250b8f1ea3b76bec06d74432a43552712fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 08 Jun 2017 22:53:12 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 08 Jun 2017 22:53:13 GMT
ENV PHP_VERSION=7.1.5
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Thu, 08 Jun 2017 22:53:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 08 Jun 2017 22:53:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:56:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 08 Jun 2017 22:59:42 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 08 Jun 2017 22:59:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:45 GMT
WORKDIR /var/www/html
# Thu, 08 Jun 2017 22:59:46 GMT
EXPOSE 80/tcp
# Thu, 08 Jun 2017 22:59:47 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:48:41 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:50:40 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:50:41 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:50:43 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:51:15 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:51:16 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:55:27 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Fri, 09 Jun 2017 18:55:28 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:55:42 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:55:43 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:55:45 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:55:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:55:46 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b816d914b8a222a0ce6a116e3667f5a0daa258bbc69fef8e374ffd0d2263347`  
		Last Modified: Fri, 09 Jun 2017 05:51:19 GMT  
		Size: 12.9 MB (12925645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d132d3206bc994878eb81bcdc980b8d21fabdb66f9ef517ee7ac115818f6e2`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e09aa92a921d6c91cc7b673476e05adc1cfcd5b3e2030b0973a1dbfe43cfec1`  
		Last Modified: Fri, 09 Jun 2017 05:51:25 GMT  
		Size: 13.5 MB (13520070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4fe1fce8f952592eed2a1a4155bc91821e0c33f4da3e54d3e3e5a78356e011`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99eafb09b5521dcf438995e32a11a38a7b8edeeefc9817e0ebd16ff1a0e97f5`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cd9d6e2fc15cb078b56ca155edd8c175c1abd5e2cd63a01834234162c05ada`  
		Last Modified: Fri, 09 Jun 2017 19:03:01 GMT  
		Size: 35.9 MB (35886835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50199521063d02456d0c23f48a6f3aab4fee92e1a4774cf08e7d23479e521ac`  
		Last Modified: Fri, 09 Jun 2017 19:02:52 GMT  
		Size: 1.9 MB (1903553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6005df2ae02cdf098c6a8f8603018efbe53eb435075ca7ea0d8c015c54e40362`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47470c1a77e3d973bca0050e5f24dded185c5bc59e7bc64e82d087972a01a87`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fed95590d1155581740e3f9340d3b0efe9d08017a03cafe9e34f65a6c97724`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 1.3 MB (1321310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab40c25e882874dc56b4652e9008abddcf899bba324c86b38fe7708b20fc5797`  
		Last Modified: Fri, 09 Jun 2017 19:07:30 GMT  
		Size: 45.8 MB (45754005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a032852d41d166e8d32d198486a3d75aa4fcbd5d0d7548d436b5b338d30f2ed`  
		Last Modified: Fri, 09 Jun 2017 19:07:15 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea994f68614da1220a5cd077cfd06f96970f2d096782adc41966068ac441fc9`  
		Last Modified: Fri, 09 Jun 2017 19:07:14 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:apache`

```console
$ docker pull nextcloud@sha256:0c421e2d3fd1a9ed078ede0019e9375f4f039fc7c6b0f2c6defa07e12e5758ae
```

-	Platforms:
	-	linux; amd64

### `nextcloud:apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.2 MB (249165080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5020813b5d2486f2ffe81c06e0a6250b8f1ea3b76bec06d74432a43552712fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 08 Jun 2017 22:53:12 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 08 Jun 2017 22:53:13 GMT
ENV PHP_VERSION=7.1.5
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Thu, 08 Jun 2017 22:53:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 08 Jun 2017 22:53:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:56:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 08 Jun 2017 22:59:42 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 08 Jun 2017 22:59:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:45 GMT
WORKDIR /var/www/html
# Thu, 08 Jun 2017 22:59:46 GMT
EXPOSE 80/tcp
# Thu, 08 Jun 2017 22:59:47 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:48:41 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:50:40 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:50:41 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:50:43 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:51:15 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:51:16 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:55:27 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Fri, 09 Jun 2017 18:55:28 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:55:42 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:55:43 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:55:45 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:55:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:55:46 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b816d914b8a222a0ce6a116e3667f5a0daa258bbc69fef8e374ffd0d2263347`  
		Last Modified: Fri, 09 Jun 2017 05:51:19 GMT  
		Size: 12.9 MB (12925645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d132d3206bc994878eb81bcdc980b8d21fabdb66f9ef517ee7ac115818f6e2`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e09aa92a921d6c91cc7b673476e05adc1cfcd5b3e2030b0973a1dbfe43cfec1`  
		Last Modified: Fri, 09 Jun 2017 05:51:25 GMT  
		Size: 13.5 MB (13520070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4fe1fce8f952592eed2a1a4155bc91821e0c33f4da3e54d3e3e5a78356e011`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99eafb09b5521dcf438995e32a11a38a7b8edeeefc9817e0ebd16ff1a0e97f5`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cd9d6e2fc15cb078b56ca155edd8c175c1abd5e2cd63a01834234162c05ada`  
		Last Modified: Fri, 09 Jun 2017 19:03:01 GMT  
		Size: 35.9 MB (35886835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50199521063d02456d0c23f48a6f3aab4fee92e1a4774cf08e7d23479e521ac`  
		Last Modified: Fri, 09 Jun 2017 19:02:52 GMT  
		Size: 1.9 MB (1903553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6005df2ae02cdf098c6a8f8603018efbe53eb435075ca7ea0d8c015c54e40362`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47470c1a77e3d973bca0050e5f24dded185c5bc59e7bc64e82d087972a01a87`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fed95590d1155581740e3f9340d3b0efe9d08017a03cafe9e34f65a6c97724`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 1.3 MB (1321310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab40c25e882874dc56b4652e9008abddcf899bba324c86b38fe7708b20fc5797`  
		Last Modified: Fri, 09 Jun 2017 19:07:30 GMT  
		Size: 45.8 MB (45754005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a032852d41d166e8d32d198486a3d75aa4fcbd5d0d7548d436b5b338d30f2ed`  
		Last Modified: Fri, 09 Jun 2017 19:07:15 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea994f68614da1220a5cd077cfd06f96970f2d096782adc41966068ac441fc9`  
		Last Modified: Fri, 09 Jun 2017 19:07:14 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0.0`

```console
$ docker pull nextcloud@sha256:0c421e2d3fd1a9ed078ede0019e9375f4f039fc7c6b0f2c6defa07e12e5758ae
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.2 MB (249165080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5020813b5d2486f2ffe81c06e0a6250b8f1ea3b76bec06d74432a43552712fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 08 Jun 2017 22:53:12 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 08 Jun 2017 22:53:13 GMT
ENV PHP_VERSION=7.1.5
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Thu, 08 Jun 2017 22:53:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 08 Jun 2017 22:53:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:56:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 08 Jun 2017 22:59:42 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 08 Jun 2017 22:59:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:45 GMT
WORKDIR /var/www/html
# Thu, 08 Jun 2017 22:59:46 GMT
EXPOSE 80/tcp
# Thu, 08 Jun 2017 22:59:47 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:48:41 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:50:40 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:50:41 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:50:43 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:51:15 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:51:16 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:55:27 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Fri, 09 Jun 2017 18:55:28 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:55:42 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:55:43 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:55:45 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:55:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:55:46 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b816d914b8a222a0ce6a116e3667f5a0daa258bbc69fef8e374ffd0d2263347`  
		Last Modified: Fri, 09 Jun 2017 05:51:19 GMT  
		Size: 12.9 MB (12925645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d132d3206bc994878eb81bcdc980b8d21fabdb66f9ef517ee7ac115818f6e2`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e09aa92a921d6c91cc7b673476e05adc1cfcd5b3e2030b0973a1dbfe43cfec1`  
		Last Modified: Fri, 09 Jun 2017 05:51:25 GMT  
		Size: 13.5 MB (13520070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4fe1fce8f952592eed2a1a4155bc91821e0c33f4da3e54d3e3e5a78356e011`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99eafb09b5521dcf438995e32a11a38a7b8edeeefc9817e0ebd16ff1a0e97f5`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cd9d6e2fc15cb078b56ca155edd8c175c1abd5e2cd63a01834234162c05ada`  
		Last Modified: Fri, 09 Jun 2017 19:03:01 GMT  
		Size: 35.9 MB (35886835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50199521063d02456d0c23f48a6f3aab4fee92e1a4774cf08e7d23479e521ac`  
		Last Modified: Fri, 09 Jun 2017 19:02:52 GMT  
		Size: 1.9 MB (1903553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6005df2ae02cdf098c6a8f8603018efbe53eb435075ca7ea0d8c015c54e40362`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47470c1a77e3d973bca0050e5f24dded185c5bc59e7bc64e82d087972a01a87`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fed95590d1155581740e3f9340d3b0efe9d08017a03cafe9e34f65a6c97724`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 1.3 MB (1321310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab40c25e882874dc56b4652e9008abddcf899bba324c86b38fe7708b20fc5797`  
		Last Modified: Fri, 09 Jun 2017 19:07:30 GMT  
		Size: 45.8 MB (45754005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a032852d41d166e8d32d198486a3d75aa4fcbd5d0d7548d436b5b338d30f2ed`  
		Last Modified: Fri, 09 Jun 2017 19:07:15 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea994f68614da1220a5cd077cfd06f96970f2d096782adc41966068ac441fc9`  
		Last Modified: Fri, 09 Jun 2017 19:07:14 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0`

```console
$ docker pull nextcloud@sha256:0c421e2d3fd1a9ed078ede0019e9375f4f039fc7c6b0f2c6defa07e12e5758ae
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.2 MB (249165080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5020813b5d2486f2ffe81c06e0a6250b8f1ea3b76bec06d74432a43552712fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 08 Jun 2017 22:53:12 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 08 Jun 2017 22:53:13 GMT
ENV PHP_VERSION=7.1.5
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Thu, 08 Jun 2017 22:53:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 08 Jun 2017 22:53:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:56:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 08 Jun 2017 22:59:42 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 08 Jun 2017 22:59:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:45 GMT
WORKDIR /var/www/html
# Thu, 08 Jun 2017 22:59:46 GMT
EXPOSE 80/tcp
# Thu, 08 Jun 2017 22:59:47 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:48:41 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:50:40 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:50:41 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:50:43 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:51:15 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:51:16 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:55:27 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Fri, 09 Jun 2017 18:55:28 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:55:42 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:55:43 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:55:45 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:55:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:55:46 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b816d914b8a222a0ce6a116e3667f5a0daa258bbc69fef8e374ffd0d2263347`  
		Last Modified: Fri, 09 Jun 2017 05:51:19 GMT  
		Size: 12.9 MB (12925645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d132d3206bc994878eb81bcdc980b8d21fabdb66f9ef517ee7ac115818f6e2`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e09aa92a921d6c91cc7b673476e05adc1cfcd5b3e2030b0973a1dbfe43cfec1`  
		Last Modified: Fri, 09 Jun 2017 05:51:25 GMT  
		Size: 13.5 MB (13520070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4fe1fce8f952592eed2a1a4155bc91821e0c33f4da3e54d3e3e5a78356e011`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99eafb09b5521dcf438995e32a11a38a7b8edeeefc9817e0ebd16ff1a0e97f5`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cd9d6e2fc15cb078b56ca155edd8c175c1abd5e2cd63a01834234162c05ada`  
		Last Modified: Fri, 09 Jun 2017 19:03:01 GMT  
		Size: 35.9 MB (35886835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50199521063d02456d0c23f48a6f3aab4fee92e1a4774cf08e7d23479e521ac`  
		Last Modified: Fri, 09 Jun 2017 19:02:52 GMT  
		Size: 1.9 MB (1903553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6005df2ae02cdf098c6a8f8603018efbe53eb435075ca7ea0d8c015c54e40362`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47470c1a77e3d973bca0050e5f24dded185c5bc59e7bc64e82d087972a01a87`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fed95590d1155581740e3f9340d3b0efe9d08017a03cafe9e34f65a6c97724`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 1.3 MB (1321310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab40c25e882874dc56b4652e9008abddcf899bba324c86b38fe7708b20fc5797`  
		Last Modified: Fri, 09 Jun 2017 19:07:30 GMT  
		Size: 45.8 MB (45754005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a032852d41d166e8d32d198486a3d75aa4fcbd5d0d7548d436b5b338d30f2ed`  
		Last Modified: Fri, 09 Jun 2017 19:07:15 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea994f68614da1220a5cd077cfd06f96970f2d096782adc41966068ac441fc9`  
		Last Modified: Fri, 09 Jun 2017 19:07:14 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12`

```console
$ docker pull nextcloud@sha256:0c421e2d3fd1a9ed078ede0019e9375f4f039fc7c6b0f2c6defa07e12e5758ae
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.2 MB (249165080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5020813b5d2486f2ffe81c06e0a6250b8f1ea3b76bec06d74432a43552712fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 08 Jun 2017 22:53:12 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 08 Jun 2017 22:53:13 GMT
ENV PHP_VERSION=7.1.5
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Thu, 08 Jun 2017 22:53:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 08 Jun 2017 22:53:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:56:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 08 Jun 2017 22:59:42 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 08 Jun 2017 22:59:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:45 GMT
WORKDIR /var/www/html
# Thu, 08 Jun 2017 22:59:46 GMT
EXPOSE 80/tcp
# Thu, 08 Jun 2017 22:59:47 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:48:41 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:50:40 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:50:41 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:50:43 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:51:15 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:51:16 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:55:27 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Fri, 09 Jun 2017 18:55:28 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:55:42 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:55:43 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:55:45 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:55:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:55:46 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b816d914b8a222a0ce6a116e3667f5a0daa258bbc69fef8e374ffd0d2263347`  
		Last Modified: Fri, 09 Jun 2017 05:51:19 GMT  
		Size: 12.9 MB (12925645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d132d3206bc994878eb81bcdc980b8d21fabdb66f9ef517ee7ac115818f6e2`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e09aa92a921d6c91cc7b673476e05adc1cfcd5b3e2030b0973a1dbfe43cfec1`  
		Last Modified: Fri, 09 Jun 2017 05:51:25 GMT  
		Size: 13.5 MB (13520070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4fe1fce8f952592eed2a1a4155bc91821e0c33f4da3e54d3e3e5a78356e011`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99eafb09b5521dcf438995e32a11a38a7b8edeeefc9817e0ebd16ff1a0e97f5`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cd9d6e2fc15cb078b56ca155edd8c175c1abd5e2cd63a01834234162c05ada`  
		Last Modified: Fri, 09 Jun 2017 19:03:01 GMT  
		Size: 35.9 MB (35886835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50199521063d02456d0c23f48a6f3aab4fee92e1a4774cf08e7d23479e521ac`  
		Last Modified: Fri, 09 Jun 2017 19:02:52 GMT  
		Size: 1.9 MB (1903553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6005df2ae02cdf098c6a8f8603018efbe53eb435075ca7ea0d8c015c54e40362`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47470c1a77e3d973bca0050e5f24dded185c5bc59e7bc64e82d087972a01a87`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fed95590d1155581740e3f9340d3b0efe9d08017a03cafe9e34f65a6c97724`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 1.3 MB (1321310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab40c25e882874dc56b4652e9008abddcf899bba324c86b38fe7708b20fc5797`  
		Last Modified: Fri, 09 Jun 2017 19:07:30 GMT  
		Size: 45.8 MB (45754005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a032852d41d166e8d32d198486a3d75aa4fcbd5d0d7548d436b5b338d30f2ed`  
		Last Modified: Fri, 09 Jun 2017 19:07:15 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea994f68614da1220a5cd077cfd06f96970f2d096782adc41966068ac441fc9`  
		Last Modified: Fri, 09 Jun 2017 19:07:14 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:latest`

```console
$ docker pull nextcloud@sha256:0c421e2d3fd1a9ed078ede0019e9375f4f039fc7c6b0f2c6defa07e12e5758ae
```

-	Platforms:
	-	linux; amd64

### `nextcloud:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.2 MB (249165080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5020813b5d2486f2ffe81c06e0a6250b8f1ea3b76bec06d74432a43552712fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 08 Jun 2017 22:53:12 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 08 Jun 2017 22:53:13 GMT
ENV PHP_VERSION=7.1.5
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Thu, 08 Jun 2017 22:53:14 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Thu, 08 Jun 2017 22:53:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 08 Jun 2017 22:53:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:56:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 08 Jun 2017 22:59:42 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 08 Jun 2017 22:59:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:59:45 GMT
WORKDIR /var/www/html
# Thu, 08 Jun 2017 22:59:46 GMT
EXPOSE 80/tcp
# Thu, 08 Jun 2017 22:59:47 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:48:41 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:50:40 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:50:41 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:50:43 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:51:15 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:51:16 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:55:27 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Fri, 09 Jun 2017 18:55:28 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:55:42 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:55:43 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:55:45 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:55:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:55:46 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b816d914b8a222a0ce6a116e3667f5a0daa258bbc69fef8e374ffd0d2263347`  
		Last Modified: Fri, 09 Jun 2017 05:51:19 GMT  
		Size: 12.9 MB (12925645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d132d3206bc994878eb81bcdc980b8d21fabdb66f9ef517ee7ac115818f6e2`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e09aa92a921d6c91cc7b673476e05adc1cfcd5b3e2030b0973a1dbfe43cfec1`  
		Last Modified: Fri, 09 Jun 2017 05:51:25 GMT  
		Size: 13.5 MB (13520070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4fe1fce8f952592eed2a1a4155bc91821e0c33f4da3e54d3e3e5a78356e011`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99eafb09b5521dcf438995e32a11a38a7b8edeeefc9817e0ebd16ff1a0e97f5`  
		Last Modified: Fri, 09 Jun 2017 05:51:15 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cd9d6e2fc15cb078b56ca155edd8c175c1abd5e2cd63a01834234162c05ada`  
		Last Modified: Fri, 09 Jun 2017 19:03:01 GMT  
		Size: 35.9 MB (35886835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50199521063d02456d0c23f48a6f3aab4fee92e1a4774cf08e7d23479e521ac`  
		Last Modified: Fri, 09 Jun 2017 19:02:52 GMT  
		Size: 1.9 MB (1903553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6005df2ae02cdf098c6a8f8603018efbe53eb435075ca7ea0d8c015c54e40362`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47470c1a77e3d973bca0050e5f24dded185c5bc59e7bc64e82d087972a01a87`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fed95590d1155581740e3f9340d3b0efe9d08017a03cafe9e34f65a6c97724`  
		Last Modified: Fri, 09 Jun 2017 19:02:49 GMT  
		Size: 1.3 MB (1321310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab40c25e882874dc56b4652e9008abddcf899bba324c86b38fe7708b20fc5797`  
		Last Modified: Fri, 09 Jun 2017 19:07:30 GMT  
		Size: 45.8 MB (45754005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a032852d41d166e8d32d198486a3d75aa4fcbd5d0d7548d436b5b338d30f2ed`  
		Last Modified: Fri, 09 Jun 2017 19:07:15 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea994f68614da1220a5cd077cfd06f96970f2d096782adc41966068ac441fc9`  
		Last Modified: Fri, 09 Jun 2017 19:07:14 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0.0-fpm`

```console
$ docker pull nextcloud@sha256:df80c965be072ea00f2bedea6f7519860f7319755d5db68b4a86847654a91b51
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0.0-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.9 MB (245908559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67ed1c3dc8db986b4e73a36e779f752f17d086d1d71cc3713cd261f73e2c781f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 23:00:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 08 Jun 2017 23:00:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 08 Jun 2017 23:00:57 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 08 Jun 2017 23:00:57 GMT
ENV PHP_VERSION=7.1.5
# Thu, 08 Jun 2017 23:00:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Thu, 08 Jun 2017 23:01:21 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Thu, 08 Jun 2017 23:03:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 08 Jun 2017 23:03:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 08 Jun 2017 23:09:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 08 Jun 2017 23:09:16 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Thu, 08 Jun 2017 23:09:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 08 Jun 2017 23:09:19 GMT
WORKDIR /var/www/html
# Thu, 08 Jun 2017 23:09:21 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 08 Jun 2017 23:09:23 GMT
EXPOSE 9000/tcp
# Thu, 08 Jun 2017 23:09:24 GMT
CMD ["php-fpm"]
# Fri, 09 Jun 2017 18:52:14 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:54:12 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:54:13 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:54:43 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:56:10 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Fri, 09 Jun 2017 18:56:11 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:56:26 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:56:27 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:56:29 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:56:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:56:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4669260bef5ff4083fa9c96b9bf6368fcd51cd80590075d7e40d48a06dd3e1d0`  
		Last Modified: Fri, 09 Jun 2017 05:59:08 GMT  
		Size: 12.9 MB (12908437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0cfc4ea049c170fcd8428c4852599cb8c8217a961835169c350e12904b2b69`  
		Last Modified: Fri, 09 Jun 2017 05:59:07 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc9fca93e827ad4aba6c278662a9135d559aa19c7124d22067043f8c9c6ecab`  
		Last Modified: Fri, 09 Jun 2017 05:59:12 GMT  
		Size: 13.1 MB (13080621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325f0d444dcf7975d032fde5c637ebe56c711cb127d85417a22cfe90fa310cd3`  
		Last Modified: Fri, 09 Jun 2017 05:59:04 GMT  
		Size: 2.1 KB (2117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4848b3b5f83851e2c1b3b2a7dada66e5bea85cee76867dcdfd60749a7ae8e1`  
		Last Modified: Fri, 09 Jun 2017 05:59:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0196b75ea169d0fddf6c4c492223cd60d57d6546f55be9be13ec18beba583703`  
		Last Modified: Fri, 09 Jun 2017 05:59:04 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6233da26d0273e9058d894808b0dbb2fa48636fad5fc633ec901d048b2ce51e`  
		Last Modified: Fri, 09 Jun 2017 19:05:54 GMT  
		Size: 35.9 MB (35866491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a069c964a0b0f46528736902de1241d09833d5fa0e7297e550e453c88069ba0`  
		Last Modified: Fri, 09 Jun 2017 19:05:41 GMT  
		Size: 1.9 MB (1903768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd85982d731105767a1bebc92e20310557e0787bfb77a93526954b037f43fb78`  
		Last Modified: Fri, 09 Jun 2017 19:05:40 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b871055054a96f75b878690bc982f82c8972f8b549adf8417ab057a1faf78dc`  
		Last Modified: Fri, 09 Jun 2017 19:05:42 GMT  
		Size: 1.3 MB (1321268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb66b771da7947e51ec261d2d16e0c28eb0a83e458e78c997e8148ea0ae363b9`  
		Last Modified: Fri, 09 Jun 2017 19:11:07 GMT  
		Size: 45.8 MB (45753979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9b5c8ce8af4baaedece5ab9e9b88e26e332f98aca2d70e1c3ada121f3c6613`  
		Last Modified: Fri, 09 Jun 2017 19:10:55 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3c846f2680a8ccbeb0036b900ff02c5f4e0f04f92cc543d431df1bb39b2ca8`  
		Last Modified: Fri, 09 Jun 2017 19:10:56 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0-fpm`

```console
$ docker pull nextcloud@sha256:df80c965be072ea00f2bedea6f7519860f7319755d5db68b4a86847654a91b51
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.9 MB (245908559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67ed1c3dc8db986b4e73a36e779f752f17d086d1d71cc3713cd261f73e2c781f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 23:00:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 08 Jun 2017 23:00:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 08 Jun 2017 23:00:57 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 08 Jun 2017 23:00:57 GMT
ENV PHP_VERSION=7.1.5
# Thu, 08 Jun 2017 23:00:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Thu, 08 Jun 2017 23:01:21 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Thu, 08 Jun 2017 23:03:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 08 Jun 2017 23:03:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 08 Jun 2017 23:09:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 08 Jun 2017 23:09:16 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Thu, 08 Jun 2017 23:09:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 08 Jun 2017 23:09:19 GMT
WORKDIR /var/www/html
# Thu, 08 Jun 2017 23:09:21 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 08 Jun 2017 23:09:23 GMT
EXPOSE 9000/tcp
# Thu, 08 Jun 2017 23:09:24 GMT
CMD ["php-fpm"]
# Fri, 09 Jun 2017 18:52:14 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:54:12 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:54:13 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:54:43 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:56:10 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Fri, 09 Jun 2017 18:56:11 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:56:26 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:56:27 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:56:29 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:56:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:56:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4669260bef5ff4083fa9c96b9bf6368fcd51cd80590075d7e40d48a06dd3e1d0`  
		Last Modified: Fri, 09 Jun 2017 05:59:08 GMT  
		Size: 12.9 MB (12908437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0cfc4ea049c170fcd8428c4852599cb8c8217a961835169c350e12904b2b69`  
		Last Modified: Fri, 09 Jun 2017 05:59:07 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc9fca93e827ad4aba6c278662a9135d559aa19c7124d22067043f8c9c6ecab`  
		Last Modified: Fri, 09 Jun 2017 05:59:12 GMT  
		Size: 13.1 MB (13080621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325f0d444dcf7975d032fde5c637ebe56c711cb127d85417a22cfe90fa310cd3`  
		Last Modified: Fri, 09 Jun 2017 05:59:04 GMT  
		Size: 2.1 KB (2117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4848b3b5f83851e2c1b3b2a7dada66e5bea85cee76867dcdfd60749a7ae8e1`  
		Last Modified: Fri, 09 Jun 2017 05:59:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0196b75ea169d0fddf6c4c492223cd60d57d6546f55be9be13ec18beba583703`  
		Last Modified: Fri, 09 Jun 2017 05:59:04 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6233da26d0273e9058d894808b0dbb2fa48636fad5fc633ec901d048b2ce51e`  
		Last Modified: Fri, 09 Jun 2017 19:05:54 GMT  
		Size: 35.9 MB (35866491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a069c964a0b0f46528736902de1241d09833d5fa0e7297e550e453c88069ba0`  
		Last Modified: Fri, 09 Jun 2017 19:05:41 GMT  
		Size: 1.9 MB (1903768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd85982d731105767a1bebc92e20310557e0787bfb77a93526954b037f43fb78`  
		Last Modified: Fri, 09 Jun 2017 19:05:40 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b871055054a96f75b878690bc982f82c8972f8b549adf8417ab057a1faf78dc`  
		Last Modified: Fri, 09 Jun 2017 19:05:42 GMT  
		Size: 1.3 MB (1321268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb66b771da7947e51ec261d2d16e0c28eb0a83e458e78c997e8148ea0ae363b9`  
		Last Modified: Fri, 09 Jun 2017 19:11:07 GMT  
		Size: 45.8 MB (45753979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9b5c8ce8af4baaedece5ab9e9b88e26e332f98aca2d70e1c3ada121f3c6613`  
		Last Modified: Fri, 09 Jun 2017 19:10:55 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3c846f2680a8ccbeb0036b900ff02c5f4e0f04f92cc543d431df1bb39b2ca8`  
		Last Modified: Fri, 09 Jun 2017 19:10:56 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12-fpm`

```console
$ docker pull nextcloud@sha256:df80c965be072ea00f2bedea6f7519860f7319755d5db68b4a86847654a91b51
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.9 MB (245908559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67ed1c3dc8db986b4e73a36e779f752f17d086d1d71cc3713cd261f73e2c781f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 23:00:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 08 Jun 2017 23:00:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 08 Jun 2017 23:00:57 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 08 Jun 2017 23:00:57 GMT
ENV PHP_VERSION=7.1.5
# Thu, 08 Jun 2017 23:00:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Thu, 08 Jun 2017 23:01:21 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Thu, 08 Jun 2017 23:03:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 08 Jun 2017 23:03:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 08 Jun 2017 23:09:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 08 Jun 2017 23:09:16 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Thu, 08 Jun 2017 23:09:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 08 Jun 2017 23:09:19 GMT
WORKDIR /var/www/html
# Thu, 08 Jun 2017 23:09:21 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 08 Jun 2017 23:09:23 GMT
EXPOSE 9000/tcp
# Thu, 08 Jun 2017 23:09:24 GMT
CMD ["php-fpm"]
# Fri, 09 Jun 2017 18:52:14 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:54:12 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:54:13 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:54:43 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:56:10 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Fri, 09 Jun 2017 18:56:11 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:56:26 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:56:27 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:56:29 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:56:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:56:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4669260bef5ff4083fa9c96b9bf6368fcd51cd80590075d7e40d48a06dd3e1d0`  
		Last Modified: Fri, 09 Jun 2017 05:59:08 GMT  
		Size: 12.9 MB (12908437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0cfc4ea049c170fcd8428c4852599cb8c8217a961835169c350e12904b2b69`  
		Last Modified: Fri, 09 Jun 2017 05:59:07 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc9fca93e827ad4aba6c278662a9135d559aa19c7124d22067043f8c9c6ecab`  
		Last Modified: Fri, 09 Jun 2017 05:59:12 GMT  
		Size: 13.1 MB (13080621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325f0d444dcf7975d032fde5c637ebe56c711cb127d85417a22cfe90fa310cd3`  
		Last Modified: Fri, 09 Jun 2017 05:59:04 GMT  
		Size: 2.1 KB (2117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4848b3b5f83851e2c1b3b2a7dada66e5bea85cee76867dcdfd60749a7ae8e1`  
		Last Modified: Fri, 09 Jun 2017 05:59:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0196b75ea169d0fddf6c4c492223cd60d57d6546f55be9be13ec18beba583703`  
		Last Modified: Fri, 09 Jun 2017 05:59:04 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6233da26d0273e9058d894808b0dbb2fa48636fad5fc633ec901d048b2ce51e`  
		Last Modified: Fri, 09 Jun 2017 19:05:54 GMT  
		Size: 35.9 MB (35866491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a069c964a0b0f46528736902de1241d09833d5fa0e7297e550e453c88069ba0`  
		Last Modified: Fri, 09 Jun 2017 19:05:41 GMT  
		Size: 1.9 MB (1903768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd85982d731105767a1bebc92e20310557e0787bfb77a93526954b037f43fb78`  
		Last Modified: Fri, 09 Jun 2017 19:05:40 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b871055054a96f75b878690bc982f82c8972f8b549adf8417ab057a1faf78dc`  
		Last Modified: Fri, 09 Jun 2017 19:05:42 GMT  
		Size: 1.3 MB (1321268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb66b771da7947e51ec261d2d16e0c28eb0a83e458e78c997e8148ea0ae363b9`  
		Last Modified: Fri, 09 Jun 2017 19:11:07 GMT  
		Size: 45.8 MB (45753979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9b5c8ce8af4baaedece5ab9e9b88e26e332f98aca2d70e1c3ada121f3c6613`  
		Last Modified: Fri, 09 Jun 2017 19:10:55 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3c846f2680a8ccbeb0036b900ff02c5f4e0f04f92cc543d431df1bb39b2ca8`  
		Last Modified: Fri, 09 Jun 2017 19:10:56 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:fpm`

```console
$ docker pull nextcloud@sha256:df80c965be072ea00f2bedea6f7519860f7319755d5db68b4a86847654a91b51
```

-	Platforms:
	-	linux; amd64

### `nextcloud:fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.9 MB (245908559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67ed1c3dc8db986b4e73a36e779f752f17d086d1d71cc3713cd261f73e2c781f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 23:00:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 08 Jun 2017 23:00:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 08 Jun 2017 23:00:57 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 08 Jun 2017 23:00:57 GMT
ENV PHP_VERSION=7.1.5
# Thu, 08 Jun 2017 23:00:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Thu, 08 Jun 2017 23:01:21 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Thu, 08 Jun 2017 23:03:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 08 Jun 2017 23:03:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 08 Jun 2017 23:09:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 08 Jun 2017 23:09:16 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Thu, 08 Jun 2017 23:09:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 08 Jun 2017 23:09:19 GMT
WORKDIR /var/www/html
# Thu, 08 Jun 2017 23:09:21 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 08 Jun 2017 23:09:23 GMT
EXPOSE 9000/tcp
# Thu, 08 Jun 2017 23:09:24 GMT
CMD ["php-fpm"]
# Fri, 09 Jun 2017 18:52:14 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:54:12 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:54:13 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:54:43 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:56:10 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Fri, 09 Jun 2017 18:56:11 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:56:26 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:56:27 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:56:29 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:56:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:56:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4669260bef5ff4083fa9c96b9bf6368fcd51cd80590075d7e40d48a06dd3e1d0`  
		Last Modified: Fri, 09 Jun 2017 05:59:08 GMT  
		Size: 12.9 MB (12908437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0cfc4ea049c170fcd8428c4852599cb8c8217a961835169c350e12904b2b69`  
		Last Modified: Fri, 09 Jun 2017 05:59:07 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc9fca93e827ad4aba6c278662a9135d559aa19c7124d22067043f8c9c6ecab`  
		Last Modified: Fri, 09 Jun 2017 05:59:12 GMT  
		Size: 13.1 MB (13080621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325f0d444dcf7975d032fde5c637ebe56c711cb127d85417a22cfe90fa310cd3`  
		Last Modified: Fri, 09 Jun 2017 05:59:04 GMT  
		Size: 2.1 KB (2117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4848b3b5f83851e2c1b3b2a7dada66e5bea85cee76867dcdfd60749a7ae8e1`  
		Last Modified: Fri, 09 Jun 2017 05:59:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0196b75ea169d0fddf6c4c492223cd60d57d6546f55be9be13ec18beba583703`  
		Last Modified: Fri, 09 Jun 2017 05:59:04 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6233da26d0273e9058d894808b0dbb2fa48636fad5fc633ec901d048b2ce51e`  
		Last Modified: Fri, 09 Jun 2017 19:05:54 GMT  
		Size: 35.9 MB (35866491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a069c964a0b0f46528736902de1241d09833d5fa0e7297e550e453c88069ba0`  
		Last Modified: Fri, 09 Jun 2017 19:05:41 GMT  
		Size: 1.9 MB (1903768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd85982d731105767a1bebc92e20310557e0787bfb77a93526954b037f43fb78`  
		Last Modified: Fri, 09 Jun 2017 19:05:40 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b871055054a96f75b878690bc982f82c8972f8b549adf8417ab057a1faf78dc`  
		Last Modified: Fri, 09 Jun 2017 19:05:42 GMT  
		Size: 1.3 MB (1321268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb66b771da7947e51ec261d2d16e0c28eb0a83e458e78c997e8148ea0ae363b9`  
		Last Modified: Fri, 09 Jun 2017 19:11:07 GMT  
		Size: 45.8 MB (45753979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9b5c8ce8af4baaedece5ab9e9b88e26e332f98aca2d70e1c3ada121f3c6613`  
		Last Modified: Fri, 09 Jun 2017 19:10:55 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3c846f2680a8ccbeb0036b900ff02c5f4e0f04f92cc543d431df1bb39b2ca8`  
		Last Modified: Fri, 09 Jun 2017 19:10:56 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:9.0.58-apache`

```console
$ docker pull nextcloud@sha256:bdc3d2d649da58584a3e052f2d64c29335d9ca0ea6ff35aa82b4a5b8754f7582
```

-	Platforms:
	-	linux; amd64

### `nextcloud:9.0.58-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235230763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:434cdd29d034b2b02bd98759ec6a5f297a236690933970b5ee0fdaa8cf917d8d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:20:23 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:20:24 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:20:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:20:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:21:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:21:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:10 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 09 Jun 2017 15:26:13 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Jun 2017 15:26:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:38 GMT
WORKDIR /var/www/html
# Fri, 09 Jun 2017 15:26:39 GMT
EXPOSE 80/tcp
# Fri, 09 Jun 2017 15:26:40 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:42:09 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:43:54 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:43:55 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:43:57 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:44:23 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:44:25 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:56:55 GMT
ENV NEXTCLOUD_VERSION=9.0.58
# Fri, 09 Jun 2017 18:56:56 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:57:09 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && mkdir -p /usr/src/nextcloud/assets  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/assets/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:57:10 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:57:11 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:57:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:57:13 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b692e57dd378e12ed64795750adaf512987b8829af9bee479518dc09d83a4`  
		Last Modified: Fri, 09 Jun 2017 16:03:52 GMT  
		Size: 12.6 MB (12576817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f393a2429aaf4dc105a6fead7aa3a3e829bde6262a451fc28c5f32c456eaa5`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3eb4c13a16074aea1c0e031d218badcfa79d830e977c2f387ff5d7255c7fa55`  
		Last Modified: Fri, 09 Jun 2017 16:03:53 GMT  
		Size: 9.2 MB (9173931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6fa63e71a134861015c634153da0cf128aacd44ce84918a799463965d735891`  
		Last Modified: Fri, 09 Jun 2017 16:03:51 GMT  
		Size: 2.1 KB (2127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561abb46edf50002eb8d5ca120c3ed717d1d7e7f17ce5ca13e69afe0ab16bd4b`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f2e158f999c3d8cb0997921ffd4d66e467adfc0c2d7dc3894342ca1348821`  
		Last Modified: Fri, 09 Jun 2017 18:58:39 GMT  
		Size: 35.9 MB (35886888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50c060386bbbe30de134217b77ec4d6da2c20538a162a1892103c8620a04d93`  
		Last Modified: Fri, 09 Jun 2017 18:58:29 GMT  
		Size: 1.7 MB (1740534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fa4722bc66c0203f74dfc5d2db592f93bd5ab713bffcc548abc4856e15af75`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820e1f8ad8c319094ccdd4750d19fa53fd670026e75a03b59635ef816330cd59`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3af94f4399f7acd215404ad0858d0992572d4bee0f86ff3de9915b4b847cf4`  
		Last Modified: Fri, 09 Jun 2017 18:58:27 GMT  
		Size: 1.3 MB (1338403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170b5f94c7b3fc4b405c4ae027f2dc9d215a56bd63dcb94d8acc8a34f89961d6`  
		Last Modified: Fri, 09 Jun 2017 19:13:01 GMT  
		Size: 36.7 MB (36660520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff7805d29c89a8171c5cb79037cdf794193329fb9e2a0bbbb1b594474c6b85c`  
		Last Modified: Fri, 09 Jun 2017 19:12:52 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a751673223eac236cf26212de53de198e6b163634c5e343a33602b511d019f`  
		Last Modified: Fri, 09 Jun 2017 19:12:52 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:9.0-apache`

```console
$ docker pull nextcloud@sha256:bdc3d2d649da58584a3e052f2d64c29335d9ca0ea6ff35aa82b4a5b8754f7582
```

-	Platforms:
	-	linux; amd64

### `nextcloud:9.0-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235230763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:434cdd29d034b2b02bd98759ec6a5f297a236690933970b5ee0fdaa8cf917d8d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:20:23 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:20:24 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:20:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:20:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:21:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:21:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:10 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 09 Jun 2017 15:26:13 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Jun 2017 15:26:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:38 GMT
WORKDIR /var/www/html
# Fri, 09 Jun 2017 15:26:39 GMT
EXPOSE 80/tcp
# Fri, 09 Jun 2017 15:26:40 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:42:09 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:43:54 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:43:55 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:43:57 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:44:23 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:44:25 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:56:55 GMT
ENV NEXTCLOUD_VERSION=9.0.58
# Fri, 09 Jun 2017 18:56:56 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:57:09 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && mkdir -p /usr/src/nextcloud/assets  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/assets/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:57:10 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:57:11 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:57:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:57:13 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b692e57dd378e12ed64795750adaf512987b8829af9bee479518dc09d83a4`  
		Last Modified: Fri, 09 Jun 2017 16:03:52 GMT  
		Size: 12.6 MB (12576817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f393a2429aaf4dc105a6fead7aa3a3e829bde6262a451fc28c5f32c456eaa5`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3eb4c13a16074aea1c0e031d218badcfa79d830e977c2f387ff5d7255c7fa55`  
		Last Modified: Fri, 09 Jun 2017 16:03:53 GMT  
		Size: 9.2 MB (9173931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6fa63e71a134861015c634153da0cf128aacd44ce84918a799463965d735891`  
		Last Modified: Fri, 09 Jun 2017 16:03:51 GMT  
		Size: 2.1 KB (2127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561abb46edf50002eb8d5ca120c3ed717d1d7e7f17ce5ca13e69afe0ab16bd4b`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f2e158f999c3d8cb0997921ffd4d66e467adfc0c2d7dc3894342ca1348821`  
		Last Modified: Fri, 09 Jun 2017 18:58:39 GMT  
		Size: 35.9 MB (35886888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50c060386bbbe30de134217b77ec4d6da2c20538a162a1892103c8620a04d93`  
		Last Modified: Fri, 09 Jun 2017 18:58:29 GMT  
		Size: 1.7 MB (1740534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fa4722bc66c0203f74dfc5d2db592f93bd5ab713bffcc548abc4856e15af75`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820e1f8ad8c319094ccdd4750d19fa53fd670026e75a03b59635ef816330cd59`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3af94f4399f7acd215404ad0858d0992572d4bee0f86ff3de9915b4b847cf4`  
		Last Modified: Fri, 09 Jun 2017 18:58:27 GMT  
		Size: 1.3 MB (1338403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170b5f94c7b3fc4b405c4ae027f2dc9d215a56bd63dcb94d8acc8a34f89961d6`  
		Last Modified: Fri, 09 Jun 2017 19:13:01 GMT  
		Size: 36.7 MB (36660520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff7805d29c89a8171c5cb79037cdf794193329fb9e2a0bbbb1b594474c6b85c`  
		Last Modified: Fri, 09 Jun 2017 19:12:52 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a751673223eac236cf26212de53de198e6b163634c5e343a33602b511d019f`  
		Last Modified: Fri, 09 Jun 2017 19:12:52 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:9-apache`

```console
$ docker pull nextcloud@sha256:bdc3d2d649da58584a3e052f2d64c29335d9ca0ea6ff35aa82b4a5b8754f7582
```

-	Platforms:
	-	linux; amd64

### `nextcloud:9-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235230763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:434cdd29d034b2b02bd98759ec6a5f297a236690933970b5ee0fdaa8cf917d8d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:20:23 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:20:24 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:20:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:20:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:21:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:21:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:10 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 09 Jun 2017 15:26:13 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Jun 2017 15:26:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:38 GMT
WORKDIR /var/www/html
# Fri, 09 Jun 2017 15:26:39 GMT
EXPOSE 80/tcp
# Fri, 09 Jun 2017 15:26:40 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:42:09 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:43:54 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:43:55 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:43:57 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:44:23 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:44:25 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:56:55 GMT
ENV NEXTCLOUD_VERSION=9.0.58
# Fri, 09 Jun 2017 18:56:56 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:57:09 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && mkdir -p /usr/src/nextcloud/assets  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/assets/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:57:10 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:57:11 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:57:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:57:13 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b692e57dd378e12ed64795750adaf512987b8829af9bee479518dc09d83a4`  
		Last Modified: Fri, 09 Jun 2017 16:03:52 GMT  
		Size: 12.6 MB (12576817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f393a2429aaf4dc105a6fead7aa3a3e829bde6262a451fc28c5f32c456eaa5`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3eb4c13a16074aea1c0e031d218badcfa79d830e977c2f387ff5d7255c7fa55`  
		Last Modified: Fri, 09 Jun 2017 16:03:53 GMT  
		Size: 9.2 MB (9173931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6fa63e71a134861015c634153da0cf128aacd44ce84918a799463965d735891`  
		Last Modified: Fri, 09 Jun 2017 16:03:51 GMT  
		Size: 2.1 KB (2127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561abb46edf50002eb8d5ca120c3ed717d1d7e7f17ce5ca13e69afe0ab16bd4b`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f2e158f999c3d8cb0997921ffd4d66e467adfc0c2d7dc3894342ca1348821`  
		Last Modified: Fri, 09 Jun 2017 18:58:39 GMT  
		Size: 35.9 MB (35886888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50c060386bbbe30de134217b77ec4d6da2c20538a162a1892103c8620a04d93`  
		Last Modified: Fri, 09 Jun 2017 18:58:29 GMT  
		Size: 1.7 MB (1740534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fa4722bc66c0203f74dfc5d2db592f93bd5ab713bffcc548abc4856e15af75`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820e1f8ad8c319094ccdd4750d19fa53fd670026e75a03b59635ef816330cd59`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3af94f4399f7acd215404ad0858d0992572d4bee0f86ff3de9915b4b847cf4`  
		Last Modified: Fri, 09 Jun 2017 18:58:27 GMT  
		Size: 1.3 MB (1338403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170b5f94c7b3fc4b405c4ae027f2dc9d215a56bd63dcb94d8acc8a34f89961d6`  
		Last Modified: Fri, 09 Jun 2017 19:13:01 GMT  
		Size: 36.7 MB (36660520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff7805d29c89a8171c5cb79037cdf794193329fb9e2a0bbbb1b594474c6b85c`  
		Last Modified: Fri, 09 Jun 2017 19:12:52 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a751673223eac236cf26212de53de198e6b163634c5e343a33602b511d019f`  
		Last Modified: Fri, 09 Jun 2017 19:12:52 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:9.0.58`

```console
$ docker pull nextcloud@sha256:bdc3d2d649da58584a3e052f2d64c29335d9ca0ea6ff35aa82b4a5b8754f7582
```

-	Platforms:
	-	linux; amd64

### `nextcloud:9.0.58` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235230763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:434cdd29d034b2b02bd98759ec6a5f297a236690933970b5ee0fdaa8cf917d8d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:20:23 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:20:24 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:20:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:20:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:21:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:21:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:10 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 09 Jun 2017 15:26:13 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Jun 2017 15:26:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:38 GMT
WORKDIR /var/www/html
# Fri, 09 Jun 2017 15:26:39 GMT
EXPOSE 80/tcp
# Fri, 09 Jun 2017 15:26:40 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:42:09 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:43:54 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:43:55 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:43:57 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:44:23 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:44:25 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:56:55 GMT
ENV NEXTCLOUD_VERSION=9.0.58
# Fri, 09 Jun 2017 18:56:56 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:57:09 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && mkdir -p /usr/src/nextcloud/assets  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/assets/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:57:10 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:57:11 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:57:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:57:13 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b692e57dd378e12ed64795750adaf512987b8829af9bee479518dc09d83a4`  
		Last Modified: Fri, 09 Jun 2017 16:03:52 GMT  
		Size: 12.6 MB (12576817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f393a2429aaf4dc105a6fead7aa3a3e829bde6262a451fc28c5f32c456eaa5`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3eb4c13a16074aea1c0e031d218badcfa79d830e977c2f387ff5d7255c7fa55`  
		Last Modified: Fri, 09 Jun 2017 16:03:53 GMT  
		Size: 9.2 MB (9173931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6fa63e71a134861015c634153da0cf128aacd44ce84918a799463965d735891`  
		Last Modified: Fri, 09 Jun 2017 16:03:51 GMT  
		Size: 2.1 KB (2127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561abb46edf50002eb8d5ca120c3ed717d1d7e7f17ce5ca13e69afe0ab16bd4b`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f2e158f999c3d8cb0997921ffd4d66e467adfc0c2d7dc3894342ca1348821`  
		Last Modified: Fri, 09 Jun 2017 18:58:39 GMT  
		Size: 35.9 MB (35886888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50c060386bbbe30de134217b77ec4d6da2c20538a162a1892103c8620a04d93`  
		Last Modified: Fri, 09 Jun 2017 18:58:29 GMT  
		Size: 1.7 MB (1740534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fa4722bc66c0203f74dfc5d2db592f93bd5ab713bffcc548abc4856e15af75`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820e1f8ad8c319094ccdd4750d19fa53fd670026e75a03b59635ef816330cd59`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3af94f4399f7acd215404ad0858d0992572d4bee0f86ff3de9915b4b847cf4`  
		Last Modified: Fri, 09 Jun 2017 18:58:27 GMT  
		Size: 1.3 MB (1338403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170b5f94c7b3fc4b405c4ae027f2dc9d215a56bd63dcb94d8acc8a34f89961d6`  
		Last Modified: Fri, 09 Jun 2017 19:13:01 GMT  
		Size: 36.7 MB (36660520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff7805d29c89a8171c5cb79037cdf794193329fb9e2a0bbbb1b594474c6b85c`  
		Last Modified: Fri, 09 Jun 2017 19:12:52 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a751673223eac236cf26212de53de198e6b163634c5e343a33602b511d019f`  
		Last Modified: Fri, 09 Jun 2017 19:12:52 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:9.0`

```console
$ docker pull nextcloud@sha256:bdc3d2d649da58584a3e052f2d64c29335d9ca0ea6ff35aa82b4a5b8754f7582
```

-	Platforms:
	-	linux; amd64

### `nextcloud:9.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235230763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:434cdd29d034b2b02bd98759ec6a5f297a236690933970b5ee0fdaa8cf917d8d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:20:23 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:20:24 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:20:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:20:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:21:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:21:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:10 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 09 Jun 2017 15:26:13 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Jun 2017 15:26:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:38 GMT
WORKDIR /var/www/html
# Fri, 09 Jun 2017 15:26:39 GMT
EXPOSE 80/tcp
# Fri, 09 Jun 2017 15:26:40 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:42:09 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:43:54 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:43:55 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:43:57 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:44:23 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:44:25 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:56:55 GMT
ENV NEXTCLOUD_VERSION=9.0.58
# Fri, 09 Jun 2017 18:56:56 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:57:09 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && mkdir -p /usr/src/nextcloud/assets  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/assets/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:57:10 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:57:11 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:57:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:57:13 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b692e57dd378e12ed64795750adaf512987b8829af9bee479518dc09d83a4`  
		Last Modified: Fri, 09 Jun 2017 16:03:52 GMT  
		Size: 12.6 MB (12576817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f393a2429aaf4dc105a6fead7aa3a3e829bde6262a451fc28c5f32c456eaa5`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3eb4c13a16074aea1c0e031d218badcfa79d830e977c2f387ff5d7255c7fa55`  
		Last Modified: Fri, 09 Jun 2017 16:03:53 GMT  
		Size: 9.2 MB (9173931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6fa63e71a134861015c634153da0cf128aacd44ce84918a799463965d735891`  
		Last Modified: Fri, 09 Jun 2017 16:03:51 GMT  
		Size: 2.1 KB (2127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561abb46edf50002eb8d5ca120c3ed717d1d7e7f17ce5ca13e69afe0ab16bd4b`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f2e158f999c3d8cb0997921ffd4d66e467adfc0c2d7dc3894342ca1348821`  
		Last Modified: Fri, 09 Jun 2017 18:58:39 GMT  
		Size: 35.9 MB (35886888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50c060386bbbe30de134217b77ec4d6da2c20538a162a1892103c8620a04d93`  
		Last Modified: Fri, 09 Jun 2017 18:58:29 GMT  
		Size: 1.7 MB (1740534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fa4722bc66c0203f74dfc5d2db592f93bd5ab713bffcc548abc4856e15af75`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820e1f8ad8c319094ccdd4750d19fa53fd670026e75a03b59635ef816330cd59`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3af94f4399f7acd215404ad0858d0992572d4bee0f86ff3de9915b4b847cf4`  
		Last Modified: Fri, 09 Jun 2017 18:58:27 GMT  
		Size: 1.3 MB (1338403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170b5f94c7b3fc4b405c4ae027f2dc9d215a56bd63dcb94d8acc8a34f89961d6`  
		Last Modified: Fri, 09 Jun 2017 19:13:01 GMT  
		Size: 36.7 MB (36660520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff7805d29c89a8171c5cb79037cdf794193329fb9e2a0bbbb1b594474c6b85c`  
		Last Modified: Fri, 09 Jun 2017 19:12:52 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a751673223eac236cf26212de53de198e6b163634c5e343a33602b511d019f`  
		Last Modified: Fri, 09 Jun 2017 19:12:52 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:9`

```console
$ docker pull nextcloud@sha256:bdc3d2d649da58584a3e052f2d64c29335d9ca0ea6ff35aa82b4a5b8754f7582
```

-	Platforms:
	-	linux; amd64

### `nextcloud:9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235230763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:434cdd29d034b2b02bd98759ec6a5f297a236690933970b5ee0fdaa8cf917d8d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:20:23 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:20:24 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:20:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:20:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:21:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:21:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:10 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 09 Jun 2017 15:26:13 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Jun 2017 15:26:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:26:38 GMT
WORKDIR /var/www/html
# Fri, 09 Jun 2017 15:26:39 GMT
EXPOSE 80/tcp
# Fri, 09 Jun 2017 15:26:40 GMT
CMD ["apache2-foreground"]
# Fri, 09 Jun 2017 18:42:09 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:43:54 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:43:55 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:43:57 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:44:23 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:44:25 GMT
RUN a2enmod rewrite
# Fri, 09 Jun 2017 18:56:55 GMT
ENV NEXTCLOUD_VERSION=9.0.58
# Fri, 09 Jun 2017 18:56:56 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:57:09 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && mkdir -p /usr/src/nextcloud/assets  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/assets/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:57:10 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:57:11 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:57:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:57:13 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b692e57dd378e12ed64795750adaf512987b8829af9bee479518dc09d83a4`  
		Last Modified: Fri, 09 Jun 2017 16:03:52 GMT  
		Size: 12.6 MB (12576817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f393a2429aaf4dc105a6fead7aa3a3e829bde6262a451fc28c5f32c456eaa5`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3eb4c13a16074aea1c0e031d218badcfa79d830e977c2f387ff5d7255c7fa55`  
		Last Modified: Fri, 09 Jun 2017 16:03:53 GMT  
		Size: 9.2 MB (9173931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6fa63e71a134861015c634153da0cf128aacd44ce84918a799463965d735891`  
		Last Modified: Fri, 09 Jun 2017 16:03:51 GMT  
		Size: 2.1 KB (2127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561abb46edf50002eb8d5ca120c3ed717d1d7e7f17ce5ca13e69afe0ab16bd4b`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f2e158f999c3d8cb0997921ffd4d66e467adfc0c2d7dc3894342ca1348821`  
		Last Modified: Fri, 09 Jun 2017 18:58:39 GMT  
		Size: 35.9 MB (35886888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50c060386bbbe30de134217b77ec4d6da2c20538a162a1892103c8620a04d93`  
		Last Modified: Fri, 09 Jun 2017 18:58:29 GMT  
		Size: 1.7 MB (1740534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fa4722bc66c0203f74dfc5d2db592f93bd5ab713bffcc548abc4856e15af75`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820e1f8ad8c319094ccdd4750d19fa53fd670026e75a03b59635ef816330cd59`  
		Last Modified: Fri, 09 Jun 2017 18:58:26 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3af94f4399f7acd215404ad0858d0992572d4bee0f86ff3de9915b4b847cf4`  
		Last Modified: Fri, 09 Jun 2017 18:58:27 GMT  
		Size: 1.3 MB (1338403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170b5f94c7b3fc4b405c4ae027f2dc9d215a56bd63dcb94d8acc8a34f89961d6`  
		Last Modified: Fri, 09 Jun 2017 19:13:01 GMT  
		Size: 36.7 MB (36660520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff7805d29c89a8171c5cb79037cdf794193329fb9e2a0bbbb1b594474c6b85c`  
		Last Modified: Fri, 09 Jun 2017 19:12:52 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a751673223eac236cf26212de53de198e6b163634c5e343a33602b511d019f`  
		Last Modified: Fri, 09 Jun 2017 19:12:52 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:9.0.58-fpm`

```console
$ docker pull nextcloud@sha256:5aa55c31c8baafc4fc60fe7eeeb024c7f35a962ac7579214f678a5d8119010b2
```

-	Platforms:
	-	linux; amd64

### `nextcloud:9.0.58-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.9 MB (231863109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e8bd1d03c1b82cde89bd9f942d6740f23c8346172e3c28d98231717d955290c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 23:00:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 08 Jun 2017 23:00:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:27:45 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:27:46 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:27:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:27:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:28:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:28:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:33:55 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 09 Jun 2017 15:33:58 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:33:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Jun 2017 15:34:00 GMT
WORKDIR /var/www/html
# Fri, 09 Jun 2017 15:34:02 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 09 Jun 2017 15:34:02 GMT
EXPOSE 9000/tcp
# Fri, 09 Jun 2017 15:34:03 GMT
CMD ["php-fpm"]
# Fri, 09 Jun 2017 18:45:23 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:47:07 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:47:09 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:47:34 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:57:38 GMT
ENV NEXTCLOUD_VERSION=9.0.58
# Fri, 09 Jun 2017 18:57:39 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:57:52 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && mkdir -p /usr/src/nextcloud/assets  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/assets/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:57:54 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:57:55 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:57:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:57:57 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea53502a7b9aca8f75ca6614e8e36aaa6c91ec32e1177a14229913e4edcad43`  
		Last Modified: Fri, 09 Jun 2017 16:05:13 GMT  
		Size: 12.6 MB (12559561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1043355cdd71d7c0e8c10129c0ed3cbe4fdfd2df91db58ca82b38234527ce3`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c09a911fcbbcfbd80f0988de820bce3cf61e3eb9839d444463dfc256dff5553`  
		Last Modified: Fri, 09 Jun 2017 16:05:13 GMT  
		Size: 8.6 MB (8623496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e033dc7bbf6c5cf119144d6d702bf3c86865ee8171bb380294e3e1e7a8d82c8`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 2.1 KB (2119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ff2afd9b58bfbce171d626ccbb26d6925275ae9c73293e9f6c555892d0e91`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac214bd3ded27b96cd080ccf0c8f4f422b4a2335e817bfef81f3cca6e5c42533`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 7.6 KB (7608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14a196b6db591e3c448fccbe14b9dc6039281a5c3ce1a69cb70e0e4eb7c5db2`  
		Last Modified: Fri, 09 Jun 2017 19:01:28 GMT  
		Size: 35.9 MB (35866482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a77554477fe22cf3a7fd3605700a8a23d690ada6417582ca64356d08d9d79a1`  
		Last Modified: Fri, 09 Jun 2017 19:01:17 GMT  
		Size: 1.7 MB (1740748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7336282e14980523572d57a1efe79c51fe78103d5d4e6bd6c7ad4fdd16eed1`  
		Last Modified: Fri, 09 Jun 2017 19:01:16 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a611fa77213fbacf10cc509609e2749e0dda4fb5e7093d4ebb5ae7a6f95aef`  
		Last Modified: Fri, 09 Jun 2017 19:01:17 GMT  
		Size: 1.3 MB (1338376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ebc1995c7d47be211cf03aa0acc099418075d24ce4a171db8fb9ec4177c59e`  
		Last Modified: Fri, 09 Jun 2017 19:15:46 GMT  
		Size: 36.7 MB (36660518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a06e1aecbe337c3b7b3bece3a0030504025e0ace231fc013316d3dd5c8798f`  
		Last Modified: Fri, 09 Jun 2017 19:15:36 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8608ff07d577171e6f07d4a58113b36c3933e3bc224439a7a2555eec8d05787`  
		Last Modified: Fri, 09 Jun 2017 19:15:35 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:9.0-fpm`

```console
$ docker pull nextcloud@sha256:5aa55c31c8baafc4fc60fe7eeeb024c7f35a962ac7579214f678a5d8119010b2
```

-	Platforms:
	-	linux; amd64

### `nextcloud:9.0-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.9 MB (231863109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e8bd1d03c1b82cde89bd9f942d6740f23c8346172e3c28d98231717d955290c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 23:00:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 08 Jun 2017 23:00:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:27:45 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:27:46 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:27:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:27:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:28:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:28:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:33:55 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 09 Jun 2017 15:33:58 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:33:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Jun 2017 15:34:00 GMT
WORKDIR /var/www/html
# Fri, 09 Jun 2017 15:34:02 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 09 Jun 2017 15:34:02 GMT
EXPOSE 9000/tcp
# Fri, 09 Jun 2017 15:34:03 GMT
CMD ["php-fpm"]
# Fri, 09 Jun 2017 18:45:23 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:47:07 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:47:09 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:47:34 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:57:38 GMT
ENV NEXTCLOUD_VERSION=9.0.58
# Fri, 09 Jun 2017 18:57:39 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:57:52 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && mkdir -p /usr/src/nextcloud/assets  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/assets/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:57:54 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:57:55 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:57:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:57:57 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea53502a7b9aca8f75ca6614e8e36aaa6c91ec32e1177a14229913e4edcad43`  
		Last Modified: Fri, 09 Jun 2017 16:05:13 GMT  
		Size: 12.6 MB (12559561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1043355cdd71d7c0e8c10129c0ed3cbe4fdfd2df91db58ca82b38234527ce3`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c09a911fcbbcfbd80f0988de820bce3cf61e3eb9839d444463dfc256dff5553`  
		Last Modified: Fri, 09 Jun 2017 16:05:13 GMT  
		Size: 8.6 MB (8623496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e033dc7bbf6c5cf119144d6d702bf3c86865ee8171bb380294e3e1e7a8d82c8`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 2.1 KB (2119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ff2afd9b58bfbce171d626ccbb26d6925275ae9c73293e9f6c555892d0e91`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac214bd3ded27b96cd080ccf0c8f4f422b4a2335e817bfef81f3cca6e5c42533`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 7.6 KB (7608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14a196b6db591e3c448fccbe14b9dc6039281a5c3ce1a69cb70e0e4eb7c5db2`  
		Last Modified: Fri, 09 Jun 2017 19:01:28 GMT  
		Size: 35.9 MB (35866482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a77554477fe22cf3a7fd3605700a8a23d690ada6417582ca64356d08d9d79a1`  
		Last Modified: Fri, 09 Jun 2017 19:01:17 GMT  
		Size: 1.7 MB (1740748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7336282e14980523572d57a1efe79c51fe78103d5d4e6bd6c7ad4fdd16eed1`  
		Last Modified: Fri, 09 Jun 2017 19:01:16 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a611fa77213fbacf10cc509609e2749e0dda4fb5e7093d4ebb5ae7a6f95aef`  
		Last Modified: Fri, 09 Jun 2017 19:01:17 GMT  
		Size: 1.3 MB (1338376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ebc1995c7d47be211cf03aa0acc099418075d24ce4a171db8fb9ec4177c59e`  
		Last Modified: Fri, 09 Jun 2017 19:15:46 GMT  
		Size: 36.7 MB (36660518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a06e1aecbe337c3b7b3bece3a0030504025e0ace231fc013316d3dd5c8798f`  
		Last Modified: Fri, 09 Jun 2017 19:15:36 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8608ff07d577171e6f07d4a58113b36c3933e3bc224439a7a2555eec8d05787`  
		Last Modified: Fri, 09 Jun 2017 19:15:35 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:9-fpm`

```console
$ docker pull nextcloud@sha256:5aa55c31c8baafc4fc60fe7eeeb024c7f35a962ac7579214f678a5d8119010b2
```

-	Platforms:
	-	linux; amd64

### `nextcloud:9-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.9 MB (231863109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e8bd1d03c1b82cde89bd9f942d6740f23c8346172e3c28d98231717d955290c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 23:00:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 08 Jun 2017 23:00:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:27:45 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:27:46 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:27:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:27:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:28:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:28:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:33:55 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 09 Jun 2017 15:33:58 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 09 Jun 2017 15:33:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Jun 2017 15:34:00 GMT
WORKDIR /var/www/html
# Fri, 09 Jun 2017 15:34:02 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 09 Jun 2017 15:34:02 GMT
EXPOSE 9000/tcp
# Fri, 09 Jun 2017 15:34:03 GMT
CMD ["php-fpm"]
# Fri, 09 Jun 2017 18:45:23 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 18:47:07 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 09 Jun 2017 18:47:09 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 09 Jun 2017 18:47:34 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Fri, 09 Jun 2017 18:57:38 GMT
ENV NEXTCLOUD_VERSION=9.0.58
# Fri, 09 Jun 2017 18:57:39 GMT
VOLUME [/var/www/html]
# Fri, 09 Jun 2017 18:57:52 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && mkdir -p /usr/src/nextcloud/assets  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/assets/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 09 Jun 2017 18:57:54 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 09 Jun 2017 18:57:55 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 09 Jun 2017 18:57:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Jun 2017 18:57:57 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea53502a7b9aca8f75ca6614e8e36aaa6c91ec32e1177a14229913e4edcad43`  
		Last Modified: Fri, 09 Jun 2017 16:05:13 GMT  
		Size: 12.6 MB (12559561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1043355cdd71d7c0e8c10129c0ed3cbe4fdfd2df91db58ca82b38234527ce3`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c09a911fcbbcfbd80f0988de820bce3cf61e3eb9839d444463dfc256dff5553`  
		Last Modified: Fri, 09 Jun 2017 16:05:13 GMT  
		Size: 8.6 MB (8623496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e033dc7bbf6c5cf119144d6d702bf3c86865ee8171bb380294e3e1e7a8d82c8`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 2.1 KB (2119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ff2afd9b58bfbce171d626ccbb26d6925275ae9c73293e9f6c555892d0e91`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac214bd3ded27b96cd080ccf0c8f4f422b4a2335e817bfef81f3cca6e5c42533`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 7.6 KB (7608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14a196b6db591e3c448fccbe14b9dc6039281a5c3ce1a69cb70e0e4eb7c5db2`  
		Last Modified: Fri, 09 Jun 2017 19:01:28 GMT  
		Size: 35.9 MB (35866482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a77554477fe22cf3a7fd3605700a8a23d690ada6417582ca64356d08d9d79a1`  
		Last Modified: Fri, 09 Jun 2017 19:01:17 GMT  
		Size: 1.7 MB (1740748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7336282e14980523572d57a1efe79c51fe78103d5d4e6bd6c7ad4fdd16eed1`  
		Last Modified: Fri, 09 Jun 2017 19:01:16 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a611fa77213fbacf10cc509609e2749e0dda4fb5e7093d4ebb5ae7a6f95aef`  
		Last Modified: Fri, 09 Jun 2017 19:01:17 GMT  
		Size: 1.3 MB (1338376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ebc1995c7d47be211cf03aa0acc099418075d24ce4a171db8fb9ec4177c59e`  
		Last Modified: Fri, 09 Jun 2017 19:15:46 GMT  
		Size: 36.7 MB (36660518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a06e1aecbe337c3b7b3bece3a0030504025e0ace231fc013316d3dd5c8798f`  
		Last Modified: Fri, 09 Jun 2017 19:15:36 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8608ff07d577171e6f07d4a58113b36c3933e3bc224439a7a2555eec8d05787`  
		Last Modified: Fri, 09 Jun 2017 19:15:35 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
