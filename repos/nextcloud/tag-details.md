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
$ docker pull nextcloud@sha256:666c9443b2c5ec947de1792d7ab152c11d9aeffb6619a1d92dd9da3c581be40c
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10.0.5-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.4 MB (238366185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75cafa3d3045fdf47979aff3f52271d7b56d7295dd08001d5e181e875327631`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:41:32 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 21 Jun 2017 16:41:32 GMT
ENV PHP_VERSION=5.6.30
# Wed, 21 Jun 2017 16:41:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 04 Jul 2017 04:25:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=
# Tue, 04 Jul 2017 04:25:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 04 Jul 2017 04:25:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 04 Jul 2017 04:28:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 04 Jul 2017 04:38:46 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Tue, 04 Jul 2017 04:38:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 04 Jul 2017 04:38:48 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 04 Jul 2017 04:38:49 GMT
WORKDIR /var/www/html
# Tue, 04 Jul 2017 04:38:49 GMT
EXPOSE 80/tcp
# Tue, 04 Jul 2017 04:38:50 GMT
CMD ["apache2-foreground"]
# Thu, 06 Jul 2017 02:40:41 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:42:27 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:42:29 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:42:31 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:42:57 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:42:59 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:43:00 GMT
ENV NEXTCLOUD_VERSION=10.0.5
# Thu, 06 Jul 2017 02:43:01 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:43:16 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:43:17 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:43:19 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:43:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:43:21 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ae2d27c5a185e6d1ab8a2670e3bc6c0a4d4bba2998d771db626b338c484ba6`  
		Last Modified: Tue, 04 Jul 2017 06:23:27 GMT  
		Size: 12.6 MB (12576907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a002a32e94d583d8870414d7a05a8e6ab4f1e834335b7628668341ae6d540d`  
		Last Modified: Tue, 04 Jul 2017 06:23:26 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1288ac493dce1944ab6708cbe558b6371e2fe058c8b3d112d65e6e5f3731e35`  
		Last Modified: Tue, 04 Jul 2017 06:23:29 GMT  
		Size: 9.3 MB (9314812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655f6bf120c25f4a3c97cc365c130154ab27c194ac1f5e47ecfe95ecd23f41de`  
		Last Modified: Tue, 04 Jul 2017 06:23:25 GMT  
		Size: 2.1 KB (2127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f14600f75b921eba38767bf35a6c90f80733a253e4890dd96038cf76568592`  
		Last Modified: Tue, 04 Jul 2017 06:23:26 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c3fc736784662d997960c44e486f4459d7febf7f067b7934bdb5a2f8e8b73a`  
		Last Modified: Thu, 06 Jul 2017 03:00:50 GMT  
		Size: 35.9 MB (35887002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a82c44445a7c563d0db782e3a8d8f2bf31320b218b925dd2c36b65dd93049e`  
		Last Modified: Thu, 06 Jul 2017 03:00:38 GMT  
		Size: 1.7 MB (1740524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2852750d778eeb34809d927ceaf7e2998bce7386cf7257a6de43918fefc0936a`  
		Last Modified: Thu, 06 Jul 2017 03:00:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128b7edda48d44c5f13c5cea3c2472f885764cb63ce1cd55dbfa72914cfe2d31`  
		Last Modified: Thu, 06 Jul 2017 03:00:35 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72dbd223f613501bdb826f3001ecfc14b4101d8411f077965550504b8fd28d19`  
		Last Modified: Thu, 06 Jul 2017 03:00:36 GMT  
		Size: 1.3 MB (1338344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5222a079756988adcc0da05f4357a4e11d1f94c8d5dd4f9c9cf431f4012f63f`  
		Last Modified: Thu, 06 Jul 2017 03:00:52 GMT  
		Size: 39.6 MB (39606098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09b968ab8e0145b928726fd6d33f3a6fedc97e1ff8ce93479301c6a461467af`  
		Last Modified: Thu, 06 Jul 2017 03:00:36 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95f6d9c0ee293b4d2bdac7be2108c5c958284ed7e91dc558d5089df0fd24612`  
		Last Modified: Thu, 06 Jul 2017 03:00:36 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10.0-apache`

```console
$ docker pull nextcloud@sha256:666c9443b2c5ec947de1792d7ab152c11d9aeffb6619a1d92dd9da3c581be40c
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10.0-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.4 MB (238366185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75cafa3d3045fdf47979aff3f52271d7b56d7295dd08001d5e181e875327631`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:41:32 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 21 Jun 2017 16:41:32 GMT
ENV PHP_VERSION=5.6.30
# Wed, 21 Jun 2017 16:41:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 04 Jul 2017 04:25:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=
# Tue, 04 Jul 2017 04:25:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 04 Jul 2017 04:25:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 04 Jul 2017 04:28:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 04 Jul 2017 04:38:46 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Tue, 04 Jul 2017 04:38:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 04 Jul 2017 04:38:48 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 04 Jul 2017 04:38:49 GMT
WORKDIR /var/www/html
# Tue, 04 Jul 2017 04:38:49 GMT
EXPOSE 80/tcp
# Tue, 04 Jul 2017 04:38:50 GMT
CMD ["apache2-foreground"]
# Thu, 06 Jul 2017 02:40:41 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:42:27 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:42:29 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:42:31 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:42:57 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:42:59 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:43:00 GMT
ENV NEXTCLOUD_VERSION=10.0.5
# Thu, 06 Jul 2017 02:43:01 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:43:16 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:43:17 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:43:19 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:43:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:43:21 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ae2d27c5a185e6d1ab8a2670e3bc6c0a4d4bba2998d771db626b338c484ba6`  
		Last Modified: Tue, 04 Jul 2017 06:23:27 GMT  
		Size: 12.6 MB (12576907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a002a32e94d583d8870414d7a05a8e6ab4f1e834335b7628668341ae6d540d`  
		Last Modified: Tue, 04 Jul 2017 06:23:26 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1288ac493dce1944ab6708cbe558b6371e2fe058c8b3d112d65e6e5f3731e35`  
		Last Modified: Tue, 04 Jul 2017 06:23:29 GMT  
		Size: 9.3 MB (9314812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655f6bf120c25f4a3c97cc365c130154ab27c194ac1f5e47ecfe95ecd23f41de`  
		Last Modified: Tue, 04 Jul 2017 06:23:25 GMT  
		Size: 2.1 KB (2127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f14600f75b921eba38767bf35a6c90f80733a253e4890dd96038cf76568592`  
		Last Modified: Tue, 04 Jul 2017 06:23:26 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c3fc736784662d997960c44e486f4459d7febf7f067b7934bdb5a2f8e8b73a`  
		Last Modified: Thu, 06 Jul 2017 03:00:50 GMT  
		Size: 35.9 MB (35887002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a82c44445a7c563d0db782e3a8d8f2bf31320b218b925dd2c36b65dd93049e`  
		Last Modified: Thu, 06 Jul 2017 03:00:38 GMT  
		Size: 1.7 MB (1740524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2852750d778eeb34809d927ceaf7e2998bce7386cf7257a6de43918fefc0936a`  
		Last Modified: Thu, 06 Jul 2017 03:00:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128b7edda48d44c5f13c5cea3c2472f885764cb63ce1cd55dbfa72914cfe2d31`  
		Last Modified: Thu, 06 Jul 2017 03:00:35 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72dbd223f613501bdb826f3001ecfc14b4101d8411f077965550504b8fd28d19`  
		Last Modified: Thu, 06 Jul 2017 03:00:36 GMT  
		Size: 1.3 MB (1338344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5222a079756988adcc0da05f4357a4e11d1f94c8d5dd4f9c9cf431f4012f63f`  
		Last Modified: Thu, 06 Jul 2017 03:00:52 GMT  
		Size: 39.6 MB (39606098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09b968ab8e0145b928726fd6d33f3a6fedc97e1ff8ce93479301c6a461467af`  
		Last Modified: Thu, 06 Jul 2017 03:00:36 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95f6d9c0ee293b4d2bdac7be2108c5c958284ed7e91dc558d5089df0fd24612`  
		Last Modified: Thu, 06 Jul 2017 03:00:36 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10-apache`

```console
$ docker pull nextcloud@sha256:666c9443b2c5ec947de1792d7ab152c11d9aeffb6619a1d92dd9da3c581be40c
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.4 MB (238366185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75cafa3d3045fdf47979aff3f52271d7b56d7295dd08001d5e181e875327631`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:41:32 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 21 Jun 2017 16:41:32 GMT
ENV PHP_VERSION=5.6.30
# Wed, 21 Jun 2017 16:41:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 04 Jul 2017 04:25:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=
# Tue, 04 Jul 2017 04:25:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 04 Jul 2017 04:25:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 04 Jul 2017 04:28:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 04 Jul 2017 04:38:46 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Tue, 04 Jul 2017 04:38:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 04 Jul 2017 04:38:48 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 04 Jul 2017 04:38:49 GMT
WORKDIR /var/www/html
# Tue, 04 Jul 2017 04:38:49 GMT
EXPOSE 80/tcp
# Tue, 04 Jul 2017 04:38:50 GMT
CMD ["apache2-foreground"]
# Thu, 06 Jul 2017 02:40:41 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:42:27 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:42:29 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:42:31 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:42:57 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:42:59 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:43:00 GMT
ENV NEXTCLOUD_VERSION=10.0.5
# Thu, 06 Jul 2017 02:43:01 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:43:16 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:43:17 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:43:19 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:43:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:43:21 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ae2d27c5a185e6d1ab8a2670e3bc6c0a4d4bba2998d771db626b338c484ba6`  
		Last Modified: Tue, 04 Jul 2017 06:23:27 GMT  
		Size: 12.6 MB (12576907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a002a32e94d583d8870414d7a05a8e6ab4f1e834335b7628668341ae6d540d`  
		Last Modified: Tue, 04 Jul 2017 06:23:26 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1288ac493dce1944ab6708cbe558b6371e2fe058c8b3d112d65e6e5f3731e35`  
		Last Modified: Tue, 04 Jul 2017 06:23:29 GMT  
		Size: 9.3 MB (9314812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655f6bf120c25f4a3c97cc365c130154ab27c194ac1f5e47ecfe95ecd23f41de`  
		Last Modified: Tue, 04 Jul 2017 06:23:25 GMT  
		Size: 2.1 KB (2127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f14600f75b921eba38767bf35a6c90f80733a253e4890dd96038cf76568592`  
		Last Modified: Tue, 04 Jul 2017 06:23:26 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c3fc736784662d997960c44e486f4459d7febf7f067b7934bdb5a2f8e8b73a`  
		Last Modified: Thu, 06 Jul 2017 03:00:50 GMT  
		Size: 35.9 MB (35887002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a82c44445a7c563d0db782e3a8d8f2bf31320b218b925dd2c36b65dd93049e`  
		Last Modified: Thu, 06 Jul 2017 03:00:38 GMT  
		Size: 1.7 MB (1740524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2852750d778eeb34809d927ceaf7e2998bce7386cf7257a6de43918fefc0936a`  
		Last Modified: Thu, 06 Jul 2017 03:00:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128b7edda48d44c5f13c5cea3c2472f885764cb63ce1cd55dbfa72914cfe2d31`  
		Last Modified: Thu, 06 Jul 2017 03:00:35 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72dbd223f613501bdb826f3001ecfc14b4101d8411f077965550504b8fd28d19`  
		Last Modified: Thu, 06 Jul 2017 03:00:36 GMT  
		Size: 1.3 MB (1338344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5222a079756988adcc0da05f4357a4e11d1f94c8d5dd4f9c9cf431f4012f63f`  
		Last Modified: Thu, 06 Jul 2017 03:00:52 GMT  
		Size: 39.6 MB (39606098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09b968ab8e0145b928726fd6d33f3a6fedc97e1ff8ce93479301c6a461467af`  
		Last Modified: Thu, 06 Jul 2017 03:00:36 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95f6d9c0ee293b4d2bdac7be2108c5c958284ed7e91dc558d5089df0fd24612`  
		Last Modified: Thu, 06 Jul 2017 03:00:36 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10.0.5`

```console
$ docker pull nextcloud@sha256:666c9443b2c5ec947de1792d7ab152c11d9aeffb6619a1d92dd9da3c581be40c
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10.0.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.4 MB (238366185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75cafa3d3045fdf47979aff3f52271d7b56d7295dd08001d5e181e875327631`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:41:32 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 21 Jun 2017 16:41:32 GMT
ENV PHP_VERSION=5.6.30
# Wed, 21 Jun 2017 16:41:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 04 Jul 2017 04:25:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=
# Tue, 04 Jul 2017 04:25:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 04 Jul 2017 04:25:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 04 Jul 2017 04:28:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 04 Jul 2017 04:38:46 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Tue, 04 Jul 2017 04:38:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 04 Jul 2017 04:38:48 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 04 Jul 2017 04:38:49 GMT
WORKDIR /var/www/html
# Tue, 04 Jul 2017 04:38:49 GMT
EXPOSE 80/tcp
# Tue, 04 Jul 2017 04:38:50 GMT
CMD ["apache2-foreground"]
# Thu, 06 Jul 2017 02:40:41 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:42:27 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:42:29 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:42:31 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:42:57 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:42:59 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:43:00 GMT
ENV NEXTCLOUD_VERSION=10.0.5
# Thu, 06 Jul 2017 02:43:01 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:43:16 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:43:17 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:43:19 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:43:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:43:21 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ae2d27c5a185e6d1ab8a2670e3bc6c0a4d4bba2998d771db626b338c484ba6`  
		Last Modified: Tue, 04 Jul 2017 06:23:27 GMT  
		Size: 12.6 MB (12576907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a002a32e94d583d8870414d7a05a8e6ab4f1e834335b7628668341ae6d540d`  
		Last Modified: Tue, 04 Jul 2017 06:23:26 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1288ac493dce1944ab6708cbe558b6371e2fe058c8b3d112d65e6e5f3731e35`  
		Last Modified: Tue, 04 Jul 2017 06:23:29 GMT  
		Size: 9.3 MB (9314812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655f6bf120c25f4a3c97cc365c130154ab27c194ac1f5e47ecfe95ecd23f41de`  
		Last Modified: Tue, 04 Jul 2017 06:23:25 GMT  
		Size: 2.1 KB (2127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f14600f75b921eba38767bf35a6c90f80733a253e4890dd96038cf76568592`  
		Last Modified: Tue, 04 Jul 2017 06:23:26 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c3fc736784662d997960c44e486f4459d7febf7f067b7934bdb5a2f8e8b73a`  
		Last Modified: Thu, 06 Jul 2017 03:00:50 GMT  
		Size: 35.9 MB (35887002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a82c44445a7c563d0db782e3a8d8f2bf31320b218b925dd2c36b65dd93049e`  
		Last Modified: Thu, 06 Jul 2017 03:00:38 GMT  
		Size: 1.7 MB (1740524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2852750d778eeb34809d927ceaf7e2998bce7386cf7257a6de43918fefc0936a`  
		Last Modified: Thu, 06 Jul 2017 03:00:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128b7edda48d44c5f13c5cea3c2472f885764cb63ce1cd55dbfa72914cfe2d31`  
		Last Modified: Thu, 06 Jul 2017 03:00:35 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72dbd223f613501bdb826f3001ecfc14b4101d8411f077965550504b8fd28d19`  
		Last Modified: Thu, 06 Jul 2017 03:00:36 GMT  
		Size: 1.3 MB (1338344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5222a079756988adcc0da05f4357a4e11d1f94c8d5dd4f9c9cf431f4012f63f`  
		Last Modified: Thu, 06 Jul 2017 03:00:52 GMT  
		Size: 39.6 MB (39606098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09b968ab8e0145b928726fd6d33f3a6fedc97e1ff8ce93479301c6a461467af`  
		Last Modified: Thu, 06 Jul 2017 03:00:36 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95f6d9c0ee293b4d2bdac7be2108c5c958284ed7e91dc558d5089df0fd24612`  
		Last Modified: Thu, 06 Jul 2017 03:00:36 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10.0`

```console
$ docker pull nextcloud@sha256:666c9443b2c5ec947de1792d7ab152c11d9aeffb6619a1d92dd9da3c581be40c
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.4 MB (238366185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75cafa3d3045fdf47979aff3f52271d7b56d7295dd08001d5e181e875327631`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:41:32 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 21 Jun 2017 16:41:32 GMT
ENV PHP_VERSION=5.6.30
# Wed, 21 Jun 2017 16:41:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 04 Jul 2017 04:25:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=
# Tue, 04 Jul 2017 04:25:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 04 Jul 2017 04:25:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 04 Jul 2017 04:28:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 04 Jul 2017 04:38:46 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Tue, 04 Jul 2017 04:38:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 04 Jul 2017 04:38:48 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 04 Jul 2017 04:38:49 GMT
WORKDIR /var/www/html
# Tue, 04 Jul 2017 04:38:49 GMT
EXPOSE 80/tcp
# Tue, 04 Jul 2017 04:38:50 GMT
CMD ["apache2-foreground"]
# Thu, 06 Jul 2017 02:40:41 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:42:27 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:42:29 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:42:31 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:42:57 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:42:59 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:43:00 GMT
ENV NEXTCLOUD_VERSION=10.0.5
# Thu, 06 Jul 2017 02:43:01 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:43:16 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:43:17 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:43:19 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:43:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:43:21 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ae2d27c5a185e6d1ab8a2670e3bc6c0a4d4bba2998d771db626b338c484ba6`  
		Last Modified: Tue, 04 Jul 2017 06:23:27 GMT  
		Size: 12.6 MB (12576907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a002a32e94d583d8870414d7a05a8e6ab4f1e834335b7628668341ae6d540d`  
		Last Modified: Tue, 04 Jul 2017 06:23:26 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1288ac493dce1944ab6708cbe558b6371e2fe058c8b3d112d65e6e5f3731e35`  
		Last Modified: Tue, 04 Jul 2017 06:23:29 GMT  
		Size: 9.3 MB (9314812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655f6bf120c25f4a3c97cc365c130154ab27c194ac1f5e47ecfe95ecd23f41de`  
		Last Modified: Tue, 04 Jul 2017 06:23:25 GMT  
		Size: 2.1 KB (2127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f14600f75b921eba38767bf35a6c90f80733a253e4890dd96038cf76568592`  
		Last Modified: Tue, 04 Jul 2017 06:23:26 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c3fc736784662d997960c44e486f4459d7febf7f067b7934bdb5a2f8e8b73a`  
		Last Modified: Thu, 06 Jul 2017 03:00:50 GMT  
		Size: 35.9 MB (35887002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a82c44445a7c563d0db782e3a8d8f2bf31320b218b925dd2c36b65dd93049e`  
		Last Modified: Thu, 06 Jul 2017 03:00:38 GMT  
		Size: 1.7 MB (1740524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2852750d778eeb34809d927ceaf7e2998bce7386cf7257a6de43918fefc0936a`  
		Last Modified: Thu, 06 Jul 2017 03:00:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128b7edda48d44c5f13c5cea3c2472f885764cb63ce1cd55dbfa72914cfe2d31`  
		Last Modified: Thu, 06 Jul 2017 03:00:35 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72dbd223f613501bdb826f3001ecfc14b4101d8411f077965550504b8fd28d19`  
		Last Modified: Thu, 06 Jul 2017 03:00:36 GMT  
		Size: 1.3 MB (1338344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5222a079756988adcc0da05f4357a4e11d1f94c8d5dd4f9c9cf431f4012f63f`  
		Last Modified: Thu, 06 Jul 2017 03:00:52 GMT  
		Size: 39.6 MB (39606098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09b968ab8e0145b928726fd6d33f3a6fedc97e1ff8ce93479301c6a461467af`  
		Last Modified: Thu, 06 Jul 2017 03:00:36 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95f6d9c0ee293b4d2bdac7be2108c5c958284ed7e91dc558d5089df0fd24612`  
		Last Modified: Thu, 06 Jul 2017 03:00:36 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10`

```console
$ docker pull nextcloud@sha256:666c9443b2c5ec947de1792d7ab152c11d9aeffb6619a1d92dd9da3c581be40c
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.4 MB (238366185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75cafa3d3045fdf47979aff3f52271d7b56d7295dd08001d5e181e875327631`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:41:32 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 21 Jun 2017 16:41:32 GMT
ENV PHP_VERSION=5.6.30
# Wed, 21 Jun 2017 16:41:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 04 Jul 2017 04:25:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=
# Tue, 04 Jul 2017 04:25:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 04 Jul 2017 04:25:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 04 Jul 2017 04:28:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 04 Jul 2017 04:38:46 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Tue, 04 Jul 2017 04:38:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 04 Jul 2017 04:38:48 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 04 Jul 2017 04:38:49 GMT
WORKDIR /var/www/html
# Tue, 04 Jul 2017 04:38:49 GMT
EXPOSE 80/tcp
# Tue, 04 Jul 2017 04:38:50 GMT
CMD ["apache2-foreground"]
# Thu, 06 Jul 2017 02:40:41 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:42:27 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:42:29 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:42:31 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:42:57 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:42:59 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:43:00 GMT
ENV NEXTCLOUD_VERSION=10.0.5
# Thu, 06 Jul 2017 02:43:01 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:43:16 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:43:17 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:43:19 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:43:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:43:21 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ae2d27c5a185e6d1ab8a2670e3bc6c0a4d4bba2998d771db626b338c484ba6`  
		Last Modified: Tue, 04 Jul 2017 06:23:27 GMT  
		Size: 12.6 MB (12576907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a002a32e94d583d8870414d7a05a8e6ab4f1e834335b7628668341ae6d540d`  
		Last Modified: Tue, 04 Jul 2017 06:23:26 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1288ac493dce1944ab6708cbe558b6371e2fe058c8b3d112d65e6e5f3731e35`  
		Last Modified: Tue, 04 Jul 2017 06:23:29 GMT  
		Size: 9.3 MB (9314812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655f6bf120c25f4a3c97cc365c130154ab27c194ac1f5e47ecfe95ecd23f41de`  
		Last Modified: Tue, 04 Jul 2017 06:23:25 GMT  
		Size: 2.1 KB (2127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f14600f75b921eba38767bf35a6c90f80733a253e4890dd96038cf76568592`  
		Last Modified: Tue, 04 Jul 2017 06:23:26 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c3fc736784662d997960c44e486f4459d7febf7f067b7934bdb5a2f8e8b73a`  
		Last Modified: Thu, 06 Jul 2017 03:00:50 GMT  
		Size: 35.9 MB (35887002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a82c44445a7c563d0db782e3a8d8f2bf31320b218b925dd2c36b65dd93049e`  
		Last Modified: Thu, 06 Jul 2017 03:00:38 GMT  
		Size: 1.7 MB (1740524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2852750d778eeb34809d927ceaf7e2998bce7386cf7257a6de43918fefc0936a`  
		Last Modified: Thu, 06 Jul 2017 03:00:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128b7edda48d44c5f13c5cea3c2472f885764cb63ce1cd55dbfa72914cfe2d31`  
		Last Modified: Thu, 06 Jul 2017 03:00:35 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72dbd223f613501bdb826f3001ecfc14b4101d8411f077965550504b8fd28d19`  
		Last Modified: Thu, 06 Jul 2017 03:00:36 GMT  
		Size: 1.3 MB (1338344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5222a079756988adcc0da05f4357a4e11d1f94c8d5dd4f9c9cf431f4012f63f`  
		Last Modified: Thu, 06 Jul 2017 03:00:52 GMT  
		Size: 39.6 MB (39606098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09b968ab8e0145b928726fd6d33f3a6fedc97e1ff8ce93479301c6a461467af`  
		Last Modified: Thu, 06 Jul 2017 03:00:36 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95f6d9c0ee293b4d2bdac7be2108c5c958284ed7e91dc558d5089df0fd24612`  
		Last Modified: Thu, 06 Jul 2017 03:00:36 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10.0.5-fpm`

```console
$ docker pull nextcloud@sha256:3f555bc837a0efb0c5bd6cb68bfc1d39ebc98f017dbb0bb91071ee45ebb72d77
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10.0.5-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234857807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d42e1b6fc82c1dc842a1b9f887bfaf09408e41a2eba51b72da0ab7c989eddc4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:13:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 21 Jun 2017 16:13:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:44:23 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 21 Jun 2017 16:44:24 GMT
ENV PHP_VERSION=5.6.30
# Wed, 21 Jun 2017 16:44:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 04 Jul 2017 04:50:39 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=
# Tue, 04 Jul 2017 04:50:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 04 Jul 2017 04:51:10 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 04 Jul 2017 04:54:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 04 Jul 2017 05:00:11 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Tue, 04 Jul 2017 05:00:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 04 Jul 2017 05:00:13 GMT
WORKDIR /var/www/html
# Tue, 04 Jul 2017 05:00:15 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 04 Jul 2017 05:00:15 GMT
EXPOSE 9000/tcp
# Tue, 04 Jul 2017 05:00:16 GMT
CMD ["php-fpm"]
# Thu, 06 Jul 2017 02:48:40 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:50:25 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:50:26 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:50:52 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:50:53 GMT
ENV NEXTCLOUD_VERSION=10.0.5
# Thu, 06 Jul 2017 02:50:53 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:51:07 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:51:09 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:51:10 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:51:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:51:11 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343f9bbeeba1863faf71d1193157892427e7372719f8aabdc206621186b47cec`  
		Last Modified: Tue, 04 Jul 2017 06:25:57 GMT  
		Size: 12.6 MB (12559638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f47f0ba76b6a889a167badfa933f51be9bb9044871965e3a9f2c3dfd89395d0`  
		Last Modified: Tue, 04 Jul 2017 06:25:56 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25762e2be1286c302eb48a003ba776947ad000c93c53580dba493fd4025ebc6c`  
		Last Modified: Tue, 04 Jul 2017 06:25:59 GMT  
		Size: 8.6 MB (8623520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd28a6c4aa34f07aa3c9a07668d41e8d484ca5ad461a72aa401ea08286c10156`  
		Last Modified: Tue, 04 Jul 2017 06:25:56 GMT  
		Size: 2.1 KB (2121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983b4da437e52072ce789d3dfae2a05dfd3a1ce1f82d445f25b3f66a4009a4da`  
		Last Modified: Tue, 04 Jul 2017 06:25:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723976acc0fd842647f63ae95799b48b6b29d57ddf57bec0f117053baf7ab2ce`  
		Last Modified: Tue, 04 Jul 2017 06:25:58 GMT  
		Size: 7.6 KB (7606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaa729d114835009a8243cb851d3ba15b1b37675a08ff59d558096df7d570ce`  
		Last Modified: Thu, 06 Jul 2017 03:04:03 GMT  
		Size: 35.9 MB (35866734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e20a411b851d06232f62abc60e31539e92710fcdb2afc5ce65dd12f0cc3e76`  
		Last Modified: Thu, 06 Jul 2017 03:03:51 GMT  
		Size: 1.7 MB (1740705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34204ee003a723c993f124357f7ce81849702c87f51d8713742977067e4d37ac`  
		Last Modified: Thu, 06 Jul 2017 03:03:50 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7db83897150e027459ce92ecefd4b80be00f84590e0f50d3ae090da2a41dd04`  
		Last Modified: Thu, 06 Jul 2017 03:03:51 GMT  
		Size: 1.3 MB (1338409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340fbd35705fef8d3269824f64ab0442653dba7aa6f08e7c9591236d9e792aa5`  
		Last Modified: Thu, 06 Jul 2017 03:04:05 GMT  
		Size: 39.6 MB (39606088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5236bddc6a00ba1886bb4e7be58a788f73dd506d54ad8c4a11596bbbea7e5c`  
		Last Modified: Thu, 06 Jul 2017 03:03:50 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5271d0cb9bd9dbbe0367c79b6c19b63038454548e023ab9686a4670f9eec2f85`  
		Last Modified: Thu, 06 Jul 2017 03:03:50 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10.0-fpm`

```console
$ docker pull nextcloud@sha256:3f555bc837a0efb0c5bd6cb68bfc1d39ebc98f017dbb0bb91071ee45ebb72d77
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10.0-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234857807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d42e1b6fc82c1dc842a1b9f887bfaf09408e41a2eba51b72da0ab7c989eddc4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:13:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 21 Jun 2017 16:13:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:44:23 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 21 Jun 2017 16:44:24 GMT
ENV PHP_VERSION=5.6.30
# Wed, 21 Jun 2017 16:44:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 04 Jul 2017 04:50:39 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=
# Tue, 04 Jul 2017 04:50:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 04 Jul 2017 04:51:10 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 04 Jul 2017 04:54:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 04 Jul 2017 05:00:11 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Tue, 04 Jul 2017 05:00:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 04 Jul 2017 05:00:13 GMT
WORKDIR /var/www/html
# Tue, 04 Jul 2017 05:00:15 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 04 Jul 2017 05:00:15 GMT
EXPOSE 9000/tcp
# Tue, 04 Jul 2017 05:00:16 GMT
CMD ["php-fpm"]
# Thu, 06 Jul 2017 02:48:40 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:50:25 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:50:26 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:50:52 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:50:53 GMT
ENV NEXTCLOUD_VERSION=10.0.5
# Thu, 06 Jul 2017 02:50:53 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:51:07 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:51:09 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:51:10 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:51:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:51:11 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343f9bbeeba1863faf71d1193157892427e7372719f8aabdc206621186b47cec`  
		Last Modified: Tue, 04 Jul 2017 06:25:57 GMT  
		Size: 12.6 MB (12559638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f47f0ba76b6a889a167badfa933f51be9bb9044871965e3a9f2c3dfd89395d0`  
		Last Modified: Tue, 04 Jul 2017 06:25:56 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25762e2be1286c302eb48a003ba776947ad000c93c53580dba493fd4025ebc6c`  
		Last Modified: Tue, 04 Jul 2017 06:25:59 GMT  
		Size: 8.6 MB (8623520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd28a6c4aa34f07aa3c9a07668d41e8d484ca5ad461a72aa401ea08286c10156`  
		Last Modified: Tue, 04 Jul 2017 06:25:56 GMT  
		Size: 2.1 KB (2121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983b4da437e52072ce789d3dfae2a05dfd3a1ce1f82d445f25b3f66a4009a4da`  
		Last Modified: Tue, 04 Jul 2017 06:25:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723976acc0fd842647f63ae95799b48b6b29d57ddf57bec0f117053baf7ab2ce`  
		Last Modified: Tue, 04 Jul 2017 06:25:58 GMT  
		Size: 7.6 KB (7606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaa729d114835009a8243cb851d3ba15b1b37675a08ff59d558096df7d570ce`  
		Last Modified: Thu, 06 Jul 2017 03:04:03 GMT  
		Size: 35.9 MB (35866734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e20a411b851d06232f62abc60e31539e92710fcdb2afc5ce65dd12f0cc3e76`  
		Last Modified: Thu, 06 Jul 2017 03:03:51 GMT  
		Size: 1.7 MB (1740705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34204ee003a723c993f124357f7ce81849702c87f51d8713742977067e4d37ac`  
		Last Modified: Thu, 06 Jul 2017 03:03:50 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7db83897150e027459ce92ecefd4b80be00f84590e0f50d3ae090da2a41dd04`  
		Last Modified: Thu, 06 Jul 2017 03:03:51 GMT  
		Size: 1.3 MB (1338409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340fbd35705fef8d3269824f64ab0442653dba7aa6f08e7c9591236d9e792aa5`  
		Last Modified: Thu, 06 Jul 2017 03:04:05 GMT  
		Size: 39.6 MB (39606088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5236bddc6a00ba1886bb4e7be58a788f73dd506d54ad8c4a11596bbbea7e5c`  
		Last Modified: Thu, 06 Jul 2017 03:03:50 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5271d0cb9bd9dbbe0367c79b6c19b63038454548e023ab9686a4670f9eec2f85`  
		Last Modified: Thu, 06 Jul 2017 03:03:50 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:10-fpm`

```console
$ docker pull nextcloud@sha256:3f555bc837a0efb0c5bd6cb68bfc1d39ebc98f017dbb0bb91071ee45ebb72d77
```

-	Platforms:
	-	linux; amd64

### `nextcloud:10-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234857807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d42e1b6fc82c1dc842a1b9f887bfaf09408e41a2eba51b72da0ab7c989eddc4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:13:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 21 Jun 2017 16:13:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:44:23 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 21 Jun 2017 16:44:24 GMT
ENV PHP_VERSION=5.6.30
# Wed, 21 Jun 2017 16:44:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 04 Jul 2017 04:50:39 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=
# Tue, 04 Jul 2017 04:50:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 04 Jul 2017 04:51:10 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 04 Jul 2017 04:54:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 04 Jul 2017 05:00:11 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Tue, 04 Jul 2017 05:00:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 04 Jul 2017 05:00:13 GMT
WORKDIR /var/www/html
# Tue, 04 Jul 2017 05:00:15 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 04 Jul 2017 05:00:15 GMT
EXPOSE 9000/tcp
# Tue, 04 Jul 2017 05:00:16 GMT
CMD ["php-fpm"]
# Thu, 06 Jul 2017 02:48:40 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:50:25 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:50:26 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:50:52 GMT
RUN set -ex  && pecl install APCu-4.0.10  && pecl install memcached-2.2.0  && pecl install redis-2.2.8  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:50:53 GMT
ENV NEXTCLOUD_VERSION=10.0.5
# Thu, 06 Jul 2017 02:50:53 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:51:07 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:51:09 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:51:10 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:51:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:51:11 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343f9bbeeba1863faf71d1193157892427e7372719f8aabdc206621186b47cec`  
		Last Modified: Tue, 04 Jul 2017 06:25:57 GMT  
		Size: 12.6 MB (12559638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f47f0ba76b6a889a167badfa933f51be9bb9044871965e3a9f2c3dfd89395d0`  
		Last Modified: Tue, 04 Jul 2017 06:25:56 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25762e2be1286c302eb48a003ba776947ad000c93c53580dba493fd4025ebc6c`  
		Last Modified: Tue, 04 Jul 2017 06:25:59 GMT  
		Size: 8.6 MB (8623520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd28a6c4aa34f07aa3c9a07668d41e8d484ca5ad461a72aa401ea08286c10156`  
		Last Modified: Tue, 04 Jul 2017 06:25:56 GMT  
		Size: 2.1 KB (2121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983b4da437e52072ce789d3dfae2a05dfd3a1ce1f82d445f25b3f66a4009a4da`  
		Last Modified: Tue, 04 Jul 2017 06:25:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723976acc0fd842647f63ae95799b48b6b29d57ddf57bec0f117053baf7ab2ce`  
		Last Modified: Tue, 04 Jul 2017 06:25:58 GMT  
		Size: 7.6 KB (7606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaa729d114835009a8243cb851d3ba15b1b37675a08ff59d558096df7d570ce`  
		Last Modified: Thu, 06 Jul 2017 03:04:03 GMT  
		Size: 35.9 MB (35866734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e20a411b851d06232f62abc60e31539e92710fcdb2afc5ce65dd12f0cc3e76`  
		Last Modified: Thu, 06 Jul 2017 03:03:51 GMT  
		Size: 1.7 MB (1740705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34204ee003a723c993f124357f7ce81849702c87f51d8713742977067e4d37ac`  
		Last Modified: Thu, 06 Jul 2017 03:03:50 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7db83897150e027459ce92ecefd4b80be00f84590e0f50d3ae090da2a41dd04`  
		Last Modified: Thu, 06 Jul 2017 03:03:51 GMT  
		Size: 1.3 MB (1338409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340fbd35705fef8d3269824f64ab0442653dba7aa6f08e7c9591236d9e792aa5`  
		Last Modified: Thu, 06 Jul 2017 03:04:05 GMT  
		Size: 39.6 MB (39606088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5236bddc6a00ba1886bb4e7be58a788f73dd506d54ad8c4a11596bbbea7e5c`  
		Last Modified: Thu, 06 Jul 2017 03:03:50 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5271d0cb9bd9dbbe0367c79b6c19b63038454548e023ab9686a4670f9eec2f85`  
		Last Modified: Thu, 06 Jul 2017 03:03:50 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0.3-apache`

```console
$ docker pull nextcloud@sha256:317b316ca0cc3ee70635079fd7e83a47f4a03ff315193913bc67b816120f1848
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0.3-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247144516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87fb4faee029f525dffdb38c218055dfe09cde4c49e5ffef29755602b9089e83`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:10:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:10:25 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 03 Jul 2017 22:27:14 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=
# Mon, 03 Jul 2017 22:27:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 03 Jul 2017 22:27:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 03 Jul 2017 22:30:36 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 03 Jul 2017 22:30:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:39 GMT
WORKDIR /var/www/html
# Mon, 03 Jul 2017 22:30:40 GMT
EXPOSE 80/tcp
# Mon, 03 Jul 2017 22:30:41 GMT
CMD ["apache2-foreground"]
# Thu, 06 Jul 2017 02:51:55 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:53:53 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:53:55 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:53:56 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:54:27 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:54:28 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:54:29 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Thu, 06 Jul 2017 02:54:30 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:54:45 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:54:46 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:54:47 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:54:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:54:49 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6883f41d7a03fbc243e18a34fcde97593a3d2fe053263c46c79c571cc24ec6e2`  
		Last Modified: Tue, 04 Jul 2017 05:45:44 GMT  
		Size: 12.9 MB (12935861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0dab66f4ab0662009446306908c2ce36e5bb4889f7c648af7bc3b2039451be`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269ec3efa2ff978211505159c78b52d9538b8f5b34771d8c71d0cee35f0fd0da`  
		Last Modified: Tue, 04 Jul 2017 05:45:50 GMT  
		Size: 13.7 MB (13665330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fae04550d279ad02079caa0278fd50a84459584c8f6900fe69556af90e4353`  
		Last Modified: Tue, 04 Jul 2017 05:45:42 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34389ff0f029c62c3cda91e7f93f0a8fad7f65d482d8ce76e7b6d6e64ea69eb`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7e0a6d2cf60ad8cac1632fb10065e9928ecc7de39f923c3ce100bed0123627`  
		Last Modified: Thu, 06 Jul 2017 03:05:48 GMT  
		Size: 35.9 MB (35887057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f577172f5ad4a4bfae28813697552c91528417a47beafafa8e964dd43b9d591`  
		Last Modified: Thu, 06 Jul 2017 03:05:39 GMT  
		Size: 1.9 MB (1903755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae49a0fa8e2164009848f621ef1243eea8050fb92de41b42ce8f9493627ac77`  
		Last Modified: Thu, 06 Jul 2017 03:05:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80635bba9432295d0d4cfc3157de4520cee453c0deaecf514749c802016b5a40`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a40d358b997dc18f8381f203ab4ead1b89eedf6ad2f6573b9bac2e82377d92`  
		Last Modified: Thu, 06 Jul 2017 03:05:37 GMT  
		Size: 1.3 MB (1321278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d26713829d2222465f8cc3f84b10eb59f70a56fde1031361e7638efadf3e8b8f`  
		Last Modified: Thu, 06 Jul 2017 03:05:52 GMT  
		Size: 43.5 MB (43528747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce19a27e289c179b83c80fca88e2027713edd7367318b54fb7d114cc81e63d0`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0131917172d4797f8077f3051c9563b4fa40cd1d26b76a60d6c686fc161c1f08`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0-apache`

```console
$ docker pull nextcloud@sha256:317b316ca0cc3ee70635079fd7e83a47f4a03ff315193913bc67b816120f1848
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247144516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87fb4faee029f525dffdb38c218055dfe09cde4c49e5ffef29755602b9089e83`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:10:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:10:25 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 03 Jul 2017 22:27:14 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=
# Mon, 03 Jul 2017 22:27:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 03 Jul 2017 22:27:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 03 Jul 2017 22:30:36 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 03 Jul 2017 22:30:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:39 GMT
WORKDIR /var/www/html
# Mon, 03 Jul 2017 22:30:40 GMT
EXPOSE 80/tcp
# Mon, 03 Jul 2017 22:30:41 GMT
CMD ["apache2-foreground"]
# Thu, 06 Jul 2017 02:51:55 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:53:53 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:53:55 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:53:56 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:54:27 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:54:28 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:54:29 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Thu, 06 Jul 2017 02:54:30 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:54:45 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:54:46 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:54:47 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:54:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:54:49 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6883f41d7a03fbc243e18a34fcde97593a3d2fe053263c46c79c571cc24ec6e2`  
		Last Modified: Tue, 04 Jul 2017 05:45:44 GMT  
		Size: 12.9 MB (12935861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0dab66f4ab0662009446306908c2ce36e5bb4889f7c648af7bc3b2039451be`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269ec3efa2ff978211505159c78b52d9538b8f5b34771d8c71d0cee35f0fd0da`  
		Last Modified: Tue, 04 Jul 2017 05:45:50 GMT  
		Size: 13.7 MB (13665330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fae04550d279ad02079caa0278fd50a84459584c8f6900fe69556af90e4353`  
		Last Modified: Tue, 04 Jul 2017 05:45:42 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34389ff0f029c62c3cda91e7f93f0a8fad7f65d482d8ce76e7b6d6e64ea69eb`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7e0a6d2cf60ad8cac1632fb10065e9928ecc7de39f923c3ce100bed0123627`  
		Last Modified: Thu, 06 Jul 2017 03:05:48 GMT  
		Size: 35.9 MB (35887057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f577172f5ad4a4bfae28813697552c91528417a47beafafa8e964dd43b9d591`  
		Last Modified: Thu, 06 Jul 2017 03:05:39 GMT  
		Size: 1.9 MB (1903755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae49a0fa8e2164009848f621ef1243eea8050fb92de41b42ce8f9493627ac77`  
		Last Modified: Thu, 06 Jul 2017 03:05:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80635bba9432295d0d4cfc3157de4520cee453c0deaecf514749c802016b5a40`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a40d358b997dc18f8381f203ab4ead1b89eedf6ad2f6573b9bac2e82377d92`  
		Last Modified: Thu, 06 Jul 2017 03:05:37 GMT  
		Size: 1.3 MB (1321278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d26713829d2222465f8cc3f84b10eb59f70a56fde1031361e7638efadf3e8b8f`  
		Last Modified: Thu, 06 Jul 2017 03:05:52 GMT  
		Size: 43.5 MB (43528747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce19a27e289c179b83c80fca88e2027713edd7367318b54fb7d114cc81e63d0`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0131917172d4797f8077f3051c9563b4fa40cd1d26b76a60d6c686fc161c1f08`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11-apache`

```console
$ docker pull nextcloud@sha256:317b316ca0cc3ee70635079fd7e83a47f4a03ff315193913bc67b816120f1848
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247144516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87fb4faee029f525dffdb38c218055dfe09cde4c49e5ffef29755602b9089e83`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:10:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:10:25 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 03 Jul 2017 22:27:14 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=
# Mon, 03 Jul 2017 22:27:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 03 Jul 2017 22:27:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 03 Jul 2017 22:30:36 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 03 Jul 2017 22:30:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:39 GMT
WORKDIR /var/www/html
# Mon, 03 Jul 2017 22:30:40 GMT
EXPOSE 80/tcp
# Mon, 03 Jul 2017 22:30:41 GMT
CMD ["apache2-foreground"]
# Thu, 06 Jul 2017 02:51:55 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:53:53 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:53:55 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:53:56 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:54:27 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:54:28 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:54:29 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Thu, 06 Jul 2017 02:54:30 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:54:45 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:54:46 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:54:47 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:54:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:54:49 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6883f41d7a03fbc243e18a34fcde97593a3d2fe053263c46c79c571cc24ec6e2`  
		Last Modified: Tue, 04 Jul 2017 05:45:44 GMT  
		Size: 12.9 MB (12935861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0dab66f4ab0662009446306908c2ce36e5bb4889f7c648af7bc3b2039451be`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269ec3efa2ff978211505159c78b52d9538b8f5b34771d8c71d0cee35f0fd0da`  
		Last Modified: Tue, 04 Jul 2017 05:45:50 GMT  
		Size: 13.7 MB (13665330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fae04550d279ad02079caa0278fd50a84459584c8f6900fe69556af90e4353`  
		Last Modified: Tue, 04 Jul 2017 05:45:42 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34389ff0f029c62c3cda91e7f93f0a8fad7f65d482d8ce76e7b6d6e64ea69eb`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7e0a6d2cf60ad8cac1632fb10065e9928ecc7de39f923c3ce100bed0123627`  
		Last Modified: Thu, 06 Jul 2017 03:05:48 GMT  
		Size: 35.9 MB (35887057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f577172f5ad4a4bfae28813697552c91528417a47beafafa8e964dd43b9d591`  
		Last Modified: Thu, 06 Jul 2017 03:05:39 GMT  
		Size: 1.9 MB (1903755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae49a0fa8e2164009848f621ef1243eea8050fb92de41b42ce8f9493627ac77`  
		Last Modified: Thu, 06 Jul 2017 03:05:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80635bba9432295d0d4cfc3157de4520cee453c0deaecf514749c802016b5a40`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a40d358b997dc18f8381f203ab4ead1b89eedf6ad2f6573b9bac2e82377d92`  
		Last Modified: Thu, 06 Jul 2017 03:05:37 GMT  
		Size: 1.3 MB (1321278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d26713829d2222465f8cc3f84b10eb59f70a56fde1031361e7638efadf3e8b8f`  
		Last Modified: Thu, 06 Jul 2017 03:05:52 GMT  
		Size: 43.5 MB (43528747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce19a27e289c179b83c80fca88e2027713edd7367318b54fb7d114cc81e63d0`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0131917172d4797f8077f3051c9563b4fa40cd1d26b76a60d6c686fc161c1f08`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0.3`

```console
$ docker pull nextcloud@sha256:317b316ca0cc3ee70635079fd7e83a47f4a03ff315193913bc67b816120f1848
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247144516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87fb4faee029f525dffdb38c218055dfe09cde4c49e5ffef29755602b9089e83`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:10:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:10:25 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 03 Jul 2017 22:27:14 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=
# Mon, 03 Jul 2017 22:27:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 03 Jul 2017 22:27:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 03 Jul 2017 22:30:36 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 03 Jul 2017 22:30:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:39 GMT
WORKDIR /var/www/html
# Mon, 03 Jul 2017 22:30:40 GMT
EXPOSE 80/tcp
# Mon, 03 Jul 2017 22:30:41 GMT
CMD ["apache2-foreground"]
# Thu, 06 Jul 2017 02:51:55 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:53:53 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:53:55 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:53:56 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:54:27 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:54:28 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:54:29 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Thu, 06 Jul 2017 02:54:30 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:54:45 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:54:46 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:54:47 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:54:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:54:49 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6883f41d7a03fbc243e18a34fcde97593a3d2fe053263c46c79c571cc24ec6e2`  
		Last Modified: Tue, 04 Jul 2017 05:45:44 GMT  
		Size: 12.9 MB (12935861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0dab66f4ab0662009446306908c2ce36e5bb4889f7c648af7bc3b2039451be`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269ec3efa2ff978211505159c78b52d9538b8f5b34771d8c71d0cee35f0fd0da`  
		Last Modified: Tue, 04 Jul 2017 05:45:50 GMT  
		Size: 13.7 MB (13665330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fae04550d279ad02079caa0278fd50a84459584c8f6900fe69556af90e4353`  
		Last Modified: Tue, 04 Jul 2017 05:45:42 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34389ff0f029c62c3cda91e7f93f0a8fad7f65d482d8ce76e7b6d6e64ea69eb`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7e0a6d2cf60ad8cac1632fb10065e9928ecc7de39f923c3ce100bed0123627`  
		Last Modified: Thu, 06 Jul 2017 03:05:48 GMT  
		Size: 35.9 MB (35887057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f577172f5ad4a4bfae28813697552c91528417a47beafafa8e964dd43b9d591`  
		Last Modified: Thu, 06 Jul 2017 03:05:39 GMT  
		Size: 1.9 MB (1903755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae49a0fa8e2164009848f621ef1243eea8050fb92de41b42ce8f9493627ac77`  
		Last Modified: Thu, 06 Jul 2017 03:05:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80635bba9432295d0d4cfc3157de4520cee453c0deaecf514749c802016b5a40`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a40d358b997dc18f8381f203ab4ead1b89eedf6ad2f6573b9bac2e82377d92`  
		Last Modified: Thu, 06 Jul 2017 03:05:37 GMT  
		Size: 1.3 MB (1321278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d26713829d2222465f8cc3f84b10eb59f70a56fde1031361e7638efadf3e8b8f`  
		Last Modified: Thu, 06 Jul 2017 03:05:52 GMT  
		Size: 43.5 MB (43528747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce19a27e289c179b83c80fca88e2027713edd7367318b54fb7d114cc81e63d0`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0131917172d4797f8077f3051c9563b4fa40cd1d26b76a60d6c686fc161c1f08`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0`

```console
$ docker pull nextcloud@sha256:317b316ca0cc3ee70635079fd7e83a47f4a03ff315193913bc67b816120f1848
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247144516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87fb4faee029f525dffdb38c218055dfe09cde4c49e5ffef29755602b9089e83`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:10:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:10:25 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 03 Jul 2017 22:27:14 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=
# Mon, 03 Jul 2017 22:27:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 03 Jul 2017 22:27:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 03 Jul 2017 22:30:36 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 03 Jul 2017 22:30:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:39 GMT
WORKDIR /var/www/html
# Mon, 03 Jul 2017 22:30:40 GMT
EXPOSE 80/tcp
# Mon, 03 Jul 2017 22:30:41 GMT
CMD ["apache2-foreground"]
# Thu, 06 Jul 2017 02:51:55 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:53:53 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:53:55 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:53:56 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:54:27 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:54:28 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:54:29 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Thu, 06 Jul 2017 02:54:30 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:54:45 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:54:46 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:54:47 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:54:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:54:49 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6883f41d7a03fbc243e18a34fcde97593a3d2fe053263c46c79c571cc24ec6e2`  
		Last Modified: Tue, 04 Jul 2017 05:45:44 GMT  
		Size: 12.9 MB (12935861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0dab66f4ab0662009446306908c2ce36e5bb4889f7c648af7bc3b2039451be`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269ec3efa2ff978211505159c78b52d9538b8f5b34771d8c71d0cee35f0fd0da`  
		Last Modified: Tue, 04 Jul 2017 05:45:50 GMT  
		Size: 13.7 MB (13665330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fae04550d279ad02079caa0278fd50a84459584c8f6900fe69556af90e4353`  
		Last Modified: Tue, 04 Jul 2017 05:45:42 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34389ff0f029c62c3cda91e7f93f0a8fad7f65d482d8ce76e7b6d6e64ea69eb`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7e0a6d2cf60ad8cac1632fb10065e9928ecc7de39f923c3ce100bed0123627`  
		Last Modified: Thu, 06 Jul 2017 03:05:48 GMT  
		Size: 35.9 MB (35887057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f577172f5ad4a4bfae28813697552c91528417a47beafafa8e964dd43b9d591`  
		Last Modified: Thu, 06 Jul 2017 03:05:39 GMT  
		Size: 1.9 MB (1903755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae49a0fa8e2164009848f621ef1243eea8050fb92de41b42ce8f9493627ac77`  
		Last Modified: Thu, 06 Jul 2017 03:05:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80635bba9432295d0d4cfc3157de4520cee453c0deaecf514749c802016b5a40`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a40d358b997dc18f8381f203ab4ead1b89eedf6ad2f6573b9bac2e82377d92`  
		Last Modified: Thu, 06 Jul 2017 03:05:37 GMT  
		Size: 1.3 MB (1321278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d26713829d2222465f8cc3f84b10eb59f70a56fde1031361e7638efadf3e8b8f`  
		Last Modified: Thu, 06 Jul 2017 03:05:52 GMT  
		Size: 43.5 MB (43528747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce19a27e289c179b83c80fca88e2027713edd7367318b54fb7d114cc81e63d0`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0131917172d4797f8077f3051c9563b4fa40cd1d26b76a60d6c686fc161c1f08`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11`

```console
$ docker pull nextcloud@sha256:317b316ca0cc3ee70635079fd7e83a47f4a03ff315193913bc67b816120f1848
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247144516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87fb4faee029f525dffdb38c218055dfe09cde4c49e5ffef29755602b9089e83`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:10:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:10:25 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 03 Jul 2017 22:27:14 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=
# Mon, 03 Jul 2017 22:27:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 03 Jul 2017 22:27:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 03 Jul 2017 22:30:36 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 03 Jul 2017 22:30:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:39 GMT
WORKDIR /var/www/html
# Mon, 03 Jul 2017 22:30:40 GMT
EXPOSE 80/tcp
# Mon, 03 Jul 2017 22:30:41 GMT
CMD ["apache2-foreground"]
# Thu, 06 Jul 2017 02:51:55 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:53:53 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:53:55 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:53:56 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:54:27 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:54:28 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:54:29 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Thu, 06 Jul 2017 02:54:30 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:54:45 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:54:46 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:54:47 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:54:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:54:49 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6883f41d7a03fbc243e18a34fcde97593a3d2fe053263c46c79c571cc24ec6e2`  
		Last Modified: Tue, 04 Jul 2017 05:45:44 GMT  
		Size: 12.9 MB (12935861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0dab66f4ab0662009446306908c2ce36e5bb4889f7c648af7bc3b2039451be`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269ec3efa2ff978211505159c78b52d9538b8f5b34771d8c71d0cee35f0fd0da`  
		Last Modified: Tue, 04 Jul 2017 05:45:50 GMT  
		Size: 13.7 MB (13665330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fae04550d279ad02079caa0278fd50a84459584c8f6900fe69556af90e4353`  
		Last Modified: Tue, 04 Jul 2017 05:45:42 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34389ff0f029c62c3cda91e7f93f0a8fad7f65d482d8ce76e7b6d6e64ea69eb`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7e0a6d2cf60ad8cac1632fb10065e9928ecc7de39f923c3ce100bed0123627`  
		Last Modified: Thu, 06 Jul 2017 03:05:48 GMT  
		Size: 35.9 MB (35887057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f577172f5ad4a4bfae28813697552c91528417a47beafafa8e964dd43b9d591`  
		Last Modified: Thu, 06 Jul 2017 03:05:39 GMT  
		Size: 1.9 MB (1903755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae49a0fa8e2164009848f621ef1243eea8050fb92de41b42ce8f9493627ac77`  
		Last Modified: Thu, 06 Jul 2017 03:05:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80635bba9432295d0d4cfc3157de4520cee453c0deaecf514749c802016b5a40`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a40d358b997dc18f8381f203ab4ead1b89eedf6ad2f6573b9bac2e82377d92`  
		Last Modified: Thu, 06 Jul 2017 03:05:37 GMT  
		Size: 1.3 MB (1321278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d26713829d2222465f8cc3f84b10eb59f70a56fde1031361e7638efadf3e8b8f`  
		Last Modified: Thu, 06 Jul 2017 03:05:52 GMT  
		Size: 43.5 MB (43528747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce19a27e289c179b83c80fca88e2027713edd7367318b54fb7d114cc81e63d0`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0131917172d4797f8077f3051c9563b4fa40cd1d26b76a60d6c686fc161c1f08`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0.3-fpm`

```console
$ docker pull nextcloud@sha256:0727d42fc1491d68bef60b44f1a1c71e63f82d4252991346d435d406e07da950
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0.3-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243743761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1dc3d4197574d71297e31458010d8689b1d3a7cbf76ba22152ca6b7eba8f6b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:13:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 21 Jun 2017 16:13:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:13:37 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:13:38 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:13:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 03 Jul 2017 22:37:21 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=
# Mon, 03 Jul 2017 22:37:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 03 Jul 2017 22:37:52 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:41:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 03 Jul 2017 23:01:26 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 03 Jul 2017 23:01:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 03 Jul 2017 23:01:28 GMT
WORKDIR /var/www/html
# Mon, 03 Jul 2017 23:01:29 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 03 Jul 2017 23:02:10 GMT
EXPOSE 9000/tcp
# Mon, 03 Jul 2017 23:02:11 GMT
CMD ["php-fpm"]
# Thu, 06 Jul 2017 02:55:32 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:57:30 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:57:32 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:58:02 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:58:02 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Thu, 06 Jul 2017 02:58:03 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:58:18 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:58:19 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:58:20 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:58:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:58:22 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e5f2f27b617ecf6aeef1c99a6a39bce92358cd02a8cc54423ae5ac3ffaa8a2`  
		Last Modified: Tue, 04 Jul 2017 05:49:04 GMT  
		Size: 12.9 MB (12918569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1f3277b2d19cc00ba53dc9e606085fa584cf75e41cf02bb48d3a07f708b395`  
		Last Modified: Tue, 04 Jul 2017 05:49:03 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8808b63e3e4d022c8b373c64fc352de867beb58973a90b65f4a8aa4485aa21b`  
		Last Modified: Tue, 04 Jul 2017 05:49:07 GMT  
		Size: 13.1 MB (13081633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3840eb2026d4d951e639bf0eafbac9757ace55c324508f05dde5e50b60b7ac`  
		Last Modified: Tue, 04 Jul 2017 05:49:03 GMT  
		Size: 2.1 KB (2120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba14552754e0c534900cfd85ea8db897eb8e3be2c58a0ef9b4bb77edc0ac4a0`  
		Last Modified: Tue, 04 Jul 2017 05:49:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe00634b1b7649b27d8897022aa0c16e85be55b5dd6560f6903f1ff5a08cdc98`  
		Last Modified: Tue, 04 Jul 2017 05:49:02 GMT  
		Size: 7.7 KB (7673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ab4bfaf88902d7fac8c9d598d562a47555ced3610795c011b8a7b178976940`  
		Last Modified: Thu, 06 Jul 2017 03:08:59 GMT  
		Size: 35.9 MB (35866751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ece76843c27c69c20eb14641e18b89b54f54ed221780f7ff32b62085bc5801`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 1.9 MB (1903966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9e14c0e3a39f1e86cc3cfb51030f85d4d120ac4a77d4b688614b08c815ba8b`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58de283c3a936468e18815776d04cd857e0f6ea4adc1100eabb91c44f2969d1`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 1.3 MB (1321316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12979a28171e2d4b6d5dd1094879149c714407753201b84989cf614d6b2ae1c9`  
		Last Modified: Thu, 06 Jul 2017 03:09:03 GMT  
		Size: 43.5 MB (43528751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b644b1d10bb5b470ec4c9d556ea72967af06d935a5a5766ee17de880fae2c1`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0397b69c128e2934a3f5b90b8ea39f7fdb46cf28aebe5dc4a06d5bb3d14b00`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0-fpm`

```console
$ docker pull nextcloud@sha256:0727d42fc1491d68bef60b44f1a1c71e63f82d4252991346d435d406e07da950
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11.0-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243743761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1dc3d4197574d71297e31458010d8689b1d3a7cbf76ba22152ca6b7eba8f6b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:13:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 21 Jun 2017 16:13:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:13:37 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:13:38 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:13:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 03 Jul 2017 22:37:21 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=
# Mon, 03 Jul 2017 22:37:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 03 Jul 2017 22:37:52 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:41:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 03 Jul 2017 23:01:26 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 03 Jul 2017 23:01:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 03 Jul 2017 23:01:28 GMT
WORKDIR /var/www/html
# Mon, 03 Jul 2017 23:01:29 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 03 Jul 2017 23:02:10 GMT
EXPOSE 9000/tcp
# Mon, 03 Jul 2017 23:02:11 GMT
CMD ["php-fpm"]
# Thu, 06 Jul 2017 02:55:32 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:57:30 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:57:32 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:58:02 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:58:02 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Thu, 06 Jul 2017 02:58:03 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:58:18 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:58:19 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:58:20 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:58:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:58:22 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e5f2f27b617ecf6aeef1c99a6a39bce92358cd02a8cc54423ae5ac3ffaa8a2`  
		Last Modified: Tue, 04 Jul 2017 05:49:04 GMT  
		Size: 12.9 MB (12918569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1f3277b2d19cc00ba53dc9e606085fa584cf75e41cf02bb48d3a07f708b395`  
		Last Modified: Tue, 04 Jul 2017 05:49:03 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8808b63e3e4d022c8b373c64fc352de867beb58973a90b65f4a8aa4485aa21b`  
		Last Modified: Tue, 04 Jul 2017 05:49:07 GMT  
		Size: 13.1 MB (13081633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3840eb2026d4d951e639bf0eafbac9757ace55c324508f05dde5e50b60b7ac`  
		Last Modified: Tue, 04 Jul 2017 05:49:03 GMT  
		Size: 2.1 KB (2120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba14552754e0c534900cfd85ea8db897eb8e3be2c58a0ef9b4bb77edc0ac4a0`  
		Last Modified: Tue, 04 Jul 2017 05:49:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe00634b1b7649b27d8897022aa0c16e85be55b5dd6560f6903f1ff5a08cdc98`  
		Last Modified: Tue, 04 Jul 2017 05:49:02 GMT  
		Size: 7.7 KB (7673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ab4bfaf88902d7fac8c9d598d562a47555ced3610795c011b8a7b178976940`  
		Last Modified: Thu, 06 Jul 2017 03:08:59 GMT  
		Size: 35.9 MB (35866751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ece76843c27c69c20eb14641e18b89b54f54ed221780f7ff32b62085bc5801`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 1.9 MB (1903966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9e14c0e3a39f1e86cc3cfb51030f85d4d120ac4a77d4b688614b08c815ba8b`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58de283c3a936468e18815776d04cd857e0f6ea4adc1100eabb91c44f2969d1`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 1.3 MB (1321316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12979a28171e2d4b6d5dd1094879149c714407753201b84989cf614d6b2ae1c9`  
		Last Modified: Thu, 06 Jul 2017 03:09:03 GMT  
		Size: 43.5 MB (43528751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b644b1d10bb5b470ec4c9d556ea72967af06d935a5a5766ee17de880fae2c1`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0397b69c128e2934a3f5b90b8ea39f7fdb46cf28aebe5dc4a06d5bb3d14b00`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11-fpm`

```console
$ docker pull nextcloud@sha256:0727d42fc1491d68bef60b44f1a1c71e63f82d4252991346d435d406e07da950
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243743761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1dc3d4197574d71297e31458010d8689b1d3a7cbf76ba22152ca6b7eba8f6b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:13:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 21 Jun 2017 16:13:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:13:37 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:13:38 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:13:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 03 Jul 2017 22:37:21 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=
# Mon, 03 Jul 2017 22:37:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 03 Jul 2017 22:37:52 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:41:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 03 Jul 2017 23:01:26 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 03 Jul 2017 23:01:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 03 Jul 2017 23:01:28 GMT
WORKDIR /var/www/html
# Mon, 03 Jul 2017 23:01:29 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 03 Jul 2017 23:02:10 GMT
EXPOSE 9000/tcp
# Mon, 03 Jul 2017 23:02:11 GMT
CMD ["php-fpm"]
# Thu, 06 Jul 2017 02:55:32 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:57:30 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:57:32 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:58:02 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:58:02 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Thu, 06 Jul 2017 02:58:03 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:58:18 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:58:19 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:58:20 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:58:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:58:22 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e5f2f27b617ecf6aeef1c99a6a39bce92358cd02a8cc54423ae5ac3ffaa8a2`  
		Last Modified: Tue, 04 Jul 2017 05:49:04 GMT  
		Size: 12.9 MB (12918569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1f3277b2d19cc00ba53dc9e606085fa584cf75e41cf02bb48d3a07f708b395`  
		Last Modified: Tue, 04 Jul 2017 05:49:03 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8808b63e3e4d022c8b373c64fc352de867beb58973a90b65f4a8aa4485aa21b`  
		Last Modified: Tue, 04 Jul 2017 05:49:07 GMT  
		Size: 13.1 MB (13081633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3840eb2026d4d951e639bf0eafbac9757ace55c324508f05dde5e50b60b7ac`  
		Last Modified: Tue, 04 Jul 2017 05:49:03 GMT  
		Size: 2.1 KB (2120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba14552754e0c534900cfd85ea8db897eb8e3be2c58a0ef9b4bb77edc0ac4a0`  
		Last Modified: Tue, 04 Jul 2017 05:49:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe00634b1b7649b27d8897022aa0c16e85be55b5dd6560f6903f1ff5a08cdc98`  
		Last Modified: Tue, 04 Jul 2017 05:49:02 GMT  
		Size: 7.7 KB (7673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ab4bfaf88902d7fac8c9d598d562a47555ced3610795c011b8a7b178976940`  
		Last Modified: Thu, 06 Jul 2017 03:08:59 GMT  
		Size: 35.9 MB (35866751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ece76843c27c69c20eb14641e18b89b54f54ed221780f7ff32b62085bc5801`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 1.9 MB (1903966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9e14c0e3a39f1e86cc3cfb51030f85d4d120ac4a77d4b688614b08c815ba8b`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58de283c3a936468e18815776d04cd857e0f6ea4adc1100eabb91c44f2969d1`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 1.3 MB (1321316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12979a28171e2d4b6d5dd1094879149c714407753201b84989cf614d6b2ae1c9`  
		Last Modified: Thu, 06 Jul 2017 03:09:03 GMT  
		Size: 43.5 MB (43528751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b644b1d10bb5b470ec4c9d556ea72967af06d935a5a5766ee17de880fae2c1`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0397b69c128e2934a3f5b90b8ea39f7fdb46cf28aebe5dc4a06d5bb3d14b00`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0.0-apache`

```console
$ docker pull nextcloud@sha256:9d56fc769db5a9f6916ad50105352d9c9ffb32209149fbc4862ea4718d1a6300
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0.0-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.4 MB (249369767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f759c0d00f871de423770c69c1c6b6b83b4db8176e2d347edc6a37ae2d66fd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:10:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:10:25 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 03 Jul 2017 22:27:14 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=
# Mon, 03 Jul 2017 22:27:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 03 Jul 2017 22:27:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 03 Jul 2017 22:30:36 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 03 Jul 2017 22:30:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:39 GMT
WORKDIR /var/www/html
# Mon, 03 Jul 2017 22:30:40 GMT
EXPOSE 80/tcp
# Mon, 03 Jul 2017 22:30:41 GMT
CMD ["apache2-foreground"]
# Thu, 06 Jul 2017 02:51:55 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:53:53 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:53:55 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:53:56 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:54:27 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:54:28 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:58:49 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Thu, 06 Jul 2017 02:58:50 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:59:05 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:59:07 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:59:08 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:59:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:59:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6883f41d7a03fbc243e18a34fcde97593a3d2fe053263c46c79c571cc24ec6e2`  
		Last Modified: Tue, 04 Jul 2017 05:45:44 GMT  
		Size: 12.9 MB (12935861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0dab66f4ab0662009446306908c2ce36e5bb4889f7c648af7bc3b2039451be`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269ec3efa2ff978211505159c78b52d9538b8f5b34771d8c71d0cee35f0fd0da`  
		Last Modified: Tue, 04 Jul 2017 05:45:50 GMT  
		Size: 13.7 MB (13665330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fae04550d279ad02079caa0278fd50a84459584c8f6900fe69556af90e4353`  
		Last Modified: Tue, 04 Jul 2017 05:45:42 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34389ff0f029c62c3cda91e7f93f0a8fad7f65d482d8ce76e7b6d6e64ea69eb`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7e0a6d2cf60ad8cac1632fb10065e9928ecc7de39f923c3ce100bed0123627`  
		Last Modified: Thu, 06 Jul 2017 03:05:48 GMT  
		Size: 35.9 MB (35887057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f577172f5ad4a4bfae28813697552c91528417a47beafafa8e964dd43b9d591`  
		Last Modified: Thu, 06 Jul 2017 03:05:39 GMT  
		Size: 1.9 MB (1903755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae49a0fa8e2164009848f621ef1243eea8050fb92de41b42ce8f9493627ac77`  
		Last Modified: Thu, 06 Jul 2017 03:05:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80635bba9432295d0d4cfc3157de4520cee453c0deaecf514749c802016b5a40`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a40d358b997dc18f8381f203ab4ead1b89eedf6ad2f6573b9bac2e82377d92`  
		Last Modified: Thu, 06 Jul 2017 03:05:37 GMT  
		Size: 1.3 MB (1321278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650cc06531bb4c4f6b0e6e216785b83960ab218fde9bfdbece2c0e9b2bb3d01b`  
		Last Modified: Thu, 06 Jul 2017 03:10:46 GMT  
		Size: 45.8 MB (45754001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec30833134f764da5919ccb71b5392cb8eb5d04a59463ed7936e109227584e60`  
		Last Modified: Thu, 06 Jul 2017 03:10:33 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407a9d010b49fb5f282a8f157a6b6418c0706d1555f6c3a1e29540cf925f971e`  
		Last Modified: Thu, 06 Jul 2017 03:10:32 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0-apache`

```console
$ docker pull nextcloud@sha256:9d56fc769db5a9f6916ad50105352d9c9ffb32209149fbc4862ea4718d1a6300
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.4 MB (249369767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f759c0d00f871de423770c69c1c6b6b83b4db8176e2d347edc6a37ae2d66fd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:10:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:10:25 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 03 Jul 2017 22:27:14 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=
# Mon, 03 Jul 2017 22:27:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 03 Jul 2017 22:27:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 03 Jul 2017 22:30:36 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 03 Jul 2017 22:30:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:39 GMT
WORKDIR /var/www/html
# Mon, 03 Jul 2017 22:30:40 GMT
EXPOSE 80/tcp
# Mon, 03 Jul 2017 22:30:41 GMT
CMD ["apache2-foreground"]
# Thu, 06 Jul 2017 02:51:55 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:53:53 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:53:55 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:53:56 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:54:27 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:54:28 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:58:49 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Thu, 06 Jul 2017 02:58:50 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:59:05 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:59:07 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:59:08 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:59:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:59:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6883f41d7a03fbc243e18a34fcde97593a3d2fe053263c46c79c571cc24ec6e2`  
		Last Modified: Tue, 04 Jul 2017 05:45:44 GMT  
		Size: 12.9 MB (12935861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0dab66f4ab0662009446306908c2ce36e5bb4889f7c648af7bc3b2039451be`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269ec3efa2ff978211505159c78b52d9538b8f5b34771d8c71d0cee35f0fd0da`  
		Last Modified: Tue, 04 Jul 2017 05:45:50 GMT  
		Size: 13.7 MB (13665330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fae04550d279ad02079caa0278fd50a84459584c8f6900fe69556af90e4353`  
		Last Modified: Tue, 04 Jul 2017 05:45:42 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34389ff0f029c62c3cda91e7f93f0a8fad7f65d482d8ce76e7b6d6e64ea69eb`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7e0a6d2cf60ad8cac1632fb10065e9928ecc7de39f923c3ce100bed0123627`  
		Last Modified: Thu, 06 Jul 2017 03:05:48 GMT  
		Size: 35.9 MB (35887057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f577172f5ad4a4bfae28813697552c91528417a47beafafa8e964dd43b9d591`  
		Last Modified: Thu, 06 Jul 2017 03:05:39 GMT  
		Size: 1.9 MB (1903755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae49a0fa8e2164009848f621ef1243eea8050fb92de41b42ce8f9493627ac77`  
		Last Modified: Thu, 06 Jul 2017 03:05:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80635bba9432295d0d4cfc3157de4520cee453c0deaecf514749c802016b5a40`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a40d358b997dc18f8381f203ab4ead1b89eedf6ad2f6573b9bac2e82377d92`  
		Last Modified: Thu, 06 Jul 2017 03:05:37 GMT  
		Size: 1.3 MB (1321278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650cc06531bb4c4f6b0e6e216785b83960ab218fde9bfdbece2c0e9b2bb3d01b`  
		Last Modified: Thu, 06 Jul 2017 03:10:46 GMT  
		Size: 45.8 MB (45754001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec30833134f764da5919ccb71b5392cb8eb5d04a59463ed7936e109227584e60`  
		Last Modified: Thu, 06 Jul 2017 03:10:33 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407a9d010b49fb5f282a8f157a6b6418c0706d1555f6c3a1e29540cf925f971e`  
		Last Modified: Thu, 06 Jul 2017 03:10:32 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12-apache`

```console
$ docker pull nextcloud@sha256:9d56fc769db5a9f6916ad50105352d9c9ffb32209149fbc4862ea4718d1a6300
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.4 MB (249369767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f759c0d00f871de423770c69c1c6b6b83b4db8176e2d347edc6a37ae2d66fd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:10:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:10:25 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 03 Jul 2017 22:27:14 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=
# Mon, 03 Jul 2017 22:27:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 03 Jul 2017 22:27:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 03 Jul 2017 22:30:36 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 03 Jul 2017 22:30:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:39 GMT
WORKDIR /var/www/html
# Mon, 03 Jul 2017 22:30:40 GMT
EXPOSE 80/tcp
# Mon, 03 Jul 2017 22:30:41 GMT
CMD ["apache2-foreground"]
# Thu, 06 Jul 2017 02:51:55 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:53:53 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:53:55 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:53:56 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:54:27 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:54:28 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:58:49 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Thu, 06 Jul 2017 02:58:50 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:59:05 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:59:07 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:59:08 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:59:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:59:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6883f41d7a03fbc243e18a34fcde97593a3d2fe053263c46c79c571cc24ec6e2`  
		Last Modified: Tue, 04 Jul 2017 05:45:44 GMT  
		Size: 12.9 MB (12935861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0dab66f4ab0662009446306908c2ce36e5bb4889f7c648af7bc3b2039451be`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269ec3efa2ff978211505159c78b52d9538b8f5b34771d8c71d0cee35f0fd0da`  
		Last Modified: Tue, 04 Jul 2017 05:45:50 GMT  
		Size: 13.7 MB (13665330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fae04550d279ad02079caa0278fd50a84459584c8f6900fe69556af90e4353`  
		Last Modified: Tue, 04 Jul 2017 05:45:42 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34389ff0f029c62c3cda91e7f93f0a8fad7f65d482d8ce76e7b6d6e64ea69eb`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7e0a6d2cf60ad8cac1632fb10065e9928ecc7de39f923c3ce100bed0123627`  
		Last Modified: Thu, 06 Jul 2017 03:05:48 GMT  
		Size: 35.9 MB (35887057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f577172f5ad4a4bfae28813697552c91528417a47beafafa8e964dd43b9d591`  
		Last Modified: Thu, 06 Jul 2017 03:05:39 GMT  
		Size: 1.9 MB (1903755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae49a0fa8e2164009848f621ef1243eea8050fb92de41b42ce8f9493627ac77`  
		Last Modified: Thu, 06 Jul 2017 03:05:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80635bba9432295d0d4cfc3157de4520cee453c0deaecf514749c802016b5a40`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a40d358b997dc18f8381f203ab4ead1b89eedf6ad2f6573b9bac2e82377d92`  
		Last Modified: Thu, 06 Jul 2017 03:05:37 GMT  
		Size: 1.3 MB (1321278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650cc06531bb4c4f6b0e6e216785b83960ab218fde9bfdbece2c0e9b2bb3d01b`  
		Last Modified: Thu, 06 Jul 2017 03:10:46 GMT  
		Size: 45.8 MB (45754001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec30833134f764da5919ccb71b5392cb8eb5d04a59463ed7936e109227584e60`  
		Last Modified: Thu, 06 Jul 2017 03:10:33 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407a9d010b49fb5f282a8f157a6b6418c0706d1555f6c3a1e29540cf925f971e`  
		Last Modified: Thu, 06 Jul 2017 03:10:32 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:apache`

```console
$ docker pull nextcloud@sha256:9d56fc769db5a9f6916ad50105352d9c9ffb32209149fbc4862ea4718d1a6300
```

-	Platforms:
	-	linux; amd64

### `nextcloud:apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.4 MB (249369767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f759c0d00f871de423770c69c1c6b6b83b4db8176e2d347edc6a37ae2d66fd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:10:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:10:25 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 03 Jul 2017 22:27:14 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=
# Mon, 03 Jul 2017 22:27:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 03 Jul 2017 22:27:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 03 Jul 2017 22:30:36 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 03 Jul 2017 22:30:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:39 GMT
WORKDIR /var/www/html
# Mon, 03 Jul 2017 22:30:40 GMT
EXPOSE 80/tcp
# Mon, 03 Jul 2017 22:30:41 GMT
CMD ["apache2-foreground"]
# Thu, 06 Jul 2017 02:51:55 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:53:53 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:53:55 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:53:56 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:54:27 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:54:28 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:58:49 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Thu, 06 Jul 2017 02:58:50 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:59:05 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:59:07 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:59:08 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:59:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:59:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6883f41d7a03fbc243e18a34fcde97593a3d2fe053263c46c79c571cc24ec6e2`  
		Last Modified: Tue, 04 Jul 2017 05:45:44 GMT  
		Size: 12.9 MB (12935861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0dab66f4ab0662009446306908c2ce36e5bb4889f7c648af7bc3b2039451be`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269ec3efa2ff978211505159c78b52d9538b8f5b34771d8c71d0cee35f0fd0da`  
		Last Modified: Tue, 04 Jul 2017 05:45:50 GMT  
		Size: 13.7 MB (13665330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fae04550d279ad02079caa0278fd50a84459584c8f6900fe69556af90e4353`  
		Last Modified: Tue, 04 Jul 2017 05:45:42 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34389ff0f029c62c3cda91e7f93f0a8fad7f65d482d8ce76e7b6d6e64ea69eb`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7e0a6d2cf60ad8cac1632fb10065e9928ecc7de39f923c3ce100bed0123627`  
		Last Modified: Thu, 06 Jul 2017 03:05:48 GMT  
		Size: 35.9 MB (35887057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f577172f5ad4a4bfae28813697552c91528417a47beafafa8e964dd43b9d591`  
		Last Modified: Thu, 06 Jul 2017 03:05:39 GMT  
		Size: 1.9 MB (1903755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae49a0fa8e2164009848f621ef1243eea8050fb92de41b42ce8f9493627ac77`  
		Last Modified: Thu, 06 Jul 2017 03:05:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80635bba9432295d0d4cfc3157de4520cee453c0deaecf514749c802016b5a40`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a40d358b997dc18f8381f203ab4ead1b89eedf6ad2f6573b9bac2e82377d92`  
		Last Modified: Thu, 06 Jul 2017 03:05:37 GMT  
		Size: 1.3 MB (1321278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650cc06531bb4c4f6b0e6e216785b83960ab218fde9bfdbece2c0e9b2bb3d01b`  
		Last Modified: Thu, 06 Jul 2017 03:10:46 GMT  
		Size: 45.8 MB (45754001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec30833134f764da5919ccb71b5392cb8eb5d04a59463ed7936e109227584e60`  
		Last Modified: Thu, 06 Jul 2017 03:10:33 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407a9d010b49fb5f282a8f157a6b6418c0706d1555f6c3a1e29540cf925f971e`  
		Last Modified: Thu, 06 Jul 2017 03:10:32 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0.0`

```console
$ docker pull nextcloud@sha256:9d56fc769db5a9f6916ad50105352d9c9ffb32209149fbc4862ea4718d1a6300
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.4 MB (249369767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f759c0d00f871de423770c69c1c6b6b83b4db8176e2d347edc6a37ae2d66fd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:10:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:10:25 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 03 Jul 2017 22:27:14 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=
# Mon, 03 Jul 2017 22:27:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 03 Jul 2017 22:27:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 03 Jul 2017 22:30:36 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 03 Jul 2017 22:30:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:39 GMT
WORKDIR /var/www/html
# Mon, 03 Jul 2017 22:30:40 GMT
EXPOSE 80/tcp
# Mon, 03 Jul 2017 22:30:41 GMT
CMD ["apache2-foreground"]
# Thu, 06 Jul 2017 02:51:55 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:53:53 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:53:55 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:53:56 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:54:27 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:54:28 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:58:49 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Thu, 06 Jul 2017 02:58:50 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:59:05 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:59:07 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:59:08 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:59:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:59:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6883f41d7a03fbc243e18a34fcde97593a3d2fe053263c46c79c571cc24ec6e2`  
		Last Modified: Tue, 04 Jul 2017 05:45:44 GMT  
		Size: 12.9 MB (12935861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0dab66f4ab0662009446306908c2ce36e5bb4889f7c648af7bc3b2039451be`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269ec3efa2ff978211505159c78b52d9538b8f5b34771d8c71d0cee35f0fd0da`  
		Last Modified: Tue, 04 Jul 2017 05:45:50 GMT  
		Size: 13.7 MB (13665330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fae04550d279ad02079caa0278fd50a84459584c8f6900fe69556af90e4353`  
		Last Modified: Tue, 04 Jul 2017 05:45:42 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34389ff0f029c62c3cda91e7f93f0a8fad7f65d482d8ce76e7b6d6e64ea69eb`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7e0a6d2cf60ad8cac1632fb10065e9928ecc7de39f923c3ce100bed0123627`  
		Last Modified: Thu, 06 Jul 2017 03:05:48 GMT  
		Size: 35.9 MB (35887057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f577172f5ad4a4bfae28813697552c91528417a47beafafa8e964dd43b9d591`  
		Last Modified: Thu, 06 Jul 2017 03:05:39 GMT  
		Size: 1.9 MB (1903755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae49a0fa8e2164009848f621ef1243eea8050fb92de41b42ce8f9493627ac77`  
		Last Modified: Thu, 06 Jul 2017 03:05:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80635bba9432295d0d4cfc3157de4520cee453c0deaecf514749c802016b5a40`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a40d358b997dc18f8381f203ab4ead1b89eedf6ad2f6573b9bac2e82377d92`  
		Last Modified: Thu, 06 Jul 2017 03:05:37 GMT  
		Size: 1.3 MB (1321278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650cc06531bb4c4f6b0e6e216785b83960ab218fde9bfdbece2c0e9b2bb3d01b`  
		Last Modified: Thu, 06 Jul 2017 03:10:46 GMT  
		Size: 45.8 MB (45754001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec30833134f764da5919ccb71b5392cb8eb5d04a59463ed7936e109227584e60`  
		Last Modified: Thu, 06 Jul 2017 03:10:33 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407a9d010b49fb5f282a8f157a6b6418c0706d1555f6c3a1e29540cf925f971e`  
		Last Modified: Thu, 06 Jul 2017 03:10:32 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0`

```console
$ docker pull nextcloud@sha256:9d56fc769db5a9f6916ad50105352d9c9ffb32209149fbc4862ea4718d1a6300
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.4 MB (249369767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f759c0d00f871de423770c69c1c6b6b83b4db8176e2d347edc6a37ae2d66fd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:10:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:10:25 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 03 Jul 2017 22:27:14 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=
# Mon, 03 Jul 2017 22:27:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 03 Jul 2017 22:27:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 03 Jul 2017 22:30:36 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 03 Jul 2017 22:30:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:39 GMT
WORKDIR /var/www/html
# Mon, 03 Jul 2017 22:30:40 GMT
EXPOSE 80/tcp
# Mon, 03 Jul 2017 22:30:41 GMT
CMD ["apache2-foreground"]
# Thu, 06 Jul 2017 02:51:55 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:53:53 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:53:55 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:53:56 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:54:27 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:54:28 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:58:49 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Thu, 06 Jul 2017 02:58:50 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:59:05 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:59:07 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:59:08 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:59:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:59:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6883f41d7a03fbc243e18a34fcde97593a3d2fe053263c46c79c571cc24ec6e2`  
		Last Modified: Tue, 04 Jul 2017 05:45:44 GMT  
		Size: 12.9 MB (12935861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0dab66f4ab0662009446306908c2ce36e5bb4889f7c648af7bc3b2039451be`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269ec3efa2ff978211505159c78b52d9538b8f5b34771d8c71d0cee35f0fd0da`  
		Last Modified: Tue, 04 Jul 2017 05:45:50 GMT  
		Size: 13.7 MB (13665330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fae04550d279ad02079caa0278fd50a84459584c8f6900fe69556af90e4353`  
		Last Modified: Tue, 04 Jul 2017 05:45:42 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34389ff0f029c62c3cda91e7f93f0a8fad7f65d482d8ce76e7b6d6e64ea69eb`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7e0a6d2cf60ad8cac1632fb10065e9928ecc7de39f923c3ce100bed0123627`  
		Last Modified: Thu, 06 Jul 2017 03:05:48 GMT  
		Size: 35.9 MB (35887057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f577172f5ad4a4bfae28813697552c91528417a47beafafa8e964dd43b9d591`  
		Last Modified: Thu, 06 Jul 2017 03:05:39 GMT  
		Size: 1.9 MB (1903755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae49a0fa8e2164009848f621ef1243eea8050fb92de41b42ce8f9493627ac77`  
		Last Modified: Thu, 06 Jul 2017 03:05:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80635bba9432295d0d4cfc3157de4520cee453c0deaecf514749c802016b5a40`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a40d358b997dc18f8381f203ab4ead1b89eedf6ad2f6573b9bac2e82377d92`  
		Last Modified: Thu, 06 Jul 2017 03:05:37 GMT  
		Size: 1.3 MB (1321278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650cc06531bb4c4f6b0e6e216785b83960ab218fde9bfdbece2c0e9b2bb3d01b`  
		Last Modified: Thu, 06 Jul 2017 03:10:46 GMT  
		Size: 45.8 MB (45754001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec30833134f764da5919ccb71b5392cb8eb5d04a59463ed7936e109227584e60`  
		Last Modified: Thu, 06 Jul 2017 03:10:33 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407a9d010b49fb5f282a8f157a6b6418c0706d1555f6c3a1e29540cf925f971e`  
		Last Modified: Thu, 06 Jul 2017 03:10:32 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12`

```console
$ docker pull nextcloud@sha256:9d56fc769db5a9f6916ad50105352d9c9ffb32209149fbc4862ea4718d1a6300
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.4 MB (249369767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f759c0d00f871de423770c69c1c6b6b83b4db8176e2d347edc6a37ae2d66fd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:10:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:10:25 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 03 Jul 2017 22:27:14 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=
# Mon, 03 Jul 2017 22:27:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 03 Jul 2017 22:27:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 03 Jul 2017 22:30:36 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 03 Jul 2017 22:30:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:30:39 GMT
WORKDIR /var/www/html
# Mon, 03 Jul 2017 22:30:40 GMT
EXPOSE 80/tcp
# Mon, 03 Jul 2017 22:30:41 GMT
CMD ["apache2-foreground"]
# Thu, 06 Jul 2017 02:51:55 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:53:53 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:53:55 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:53:56 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:54:27 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:54:28 GMT
RUN a2enmod rewrite
# Thu, 06 Jul 2017 02:58:49 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Thu, 06 Jul 2017 02:58:50 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:59:05 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:59:07 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:59:08 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:59:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:59:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6883f41d7a03fbc243e18a34fcde97593a3d2fe053263c46c79c571cc24ec6e2`  
		Last Modified: Tue, 04 Jul 2017 05:45:44 GMT  
		Size: 12.9 MB (12935861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0dab66f4ab0662009446306908c2ce36e5bb4889f7c648af7bc3b2039451be`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269ec3efa2ff978211505159c78b52d9538b8f5b34771d8c71d0cee35f0fd0da`  
		Last Modified: Tue, 04 Jul 2017 05:45:50 GMT  
		Size: 13.7 MB (13665330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fae04550d279ad02079caa0278fd50a84459584c8f6900fe69556af90e4353`  
		Last Modified: Tue, 04 Jul 2017 05:45:42 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34389ff0f029c62c3cda91e7f93f0a8fad7f65d482d8ce76e7b6d6e64ea69eb`  
		Last Modified: Tue, 04 Jul 2017 05:45:43 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7e0a6d2cf60ad8cac1632fb10065e9928ecc7de39f923c3ce100bed0123627`  
		Last Modified: Thu, 06 Jul 2017 03:05:48 GMT  
		Size: 35.9 MB (35887057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f577172f5ad4a4bfae28813697552c91528417a47beafafa8e964dd43b9d591`  
		Last Modified: Thu, 06 Jul 2017 03:05:39 GMT  
		Size: 1.9 MB (1903755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae49a0fa8e2164009848f621ef1243eea8050fb92de41b42ce8f9493627ac77`  
		Last Modified: Thu, 06 Jul 2017 03:05:38 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80635bba9432295d0d4cfc3157de4520cee453c0deaecf514749c802016b5a40`  
		Last Modified: Thu, 06 Jul 2017 03:05:36 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a40d358b997dc18f8381f203ab4ead1b89eedf6ad2f6573b9bac2e82377d92`  
		Last Modified: Thu, 06 Jul 2017 03:05:37 GMT  
		Size: 1.3 MB (1321278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650cc06531bb4c4f6b0e6e216785b83960ab218fde9bfdbece2c0e9b2bb3d01b`  
		Last Modified: Thu, 06 Jul 2017 03:10:46 GMT  
		Size: 45.8 MB (45754001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec30833134f764da5919ccb71b5392cb8eb5d04a59463ed7936e109227584e60`  
		Last Modified: Thu, 06 Jul 2017 03:10:33 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407a9d010b49fb5f282a8f157a6b6418c0706d1555f6c3a1e29540cf925f971e`  
		Last Modified: Thu, 06 Jul 2017 03:10:32 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:latest`

```console
$ docker pull nextcloud@sha256:8defb7d35ddcea847cadf806b825bfa29f995dde79bcaa5d2fd4a3615558dad2
```

-	Platforms:
	-	linux; amd64

### `nextcloud:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.2 MB (249225447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3845625b4957c745a97e23d7cc8724ad2f1f5001c33d3ac37c2fab53bd71e2f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:10:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:10:25 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Wed, 21 Jun 2017 16:10:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Jun 2017 16:10:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:02 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 21 Jun 2017 16:13:04 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Jun 2017 16:13:06 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:07 GMT
WORKDIR /var/www/html
# Wed, 21 Jun 2017 16:13:08 GMT
EXPOSE 80/tcp
# Wed, 21 Jun 2017 16:13:09 GMT
CMD ["apache2-foreground"]
# Fri, 23 Jun 2017 16:32:41 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 16:34:40 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 23 Jun 2017 16:34:41 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 23 Jun 2017 16:34:43 GMT
RUN a2enmod rewrite
# Fri, 23 Jun 2017 16:35:13 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Fri, 23 Jun 2017 16:35:14 GMT
RUN a2enmod rewrite
# Fri, 23 Jun 2017 16:39:32 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Fri, 23 Jun 2017 16:39:32 GMT
VOLUME [/var/www/html]
# Fri, 23 Jun 2017 16:39:47 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Fri, 23 Jun 2017 16:39:48 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Fri, 23 Jun 2017 16:39:50 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Fri, 23 Jun 2017 16:39:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Jun 2017 16:39:51 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6edd671e0b3874ec04702768c59ed7e944c83ec7ffb6924a25b611b430165c41`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 12.9 MB (12935855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38554bba508af73d46f9d8a7e44a768d235d8334e42fd7e4adb1d10f38d2b85`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6554e0e0588fdbf3e60e3e3b426995646c49d3af236618812337b742d8a510`  
		Last Modified: Wed, 21 Jun 2017 16:58:12 GMT  
		Size: 13.5 MB (13521205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3548be1f1016a680570fd575eb90725658bb1ec572db5db59db3f752deb58020`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee1a52c53c7f810950b10f8ea2c403241d1eff114134c56d89a411cc4119ae7`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f34b8ea8c6385588466d74b044521f7988c67edeabee46e6a4b1a515dce771a`  
		Last Modified: Sat, 24 Jun 2017 14:12:01 GMT  
		Size: 35.9 MB (35886874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c0df3cd72c23ade38e165fb200ef5d77f70f5d2e38fef6f8eabf1d4f685edf`  
		Last Modified: Sat, 24 Jun 2017 14:11:52 GMT  
		Size: 1.9 MB (1903745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b11750dcef0958e818a35a14872243fc037f4a3f029afcb05dbd03caaa5731a`  
		Last Modified: Sat, 24 Jun 2017 14:11:49 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474e7c0c0c049e4c4d47a03bffb03368624382e24c69bcf9381943f8f8452b67`  
		Last Modified: Sat, 24 Jun 2017 14:11:50 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312df024f34d1d7a4dde376c0e6b3e33e6848e6937a4f59cc6997bc3d51876ce`  
		Last Modified: Sat, 24 Jun 2017 14:11:50 GMT  
		Size: 1.3 MB (1321277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61df1ba16bee1394b7194812d30e7dafd702daa6e13ae6ed961fcdca021dde83`  
		Last Modified: Sat, 24 Jun 2017 14:16:57 GMT  
		Size: 45.8 MB (45754001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9a209c837a751604e967ba12c70073012aea8ceeeb94ca8740d7d91555d776`  
		Last Modified: Sat, 24 Jun 2017 14:16:39 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550c6bb652c704db6afcd7ee7d43d6b89932110d00336623bd0d567af4d52b9c`  
		Last Modified: Sat, 24 Jun 2017 14:16:39 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0.0-fpm`

```console
$ docker pull nextcloud@sha256:f4fb98752a016076c8835f55493e7daf4d7882636cebb22ab3e85b8cf9475072
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0.0-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.0 MB (245968990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0812f4acc0e5cc27534857f5bd4cd17fddeeb12e0cd45c0dec501a31df697a53`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:13:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 21 Jun 2017 16:13:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:13:37 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:13:38 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:13:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 03 Jul 2017 22:37:21 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=
# Mon, 03 Jul 2017 22:37:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 03 Jul 2017 22:37:52 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:41:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 03 Jul 2017 23:01:26 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 03 Jul 2017 23:01:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 03 Jul 2017 23:01:28 GMT
WORKDIR /var/www/html
# Mon, 03 Jul 2017 23:01:29 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 03 Jul 2017 23:02:10 GMT
EXPOSE 9000/tcp
# Mon, 03 Jul 2017 23:02:11 GMT
CMD ["php-fpm"]
# Thu, 06 Jul 2017 02:55:32 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:57:30 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:57:32 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:58:02 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:59:39 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Thu, 06 Jul 2017 02:59:40 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:59:55 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:59:56 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:59:57 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:59:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:59:59 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e5f2f27b617ecf6aeef1c99a6a39bce92358cd02a8cc54423ae5ac3ffaa8a2`  
		Last Modified: Tue, 04 Jul 2017 05:49:04 GMT  
		Size: 12.9 MB (12918569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1f3277b2d19cc00ba53dc9e606085fa584cf75e41cf02bb48d3a07f708b395`  
		Last Modified: Tue, 04 Jul 2017 05:49:03 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8808b63e3e4d022c8b373c64fc352de867beb58973a90b65f4a8aa4485aa21b`  
		Last Modified: Tue, 04 Jul 2017 05:49:07 GMT  
		Size: 13.1 MB (13081633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3840eb2026d4d951e639bf0eafbac9757ace55c324508f05dde5e50b60b7ac`  
		Last Modified: Tue, 04 Jul 2017 05:49:03 GMT  
		Size: 2.1 KB (2120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba14552754e0c534900cfd85ea8db897eb8e3be2c58a0ef9b4bb77edc0ac4a0`  
		Last Modified: Tue, 04 Jul 2017 05:49:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe00634b1b7649b27d8897022aa0c16e85be55b5dd6560f6903f1ff5a08cdc98`  
		Last Modified: Tue, 04 Jul 2017 05:49:02 GMT  
		Size: 7.7 KB (7673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ab4bfaf88902d7fac8c9d598d562a47555ced3610795c011b8a7b178976940`  
		Last Modified: Thu, 06 Jul 2017 03:08:59 GMT  
		Size: 35.9 MB (35866751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ece76843c27c69c20eb14641e18b89b54f54ed221780f7ff32b62085bc5801`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 1.9 MB (1903966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9e14c0e3a39f1e86cc3cfb51030f85d4d120ac4a77d4b688614b08c815ba8b`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58de283c3a936468e18815776d04cd857e0f6ea4adc1100eabb91c44f2969d1`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 1.3 MB (1321316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3435765699cbe1c54510f1d253b896fb4fdcae332f8d0f14318cd0db4b73e706`  
		Last Modified: Thu, 06 Jul 2017 03:14:54 GMT  
		Size: 45.8 MB (45753979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4e76b170482377f464c4d6304b515aba64559598585d86f7fce486ff1c38fc`  
		Last Modified: Thu, 06 Jul 2017 03:14:40 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d59f8791fc06a766b692bfbf8b65c5e7b2621e9ab328844a8dccb1b2a40fe3a`  
		Last Modified: Thu, 06 Jul 2017 03:14:40 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0-fpm`

```console
$ docker pull nextcloud@sha256:f4fb98752a016076c8835f55493e7daf4d7882636cebb22ab3e85b8cf9475072
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12.0-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.0 MB (245968990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0812f4acc0e5cc27534857f5bd4cd17fddeeb12e0cd45c0dec501a31df697a53`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:13:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 21 Jun 2017 16:13:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:13:37 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:13:38 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:13:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 03 Jul 2017 22:37:21 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=
# Mon, 03 Jul 2017 22:37:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 03 Jul 2017 22:37:52 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:41:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 03 Jul 2017 23:01:26 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 03 Jul 2017 23:01:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 03 Jul 2017 23:01:28 GMT
WORKDIR /var/www/html
# Mon, 03 Jul 2017 23:01:29 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 03 Jul 2017 23:02:10 GMT
EXPOSE 9000/tcp
# Mon, 03 Jul 2017 23:02:11 GMT
CMD ["php-fpm"]
# Thu, 06 Jul 2017 02:55:32 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:57:30 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:57:32 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:58:02 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:59:39 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Thu, 06 Jul 2017 02:59:40 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:59:55 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:59:56 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:59:57 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:59:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:59:59 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e5f2f27b617ecf6aeef1c99a6a39bce92358cd02a8cc54423ae5ac3ffaa8a2`  
		Last Modified: Tue, 04 Jul 2017 05:49:04 GMT  
		Size: 12.9 MB (12918569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1f3277b2d19cc00ba53dc9e606085fa584cf75e41cf02bb48d3a07f708b395`  
		Last Modified: Tue, 04 Jul 2017 05:49:03 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8808b63e3e4d022c8b373c64fc352de867beb58973a90b65f4a8aa4485aa21b`  
		Last Modified: Tue, 04 Jul 2017 05:49:07 GMT  
		Size: 13.1 MB (13081633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3840eb2026d4d951e639bf0eafbac9757ace55c324508f05dde5e50b60b7ac`  
		Last Modified: Tue, 04 Jul 2017 05:49:03 GMT  
		Size: 2.1 KB (2120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba14552754e0c534900cfd85ea8db897eb8e3be2c58a0ef9b4bb77edc0ac4a0`  
		Last Modified: Tue, 04 Jul 2017 05:49:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe00634b1b7649b27d8897022aa0c16e85be55b5dd6560f6903f1ff5a08cdc98`  
		Last Modified: Tue, 04 Jul 2017 05:49:02 GMT  
		Size: 7.7 KB (7673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ab4bfaf88902d7fac8c9d598d562a47555ced3610795c011b8a7b178976940`  
		Last Modified: Thu, 06 Jul 2017 03:08:59 GMT  
		Size: 35.9 MB (35866751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ece76843c27c69c20eb14641e18b89b54f54ed221780f7ff32b62085bc5801`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 1.9 MB (1903966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9e14c0e3a39f1e86cc3cfb51030f85d4d120ac4a77d4b688614b08c815ba8b`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58de283c3a936468e18815776d04cd857e0f6ea4adc1100eabb91c44f2969d1`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 1.3 MB (1321316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3435765699cbe1c54510f1d253b896fb4fdcae332f8d0f14318cd0db4b73e706`  
		Last Modified: Thu, 06 Jul 2017 03:14:54 GMT  
		Size: 45.8 MB (45753979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4e76b170482377f464c4d6304b515aba64559598585d86f7fce486ff1c38fc`  
		Last Modified: Thu, 06 Jul 2017 03:14:40 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d59f8791fc06a766b692bfbf8b65c5e7b2621e9ab328844a8dccb1b2a40fe3a`  
		Last Modified: Thu, 06 Jul 2017 03:14:40 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12-fpm`

```console
$ docker pull nextcloud@sha256:f4fb98752a016076c8835f55493e7daf4d7882636cebb22ab3e85b8cf9475072
```

-	Platforms:
	-	linux; amd64

### `nextcloud:12-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.0 MB (245968990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0812f4acc0e5cc27534857f5bd4cd17fddeeb12e0cd45c0dec501a31df697a53`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:13:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 21 Jun 2017 16:13:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:13:37 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:13:38 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:13:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 03 Jul 2017 22:37:21 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=
# Mon, 03 Jul 2017 22:37:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 03 Jul 2017 22:37:52 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:41:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 03 Jul 2017 23:01:26 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 03 Jul 2017 23:01:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 03 Jul 2017 23:01:28 GMT
WORKDIR /var/www/html
# Mon, 03 Jul 2017 23:01:29 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 03 Jul 2017 23:02:10 GMT
EXPOSE 9000/tcp
# Mon, 03 Jul 2017 23:02:11 GMT
CMD ["php-fpm"]
# Thu, 06 Jul 2017 02:55:32 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:57:30 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:57:32 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:58:02 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:59:39 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Thu, 06 Jul 2017 02:59:40 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:59:55 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:59:56 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:59:57 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:59:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:59:59 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e5f2f27b617ecf6aeef1c99a6a39bce92358cd02a8cc54423ae5ac3ffaa8a2`  
		Last Modified: Tue, 04 Jul 2017 05:49:04 GMT  
		Size: 12.9 MB (12918569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1f3277b2d19cc00ba53dc9e606085fa584cf75e41cf02bb48d3a07f708b395`  
		Last Modified: Tue, 04 Jul 2017 05:49:03 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8808b63e3e4d022c8b373c64fc352de867beb58973a90b65f4a8aa4485aa21b`  
		Last Modified: Tue, 04 Jul 2017 05:49:07 GMT  
		Size: 13.1 MB (13081633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3840eb2026d4d951e639bf0eafbac9757ace55c324508f05dde5e50b60b7ac`  
		Last Modified: Tue, 04 Jul 2017 05:49:03 GMT  
		Size: 2.1 KB (2120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba14552754e0c534900cfd85ea8db897eb8e3be2c58a0ef9b4bb77edc0ac4a0`  
		Last Modified: Tue, 04 Jul 2017 05:49:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe00634b1b7649b27d8897022aa0c16e85be55b5dd6560f6903f1ff5a08cdc98`  
		Last Modified: Tue, 04 Jul 2017 05:49:02 GMT  
		Size: 7.7 KB (7673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ab4bfaf88902d7fac8c9d598d562a47555ced3610795c011b8a7b178976940`  
		Last Modified: Thu, 06 Jul 2017 03:08:59 GMT  
		Size: 35.9 MB (35866751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ece76843c27c69c20eb14641e18b89b54f54ed221780f7ff32b62085bc5801`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 1.9 MB (1903966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9e14c0e3a39f1e86cc3cfb51030f85d4d120ac4a77d4b688614b08c815ba8b`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58de283c3a936468e18815776d04cd857e0f6ea4adc1100eabb91c44f2969d1`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 1.3 MB (1321316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3435765699cbe1c54510f1d253b896fb4fdcae332f8d0f14318cd0db4b73e706`  
		Last Modified: Thu, 06 Jul 2017 03:14:54 GMT  
		Size: 45.8 MB (45753979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4e76b170482377f464c4d6304b515aba64559598585d86f7fce486ff1c38fc`  
		Last Modified: Thu, 06 Jul 2017 03:14:40 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d59f8791fc06a766b692bfbf8b65c5e7b2621e9ab328844a8dccb1b2a40fe3a`  
		Last Modified: Thu, 06 Jul 2017 03:14:40 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:fpm`

```console
$ docker pull nextcloud@sha256:f4fb98752a016076c8835f55493e7daf4d7882636cebb22ab3e85b8cf9475072
```

-	Platforms:
	-	linux; amd64

### `nextcloud:fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.0 MB (245968990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0812f4acc0e5cc27534857f5bd4cd17fddeeb12e0cd45c0dec501a31df697a53`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:13:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 21 Jun 2017 16:13:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:13:37 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:13:38 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:13:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 03 Jul 2017 22:37:21 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=
# Mon, 03 Jul 2017 22:37:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 03 Jul 2017 22:37:52 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 03 Jul 2017 22:41:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 03 Jul 2017 23:01:26 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 03 Jul 2017 23:01:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 03 Jul 2017 23:01:28 GMT
WORKDIR /var/www/html
# Mon, 03 Jul 2017 23:01:29 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 03 Jul 2017 23:02:10 GMT
EXPOSE 9000/tcp
# Mon, 03 Jul 2017 23:02:11 GMT
CMD ["php-fpm"]
# Thu, 06 Jul 2017 02:55:32 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:57:30 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 06 Jul 2017 02:57:32 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jul 2017 02:58:02 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Thu, 06 Jul 2017 02:59:39 GMT
ENV NEXTCLOUD_VERSION=12.0.0
# Thu, 06 Jul 2017 02:59:40 GMT
VOLUME [/var/www/html]
# Thu, 06 Jul 2017 02:59:55 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && find /usr/src/nextcloud/ -type f -print0 | xargs -0 chmod 0640  && find /usr/src/nextcloud/ -type d -print0 | xargs -0 chmod 0750  && chown -R root:www-data /usr/src/nextcloud/  && chown -R www-data:www-data /usr/src/nextcloud/custom_apps/  && chown -R www-data:www-data /usr/src/nextcloud/config/  && chown -R www-data:www-data /usr/src/nextcloud/data/  && chown -R www-data:www-data /usr/src/nextcloud/themes/  && chmod +x /usr/src/nextcloud/occ
# Thu, 06 Jul 2017 02:59:56 GMT
COPY file:1eb9f15497f4e31164cafb16cfef8bdbeaaa25660a99b2ac2de3d5f3110e1721 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:59:57 GMT
COPY file:3c3e5a9bb5574a27ae17f844d4d0f88e9b42147ab0dbd293ba01f831667f4daf in /usr/src/nextcloud/config/apps.config.php 
# Thu, 06 Jul 2017 02:59:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:59:59 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e5f2f27b617ecf6aeef1c99a6a39bce92358cd02a8cc54423ae5ac3ffaa8a2`  
		Last Modified: Tue, 04 Jul 2017 05:49:04 GMT  
		Size: 12.9 MB (12918569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1f3277b2d19cc00ba53dc9e606085fa584cf75e41cf02bb48d3a07f708b395`  
		Last Modified: Tue, 04 Jul 2017 05:49:03 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8808b63e3e4d022c8b373c64fc352de867beb58973a90b65f4a8aa4485aa21b`  
		Last Modified: Tue, 04 Jul 2017 05:49:07 GMT  
		Size: 13.1 MB (13081633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3840eb2026d4d951e639bf0eafbac9757ace55c324508f05dde5e50b60b7ac`  
		Last Modified: Tue, 04 Jul 2017 05:49:03 GMT  
		Size: 2.1 KB (2120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba14552754e0c534900cfd85ea8db897eb8e3be2c58a0ef9b4bb77edc0ac4a0`  
		Last Modified: Tue, 04 Jul 2017 05:49:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe00634b1b7649b27d8897022aa0c16e85be55b5dd6560f6903f1ff5a08cdc98`  
		Last Modified: Tue, 04 Jul 2017 05:49:02 GMT  
		Size: 7.7 KB (7673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ab4bfaf88902d7fac8c9d598d562a47555ced3610795c011b8a7b178976940`  
		Last Modified: Thu, 06 Jul 2017 03:08:59 GMT  
		Size: 35.9 MB (35866751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ece76843c27c69c20eb14641e18b89b54f54ed221780f7ff32b62085bc5801`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 1.9 MB (1903966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9e14c0e3a39f1e86cc3cfb51030f85d4d120ac4a77d4b688614b08c815ba8b`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58de283c3a936468e18815776d04cd857e0f6ea4adc1100eabb91c44f2969d1`  
		Last Modified: Thu, 06 Jul 2017 03:08:47 GMT  
		Size: 1.3 MB (1321316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3435765699cbe1c54510f1d253b896fb4fdcae332f8d0f14318cd0db4b73e706`  
		Last Modified: Thu, 06 Jul 2017 03:14:54 GMT  
		Size: 45.8 MB (45753979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4e76b170482377f464c4d6304b515aba64559598585d86f7fce486ff1c38fc`  
		Last Modified: Thu, 06 Jul 2017 03:14:40 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d59f8791fc06a766b692bfbf8b65c5e7b2621e9ab328844a8dccb1b2a40fe3a`  
		Last Modified: Thu, 06 Jul 2017 03:14:40 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
