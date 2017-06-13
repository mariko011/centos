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
$ docker pull nextcloud@sha256:b715dcb7048a334f3d43b360fc1e045caaa6967bbceffab40688efc4c9d87ced
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0.3-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246949634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf43743e87a45b08bd35a66d2ac47203a4ebfbb3fee36f5a7acab65a85f5b0c`
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
# Mon, 12 Jun 2017 21:25:40 GMT
ENV PHP_VERSION=7.1.6
# Mon, 12 Jun 2017 21:25:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 12 Jun 2017 21:25:42 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 12 Jun 2017 21:25:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 12 Jun 2017 21:26:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 12 Jun 2017 21:29:29 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 12 Jun 2017 21:29:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:53 GMT
WORKDIR /var/www/html
# Mon, 12 Jun 2017 21:29:54 GMT
EXPOSE 80/tcp
# Mon, 12 Jun 2017 21:29:55 GMT
CMD ["apache2-foreground"]
# Tue, 13 Jun 2017 20:03:32 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 20:06:16 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 13 Jun 2017 20:06:35 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 13 Jun 2017 20:06:38 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:07:33 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Tue, 13 Jun 2017 20:07:51 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:07:52 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Tue, 13 Jun 2017 20:08:17 GMT
VOLUME [/var/www/html]
# Tue, 13 Jun 2017 20:08:38 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Tue, 13 Jun 2017 20:08:48 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Tue, 13 Jun 2017 20:08:50 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Tue, 13 Jun 2017 20:09:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Jun 2017 20:09:37 GMT
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
	-	`sha256:bb1c26748177948f235ed99c1fcfd61050397b0ee9cb7b84ca929f21df4ae2ae`  
		Last Modified: Mon, 12 Jun 2017 22:43:58 GMT  
		Size: 12.9 MB (12935784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da13c3be7c59e0fa5668b53ec3aa8b07edf8bf42cf22a1fbae8e1a873f694a5`  
		Last Modified: Mon, 12 Jun 2017 22:43:57 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff6b729579a63e373e7f8fdc1e2e2961790486c7ee7321ad0e6d383ac7b50c7`  
		Last Modified: Mon, 12 Jun 2017 22:44:00 GMT  
		Size: 13.5 MB (13519537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfc8dc79e156d6bdad974cecff7c29e63a62bab201dcfc4ef8dc66fbf98a1ea`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0b230fcbdefdd198addf6cbe0f54570d56a4911e32d18dd3e078ca5ef6e3f4`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7b94617de8eafa93f8edfe024c42ca49ad2f032934919f3f3653b0cfc70bef`  
		Last Modified: Tue, 13 Jun 2017 20:28:30 GMT  
		Size: 35.9 MB (35886834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa62c5cfacdfe42b384f67005531c5715df3036f5f2bb327deb27b80211ed7db`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.9 MB (1903745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:098398e7e519fb1471dbe92fc8bd9acb926e8b70bed520c0aba7e3bd65e90a93`  
		Last Modified: Tue, 13 Jun 2017 20:28:16 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a30ed405c0f2afc1e0231f763772c30ce96e4612a2360d7491bcfd0547b7ed7`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3404cdd1ee2edd13cf6d30ed33d8d3f2d3645a87b0ab17cdb68eb29a8b3e4293`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.3 MB (1321315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b262bfd45ac7f555b5fa940e6201a0eef63defc4748485a28e6c67405bfc20`  
		Last Modified: Tue, 13 Jun 2017 20:28:35 GMT  
		Size: 43.5 MB (43528757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da36910feaece50d35454dc95d5eeb7b3888ff432e9f647b5da0c02e3eb8fbf`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e79a35b8f79027d1fa70ce7329f6917b7d5e589db70a4c6a060b25c73e9c07`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0-apache`

```console
$ docker pull nextcloud@sha256:b715dcb7048a334f3d43b360fc1e045caaa6967bbceffab40688efc4c9d87ced
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246949634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf43743e87a45b08bd35a66d2ac47203a4ebfbb3fee36f5a7acab65a85f5b0c`
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
# Mon, 12 Jun 2017 21:25:40 GMT
ENV PHP_VERSION=7.1.6
# Mon, 12 Jun 2017 21:25:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 12 Jun 2017 21:25:42 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 12 Jun 2017 21:25:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 12 Jun 2017 21:26:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 12 Jun 2017 21:29:29 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 12 Jun 2017 21:29:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:53 GMT
WORKDIR /var/www/html
# Mon, 12 Jun 2017 21:29:54 GMT
EXPOSE 80/tcp
# Mon, 12 Jun 2017 21:29:55 GMT
CMD ["apache2-foreground"]
# Tue, 13 Jun 2017 20:03:32 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 20:06:16 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 13 Jun 2017 20:06:35 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 13 Jun 2017 20:06:38 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:07:33 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Tue, 13 Jun 2017 20:07:51 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:07:52 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Tue, 13 Jun 2017 20:08:17 GMT
VOLUME [/var/www/html]
# Tue, 13 Jun 2017 20:08:38 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Tue, 13 Jun 2017 20:08:48 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Tue, 13 Jun 2017 20:08:50 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Tue, 13 Jun 2017 20:09:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Jun 2017 20:09:37 GMT
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
	-	`sha256:bb1c26748177948f235ed99c1fcfd61050397b0ee9cb7b84ca929f21df4ae2ae`  
		Last Modified: Mon, 12 Jun 2017 22:43:58 GMT  
		Size: 12.9 MB (12935784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da13c3be7c59e0fa5668b53ec3aa8b07edf8bf42cf22a1fbae8e1a873f694a5`  
		Last Modified: Mon, 12 Jun 2017 22:43:57 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff6b729579a63e373e7f8fdc1e2e2961790486c7ee7321ad0e6d383ac7b50c7`  
		Last Modified: Mon, 12 Jun 2017 22:44:00 GMT  
		Size: 13.5 MB (13519537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfc8dc79e156d6bdad974cecff7c29e63a62bab201dcfc4ef8dc66fbf98a1ea`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0b230fcbdefdd198addf6cbe0f54570d56a4911e32d18dd3e078ca5ef6e3f4`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7b94617de8eafa93f8edfe024c42ca49ad2f032934919f3f3653b0cfc70bef`  
		Last Modified: Tue, 13 Jun 2017 20:28:30 GMT  
		Size: 35.9 MB (35886834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa62c5cfacdfe42b384f67005531c5715df3036f5f2bb327deb27b80211ed7db`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.9 MB (1903745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:098398e7e519fb1471dbe92fc8bd9acb926e8b70bed520c0aba7e3bd65e90a93`  
		Last Modified: Tue, 13 Jun 2017 20:28:16 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a30ed405c0f2afc1e0231f763772c30ce96e4612a2360d7491bcfd0547b7ed7`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3404cdd1ee2edd13cf6d30ed33d8d3f2d3645a87b0ab17cdb68eb29a8b3e4293`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.3 MB (1321315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b262bfd45ac7f555b5fa940e6201a0eef63defc4748485a28e6c67405bfc20`  
		Last Modified: Tue, 13 Jun 2017 20:28:35 GMT  
		Size: 43.5 MB (43528757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da36910feaece50d35454dc95d5eeb7b3888ff432e9f647b5da0c02e3eb8fbf`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e79a35b8f79027d1fa70ce7329f6917b7d5e589db70a4c6a060b25c73e9c07`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11-apache`

```console
$ docker pull nextcloud@sha256:b715dcb7048a334f3d43b360fc1e045caaa6967bbceffab40688efc4c9d87ced
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246949634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf43743e87a45b08bd35a66d2ac47203a4ebfbb3fee36f5a7acab65a85f5b0c`
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
# Mon, 12 Jun 2017 21:25:40 GMT
ENV PHP_VERSION=7.1.6
# Mon, 12 Jun 2017 21:25:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 12 Jun 2017 21:25:42 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 12 Jun 2017 21:25:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 12 Jun 2017 21:26:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 12 Jun 2017 21:29:29 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 12 Jun 2017 21:29:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:53 GMT
WORKDIR /var/www/html
# Mon, 12 Jun 2017 21:29:54 GMT
EXPOSE 80/tcp
# Mon, 12 Jun 2017 21:29:55 GMT
CMD ["apache2-foreground"]
# Tue, 13 Jun 2017 20:03:32 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 20:06:16 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 13 Jun 2017 20:06:35 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 13 Jun 2017 20:06:38 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:07:33 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Tue, 13 Jun 2017 20:07:51 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:07:52 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Tue, 13 Jun 2017 20:08:17 GMT
VOLUME [/var/www/html]
# Tue, 13 Jun 2017 20:08:38 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Tue, 13 Jun 2017 20:08:48 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Tue, 13 Jun 2017 20:08:50 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Tue, 13 Jun 2017 20:09:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Jun 2017 20:09:37 GMT
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
	-	`sha256:bb1c26748177948f235ed99c1fcfd61050397b0ee9cb7b84ca929f21df4ae2ae`  
		Last Modified: Mon, 12 Jun 2017 22:43:58 GMT  
		Size: 12.9 MB (12935784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da13c3be7c59e0fa5668b53ec3aa8b07edf8bf42cf22a1fbae8e1a873f694a5`  
		Last Modified: Mon, 12 Jun 2017 22:43:57 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff6b729579a63e373e7f8fdc1e2e2961790486c7ee7321ad0e6d383ac7b50c7`  
		Last Modified: Mon, 12 Jun 2017 22:44:00 GMT  
		Size: 13.5 MB (13519537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfc8dc79e156d6bdad974cecff7c29e63a62bab201dcfc4ef8dc66fbf98a1ea`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0b230fcbdefdd198addf6cbe0f54570d56a4911e32d18dd3e078ca5ef6e3f4`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7b94617de8eafa93f8edfe024c42ca49ad2f032934919f3f3653b0cfc70bef`  
		Last Modified: Tue, 13 Jun 2017 20:28:30 GMT  
		Size: 35.9 MB (35886834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa62c5cfacdfe42b384f67005531c5715df3036f5f2bb327deb27b80211ed7db`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.9 MB (1903745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:098398e7e519fb1471dbe92fc8bd9acb926e8b70bed520c0aba7e3bd65e90a93`  
		Last Modified: Tue, 13 Jun 2017 20:28:16 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a30ed405c0f2afc1e0231f763772c30ce96e4612a2360d7491bcfd0547b7ed7`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3404cdd1ee2edd13cf6d30ed33d8d3f2d3645a87b0ab17cdb68eb29a8b3e4293`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.3 MB (1321315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b262bfd45ac7f555b5fa940e6201a0eef63defc4748485a28e6c67405bfc20`  
		Last Modified: Tue, 13 Jun 2017 20:28:35 GMT  
		Size: 43.5 MB (43528757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da36910feaece50d35454dc95d5eeb7b3888ff432e9f647b5da0c02e3eb8fbf`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e79a35b8f79027d1fa70ce7329f6917b7d5e589db70a4c6a060b25c73e9c07`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0.3`

```console
$ docker pull nextcloud@sha256:b715dcb7048a334f3d43b360fc1e045caaa6967bbceffab40688efc4c9d87ced
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246949634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf43743e87a45b08bd35a66d2ac47203a4ebfbb3fee36f5a7acab65a85f5b0c`
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
# Mon, 12 Jun 2017 21:25:40 GMT
ENV PHP_VERSION=7.1.6
# Mon, 12 Jun 2017 21:25:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 12 Jun 2017 21:25:42 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 12 Jun 2017 21:25:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 12 Jun 2017 21:26:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 12 Jun 2017 21:29:29 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 12 Jun 2017 21:29:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:53 GMT
WORKDIR /var/www/html
# Mon, 12 Jun 2017 21:29:54 GMT
EXPOSE 80/tcp
# Mon, 12 Jun 2017 21:29:55 GMT
CMD ["apache2-foreground"]
# Tue, 13 Jun 2017 20:03:32 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 20:06:16 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 13 Jun 2017 20:06:35 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 13 Jun 2017 20:06:38 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:07:33 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Tue, 13 Jun 2017 20:07:51 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:07:52 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Tue, 13 Jun 2017 20:08:17 GMT
VOLUME [/var/www/html]
# Tue, 13 Jun 2017 20:08:38 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Tue, 13 Jun 2017 20:08:48 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Tue, 13 Jun 2017 20:08:50 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Tue, 13 Jun 2017 20:09:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Jun 2017 20:09:37 GMT
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
	-	`sha256:bb1c26748177948f235ed99c1fcfd61050397b0ee9cb7b84ca929f21df4ae2ae`  
		Last Modified: Mon, 12 Jun 2017 22:43:58 GMT  
		Size: 12.9 MB (12935784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da13c3be7c59e0fa5668b53ec3aa8b07edf8bf42cf22a1fbae8e1a873f694a5`  
		Last Modified: Mon, 12 Jun 2017 22:43:57 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff6b729579a63e373e7f8fdc1e2e2961790486c7ee7321ad0e6d383ac7b50c7`  
		Last Modified: Mon, 12 Jun 2017 22:44:00 GMT  
		Size: 13.5 MB (13519537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfc8dc79e156d6bdad974cecff7c29e63a62bab201dcfc4ef8dc66fbf98a1ea`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0b230fcbdefdd198addf6cbe0f54570d56a4911e32d18dd3e078ca5ef6e3f4`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7b94617de8eafa93f8edfe024c42ca49ad2f032934919f3f3653b0cfc70bef`  
		Last Modified: Tue, 13 Jun 2017 20:28:30 GMT  
		Size: 35.9 MB (35886834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa62c5cfacdfe42b384f67005531c5715df3036f5f2bb327deb27b80211ed7db`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.9 MB (1903745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:098398e7e519fb1471dbe92fc8bd9acb926e8b70bed520c0aba7e3bd65e90a93`  
		Last Modified: Tue, 13 Jun 2017 20:28:16 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a30ed405c0f2afc1e0231f763772c30ce96e4612a2360d7491bcfd0547b7ed7`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3404cdd1ee2edd13cf6d30ed33d8d3f2d3645a87b0ab17cdb68eb29a8b3e4293`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.3 MB (1321315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b262bfd45ac7f555b5fa940e6201a0eef63defc4748485a28e6c67405bfc20`  
		Last Modified: Tue, 13 Jun 2017 20:28:35 GMT  
		Size: 43.5 MB (43528757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da36910feaece50d35454dc95d5eeb7b3888ff432e9f647b5da0c02e3eb8fbf`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e79a35b8f79027d1fa70ce7329f6917b7d5e589db70a4c6a060b25c73e9c07`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0`

```console
$ docker pull nextcloud@sha256:b715dcb7048a334f3d43b360fc1e045caaa6967bbceffab40688efc4c9d87ced
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246949634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf43743e87a45b08bd35a66d2ac47203a4ebfbb3fee36f5a7acab65a85f5b0c`
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
# Mon, 12 Jun 2017 21:25:40 GMT
ENV PHP_VERSION=7.1.6
# Mon, 12 Jun 2017 21:25:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 12 Jun 2017 21:25:42 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 12 Jun 2017 21:25:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 12 Jun 2017 21:26:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 12 Jun 2017 21:29:29 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 12 Jun 2017 21:29:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:53 GMT
WORKDIR /var/www/html
# Mon, 12 Jun 2017 21:29:54 GMT
EXPOSE 80/tcp
# Mon, 12 Jun 2017 21:29:55 GMT
CMD ["apache2-foreground"]
# Tue, 13 Jun 2017 20:03:32 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 20:06:16 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 13 Jun 2017 20:06:35 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 13 Jun 2017 20:06:38 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:07:33 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Tue, 13 Jun 2017 20:07:51 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:07:52 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Tue, 13 Jun 2017 20:08:17 GMT
VOLUME [/var/www/html]
# Tue, 13 Jun 2017 20:08:38 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Tue, 13 Jun 2017 20:08:48 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Tue, 13 Jun 2017 20:08:50 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Tue, 13 Jun 2017 20:09:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Jun 2017 20:09:37 GMT
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
	-	`sha256:bb1c26748177948f235ed99c1fcfd61050397b0ee9cb7b84ca929f21df4ae2ae`  
		Last Modified: Mon, 12 Jun 2017 22:43:58 GMT  
		Size: 12.9 MB (12935784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da13c3be7c59e0fa5668b53ec3aa8b07edf8bf42cf22a1fbae8e1a873f694a5`  
		Last Modified: Mon, 12 Jun 2017 22:43:57 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff6b729579a63e373e7f8fdc1e2e2961790486c7ee7321ad0e6d383ac7b50c7`  
		Last Modified: Mon, 12 Jun 2017 22:44:00 GMT  
		Size: 13.5 MB (13519537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfc8dc79e156d6bdad974cecff7c29e63a62bab201dcfc4ef8dc66fbf98a1ea`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0b230fcbdefdd198addf6cbe0f54570d56a4911e32d18dd3e078ca5ef6e3f4`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7b94617de8eafa93f8edfe024c42ca49ad2f032934919f3f3653b0cfc70bef`  
		Last Modified: Tue, 13 Jun 2017 20:28:30 GMT  
		Size: 35.9 MB (35886834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa62c5cfacdfe42b384f67005531c5715df3036f5f2bb327deb27b80211ed7db`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.9 MB (1903745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:098398e7e519fb1471dbe92fc8bd9acb926e8b70bed520c0aba7e3bd65e90a93`  
		Last Modified: Tue, 13 Jun 2017 20:28:16 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a30ed405c0f2afc1e0231f763772c30ce96e4612a2360d7491bcfd0547b7ed7`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3404cdd1ee2edd13cf6d30ed33d8d3f2d3645a87b0ab17cdb68eb29a8b3e4293`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.3 MB (1321315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b262bfd45ac7f555b5fa940e6201a0eef63defc4748485a28e6c67405bfc20`  
		Last Modified: Tue, 13 Jun 2017 20:28:35 GMT  
		Size: 43.5 MB (43528757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da36910feaece50d35454dc95d5eeb7b3888ff432e9f647b5da0c02e3eb8fbf`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e79a35b8f79027d1fa70ce7329f6917b7d5e589db70a4c6a060b25c73e9c07`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11`

```console
$ docker pull nextcloud@sha256:b715dcb7048a334f3d43b360fc1e045caaa6967bbceffab40688efc4c9d87ced
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246949634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf43743e87a45b08bd35a66d2ac47203a4ebfbb3fee36f5a7acab65a85f5b0c`
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
# Mon, 12 Jun 2017 21:25:40 GMT
ENV PHP_VERSION=7.1.6
# Mon, 12 Jun 2017 21:25:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 12 Jun 2017 21:25:42 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 12 Jun 2017 21:25:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 12 Jun 2017 21:26:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 12 Jun 2017 21:29:29 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 12 Jun 2017 21:29:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:53 GMT
WORKDIR /var/www/html
# Mon, 12 Jun 2017 21:29:54 GMT
EXPOSE 80/tcp
# Mon, 12 Jun 2017 21:29:55 GMT
CMD ["apache2-foreground"]
# Tue, 13 Jun 2017 20:03:32 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 20:06:16 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 13 Jun 2017 20:06:35 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 13 Jun 2017 20:06:38 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:07:33 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Tue, 13 Jun 2017 20:07:51 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:07:52 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Tue, 13 Jun 2017 20:08:17 GMT
VOLUME [/var/www/html]
# Tue, 13 Jun 2017 20:08:38 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Tue, 13 Jun 2017 20:08:48 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Tue, 13 Jun 2017 20:08:50 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Tue, 13 Jun 2017 20:09:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Jun 2017 20:09:37 GMT
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
	-	`sha256:bb1c26748177948f235ed99c1fcfd61050397b0ee9cb7b84ca929f21df4ae2ae`  
		Last Modified: Mon, 12 Jun 2017 22:43:58 GMT  
		Size: 12.9 MB (12935784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da13c3be7c59e0fa5668b53ec3aa8b07edf8bf42cf22a1fbae8e1a873f694a5`  
		Last Modified: Mon, 12 Jun 2017 22:43:57 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff6b729579a63e373e7f8fdc1e2e2961790486c7ee7321ad0e6d383ac7b50c7`  
		Last Modified: Mon, 12 Jun 2017 22:44:00 GMT  
		Size: 13.5 MB (13519537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfc8dc79e156d6bdad974cecff7c29e63a62bab201dcfc4ef8dc66fbf98a1ea`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0b230fcbdefdd198addf6cbe0f54570d56a4911e32d18dd3e078ca5ef6e3f4`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7b94617de8eafa93f8edfe024c42ca49ad2f032934919f3f3653b0cfc70bef`  
		Last Modified: Tue, 13 Jun 2017 20:28:30 GMT  
		Size: 35.9 MB (35886834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa62c5cfacdfe42b384f67005531c5715df3036f5f2bb327deb27b80211ed7db`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.9 MB (1903745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:098398e7e519fb1471dbe92fc8bd9acb926e8b70bed520c0aba7e3bd65e90a93`  
		Last Modified: Tue, 13 Jun 2017 20:28:16 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a30ed405c0f2afc1e0231f763772c30ce96e4612a2360d7491bcfd0547b7ed7`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3404cdd1ee2edd13cf6d30ed33d8d3f2d3645a87b0ab17cdb68eb29a8b3e4293`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.3 MB (1321315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b262bfd45ac7f555b5fa940e6201a0eef63defc4748485a28e6c67405bfc20`  
		Last Modified: Tue, 13 Jun 2017 20:28:35 GMT  
		Size: 43.5 MB (43528757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da36910feaece50d35454dc95d5eeb7b3888ff432e9f647b5da0c02e3eb8fbf`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e79a35b8f79027d1fa70ce7329f6917b7d5e589db70a4c6a060b25c73e9c07`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0.3-fpm`

```console
$ docker pull nextcloud@sha256:31c6e509a988732817066374bb6a5800af852af772ab460bff0939d97fbd5e74
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0.3-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243694541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:149b2ea660089963bdc5a10c58308072fbe5e71ef998448b0066eb74d2de197f`
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
# Mon, 12 Jun 2017 21:30:40 GMT
ENV PHP_VERSION=7.1.6
# Mon, 12 Jun 2017 21:30:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 12 Jun 2017 21:30:42 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 12 Jun 2017 21:31:00 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 12 Jun 2017 21:31:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:36:05 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 12 Jun 2017 21:36:07 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:36:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 12 Jun 2017 21:36:09 GMT
WORKDIR /var/www/html
# Mon, 12 Jun 2017 21:36:11 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 12 Jun 2017 21:36:12 GMT
EXPOSE 9000/tcp
# Mon, 12 Jun 2017 21:36:35 GMT
CMD ["php-fpm"]
# Tue, 13 Jun 2017 20:11:06 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 20:13:26 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 13 Jun 2017 20:13:47 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 13 Jun 2017 20:14:20 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Tue, 13 Jun 2017 20:14:39 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Tue, 13 Jun 2017 20:14:40 GMT
VOLUME [/var/www/html]
# Tue, 13 Jun 2017 20:15:28 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Tue, 13 Jun 2017 20:15:36 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Tue, 13 Jun 2017 20:15:38 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Tue, 13 Jun 2017 20:16:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Jun 2017 20:16:24 GMT
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
	-	`sha256:8a66728ddbcc65e38ed51a86286a82c1f191b9e82eb8fda15adcc62c22bc0c6e`  
		Last Modified: Mon, 12 Jun 2017 22:47:23 GMT  
		Size: 12.9 MB (12918502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b511f9bc5eba5124fc4d2ef156afbdfb6536a9a05773b4ecae30b51a36e1fb60`  
		Last Modified: Mon, 12 Jun 2017 22:47:20 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2461b6d8ebef40f80da2120fc5c45a41b1fbbb3316468db3596779650a3eac83`  
		Last Modified: Mon, 12 Jun 2017 22:47:27 GMT  
		Size: 13.1 MB (13081453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00e9ea1bd54fb32d8394ca4fa2c4edc9dda30d65526540a8e5f1e273d55f127`  
		Last Modified: Mon, 12 Jun 2017 22:47:21 GMT  
		Size: 2.1 KB (2119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d5ba26fa4dd5ec79b6f02ff3b9a39676db32af533482902db99b28cbc36517`  
		Last Modified: Mon, 12 Jun 2017 22:47:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934114df47279c6c4271620f15c8d4aeb6aa380504c7f851b95092ed86ebfc69`  
		Last Modified: Mon, 12 Jun 2017 22:47:21 GMT  
		Size: 7.7 KB (7672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348af51372cf12dd952f4fb325d7ded01551568d1ef1f01e87affb32dcb432a4`  
		Last Modified: Tue, 13 Jun 2017 20:33:51 GMT  
		Size: 35.9 MB (35866591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984dd189c9d726ca90180cae201bbefb1b0af3ff6d48bfc66386d661909a2b36`  
		Last Modified: Tue, 13 Jun 2017 20:33:37 GMT  
		Size: 1.9 MB (1903931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7127d1cf38c363fa8504bcea2948aefaeb40e97c66c61aaae3b3dc48d06517f1`  
		Last Modified: Tue, 13 Jun 2017 20:33:36 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5f040dd8fe2182ac9d2ad690097770734657074bb373545ae5354300776534`  
		Last Modified: Tue, 13 Jun 2017 20:33:37 GMT  
		Size: 1.3 MB (1321325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67228046c35102757568b5be47712e0c55e58dbe106bf91b9c2025514310f270`  
		Last Modified: Tue, 13 Jun 2017 20:33:54 GMT  
		Size: 43.5 MB (43528747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5281717c5740e185e60f898ed4ff02894a3d40d23b4d1c22d033513e9b01c372`  
		Last Modified: Tue, 13 Jun 2017 20:33:37 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5b6ada9cec8cb404c2b66880d33ff58d24cdc3258ed95ce42850fce21f0340`  
		Last Modified: Tue, 13 Jun 2017 20:33:37 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0-fpm`

```console
$ docker pull nextcloud@sha256:31c6e509a988732817066374bb6a5800af852af772ab460bff0939d97fbd5e74
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243694541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:149b2ea660089963bdc5a10c58308072fbe5e71ef998448b0066eb74d2de197f`
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
# Mon, 12 Jun 2017 21:30:40 GMT
ENV PHP_VERSION=7.1.6
# Mon, 12 Jun 2017 21:30:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 12 Jun 2017 21:30:42 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 12 Jun 2017 21:31:00 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 12 Jun 2017 21:31:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:36:05 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 12 Jun 2017 21:36:07 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:36:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 12 Jun 2017 21:36:09 GMT
WORKDIR /var/www/html
# Mon, 12 Jun 2017 21:36:11 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 12 Jun 2017 21:36:12 GMT
EXPOSE 9000/tcp
# Mon, 12 Jun 2017 21:36:35 GMT
CMD ["php-fpm"]
# Tue, 13 Jun 2017 20:11:06 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 20:13:26 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 13 Jun 2017 20:13:47 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 13 Jun 2017 20:14:20 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Tue, 13 Jun 2017 20:14:39 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Tue, 13 Jun 2017 20:14:40 GMT
VOLUME [/var/www/html]
# Tue, 13 Jun 2017 20:15:28 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Tue, 13 Jun 2017 20:15:36 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Tue, 13 Jun 2017 20:15:38 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Tue, 13 Jun 2017 20:16:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Jun 2017 20:16:24 GMT
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
	-	`sha256:8a66728ddbcc65e38ed51a86286a82c1f191b9e82eb8fda15adcc62c22bc0c6e`  
		Last Modified: Mon, 12 Jun 2017 22:47:23 GMT  
		Size: 12.9 MB (12918502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b511f9bc5eba5124fc4d2ef156afbdfb6536a9a05773b4ecae30b51a36e1fb60`  
		Last Modified: Mon, 12 Jun 2017 22:47:20 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2461b6d8ebef40f80da2120fc5c45a41b1fbbb3316468db3596779650a3eac83`  
		Last Modified: Mon, 12 Jun 2017 22:47:27 GMT  
		Size: 13.1 MB (13081453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00e9ea1bd54fb32d8394ca4fa2c4edc9dda30d65526540a8e5f1e273d55f127`  
		Last Modified: Mon, 12 Jun 2017 22:47:21 GMT  
		Size: 2.1 KB (2119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d5ba26fa4dd5ec79b6f02ff3b9a39676db32af533482902db99b28cbc36517`  
		Last Modified: Mon, 12 Jun 2017 22:47:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934114df47279c6c4271620f15c8d4aeb6aa380504c7f851b95092ed86ebfc69`  
		Last Modified: Mon, 12 Jun 2017 22:47:21 GMT  
		Size: 7.7 KB (7672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348af51372cf12dd952f4fb325d7ded01551568d1ef1f01e87affb32dcb432a4`  
		Last Modified: Tue, 13 Jun 2017 20:33:51 GMT  
		Size: 35.9 MB (35866591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984dd189c9d726ca90180cae201bbefb1b0af3ff6d48bfc66386d661909a2b36`  
		Last Modified: Tue, 13 Jun 2017 20:33:37 GMT  
		Size: 1.9 MB (1903931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7127d1cf38c363fa8504bcea2948aefaeb40e97c66c61aaae3b3dc48d06517f1`  
		Last Modified: Tue, 13 Jun 2017 20:33:36 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5f040dd8fe2182ac9d2ad690097770734657074bb373545ae5354300776534`  
		Last Modified: Tue, 13 Jun 2017 20:33:37 GMT  
		Size: 1.3 MB (1321325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67228046c35102757568b5be47712e0c55e58dbe106bf91b9c2025514310f270`  
		Last Modified: Tue, 13 Jun 2017 20:33:54 GMT  
		Size: 43.5 MB (43528747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5281717c5740e185e60f898ed4ff02894a3d40d23b4d1c22d033513e9b01c372`  
		Last Modified: Tue, 13 Jun 2017 20:33:37 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5b6ada9cec8cb404c2b66880d33ff58d24cdc3258ed95ce42850fce21f0340`  
		Last Modified: Tue, 13 Jun 2017 20:33:37 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11-fpm`

```console
$ docker pull nextcloud@sha256:31c6e509a988732817066374bb6a5800af852af772ab460bff0939d97fbd5e74
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243694541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:149b2ea660089963bdc5a10c58308072fbe5e71ef998448b0066eb74d2de197f`
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
# Mon, 12 Jun 2017 21:30:40 GMT
ENV PHP_VERSION=7.1.6
# Mon, 12 Jun 2017 21:30:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 12 Jun 2017 21:30:42 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 12 Jun 2017 21:31:00 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 12 Jun 2017 21:31:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:36:05 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 12 Jun 2017 21:36:07 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:36:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 12 Jun 2017 21:36:09 GMT
WORKDIR /var/www/html
# Mon, 12 Jun 2017 21:36:11 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 12 Jun 2017 21:36:12 GMT
EXPOSE 9000/tcp
# Mon, 12 Jun 2017 21:36:35 GMT
CMD ["php-fpm"]
# Tue, 13 Jun 2017 20:11:06 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 20:13:26 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 13 Jun 2017 20:13:47 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 13 Jun 2017 20:14:20 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Tue, 13 Jun 2017 20:14:39 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Tue, 13 Jun 2017 20:14:40 GMT
VOLUME [/var/www/html]
# Tue, 13 Jun 2017 20:15:28 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Tue, 13 Jun 2017 20:15:36 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Tue, 13 Jun 2017 20:15:38 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Tue, 13 Jun 2017 20:16:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Jun 2017 20:16:24 GMT
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
	-	`sha256:8a66728ddbcc65e38ed51a86286a82c1f191b9e82eb8fda15adcc62c22bc0c6e`  
		Last Modified: Mon, 12 Jun 2017 22:47:23 GMT  
		Size: 12.9 MB (12918502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b511f9bc5eba5124fc4d2ef156afbdfb6536a9a05773b4ecae30b51a36e1fb60`  
		Last Modified: Mon, 12 Jun 2017 22:47:20 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2461b6d8ebef40f80da2120fc5c45a41b1fbbb3316468db3596779650a3eac83`  
		Last Modified: Mon, 12 Jun 2017 22:47:27 GMT  
		Size: 13.1 MB (13081453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00e9ea1bd54fb32d8394ca4fa2c4edc9dda30d65526540a8e5f1e273d55f127`  
		Last Modified: Mon, 12 Jun 2017 22:47:21 GMT  
		Size: 2.1 KB (2119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d5ba26fa4dd5ec79b6f02ff3b9a39676db32af533482902db99b28cbc36517`  
		Last Modified: Mon, 12 Jun 2017 22:47:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934114df47279c6c4271620f15c8d4aeb6aa380504c7f851b95092ed86ebfc69`  
		Last Modified: Mon, 12 Jun 2017 22:47:21 GMT  
		Size: 7.7 KB (7672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348af51372cf12dd952f4fb325d7ded01551568d1ef1f01e87affb32dcb432a4`  
		Last Modified: Tue, 13 Jun 2017 20:33:51 GMT  
		Size: 35.9 MB (35866591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984dd189c9d726ca90180cae201bbefb1b0af3ff6d48bfc66386d661909a2b36`  
		Last Modified: Tue, 13 Jun 2017 20:33:37 GMT  
		Size: 1.9 MB (1903931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7127d1cf38c363fa8504bcea2948aefaeb40e97c66c61aaae3b3dc48d06517f1`  
		Last Modified: Tue, 13 Jun 2017 20:33:36 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5f040dd8fe2182ac9d2ad690097770734657074bb373545ae5354300776534`  
		Last Modified: Tue, 13 Jun 2017 20:33:37 GMT  
		Size: 1.3 MB (1321325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67228046c35102757568b5be47712e0c55e58dbe106bf91b9c2025514310f270`  
		Last Modified: Tue, 13 Jun 2017 20:33:54 GMT  
		Size: 43.5 MB (43528747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5281717c5740e185e60f898ed4ff02894a3d40d23b4d1c22d033513e9b01c372`  
		Last Modified: Tue, 13 Jun 2017 20:33:37 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5b6ada9cec8cb404c2b66880d33ff58d24cdc3258ed95ce42850fce21f0340`  
		Last Modified: Tue, 13 Jun 2017 20:33:37 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0.0-apache`

```console
$ docker pull nextcloud@sha256:219e6d36703a7d48210b41f2059ed1697f928186a4d959f952941f12ef5e4c27
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0.0-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.2 MB (249174886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05772bd3c31496031a26162c6f62c0d48728cf17c3cfb2e0cc295d404fd8a9c9`
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
# Mon, 12 Jun 2017 21:25:40 GMT
ENV PHP_VERSION=7.1.6
# Mon, 12 Jun 2017 21:25:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 12 Jun 2017 21:25:42 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 12 Jun 2017 21:25:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 12 Jun 2017 21:26:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 12 Jun 2017 21:29:29 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 12 Jun 2017 21:29:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:53 GMT
WORKDIR /var/www/html
# Mon, 12 Jun 2017 21:29:54 GMT
EXPOSE 80/tcp
# Mon, 12 Jun 2017 21:29:55 GMT
CMD ["apache2-foreground"]
# Tue, 13 Jun 2017 20:03:32 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 20:06:16 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 13 Jun 2017 20:06:35 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 13 Jun 2017 20:06:38 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:07:33 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Tue, 13 Jun 2017 20:07:51 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:17:34 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Tue, 13 Jun 2017 20:17:35 GMT
VOLUME [/var/www/html]
# Tue, 13 Jun 2017 20:17:53 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Tue, 13 Jun 2017 20:18:07 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Tue, 13 Jun 2017 20:18:08 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Tue, 13 Jun 2017 20:18:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Jun 2017 20:18:32 GMT
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
	-	`sha256:bb1c26748177948f235ed99c1fcfd61050397b0ee9cb7b84ca929f21df4ae2ae`  
		Last Modified: Mon, 12 Jun 2017 22:43:58 GMT  
		Size: 12.9 MB (12935784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da13c3be7c59e0fa5668b53ec3aa8b07edf8bf42cf22a1fbae8e1a873f694a5`  
		Last Modified: Mon, 12 Jun 2017 22:43:57 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff6b729579a63e373e7f8fdc1e2e2961790486c7ee7321ad0e6d383ac7b50c7`  
		Last Modified: Mon, 12 Jun 2017 22:44:00 GMT  
		Size: 13.5 MB (13519537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfc8dc79e156d6bdad974cecff7c29e63a62bab201dcfc4ef8dc66fbf98a1ea`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0b230fcbdefdd198addf6cbe0f54570d56a4911e32d18dd3e078ca5ef6e3f4`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7b94617de8eafa93f8edfe024c42ca49ad2f032934919f3f3653b0cfc70bef`  
		Last Modified: Tue, 13 Jun 2017 20:28:30 GMT  
		Size: 35.9 MB (35886834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa62c5cfacdfe42b384f67005531c5715df3036f5f2bb327deb27b80211ed7db`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.9 MB (1903745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:098398e7e519fb1471dbe92fc8bd9acb926e8b70bed520c0aba7e3bd65e90a93`  
		Last Modified: Tue, 13 Jun 2017 20:28:16 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a30ed405c0f2afc1e0231f763772c30ce96e4612a2360d7491bcfd0547b7ed7`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3404cdd1ee2edd13cf6d30ed33d8d3f2d3645a87b0ab17cdb68eb29a8b3e4293`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.3 MB (1321315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ceba52acdea6fba920588c86438b872bb43329f33eb4bdcff5b44896c6f9a9`  
		Last Modified: Tue, 13 Jun 2017 20:36:31 GMT  
		Size: 45.8 MB (45754011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672e550c638185158fb7c001c228a72b566638cfcc186e46761a00705b04a24e`  
		Last Modified: Tue, 13 Jun 2017 20:36:20 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b4f20500789b5a2247e1aa277b03fa570459a898f3cd27dfa1f7d8c8e61e3f`  
		Last Modified: Tue, 13 Jun 2017 20:36:19 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0-apache`

```console
$ docker pull nextcloud@sha256:219e6d36703a7d48210b41f2059ed1697f928186a4d959f952941f12ef5e4c27
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.2 MB (249174886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05772bd3c31496031a26162c6f62c0d48728cf17c3cfb2e0cc295d404fd8a9c9`
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
# Mon, 12 Jun 2017 21:25:40 GMT
ENV PHP_VERSION=7.1.6
# Mon, 12 Jun 2017 21:25:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 12 Jun 2017 21:25:42 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 12 Jun 2017 21:25:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 12 Jun 2017 21:26:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 12 Jun 2017 21:29:29 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 12 Jun 2017 21:29:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:53 GMT
WORKDIR /var/www/html
# Mon, 12 Jun 2017 21:29:54 GMT
EXPOSE 80/tcp
# Mon, 12 Jun 2017 21:29:55 GMT
CMD ["apache2-foreground"]
# Tue, 13 Jun 2017 20:03:32 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 20:06:16 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 13 Jun 2017 20:06:35 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 13 Jun 2017 20:06:38 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:07:33 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Tue, 13 Jun 2017 20:07:51 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:17:34 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Tue, 13 Jun 2017 20:17:35 GMT
VOLUME [/var/www/html]
# Tue, 13 Jun 2017 20:17:53 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Tue, 13 Jun 2017 20:18:07 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Tue, 13 Jun 2017 20:18:08 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Tue, 13 Jun 2017 20:18:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Jun 2017 20:18:32 GMT
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
	-	`sha256:bb1c26748177948f235ed99c1fcfd61050397b0ee9cb7b84ca929f21df4ae2ae`  
		Last Modified: Mon, 12 Jun 2017 22:43:58 GMT  
		Size: 12.9 MB (12935784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da13c3be7c59e0fa5668b53ec3aa8b07edf8bf42cf22a1fbae8e1a873f694a5`  
		Last Modified: Mon, 12 Jun 2017 22:43:57 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff6b729579a63e373e7f8fdc1e2e2961790486c7ee7321ad0e6d383ac7b50c7`  
		Last Modified: Mon, 12 Jun 2017 22:44:00 GMT  
		Size: 13.5 MB (13519537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfc8dc79e156d6bdad974cecff7c29e63a62bab201dcfc4ef8dc66fbf98a1ea`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0b230fcbdefdd198addf6cbe0f54570d56a4911e32d18dd3e078ca5ef6e3f4`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7b94617de8eafa93f8edfe024c42ca49ad2f032934919f3f3653b0cfc70bef`  
		Last Modified: Tue, 13 Jun 2017 20:28:30 GMT  
		Size: 35.9 MB (35886834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa62c5cfacdfe42b384f67005531c5715df3036f5f2bb327deb27b80211ed7db`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.9 MB (1903745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:098398e7e519fb1471dbe92fc8bd9acb926e8b70bed520c0aba7e3bd65e90a93`  
		Last Modified: Tue, 13 Jun 2017 20:28:16 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a30ed405c0f2afc1e0231f763772c30ce96e4612a2360d7491bcfd0547b7ed7`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3404cdd1ee2edd13cf6d30ed33d8d3f2d3645a87b0ab17cdb68eb29a8b3e4293`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.3 MB (1321315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ceba52acdea6fba920588c86438b872bb43329f33eb4bdcff5b44896c6f9a9`  
		Last Modified: Tue, 13 Jun 2017 20:36:31 GMT  
		Size: 45.8 MB (45754011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672e550c638185158fb7c001c228a72b566638cfcc186e46761a00705b04a24e`  
		Last Modified: Tue, 13 Jun 2017 20:36:20 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b4f20500789b5a2247e1aa277b03fa570459a898f3cd27dfa1f7d8c8e61e3f`  
		Last Modified: Tue, 13 Jun 2017 20:36:19 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12-apache`

```console
$ docker pull nextcloud@sha256:219e6d36703a7d48210b41f2059ed1697f928186a4d959f952941f12ef5e4c27
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.2 MB (249174886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05772bd3c31496031a26162c6f62c0d48728cf17c3cfb2e0cc295d404fd8a9c9`
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
# Mon, 12 Jun 2017 21:25:40 GMT
ENV PHP_VERSION=7.1.6
# Mon, 12 Jun 2017 21:25:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 12 Jun 2017 21:25:42 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 12 Jun 2017 21:25:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 12 Jun 2017 21:26:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 12 Jun 2017 21:29:29 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 12 Jun 2017 21:29:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:53 GMT
WORKDIR /var/www/html
# Mon, 12 Jun 2017 21:29:54 GMT
EXPOSE 80/tcp
# Mon, 12 Jun 2017 21:29:55 GMT
CMD ["apache2-foreground"]
# Tue, 13 Jun 2017 20:03:32 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 20:06:16 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 13 Jun 2017 20:06:35 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 13 Jun 2017 20:06:38 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:07:33 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Tue, 13 Jun 2017 20:07:51 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:17:34 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Tue, 13 Jun 2017 20:17:35 GMT
VOLUME [/var/www/html]
# Tue, 13 Jun 2017 20:17:53 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Tue, 13 Jun 2017 20:18:07 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Tue, 13 Jun 2017 20:18:08 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Tue, 13 Jun 2017 20:18:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Jun 2017 20:18:32 GMT
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
	-	`sha256:bb1c26748177948f235ed99c1fcfd61050397b0ee9cb7b84ca929f21df4ae2ae`  
		Last Modified: Mon, 12 Jun 2017 22:43:58 GMT  
		Size: 12.9 MB (12935784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da13c3be7c59e0fa5668b53ec3aa8b07edf8bf42cf22a1fbae8e1a873f694a5`  
		Last Modified: Mon, 12 Jun 2017 22:43:57 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff6b729579a63e373e7f8fdc1e2e2961790486c7ee7321ad0e6d383ac7b50c7`  
		Last Modified: Mon, 12 Jun 2017 22:44:00 GMT  
		Size: 13.5 MB (13519537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfc8dc79e156d6bdad974cecff7c29e63a62bab201dcfc4ef8dc66fbf98a1ea`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0b230fcbdefdd198addf6cbe0f54570d56a4911e32d18dd3e078ca5ef6e3f4`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7b94617de8eafa93f8edfe024c42ca49ad2f032934919f3f3653b0cfc70bef`  
		Last Modified: Tue, 13 Jun 2017 20:28:30 GMT  
		Size: 35.9 MB (35886834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa62c5cfacdfe42b384f67005531c5715df3036f5f2bb327deb27b80211ed7db`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.9 MB (1903745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:098398e7e519fb1471dbe92fc8bd9acb926e8b70bed520c0aba7e3bd65e90a93`  
		Last Modified: Tue, 13 Jun 2017 20:28:16 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a30ed405c0f2afc1e0231f763772c30ce96e4612a2360d7491bcfd0547b7ed7`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3404cdd1ee2edd13cf6d30ed33d8d3f2d3645a87b0ab17cdb68eb29a8b3e4293`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.3 MB (1321315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ceba52acdea6fba920588c86438b872bb43329f33eb4bdcff5b44896c6f9a9`  
		Last Modified: Tue, 13 Jun 2017 20:36:31 GMT  
		Size: 45.8 MB (45754011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672e550c638185158fb7c001c228a72b566638cfcc186e46761a00705b04a24e`  
		Last Modified: Tue, 13 Jun 2017 20:36:20 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b4f20500789b5a2247e1aa277b03fa570459a898f3cd27dfa1f7d8c8e61e3f`  
		Last Modified: Tue, 13 Jun 2017 20:36:19 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:apache`

```console
$ docker pull nextcloud@sha256:219e6d36703a7d48210b41f2059ed1697f928186a4d959f952941f12ef5e4c27
```

-	Platforms:
	-	linux; amd64

### `nextcloud:apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.2 MB (249174886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05772bd3c31496031a26162c6f62c0d48728cf17c3cfb2e0cc295d404fd8a9c9`
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
# Mon, 12 Jun 2017 21:25:40 GMT
ENV PHP_VERSION=7.1.6
# Mon, 12 Jun 2017 21:25:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 12 Jun 2017 21:25:42 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 12 Jun 2017 21:25:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 12 Jun 2017 21:26:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 12 Jun 2017 21:29:29 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 12 Jun 2017 21:29:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:53 GMT
WORKDIR /var/www/html
# Mon, 12 Jun 2017 21:29:54 GMT
EXPOSE 80/tcp
# Mon, 12 Jun 2017 21:29:55 GMT
CMD ["apache2-foreground"]
# Tue, 13 Jun 2017 20:03:32 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 20:06:16 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 13 Jun 2017 20:06:35 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 13 Jun 2017 20:06:38 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:07:33 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Tue, 13 Jun 2017 20:07:51 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:17:34 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Tue, 13 Jun 2017 20:17:35 GMT
VOLUME [/var/www/html]
# Tue, 13 Jun 2017 20:17:53 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Tue, 13 Jun 2017 20:18:07 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Tue, 13 Jun 2017 20:18:08 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Tue, 13 Jun 2017 20:18:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Jun 2017 20:18:32 GMT
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
	-	`sha256:bb1c26748177948f235ed99c1fcfd61050397b0ee9cb7b84ca929f21df4ae2ae`  
		Last Modified: Mon, 12 Jun 2017 22:43:58 GMT  
		Size: 12.9 MB (12935784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da13c3be7c59e0fa5668b53ec3aa8b07edf8bf42cf22a1fbae8e1a873f694a5`  
		Last Modified: Mon, 12 Jun 2017 22:43:57 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff6b729579a63e373e7f8fdc1e2e2961790486c7ee7321ad0e6d383ac7b50c7`  
		Last Modified: Mon, 12 Jun 2017 22:44:00 GMT  
		Size: 13.5 MB (13519537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfc8dc79e156d6bdad974cecff7c29e63a62bab201dcfc4ef8dc66fbf98a1ea`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0b230fcbdefdd198addf6cbe0f54570d56a4911e32d18dd3e078ca5ef6e3f4`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7b94617de8eafa93f8edfe024c42ca49ad2f032934919f3f3653b0cfc70bef`  
		Last Modified: Tue, 13 Jun 2017 20:28:30 GMT  
		Size: 35.9 MB (35886834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa62c5cfacdfe42b384f67005531c5715df3036f5f2bb327deb27b80211ed7db`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.9 MB (1903745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:098398e7e519fb1471dbe92fc8bd9acb926e8b70bed520c0aba7e3bd65e90a93`  
		Last Modified: Tue, 13 Jun 2017 20:28:16 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a30ed405c0f2afc1e0231f763772c30ce96e4612a2360d7491bcfd0547b7ed7`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3404cdd1ee2edd13cf6d30ed33d8d3f2d3645a87b0ab17cdb68eb29a8b3e4293`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.3 MB (1321315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ceba52acdea6fba920588c86438b872bb43329f33eb4bdcff5b44896c6f9a9`  
		Last Modified: Tue, 13 Jun 2017 20:36:31 GMT  
		Size: 45.8 MB (45754011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672e550c638185158fb7c001c228a72b566638cfcc186e46761a00705b04a24e`  
		Last Modified: Tue, 13 Jun 2017 20:36:20 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b4f20500789b5a2247e1aa277b03fa570459a898f3cd27dfa1f7d8c8e61e3f`  
		Last Modified: Tue, 13 Jun 2017 20:36:19 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0.0`

```console
$ docker pull nextcloud@sha256:219e6d36703a7d48210b41f2059ed1697f928186a4d959f952941f12ef5e4c27
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.2 MB (249174886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05772bd3c31496031a26162c6f62c0d48728cf17c3cfb2e0cc295d404fd8a9c9`
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
# Mon, 12 Jun 2017 21:25:40 GMT
ENV PHP_VERSION=7.1.6
# Mon, 12 Jun 2017 21:25:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 12 Jun 2017 21:25:42 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 12 Jun 2017 21:25:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 12 Jun 2017 21:26:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 12 Jun 2017 21:29:29 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 12 Jun 2017 21:29:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:53 GMT
WORKDIR /var/www/html
# Mon, 12 Jun 2017 21:29:54 GMT
EXPOSE 80/tcp
# Mon, 12 Jun 2017 21:29:55 GMT
CMD ["apache2-foreground"]
# Tue, 13 Jun 2017 20:03:32 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 20:06:16 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 13 Jun 2017 20:06:35 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 13 Jun 2017 20:06:38 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:07:33 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Tue, 13 Jun 2017 20:07:51 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:17:34 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Tue, 13 Jun 2017 20:17:35 GMT
VOLUME [/var/www/html]
# Tue, 13 Jun 2017 20:17:53 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Tue, 13 Jun 2017 20:18:07 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Tue, 13 Jun 2017 20:18:08 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Tue, 13 Jun 2017 20:18:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Jun 2017 20:18:32 GMT
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
	-	`sha256:bb1c26748177948f235ed99c1fcfd61050397b0ee9cb7b84ca929f21df4ae2ae`  
		Last Modified: Mon, 12 Jun 2017 22:43:58 GMT  
		Size: 12.9 MB (12935784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da13c3be7c59e0fa5668b53ec3aa8b07edf8bf42cf22a1fbae8e1a873f694a5`  
		Last Modified: Mon, 12 Jun 2017 22:43:57 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff6b729579a63e373e7f8fdc1e2e2961790486c7ee7321ad0e6d383ac7b50c7`  
		Last Modified: Mon, 12 Jun 2017 22:44:00 GMT  
		Size: 13.5 MB (13519537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfc8dc79e156d6bdad974cecff7c29e63a62bab201dcfc4ef8dc66fbf98a1ea`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0b230fcbdefdd198addf6cbe0f54570d56a4911e32d18dd3e078ca5ef6e3f4`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7b94617de8eafa93f8edfe024c42ca49ad2f032934919f3f3653b0cfc70bef`  
		Last Modified: Tue, 13 Jun 2017 20:28:30 GMT  
		Size: 35.9 MB (35886834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa62c5cfacdfe42b384f67005531c5715df3036f5f2bb327deb27b80211ed7db`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.9 MB (1903745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:098398e7e519fb1471dbe92fc8bd9acb926e8b70bed520c0aba7e3bd65e90a93`  
		Last Modified: Tue, 13 Jun 2017 20:28:16 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a30ed405c0f2afc1e0231f763772c30ce96e4612a2360d7491bcfd0547b7ed7`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3404cdd1ee2edd13cf6d30ed33d8d3f2d3645a87b0ab17cdb68eb29a8b3e4293`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.3 MB (1321315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ceba52acdea6fba920588c86438b872bb43329f33eb4bdcff5b44896c6f9a9`  
		Last Modified: Tue, 13 Jun 2017 20:36:31 GMT  
		Size: 45.8 MB (45754011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672e550c638185158fb7c001c228a72b566638cfcc186e46761a00705b04a24e`  
		Last Modified: Tue, 13 Jun 2017 20:36:20 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b4f20500789b5a2247e1aa277b03fa570459a898f3cd27dfa1f7d8c8e61e3f`  
		Last Modified: Tue, 13 Jun 2017 20:36:19 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0`

```console
$ docker pull nextcloud@sha256:219e6d36703a7d48210b41f2059ed1697f928186a4d959f952941f12ef5e4c27
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.2 MB (249174886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05772bd3c31496031a26162c6f62c0d48728cf17c3cfb2e0cc295d404fd8a9c9`
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
# Mon, 12 Jun 2017 21:25:40 GMT
ENV PHP_VERSION=7.1.6
# Mon, 12 Jun 2017 21:25:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 12 Jun 2017 21:25:42 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 12 Jun 2017 21:25:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 12 Jun 2017 21:26:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 12 Jun 2017 21:29:29 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 12 Jun 2017 21:29:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:53 GMT
WORKDIR /var/www/html
# Mon, 12 Jun 2017 21:29:54 GMT
EXPOSE 80/tcp
# Mon, 12 Jun 2017 21:29:55 GMT
CMD ["apache2-foreground"]
# Tue, 13 Jun 2017 20:03:32 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 20:06:16 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 13 Jun 2017 20:06:35 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 13 Jun 2017 20:06:38 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:07:33 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Tue, 13 Jun 2017 20:07:51 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:17:34 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Tue, 13 Jun 2017 20:17:35 GMT
VOLUME [/var/www/html]
# Tue, 13 Jun 2017 20:17:53 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Tue, 13 Jun 2017 20:18:07 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Tue, 13 Jun 2017 20:18:08 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Tue, 13 Jun 2017 20:18:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Jun 2017 20:18:32 GMT
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
	-	`sha256:bb1c26748177948f235ed99c1fcfd61050397b0ee9cb7b84ca929f21df4ae2ae`  
		Last Modified: Mon, 12 Jun 2017 22:43:58 GMT  
		Size: 12.9 MB (12935784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da13c3be7c59e0fa5668b53ec3aa8b07edf8bf42cf22a1fbae8e1a873f694a5`  
		Last Modified: Mon, 12 Jun 2017 22:43:57 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff6b729579a63e373e7f8fdc1e2e2961790486c7ee7321ad0e6d383ac7b50c7`  
		Last Modified: Mon, 12 Jun 2017 22:44:00 GMT  
		Size: 13.5 MB (13519537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfc8dc79e156d6bdad974cecff7c29e63a62bab201dcfc4ef8dc66fbf98a1ea`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0b230fcbdefdd198addf6cbe0f54570d56a4911e32d18dd3e078ca5ef6e3f4`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7b94617de8eafa93f8edfe024c42ca49ad2f032934919f3f3653b0cfc70bef`  
		Last Modified: Tue, 13 Jun 2017 20:28:30 GMT  
		Size: 35.9 MB (35886834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa62c5cfacdfe42b384f67005531c5715df3036f5f2bb327deb27b80211ed7db`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.9 MB (1903745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:098398e7e519fb1471dbe92fc8bd9acb926e8b70bed520c0aba7e3bd65e90a93`  
		Last Modified: Tue, 13 Jun 2017 20:28:16 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a30ed405c0f2afc1e0231f763772c30ce96e4612a2360d7491bcfd0547b7ed7`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3404cdd1ee2edd13cf6d30ed33d8d3f2d3645a87b0ab17cdb68eb29a8b3e4293`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.3 MB (1321315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ceba52acdea6fba920588c86438b872bb43329f33eb4bdcff5b44896c6f9a9`  
		Last Modified: Tue, 13 Jun 2017 20:36:31 GMT  
		Size: 45.8 MB (45754011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672e550c638185158fb7c001c228a72b566638cfcc186e46761a00705b04a24e`  
		Last Modified: Tue, 13 Jun 2017 20:36:20 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b4f20500789b5a2247e1aa277b03fa570459a898f3cd27dfa1f7d8c8e61e3f`  
		Last Modified: Tue, 13 Jun 2017 20:36:19 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12`

```console
$ docker pull nextcloud@sha256:219e6d36703a7d48210b41f2059ed1697f928186a4d959f952941f12ef5e4c27
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.2 MB (249174886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05772bd3c31496031a26162c6f62c0d48728cf17c3cfb2e0cc295d404fd8a9c9`
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
# Mon, 12 Jun 2017 21:25:40 GMT
ENV PHP_VERSION=7.1.6
# Mon, 12 Jun 2017 21:25:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 12 Jun 2017 21:25:42 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 12 Jun 2017 21:25:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 12 Jun 2017 21:26:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 12 Jun 2017 21:29:29 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 12 Jun 2017 21:29:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:53 GMT
WORKDIR /var/www/html
# Mon, 12 Jun 2017 21:29:54 GMT
EXPOSE 80/tcp
# Mon, 12 Jun 2017 21:29:55 GMT
CMD ["apache2-foreground"]
# Tue, 13 Jun 2017 20:03:32 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 20:06:16 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 13 Jun 2017 20:06:35 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 13 Jun 2017 20:06:38 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:07:33 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Tue, 13 Jun 2017 20:07:51 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:17:34 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Tue, 13 Jun 2017 20:17:35 GMT
VOLUME [/var/www/html]
# Tue, 13 Jun 2017 20:17:53 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Tue, 13 Jun 2017 20:18:07 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Tue, 13 Jun 2017 20:18:08 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Tue, 13 Jun 2017 20:18:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Jun 2017 20:18:32 GMT
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
	-	`sha256:bb1c26748177948f235ed99c1fcfd61050397b0ee9cb7b84ca929f21df4ae2ae`  
		Last Modified: Mon, 12 Jun 2017 22:43:58 GMT  
		Size: 12.9 MB (12935784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da13c3be7c59e0fa5668b53ec3aa8b07edf8bf42cf22a1fbae8e1a873f694a5`  
		Last Modified: Mon, 12 Jun 2017 22:43:57 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff6b729579a63e373e7f8fdc1e2e2961790486c7ee7321ad0e6d383ac7b50c7`  
		Last Modified: Mon, 12 Jun 2017 22:44:00 GMT  
		Size: 13.5 MB (13519537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfc8dc79e156d6bdad974cecff7c29e63a62bab201dcfc4ef8dc66fbf98a1ea`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0b230fcbdefdd198addf6cbe0f54570d56a4911e32d18dd3e078ca5ef6e3f4`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7b94617de8eafa93f8edfe024c42ca49ad2f032934919f3f3653b0cfc70bef`  
		Last Modified: Tue, 13 Jun 2017 20:28:30 GMT  
		Size: 35.9 MB (35886834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa62c5cfacdfe42b384f67005531c5715df3036f5f2bb327deb27b80211ed7db`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.9 MB (1903745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:098398e7e519fb1471dbe92fc8bd9acb926e8b70bed520c0aba7e3bd65e90a93`  
		Last Modified: Tue, 13 Jun 2017 20:28:16 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a30ed405c0f2afc1e0231f763772c30ce96e4612a2360d7491bcfd0547b7ed7`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3404cdd1ee2edd13cf6d30ed33d8d3f2d3645a87b0ab17cdb68eb29a8b3e4293`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.3 MB (1321315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ceba52acdea6fba920588c86438b872bb43329f33eb4bdcff5b44896c6f9a9`  
		Last Modified: Tue, 13 Jun 2017 20:36:31 GMT  
		Size: 45.8 MB (45754011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672e550c638185158fb7c001c228a72b566638cfcc186e46761a00705b04a24e`  
		Last Modified: Tue, 13 Jun 2017 20:36:20 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b4f20500789b5a2247e1aa277b03fa570459a898f3cd27dfa1f7d8c8e61e3f`  
		Last Modified: Tue, 13 Jun 2017 20:36:19 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:latest`

```console
$ docker pull nextcloud@sha256:219e6d36703a7d48210b41f2059ed1697f928186a4d959f952941f12ef5e4c27
```

-	Platforms:
	-	linux; amd64

### `nextcloud:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.2 MB (249174886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05772bd3c31496031a26162c6f62c0d48728cf17c3cfb2e0cc295d404fd8a9c9`
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
# Mon, 12 Jun 2017 21:25:40 GMT
ENV PHP_VERSION=7.1.6
# Mon, 12 Jun 2017 21:25:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 12 Jun 2017 21:25:42 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 12 Jun 2017 21:25:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 12 Jun 2017 21:26:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:22 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 12 Jun 2017 21:29:29 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 12 Jun 2017 21:29:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:29:53 GMT
WORKDIR /var/www/html
# Mon, 12 Jun 2017 21:29:54 GMT
EXPOSE 80/tcp
# Mon, 12 Jun 2017 21:29:55 GMT
CMD ["apache2-foreground"]
# Tue, 13 Jun 2017 20:03:32 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 20:06:16 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 13 Jun 2017 20:06:35 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 13 Jun 2017 20:06:38 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:07:33 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Tue, 13 Jun 2017 20:07:51 GMT
RUN a2enmod rewrite
# Tue, 13 Jun 2017 20:17:34 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Tue, 13 Jun 2017 20:17:35 GMT
VOLUME [/var/www/html]
# Tue, 13 Jun 2017 20:17:53 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Tue, 13 Jun 2017 20:18:07 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Tue, 13 Jun 2017 20:18:08 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Tue, 13 Jun 2017 20:18:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Jun 2017 20:18:32 GMT
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
	-	`sha256:bb1c26748177948f235ed99c1fcfd61050397b0ee9cb7b84ca929f21df4ae2ae`  
		Last Modified: Mon, 12 Jun 2017 22:43:58 GMT  
		Size: 12.9 MB (12935784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da13c3be7c59e0fa5668b53ec3aa8b07edf8bf42cf22a1fbae8e1a873f694a5`  
		Last Modified: Mon, 12 Jun 2017 22:43:57 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff6b729579a63e373e7f8fdc1e2e2961790486c7ee7321ad0e6d383ac7b50c7`  
		Last Modified: Mon, 12 Jun 2017 22:44:00 GMT  
		Size: 13.5 MB (13519537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfc8dc79e156d6bdad974cecff7c29e63a62bab201dcfc4ef8dc66fbf98a1ea`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0b230fcbdefdd198addf6cbe0f54570d56a4911e32d18dd3e078ca5ef6e3f4`  
		Last Modified: Mon, 12 Jun 2017 22:43:56 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7b94617de8eafa93f8edfe024c42ca49ad2f032934919f3f3653b0cfc70bef`  
		Last Modified: Tue, 13 Jun 2017 20:28:30 GMT  
		Size: 35.9 MB (35886834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa62c5cfacdfe42b384f67005531c5715df3036f5f2bb327deb27b80211ed7db`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.9 MB (1903745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:098398e7e519fb1471dbe92fc8bd9acb926e8b70bed520c0aba7e3bd65e90a93`  
		Last Modified: Tue, 13 Jun 2017 20:28:16 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a30ed405c0f2afc1e0231f763772c30ce96e4612a2360d7491bcfd0547b7ed7`  
		Last Modified: Tue, 13 Jun 2017 20:28:15 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3404cdd1ee2edd13cf6d30ed33d8d3f2d3645a87b0ab17cdb68eb29a8b3e4293`  
		Last Modified: Tue, 13 Jun 2017 20:28:18 GMT  
		Size: 1.3 MB (1321315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ceba52acdea6fba920588c86438b872bb43329f33eb4bdcff5b44896c6f9a9`  
		Last Modified: Tue, 13 Jun 2017 20:36:31 GMT  
		Size: 45.8 MB (45754011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672e550c638185158fb7c001c228a72b566638cfcc186e46761a00705b04a24e`  
		Last Modified: Tue, 13 Jun 2017 20:36:20 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b4f20500789b5a2247e1aa277b03fa570459a898f3cd27dfa1f7d8c8e61e3f`  
		Last Modified: Tue, 13 Jun 2017 20:36:19 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0.0-fpm`

```console
$ docker pull nextcloud@sha256:c255b1d51e6e2c528bdd63ec381568d5e610ca60abe6cc84ddb287d731509112
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0.0-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.9 MB (245919819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a81b406bc1fcfa7c5116ced11c03426c51cbd006049fb05e8ee8f89b36018c83`
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
# Mon, 12 Jun 2017 21:30:40 GMT
ENV PHP_VERSION=7.1.6
# Mon, 12 Jun 2017 21:30:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 12 Jun 2017 21:30:42 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 12 Jun 2017 21:31:00 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 12 Jun 2017 21:31:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:36:05 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 12 Jun 2017 21:36:07 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:36:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 12 Jun 2017 21:36:09 GMT
WORKDIR /var/www/html
# Mon, 12 Jun 2017 21:36:11 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 12 Jun 2017 21:36:12 GMT
EXPOSE 9000/tcp
# Mon, 12 Jun 2017 21:36:35 GMT
CMD ["php-fpm"]
# Tue, 13 Jun 2017 20:11:06 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 20:13:26 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 13 Jun 2017 20:13:47 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 13 Jun 2017 20:14:20 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Tue, 13 Jun 2017 20:19:19 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Tue, 13 Jun 2017 20:19:20 GMT
VOLUME [/var/www/html]
# Tue, 13 Jun 2017 20:19:58 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Tue, 13 Jun 2017 20:20:08 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Tue, 13 Jun 2017 20:20:10 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Tue, 13 Jun 2017 20:20:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Jun 2017 20:20:35 GMT
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
	-	`sha256:8a66728ddbcc65e38ed51a86286a82c1f191b9e82eb8fda15adcc62c22bc0c6e`  
		Last Modified: Mon, 12 Jun 2017 22:47:23 GMT  
		Size: 12.9 MB (12918502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b511f9bc5eba5124fc4d2ef156afbdfb6536a9a05773b4ecae30b51a36e1fb60`  
		Last Modified: Mon, 12 Jun 2017 22:47:20 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2461b6d8ebef40f80da2120fc5c45a41b1fbbb3316468db3596779650a3eac83`  
		Last Modified: Mon, 12 Jun 2017 22:47:27 GMT  
		Size: 13.1 MB (13081453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00e9ea1bd54fb32d8394ca4fa2c4edc9dda30d65526540a8e5f1e273d55f127`  
		Last Modified: Mon, 12 Jun 2017 22:47:21 GMT  
		Size: 2.1 KB (2119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d5ba26fa4dd5ec79b6f02ff3b9a39676db32af533482902db99b28cbc36517`  
		Last Modified: Mon, 12 Jun 2017 22:47:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934114df47279c6c4271620f15c8d4aeb6aa380504c7f851b95092ed86ebfc69`  
		Last Modified: Mon, 12 Jun 2017 22:47:21 GMT  
		Size: 7.7 KB (7672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348af51372cf12dd952f4fb325d7ded01551568d1ef1f01e87affb32dcb432a4`  
		Last Modified: Tue, 13 Jun 2017 20:33:51 GMT  
		Size: 35.9 MB (35866591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984dd189c9d726ca90180cae201bbefb1b0af3ff6d48bfc66386d661909a2b36`  
		Last Modified: Tue, 13 Jun 2017 20:33:37 GMT  
		Size: 1.9 MB (1903931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7127d1cf38c363fa8504bcea2948aefaeb40e97c66c61aaae3b3dc48d06517f1`  
		Last Modified: Tue, 13 Jun 2017 20:33:36 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5f040dd8fe2182ac9d2ad690097770734657074bb373545ae5354300776534`  
		Last Modified: Tue, 13 Jun 2017 20:33:37 GMT  
		Size: 1.3 MB (1321325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9b7c18d7b0f5823791cf583a2dda92e325527eb4c3a3bd7bc4496c0a954acf`  
		Last Modified: Tue, 13 Jun 2017 20:43:03 GMT  
		Size: 45.8 MB (45754025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff8838c1d3e927de60a86ed1d086715e2ffa9bfbc2c94c4ee4206aec0fa8197`  
		Last Modified: Tue, 13 Jun 2017 20:42:46 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c763b4fa37ba5741bd20a6235c88806f60f490e2b392e0866f4d32ee0ab4a6`  
		Last Modified: Tue, 13 Jun 2017 20:42:47 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0-fpm`

```console
$ docker pull nextcloud@sha256:c255b1d51e6e2c528bdd63ec381568d5e610ca60abe6cc84ddb287d731509112
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.9 MB (245919819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a81b406bc1fcfa7c5116ced11c03426c51cbd006049fb05e8ee8f89b36018c83`
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
# Mon, 12 Jun 2017 21:30:40 GMT
ENV PHP_VERSION=7.1.6
# Mon, 12 Jun 2017 21:30:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 12 Jun 2017 21:30:42 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 12 Jun 2017 21:31:00 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 12 Jun 2017 21:31:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:36:05 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 12 Jun 2017 21:36:07 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:36:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 12 Jun 2017 21:36:09 GMT
WORKDIR /var/www/html
# Mon, 12 Jun 2017 21:36:11 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 12 Jun 2017 21:36:12 GMT
EXPOSE 9000/tcp
# Mon, 12 Jun 2017 21:36:35 GMT
CMD ["php-fpm"]
# Tue, 13 Jun 2017 20:11:06 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 20:13:26 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 13 Jun 2017 20:13:47 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 13 Jun 2017 20:14:20 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Tue, 13 Jun 2017 20:19:19 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Tue, 13 Jun 2017 20:19:20 GMT
VOLUME [/var/www/html]
# Tue, 13 Jun 2017 20:19:58 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Tue, 13 Jun 2017 20:20:08 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Tue, 13 Jun 2017 20:20:10 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Tue, 13 Jun 2017 20:20:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Jun 2017 20:20:35 GMT
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
	-	`sha256:8a66728ddbcc65e38ed51a86286a82c1f191b9e82eb8fda15adcc62c22bc0c6e`  
		Last Modified: Mon, 12 Jun 2017 22:47:23 GMT  
		Size: 12.9 MB (12918502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b511f9bc5eba5124fc4d2ef156afbdfb6536a9a05773b4ecae30b51a36e1fb60`  
		Last Modified: Mon, 12 Jun 2017 22:47:20 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2461b6d8ebef40f80da2120fc5c45a41b1fbbb3316468db3596779650a3eac83`  
		Last Modified: Mon, 12 Jun 2017 22:47:27 GMT  
		Size: 13.1 MB (13081453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00e9ea1bd54fb32d8394ca4fa2c4edc9dda30d65526540a8e5f1e273d55f127`  
		Last Modified: Mon, 12 Jun 2017 22:47:21 GMT  
		Size: 2.1 KB (2119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d5ba26fa4dd5ec79b6f02ff3b9a39676db32af533482902db99b28cbc36517`  
		Last Modified: Mon, 12 Jun 2017 22:47:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934114df47279c6c4271620f15c8d4aeb6aa380504c7f851b95092ed86ebfc69`  
		Last Modified: Mon, 12 Jun 2017 22:47:21 GMT  
		Size: 7.7 KB (7672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348af51372cf12dd952f4fb325d7ded01551568d1ef1f01e87affb32dcb432a4`  
		Last Modified: Tue, 13 Jun 2017 20:33:51 GMT  
		Size: 35.9 MB (35866591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984dd189c9d726ca90180cae201bbefb1b0af3ff6d48bfc66386d661909a2b36`  
		Last Modified: Tue, 13 Jun 2017 20:33:37 GMT  
		Size: 1.9 MB (1903931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7127d1cf38c363fa8504bcea2948aefaeb40e97c66c61aaae3b3dc48d06517f1`  
		Last Modified: Tue, 13 Jun 2017 20:33:36 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5f040dd8fe2182ac9d2ad690097770734657074bb373545ae5354300776534`  
		Last Modified: Tue, 13 Jun 2017 20:33:37 GMT  
		Size: 1.3 MB (1321325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9b7c18d7b0f5823791cf583a2dda92e325527eb4c3a3bd7bc4496c0a954acf`  
		Last Modified: Tue, 13 Jun 2017 20:43:03 GMT  
		Size: 45.8 MB (45754025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff8838c1d3e927de60a86ed1d086715e2ffa9bfbc2c94c4ee4206aec0fa8197`  
		Last Modified: Tue, 13 Jun 2017 20:42:46 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c763b4fa37ba5741bd20a6235c88806f60f490e2b392e0866f4d32ee0ab4a6`  
		Last Modified: Tue, 13 Jun 2017 20:42:47 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12-fpm`

```console
$ docker pull nextcloud@sha256:c255b1d51e6e2c528bdd63ec381568d5e610ca60abe6cc84ddb287d731509112
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.9 MB (245919819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a81b406bc1fcfa7c5116ced11c03426c51cbd006049fb05e8ee8f89b36018c83`
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
# Mon, 12 Jun 2017 21:30:40 GMT
ENV PHP_VERSION=7.1.6
# Mon, 12 Jun 2017 21:30:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 12 Jun 2017 21:30:42 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 12 Jun 2017 21:31:00 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 12 Jun 2017 21:31:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:36:05 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 12 Jun 2017 21:36:07 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:36:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 12 Jun 2017 21:36:09 GMT
WORKDIR /var/www/html
# Mon, 12 Jun 2017 21:36:11 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 12 Jun 2017 21:36:12 GMT
EXPOSE 9000/tcp
# Mon, 12 Jun 2017 21:36:35 GMT
CMD ["php-fpm"]
# Tue, 13 Jun 2017 20:11:06 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 20:13:26 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 13 Jun 2017 20:13:47 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 13 Jun 2017 20:14:20 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Tue, 13 Jun 2017 20:19:19 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Tue, 13 Jun 2017 20:19:20 GMT
VOLUME [/var/www/html]
# Tue, 13 Jun 2017 20:19:58 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Tue, 13 Jun 2017 20:20:08 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Tue, 13 Jun 2017 20:20:10 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Tue, 13 Jun 2017 20:20:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Jun 2017 20:20:35 GMT
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
	-	`sha256:8a66728ddbcc65e38ed51a86286a82c1f191b9e82eb8fda15adcc62c22bc0c6e`  
		Last Modified: Mon, 12 Jun 2017 22:47:23 GMT  
		Size: 12.9 MB (12918502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b511f9bc5eba5124fc4d2ef156afbdfb6536a9a05773b4ecae30b51a36e1fb60`  
		Last Modified: Mon, 12 Jun 2017 22:47:20 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2461b6d8ebef40f80da2120fc5c45a41b1fbbb3316468db3596779650a3eac83`  
		Last Modified: Mon, 12 Jun 2017 22:47:27 GMT  
		Size: 13.1 MB (13081453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00e9ea1bd54fb32d8394ca4fa2c4edc9dda30d65526540a8e5f1e273d55f127`  
		Last Modified: Mon, 12 Jun 2017 22:47:21 GMT  
		Size: 2.1 KB (2119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d5ba26fa4dd5ec79b6f02ff3b9a39676db32af533482902db99b28cbc36517`  
		Last Modified: Mon, 12 Jun 2017 22:47:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934114df47279c6c4271620f15c8d4aeb6aa380504c7f851b95092ed86ebfc69`  
		Last Modified: Mon, 12 Jun 2017 22:47:21 GMT  
		Size: 7.7 KB (7672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348af51372cf12dd952f4fb325d7ded01551568d1ef1f01e87affb32dcb432a4`  
		Last Modified: Tue, 13 Jun 2017 20:33:51 GMT  
		Size: 35.9 MB (35866591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984dd189c9d726ca90180cae201bbefb1b0af3ff6d48bfc66386d661909a2b36`  
		Last Modified: Tue, 13 Jun 2017 20:33:37 GMT  
		Size: 1.9 MB (1903931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7127d1cf38c363fa8504bcea2948aefaeb40e97c66c61aaae3b3dc48d06517f1`  
		Last Modified: Tue, 13 Jun 2017 20:33:36 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5f040dd8fe2182ac9d2ad690097770734657074bb373545ae5354300776534`  
		Last Modified: Tue, 13 Jun 2017 20:33:37 GMT  
		Size: 1.3 MB (1321325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9b7c18d7b0f5823791cf583a2dda92e325527eb4c3a3bd7bc4496c0a954acf`  
		Last Modified: Tue, 13 Jun 2017 20:43:03 GMT  
		Size: 45.8 MB (45754025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff8838c1d3e927de60a86ed1d086715e2ffa9bfbc2c94c4ee4206aec0fa8197`  
		Last Modified: Tue, 13 Jun 2017 20:42:46 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c763b4fa37ba5741bd20a6235c88806f60f490e2b392e0866f4d32ee0ab4a6`  
		Last Modified: Tue, 13 Jun 2017 20:42:47 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:fpm`

```console
$ docker pull nextcloud@sha256:c255b1d51e6e2c528bdd63ec381568d5e610ca60abe6cc84ddb287d731509112
```

-	Platforms:
	-	linux; amd64

### `nextcloud:fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.9 MB (245919819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a81b406bc1fcfa7c5116ced11c03426c51cbd006049fb05e8ee8f89b36018c83`
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
# Mon, 12 Jun 2017 21:30:40 GMT
ENV PHP_VERSION=7.1.6
# Mon, 12 Jun 2017 21:30:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 12 Jun 2017 21:30:42 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 12 Jun 2017 21:31:00 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 12 Jun 2017 21:31:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:36:05 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 12 Jun 2017 21:36:07 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 12 Jun 2017 21:36:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 12 Jun 2017 21:36:09 GMT
WORKDIR /var/www/html
# Mon, 12 Jun 2017 21:36:11 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 12 Jun 2017 21:36:12 GMT
EXPOSE 9000/tcp
# Mon, 12 Jun 2017 21:36:35 GMT
CMD ["php-fpm"]
# Tue, 13 Jun 2017 20:11:06 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 20:13:26 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 13 Jun 2017 20:13:47 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 13 Jun 2017 20:14:20 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Tue, 13 Jun 2017 20:19:19 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Tue, 13 Jun 2017 20:19:20 GMT
VOLUME [/var/www/html]
# Tue, 13 Jun 2017 20:19:58 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Tue, 13 Jun 2017 20:20:08 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Tue, 13 Jun 2017 20:20:10 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Tue, 13 Jun 2017 20:20:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Jun 2017 20:20:35 GMT
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
	-	`sha256:8a66728ddbcc65e38ed51a86286a82c1f191b9e82eb8fda15adcc62c22bc0c6e`  
		Last Modified: Mon, 12 Jun 2017 22:47:23 GMT  
		Size: 12.9 MB (12918502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b511f9bc5eba5124fc4d2ef156afbdfb6536a9a05773b4ecae30b51a36e1fb60`  
		Last Modified: Mon, 12 Jun 2017 22:47:20 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2461b6d8ebef40f80da2120fc5c45a41b1fbbb3316468db3596779650a3eac83`  
		Last Modified: Mon, 12 Jun 2017 22:47:27 GMT  
		Size: 13.1 MB (13081453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00e9ea1bd54fb32d8394ca4fa2c4edc9dda30d65526540a8e5f1e273d55f127`  
		Last Modified: Mon, 12 Jun 2017 22:47:21 GMT  
		Size: 2.1 KB (2119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d5ba26fa4dd5ec79b6f02ff3b9a39676db32af533482902db99b28cbc36517`  
		Last Modified: Mon, 12 Jun 2017 22:47:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934114df47279c6c4271620f15c8d4aeb6aa380504c7f851b95092ed86ebfc69`  
		Last Modified: Mon, 12 Jun 2017 22:47:21 GMT  
		Size: 7.7 KB (7672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348af51372cf12dd952f4fb325d7ded01551568d1ef1f01e87affb32dcb432a4`  
		Last Modified: Tue, 13 Jun 2017 20:33:51 GMT  
		Size: 35.9 MB (35866591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984dd189c9d726ca90180cae201bbefb1b0af3ff6d48bfc66386d661909a2b36`  
		Last Modified: Tue, 13 Jun 2017 20:33:37 GMT  
		Size: 1.9 MB (1903931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7127d1cf38c363fa8504bcea2948aefaeb40e97c66c61aaae3b3dc48d06517f1`  
		Last Modified: Tue, 13 Jun 2017 20:33:36 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5f040dd8fe2182ac9d2ad690097770734657074bb373545ae5354300776534`  
		Last Modified: Tue, 13 Jun 2017 20:33:37 GMT  
		Size: 1.3 MB (1321325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9b7c18d7b0f5823791cf583a2dda92e325527eb4c3a3bd7bc4496c0a954acf`  
		Last Modified: Tue, 13 Jun 2017 20:43:03 GMT  
		Size: 45.8 MB (45754025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff8838c1d3e927de60a86ed1d086715e2ffa9bfbc2c94c4ee4206aec0fa8197`  
		Last Modified: Tue, 13 Jun 2017 20:42:46 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c763b4fa37ba5741bd20a6235c88806f60f490e2b392e0866f4d32ee0ab4a6`  
		Last Modified: Tue, 13 Jun 2017 20:42:47 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
