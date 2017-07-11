<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `piwik`

-	[`piwik:3.0.4-apache`](#piwik304-apache)
-	[`piwik:3.0-apache`](#piwik30-apache)
-	[`piwik:3-apache`](#piwik3-apache)
-	[`piwik:apache`](#piwikapache)
-	[`piwik:3.0.4`](#piwik304)
-	[`piwik:3.0`](#piwik30)
-	[`piwik:3`](#piwik3)
-	[`piwik:latest`](#piwiklatest)
-	[`piwik:3.0.4-fpm`](#piwik304-fpm)
-	[`piwik:3.0-fpm`](#piwik30-fpm)
-	[`piwik:3-fpm`](#piwik3-fpm)
-	[`piwik:fpm`](#piwikfpm)

## `piwik:3.0.4-apache`

```console
$ docker pull piwik@sha256:e230d3b1a37f14a04e636fc54c5e39ec2e52efd736d9e18fb8e22f50cfcc1f56
```

-	Platforms:
	-	linux; amd64

### `piwik:3.0.4-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195334440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7949cdb16d6e6fdf0e8ed50c0c67cdb65bac65583e1cd5f5d39bd99c80d98209`
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
# Mon, 10 Jul 2017 20:06:53 GMT
ENV PHP_VERSION=5.6.31
# Mon, 10 Jul 2017 20:06:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Mon, 10 Jul 2017 20:06:54 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Mon, 10 Jul 2017 20:07:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 10 Jul 2017 20:07:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:51 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 10 Jul 2017 20:09:56 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 10 Jul 2017 20:09:57 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:57 GMT
WORKDIR /var/www/html
# Mon, 10 Jul 2017 20:09:58 GMT
EXPOSE 80/tcp
# Mon, 10 Jul 2017 20:10:05 GMT
CMD ["apache2-foreground"]
# Tue, 11 Jul 2017 17:27:54 GMT
MAINTAINER pierre@piwik.org
# Tue, 11 Jul 2017 17:28:06 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jul 2017 17:28:53 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Tue, 11 Jul 2017 17:29:01 GMT
RUN pecl install APCu geoip
# Tue, 11 Jul 2017 17:29:02 GMT
ENV PIWIK_VERSION=3.0.4
# Tue, 11 Jul 2017 17:29:09 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Tue, 11 Jul 2017 17:29:10 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Tue, 11 Jul 2017 17:29:12 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Tue, 11 Jul 2017 17:29:13 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Tue, 11 Jul 2017 17:29:13 GMT
VOLUME [/var/www/html]
# Tue, 11 Jul 2017 17:29:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jul 2017 17:29:14 GMT
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
	-	`sha256:b792b0df0041a5c33bce05cea4a9e58e687fab65badb7c3a6f38d2adfaf04e9f`  
		Last Modified: Mon, 10 Jul 2017 20:38:50 GMT  
		Size: 12.6 MB (12588312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c222ab9588d262fad971d06e0cfdc418730cc8bdccb1a46cd52c44277e3f278`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5697c60bd5fe2611f9bfcbc11e0a6ae1d5e5b0754a14a9a0e1e61c1e84fcb72d`  
		Last Modified: Mon, 10 Jul 2017 20:38:49 GMT  
		Size: 9.3 MB (9316306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd7a46349304860a4040edcc6819e29b3092f40d4aafc7593a390021d063caf`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 2.1 KB (2123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a36dd36811953824856e13ec04eb9f4fd3296f5e9af5f6f4c6a87104ccb6497e`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be5a7315bb15960f0b2a7fc2cb329c9e559123b6a4383923df4d523e27229c`  
		Last Modified: Tue, 11 Jul 2017 17:30:56 GMT  
		Size: 7.1 MB (7094196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1289bc7e58aa03f70c5587426a92a1835e859642565042cf136baff644578b`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 1.1 MB (1128796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5e55c7352ad732dcf088d51945bb811e69d197a2299dcfe1ea87a223b90614`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 46.6 KB (46637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe26e715fa353b126d5e7c1d33032c96d970c8bdaef38c2a7887ec7801a8dc62`  
		Last Modified: Tue, 11 Jul 2017 17:30:57 GMT  
		Size: 14.2 MB (14241016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590f3467c666b5b4e2dc59a0be00603f0263a6494b9eaa633aa80e1938ef513b`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beebccca3555eebf8f8981177d1c540874e972f56bea1444e2916a34a8b7f1a`  
		Last Modified: Tue, 11 Jul 2017 17:30:53 GMT  
		Size: 13.0 MB (13017969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f2b8efbbf2f1bab0a67cdf53829701e2aa97d7fbc71f29bf8cc54593ff7d16`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.0-apache`

```console
$ docker pull piwik@sha256:e230d3b1a37f14a04e636fc54c5e39ec2e52efd736d9e18fb8e22f50cfcc1f56
```

-	Platforms:
	-	linux; amd64

### `piwik:3.0-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195334440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7949cdb16d6e6fdf0e8ed50c0c67cdb65bac65583e1cd5f5d39bd99c80d98209`
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
# Mon, 10 Jul 2017 20:06:53 GMT
ENV PHP_VERSION=5.6.31
# Mon, 10 Jul 2017 20:06:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Mon, 10 Jul 2017 20:06:54 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Mon, 10 Jul 2017 20:07:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 10 Jul 2017 20:07:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:51 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 10 Jul 2017 20:09:56 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 10 Jul 2017 20:09:57 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:57 GMT
WORKDIR /var/www/html
# Mon, 10 Jul 2017 20:09:58 GMT
EXPOSE 80/tcp
# Mon, 10 Jul 2017 20:10:05 GMT
CMD ["apache2-foreground"]
# Tue, 11 Jul 2017 17:27:54 GMT
MAINTAINER pierre@piwik.org
# Tue, 11 Jul 2017 17:28:06 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jul 2017 17:28:53 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Tue, 11 Jul 2017 17:29:01 GMT
RUN pecl install APCu geoip
# Tue, 11 Jul 2017 17:29:02 GMT
ENV PIWIK_VERSION=3.0.4
# Tue, 11 Jul 2017 17:29:09 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Tue, 11 Jul 2017 17:29:10 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Tue, 11 Jul 2017 17:29:12 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Tue, 11 Jul 2017 17:29:13 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Tue, 11 Jul 2017 17:29:13 GMT
VOLUME [/var/www/html]
# Tue, 11 Jul 2017 17:29:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jul 2017 17:29:14 GMT
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
	-	`sha256:b792b0df0041a5c33bce05cea4a9e58e687fab65badb7c3a6f38d2adfaf04e9f`  
		Last Modified: Mon, 10 Jul 2017 20:38:50 GMT  
		Size: 12.6 MB (12588312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c222ab9588d262fad971d06e0cfdc418730cc8bdccb1a46cd52c44277e3f278`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5697c60bd5fe2611f9bfcbc11e0a6ae1d5e5b0754a14a9a0e1e61c1e84fcb72d`  
		Last Modified: Mon, 10 Jul 2017 20:38:49 GMT  
		Size: 9.3 MB (9316306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd7a46349304860a4040edcc6819e29b3092f40d4aafc7593a390021d063caf`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 2.1 KB (2123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a36dd36811953824856e13ec04eb9f4fd3296f5e9af5f6f4c6a87104ccb6497e`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be5a7315bb15960f0b2a7fc2cb329c9e559123b6a4383923df4d523e27229c`  
		Last Modified: Tue, 11 Jul 2017 17:30:56 GMT  
		Size: 7.1 MB (7094196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1289bc7e58aa03f70c5587426a92a1835e859642565042cf136baff644578b`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 1.1 MB (1128796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5e55c7352ad732dcf088d51945bb811e69d197a2299dcfe1ea87a223b90614`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 46.6 KB (46637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe26e715fa353b126d5e7c1d33032c96d970c8bdaef38c2a7887ec7801a8dc62`  
		Last Modified: Tue, 11 Jul 2017 17:30:57 GMT  
		Size: 14.2 MB (14241016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590f3467c666b5b4e2dc59a0be00603f0263a6494b9eaa633aa80e1938ef513b`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beebccca3555eebf8f8981177d1c540874e972f56bea1444e2916a34a8b7f1a`  
		Last Modified: Tue, 11 Jul 2017 17:30:53 GMT  
		Size: 13.0 MB (13017969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f2b8efbbf2f1bab0a67cdf53829701e2aa97d7fbc71f29bf8cc54593ff7d16`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3-apache`

```console
$ docker pull piwik@sha256:e230d3b1a37f14a04e636fc54c5e39ec2e52efd736d9e18fb8e22f50cfcc1f56
```

-	Platforms:
	-	linux; amd64

### `piwik:3-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195334440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7949cdb16d6e6fdf0e8ed50c0c67cdb65bac65583e1cd5f5d39bd99c80d98209`
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
# Mon, 10 Jul 2017 20:06:53 GMT
ENV PHP_VERSION=5.6.31
# Mon, 10 Jul 2017 20:06:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Mon, 10 Jul 2017 20:06:54 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Mon, 10 Jul 2017 20:07:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 10 Jul 2017 20:07:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:51 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 10 Jul 2017 20:09:56 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 10 Jul 2017 20:09:57 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:57 GMT
WORKDIR /var/www/html
# Mon, 10 Jul 2017 20:09:58 GMT
EXPOSE 80/tcp
# Mon, 10 Jul 2017 20:10:05 GMT
CMD ["apache2-foreground"]
# Tue, 11 Jul 2017 17:27:54 GMT
MAINTAINER pierre@piwik.org
# Tue, 11 Jul 2017 17:28:06 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jul 2017 17:28:53 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Tue, 11 Jul 2017 17:29:01 GMT
RUN pecl install APCu geoip
# Tue, 11 Jul 2017 17:29:02 GMT
ENV PIWIK_VERSION=3.0.4
# Tue, 11 Jul 2017 17:29:09 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Tue, 11 Jul 2017 17:29:10 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Tue, 11 Jul 2017 17:29:12 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Tue, 11 Jul 2017 17:29:13 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Tue, 11 Jul 2017 17:29:13 GMT
VOLUME [/var/www/html]
# Tue, 11 Jul 2017 17:29:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jul 2017 17:29:14 GMT
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
	-	`sha256:b792b0df0041a5c33bce05cea4a9e58e687fab65badb7c3a6f38d2adfaf04e9f`  
		Last Modified: Mon, 10 Jul 2017 20:38:50 GMT  
		Size: 12.6 MB (12588312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c222ab9588d262fad971d06e0cfdc418730cc8bdccb1a46cd52c44277e3f278`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5697c60bd5fe2611f9bfcbc11e0a6ae1d5e5b0754a14a9a0e1e61c1e84fcb72d`  
		Last Modified: Mon, 10 Jul 2017 20:38:49 GMT  
		Size: 9.3 MB (9316306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd7a46349304860a4040edcc6819e29b3092f40d4aafc7593a390021d063caf`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 2.1 KB (2123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a36dd36811953824856e13ec04eb9f4fd3296f5e9af5f6f4c6a87104ccb6497e`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be5a7315bb15960f0b2a7fc2cb329c9e559123b6a4383923df4d523e27229c`  
		Last Modified: Tue, 11 Jul 2017 17:30:56 GMT  
		Size: 7.1 MB (7094196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1289bc7e58aa03f70c5587426a92a1835e859642565042cf136baff644578b`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 1.1 MB (1128796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5e55c7352ad732dcf088d51945bb811e69d197a2299dcfe1ea87a223b90614`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 46.6 KB (46637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe26e715fa353b126d5e7c1d33032c96d970c8bdaef38c2a7887ec7801a8dc62`  
		Last Modified: Tue, 11 Jul 2017 17:30:57 GMT  
		Size: 14.2 MB (14241016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590f3467c666b5b4e2dc59a0be00603f0263a6494b9eaa633aa80e1938ef513b`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beebccca3555eebf8f8981177d1c540874e972f56bea1444e2916a34a8b7f1a`  
		Last Modified: Tue, 11 Jul 2017 17:30:53 GMT  
		Size: 13.0 MB (13017969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f2b8efbbf2f1bab0a67cdf53829701e2aa97d7fbc71f29bf8cc54593ff7d16`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:apache`

```console
$ docker pull piwik@sha256:e230d3b1a37f14a04e636fc54c5e39ec2e52efd736d9e18fb8e22f50cfcc1f56
```

-	Platforms:
	-	linux; amd64

### `piwik:apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195334440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7949cdb16d6e6fdf0e8ed50c0c67cdb65bac65583e1cd5f5d39bd99c80d98209`
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
# Mon, 10 Jul 2017 20:06:53 GMT
ENV PHP_VERSION=5.6.31
# Mon, 10 Jul 2017 20:06:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Mon, 10 Jul 2017 20:06:54 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Mon, 10 Jul 2017 20:07:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 10 Jul 2017 20:07:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:51 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 10 Jul 2017 20:09:56 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 10 Jul 2017 20:09:57 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:57 GMT
WORKDIR /var/www/html
# Mon, 10 Jul 2017 20:09:58 GMT
EXPOSE 80/tcp
# Mon, 10 Jul 2017 20:10:05 GMT
CMD ["apache2-foreground"]
# Tue, 11 Jul 2017 17:27:54 GMT
MAINTAINER pierre@piwik.org
# Tue, 11 Jul 2017 17:28:06 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jul 2017 17:28:53 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Tue, 11 Jul 2017 17:29:01 GMT
RUN pecl install APCu geoip
# Tue, 11 Jul 2017 17:29:02 GMT
ENV PIWIK_VERSION=3.0.4
# Tue, 11 Jul 2017 17:29:09 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Tue, 11 Jul 2017 17:29:10 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Tue, 11 Jul 2017 17:29:12 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Tue, 11 Jul 2017 17:29:13 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Tue, 11 Jul 2017 17:29:13 GMT
VOLUME [/var/www/html]
# Tue, 11 Jul 2017 17:29:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jul 2017 17:29:14 GMT
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
	-	`sha256:b792b0df0041a5c33bce05cea4a9e58e687fab65badb7c3a6f38d2adfaf04e9f`  
		Last Modified: Mon, 10 Jul 2017 20:38:50 GMT  
		Size: 12.6 MB (12588312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c222ab9588d262fad971d06e0cfdc418730cc8bdccb1a46cd52c44277e3f278`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5697c60bd5fe2611f9bfcbc11e0a6ae1d5e5b0754a14a9a0e1e61c1e84fcb72d`  
		Last Modified: Mon, 10 Jul 2017 20:38:49 GMT  
		Size: 9.3 MB (9316306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd7a46349304860a4040edcc6819e29b3092f40d4aafc7593a390021d063caf`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 2.1 KB (2123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a36dd36811953824856e13ec04eb9f4fd3296f5e9af5f6f4c6a87104ccb6497e`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be5a7315bb15960f0b2a7fc2cb329c9e559123b6a4383923df4d523e27229c`  
		Last Modified: Tue, 11 Jul 2017 17:30:56 GMT  
		Size: 7.1 MB (7094196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1289bc7e58aa03f70c5587426a92a1835e859642565042cf136baff644578b`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 1.1 MB (1128796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5e55c7352ad732dcf088d51945bb811e69d197a2299dcfe1ea87a223b90614`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 46.6 KB (46637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe26e715fa353b126d5e7c1d33032c96d970c8bdaef38c2a7887ec7801a8dc62`  
		Last Modified: Tue, 11 Jul 2017 17:30:57 GMT  
		Size: 14.2 MB (14241016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590f3467c666b5b4e2dc59a0be00603f0263a6494b9eaa633aa80e1938ef513b`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beebccca3555eebf8f8981177d1c540874e972f56bea1444e2916a34a8b7f1a`  
		Last Modified: Tue, 11 Jul 2017 17:30:53 GMT  
		Size: 13.0 MB (13017969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f2b8efbbf2f1bab0a67cdf53829701e2aa97d7fbc71f29bf8cc54593ff7d16`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.0.4`

```console
$ docker pull piwik@sha256:e230d3b1a37f14a04e636fc54c5e39ec2e52efd736d9e18fb8e22f50cfcc1f56
```

-	Platforms:
	-	linux; amd64

### `piwik:3.0.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195334440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7949cdb16d6e6fdf0e8ed50c0c67cdb65bac65583e1cd5f5d39bd99c80d98209`
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
# Mon, 10 Jul 2017 20:06:53 GMT
ENV PHP_VERSION=5.6.31
# Mon, 10 Jul 2017 20:06:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Mon, 10 Jul 2017 20:06:54 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Mon, 10 Jul 2017 20:07:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 10 Jul 2017 20:07:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:51 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 10 Jul 2017 20:09:56 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 10 Jul 2017 20:09:57 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:57 GMT
WORKDIR /var/www/html
# Mon, 10 Jul 2017 20:09:58 GMT
EXPOSE 80/tcp
# Mon, 10 Jul 2017 20:10:05 GMT
CMD ["apache2-foreground"]
# Tue, 11 Jul 2017 17:27:54 GMT
MAINTAINER pierre@piwik.org
# Tue, 11 Jul 2017 17:28:06 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jul 2017 17:28:53 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Tue, 11 Jul 2017 17:29:01 GMT
RUN pecl install APCu geoip
# Tue, 11 Jul 2017 17:29:02 GMT
ENV PIWIK_VERSION=3.0.4
# Tue, 11 Jul 2017 17:29:09 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Tue, 11 Jul 2017 17:29:10 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Tue, 11 Jul 2017 17:29:12 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Tue, 11 Jul 2017 17:29:13 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Tue, 11 Jul 2017 17:29:13 GMT
VOLUME [/var/www/html]
# Tue, 11 Jul 2017 17:29:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jul 2017 17:29:14 GMT
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
	-	`sha256:b792b0df0041a5c33bce05cea4a9e58e687fab65badb7c3a6f38d2adfaf04e9f`  
		Last Modified: Mon, 10 Jul 2017 20:38:50 GMT  
		Size: 12.6 MB (12588312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c222ab9588d262fad971d06e0cfdc418730cc8bdccb1a46cd52c44277e3f278`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5697c60bd5fe2611f9bfcbc11e0a6ae1d5e5b0754a14a9a0e1e61c1e84fcb72d`  
		Last Modified: Mon, 10 Jul 2017 20:38:49 GMT  
		Size: 9.3 MB (9316306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd7a46349304860a4040edcc6819e29b3092f40d4aafc7593a390021d063caf`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 2.1 KB (2123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a36dd36811953824856e13ec04eb9f4fd3296f5e9af5f6f4c6a87104ccb6497e`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be5a7315bb15960f0b2a7fc2cb329c9e559123b6a4383923df4d523e27229c`  
		Last Modified: Tue, 11 Jul 2017 17:30:56 GMT  
		Size: 7.1 MB (7094196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1289bc7e58aa03f70c5587426a92a1835e859642565042cf136baff644578b`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 1.1 MB (1128796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5e55c7352ad732dcf088d51945bb811e69d197a2299dcfe1ea87a223b90614`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 46.6 KB (46637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe26e715fa353b126d5e7c1d33032c96d970c8bdaef38c2a7887ec7801a8dc62`  
		Last Modified: Tue, 11 Jul 2017 17:30:57 GMT  
		Size: 14.2 MB (14241016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590f3467c666b5b4e2dc59a0be00603f0263a6494b9eaa633aa80e1938ef513b`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beebccca3555eebf8f8981177d1c540874e972f56bea1444e2916a34a8b7f1a`  
		Last Modified: Tue, 11 Jul 2017 17:30:53 GMT  
		Size: 13.0 MB (13017969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f2b8efbbf2f1bab0a67cdf53829701e2aa97d7fbc71f29bf8cc54593ff7d16`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.0`

```console
$ docker pull piwik@sha256:e230d3b1a37f14a04e636fc54c5e39ec2e52efd736d9e18fb8e22f50cfcc1f56
```

-	Platforms:
	-	linux; amd64

### `piwik:3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195334440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7949cdb16d6e6fdf0e8ed50c0c67cdb65bac65583e1cd5f5d39bd99c80d98209`
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
# Mon, 10 Jul 2017 20:06:53 GMT
ENV PHP_VERSION=5.6.31
# Mon, 10 Jul 2017 20:06:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Mon, 10 Jul 2017 20:06:54 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Mon, 10 Jul 2017 20:07:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 10 Jul 2017 20:07:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:51 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 10 Jul 2017 20:09:56 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 10 Jul 2017 20:09:57 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:57 GMT
WORKDIR /var/www/html
# Mon, 10 Jul 2017 20:09:58 GMT
EXPOSE 80/tcp
# Mon, 10 Jul 2017 20:10:05 GMT
CMD ["apache2-foreground"]
# Tue, 11 Jul 2017 17:27:54 GMT
MAINTAINER pierre@piwik.org
# Tue, 11 Jul 2017 17:28:06 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jul 2017 17:28:53 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Tue, 11 Jul 2017 17:29:01 GMT
RUN pecl install APCu geoip
# Tue, 11 Jul 2017 17:29:02 GMT
ENV PIWIK_VERSION=3.0.4
# Tue, 11 Jul 2017 17:29:09 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Tue, 11 Jul 2017 17:29:10 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Tue, 11 Jul 2017 17:29:12 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Tue, 11 Jul 2017 17:29:13 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Tue, 11 Jul 2017 17:29:13 GMT
VOLUME [/var/www/html]
# Tue, 11 Jul 2017 17:29:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jul 2017 17:29:14 GMT
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
	-	`sha256:b792b0df0041a5c33bce05cea4a9e58e687fab65badb7c3a6f38d2adfaf04e9f`  
		Last Modified: Mon, 10 Jul 2017 20:38:50 GMT  
		Size: 12.6 MB (12588312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c222ab9588d262fad971d06e0cfdc418730cc8bdccb1a46cd52c44277e3f278`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5697c60bd5fe2611f9bfcbc11e0a6ae1d5e5b0754a14a9a0e1e61c1e84fcb72d`  
		Last Modified: Mon, 10 Jul 2017 20:38:49 GMT  
		Size: 9.3 MB (9316306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd7a46349304860a4040edcc6819e29b3092f40d4aafc7593a390021d063caf`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 2.1 KB (2123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a36dd36811953824856e13ec04eb9f4fd3296f5e9af5f6f4c6a87104ccb6497e`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be5a7315bb15960f0b2a7fc2cb329c9e559123b6a4383923df4d523e27229c`  
		Last Modified: Tue, 11 Jul 2017 17:30:56 GMT  
		Size: 7.1 MB (7094196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1289bc7e58aa03f70c5587426a92a1835e859642565042cf136baff644578b`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 1.1 MB (1128796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5e55c7352ad732dcf088d51945bb811e69d197a2299dcfe1ea87a223b90614`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 46.6 KB (46637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe26e715fa353b126d5e7c1d33032c96d970c8bdaef38c2a7887ec7801a8dc62`  
		Last Modified: Tue, 11 Jul 2017 17:30:57 GMT  
		Size: 14.2 MB (14241016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590f3467c666b5b4e2dc59a0be00603f0263a6494b9eaa633aa80e1938ef513b`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beebccca3555eebf8f8981177d1c540874e972f56bea1444e2916a34a8b7f1a`  
		Last Modified: Tue, 11 Jul 2017 17:30:53 GMT  
		Size: 13.0 MB (13017969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f2b8efbbf2f1bab0a67cdf53829701e2aa97d7fbc71f29bf8cc54593ff7d16`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3`

```console
$ docker pull piwik@sha256:e230d3b1a37f14a04e636fc54c5e39ec2e52efd736d9e18fb8e22f50cfcc1f56
```

-	Platforms:
	-	linux; amd64

### `piwik:3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195334440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7949cdb16d6e6fdf0e8ed50c0c67cdb65bac65583e1cd5f5d39bd99c80d98209`
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
# Mon, 10 Jul 2017 20:06:53 GMT
ENV PHP_VERSION=5.6.31
# Mon, 10 Jul 2017 20:06:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Mon, 10 Jul 2017 20:06:54 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Mon, 10 Jul 2017 20:07:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 10 Jul 2017 20:07:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:51 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 10 Jul 2017 20:09:56 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 10 Jul 2017 20:09:57 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:57 GMT
WORKDIR /var/www/html
# Mon, 10 Jul 2017 20:09:58 GMT
EXPOSE 80/tcp
# Mon, 10 Jul 2017 20:10:05 GMT
CMD ["apache2-foreground"]
# Tue, 11 Jul 2017 17:27:54 GMT
MAINTAINER pierre@piwik.org
# Tue, 11 Jul 2017 17:28:06 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jul 2017 17:28:53 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Tue, 11 Jul 2017 17:29:01 GMT
RUN pecl install APCu geoip
# Tue, 11 Jul 2017 17:29:02 GMT
ENV PIWIK_VERSION=3.0.4
# Tue, 11 Jul 2017 17:29:09 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Tue, 11 Jul 2017 17:29:10 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Tue, 11 Jul 2017 17:29:12 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Tue, 11 Jul 2017 17:29:13 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Tue, 11 Jul 2017 17:29:13 GMT
VOLUME [/var/www/html]
# Tue, 11 Jul 2017 17:29:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jul 2017 17:29:14 GMT
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
	-	`sha256:b792b0df0041a5c33bce05cea4a9e58e687fab65badb7c3a6f38d2adfaf04e9f`  
		Last Modified: Mon, 10 Jul 2017 20:38:50 GMT  
		Size: 12.6 MB (12588312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c222ab9588d262fad971d06e0cfdc418730cc8bdccb1a46cd52c44277e3f278`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5697c60bd5fe2611f9bfcbc11e0a6ae1d5e5b0754a14a9a0e1e61c1e84fcb72d`  
		Last Modified: Mon, 10 Jul 2017 20:38:49 GMT  
		Size: 9.3 MB (9316306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd7a46349304860a4040edcc6819e29b3092f40d4aafc7593a390021d063caf`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 2.1 KB (2123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a36dd36811953824856e13ec04eb9f4fd3296f5e9af5f6f4c6a87104ccb6497e`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be5a7315bb15960f0b2a7fc2cb329c9e559123b6a4383923df4d523e27229c`  
		Last Modified: Tue, 11 Jul 2017 17:30:56 GMT  
		Size: 7.1 MB (7094196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1289bc7e58aa03f70c5587426a92a1835e859642565042cf136baff644578b`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 1.1 MB (1128796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5e55c7352ad732dcf088d51945bb811e69d197a2299dcfe1ea87a223b90614`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 46.6 KB (46637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe26e715fa353b126d5e7c1d33032c96d970c8bdaef38c2a7887ec7801a8dc62`  
		Last Modified: Tue, 11 Jul 2017 17:30:57 GMT  
		Size: 14.2 MB (14241016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590f3467c666b5b4e2dc59a0be00603f0263a6494b9eaa633aa80e1938ef513b`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beebccca3555eebf8f8981177d1c540874e972f56bea1444e2916a34a8b7f1a`  
		Last Modified: Tue, 11 Jul 2017 17:30:53 GMT  
		Size: 13.0 MB (13017969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f2b8efbbf2f1bab0a67cdf53829701e2aa97d7fbc71f29bf8cc54593ff7d16`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:latest`

```console
$ docker pull piwik@sha256:e230d3b1a37f14a04e636fc54c5e39ec2e52efd736d9e18fb8e22f50cfcc1f56
```

-	Platforms:
	-	linux; amd64

### `piwik:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195334440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7949cdb16d6e6fdf0e8ed50c0c67cdb65bac65583e1cd5f5d39bd99c80d98209`
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
# Mon, 10 Jul 2017 20:06:53 GMT
ENV PHP_VERSION=5.6.31
# Mon, 10 Jul 2017 20:06:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Mon, 10 Jul 2017 20:06:54 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Mon, 10 Jul 2017 20:07:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 10 Jul 2017 20:07:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:51 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 10 Jul 2017 20:09:56 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 10 Jul 2017 20:09:57 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:09:57 GMT
WORKDIR /var/www/html
# Mon, 10 Jul 2017 20:09:58 GMT
EXPOSE 80/tcp
# Mon, 10 Jul 2017 20:10:05 GMT
CMD ["apache2-foreground"]
# Tue, 11 Jul 2017 17:27:54 GMT
MAINTAINER pierre@piwik.org
# Tue, 11 Jul 2017 17:28:06 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jul 2017 17:28:53 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Tue, 11 Jul 2017 17:29:01 GMT
RUN pecl install APCu geoip
# Tue, 11 Jul 2017 17:29:02 GMT
ENV PIWIK_VERSION=3.0.4
# Tue, 11 Jul 2017 17:29:09 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Tue, 11 Jul 2017 17:29:10 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Tue, 11 Jul 2017 17:29:12 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Tue, 11 Jul 2017 17:29:13 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Tue, 11 Jul 2017 17:29:13 GMT
VOLUME [/var/www/html]
# Tue, 11 Jul 2017 17:29:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jul 2017 17:29:14 GMT
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
	-	`sha256:b792b0df0041a5c33bce05cea4a9e58e687fab65badb7c3a6f38d2adfaf04e9f`  
		Last Modified: Mon, 10 Jul 2017 20:38:50 GMT  
		Size: 12.6 MB (12588312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c222ab9588d262fad971d06e0cfdc418730cc8bdccb1a46cd52c44277e3f278`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5697c60bd5fe2611f9bfcbc11e0a6ae1d5e5b0754a14a9a0e1e61c1e84fcb72d`  
		Last Modified: Mon, 10 Jul 2017 20:38:49 GMT  
		Size: 9.3 MB (9316306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd7a46349304860a4040edcc6819e29b3092f40d4aafc7593a390021d063caf`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 2.1 KB (2123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a36dd36811953824856e13ec04eb9f4fd3296f5e9af5f6f4c6a87104ccb6497e`  
		Last Modified: Mon, 10 Jul 2017 20:38:47 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be5a7315bb15960f0b2a7fc2cb329c9e559123b6a4383923df4d523e27229c`  
		Last Modified: Tue, 11 Jul 2017 17:30:56 GMT  
		Size: 7.1 MB (7094196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1289bc7e58aa03f70c5587426a92a1835e859642565042cf136baff644578b`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 1.1 MB (1128796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5e55c7352ad732dcf088d51945bb811e69d197a2299dcfe1ea87a223b90614`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 46.6 KB (46637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe26e715fa353b126d5e7c1d33032c96d970c8bdaef38c2a7887ec7801a8dc62`  
		Last Modified: Tue, 11 Jul 2017 17:30:57 GMT  
		Size: 14.2 MB (14241016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590f3467c666b5b4e2dc59a0be00603f0263a6494b9eaa633aa80e1938ef513b`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beebccca3555eebf8f8981177d1c540874e972f56bea1444e2916a34a8b7f1a`  
		Last Modified: Tue, 11 Jul 2017 17:30:53 GMT  
		Size: 13.0 MB (13017969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f2b8efbbf2f1bab0a67cdf53829701e2aa97d7fbc71f29bf8cc54593ff7d16`  
		Last Modified: Tue, 11 Jul 2017 17:30:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.0.4-fpm`

```console
$ docker pull piwik@sha256:15d27b349dfd96e15f9ad9a24179be2345bec172dae232d857b9e7dd9c065226
```

-	Platforms:
	-	linux; amd64

### `piwik:3.0.4-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.8 MB (191824313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca49fe5de2566757dcf521582246a69574dad4ee5202bd9250597bf808ab1144`
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
# Mon, 10 Jul 2017 20:10:19 GMT
ENV PHP_VERSION=5.6.31
# Mon, 10 Jul 2017 20:10:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Mon, 10 Jul 2017 20:10:20 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Mon, 10 Jul 2017 20:10:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 10 Jul 2017 20:10:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:14:40 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 10 Jul 2017 20:14:43 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:14:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 10 Jul 2017 20:14:44 GMT
WORKDIR /var/www/html
# Mon, 10 Jul 2017 20:14:45 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 10 Jul 2017 20:14:45 GMT
EXPOSE 9000/tcp
# Mon, 10 Jul 2017 20:14:46 GMT
CMD ["php-fpm"]
# Tue, 11 Jul 2017 17:29:22 GMT
MAINTAINER pierre@piwik.org
# Tue, 11 Jul 2017 17:29:33 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jul 2017 17:30:20 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Tue, 11 Jul 2017 17:30:27 GMT
RUN pecl install APCu geoip
# Tue, 11 Jul 2017 17:30:28 GMT
ENV PIWIK_VERSION=3.0.4
# Tue, 11 Jul 2017 17:30:35 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Tue, 11 Jul 2017 17:30:36 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Tue, 11 Jul 2017 17:30:37 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Tue, 11 Jul 2017 17:30:38 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Tue, 11 Jul 2017 17:30:38 GMT
VOLUME [/var/www/html]
# Tue, 11 Jul 2017 17:30:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jul 2017 17:30:39 GMT
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
	-	`sha256:d5eda4182835dc9ca2bb13395218c1fa32277c328ae1d264e1af771bc4f26723`  
		Last Modified: Mon, 10 Jul 2017 20:39:25 GMT  
		Size: 12.6 MB (12571174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c218b287baa88789d4076f886112a20a0244a015a1fcd6cf1a8b1ffbde326e9e`  
		Last Modified: Mon, 10 Jul 2017 20:39:22 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f99de4c47d713ca09457eff73f91dd10565636d3e8521f21a851704f3e6954e`  
		Last Modified: Mon, 10 Jul 2017 20:39:24 GMT  
		Size: 8.6 MB (8623472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eaeeef1a522a2eab4cb3e9919a8794c837f427a9d9f46437036a78013656b76`  
		Last Modified: Mon, 10 Jul 2017 20:39:23 GMT  
		Size: 2.1 KB (2118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e313d916c664ba4ec3f84f4243000e73231d1baf74d9b34fb3b27489f061ef7`  
		Last Modified: Mon, 10 Jul 2017 20:39:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93866c3a62636e076b45807efa85e8c360a87e93652eab513d0d4d49c6c5cbe2`  
		Last Modified: Mon, 10 Jul 2017 20:39:23 GMT  
		Size: 7.6 KB (7606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4cc041e59d014395643948b3d234dc284b3dcf61adbefadc0db3d5973107b6`  
		Last Modified: Tue, 11 Jul 2017 17:32:28 GMT  
		Size: 7.1 MB (7073449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1426a45d6c1fe1d87f2b0e9ad412917e49b7c65a1ed6c9a32b9953ee5ed93da6`  
		Last Modified: Tue, 11 Jul 2017 17:32:25 GMT  
		Size: 1.1 MB (1128878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f62c57631df3090b974981f68f0a767ebbbdc59b6e0ca61a97f06ce3c8dd83`  
		Last Modified: Tue, 11 Jul 2017 17:32:25 GMT  
		Size: 46.6 KB (46647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f91f0e351765b7749433c67ef6b8d9a7a867e9489abb514f0864b721362c7a`  
		Last Modified: Tue, 11 Jul 2017 17:32:28 GMT  
		Size: 14.2 MB (14241009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ca963436edadd7f781f3f43f86ccb524a9d46c1cad5c61975bdf728bfc4aa0`  
		Last Modified: Tue, 11 Jul 2017 17:32:26 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f86e685837d9c60fd8498c6388268d9ee8c95e6cf2d7418340c9f07bd7dec30`  
		Last Modified: Tue, 11 Jul 2017 17:32:27 GMT  
		Size: 13.0 MB (13017969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ab41d6bfd12b0bf9c2788f3d4434d09fe95ddd5b514636ac096f329f4a1eba`  
		Last Modified: Tue, 11 Jul 2017 17:32:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.0-fpm`

```console
$ docker pull piwik@sha256:15d27b349dfd96e15f9ad9a24179be2345bec172dae232d857b9e7dd9c065226
```

-	Platforms:
	-	linux; amd64

### `piwik:3.0-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.8 MB (191824313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca49fe5de2566757dcf521582246a69574dad4ee5202bd9250597bf808ab1144`
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
# Mon, 10 Jul 2017 20:10:19 GMT
ENV PHP_VERSION=5.6.31
# Mon, 10 Jul 2017 20:10:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Mon, 10 Jul 2017 20:10:20 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Mon, 10 Jul 2017 20:10:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 10 Jul 2017 20:10:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:14:40 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 10 Jul 2017 20:14:43 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:14:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 10 Jul 2017 20:14:44 GMT
WORKDIR /var/www/html
# Mon, 10 Jul 2017 20:14:45 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 10 Jul 2017 20:14:45 GMT
EXPOSE 9000/tcp
# Mon, 10 Jul 2017 20:14:46 GMT
CMD ["php-fpm"]
# Tue, 11 Jul 2017 17:29:22 GMT
MAINTAINER pierre@piwik.org
# Tue, 11 Jul 2017 17:29:33 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jul 2017 17:30:20 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Tue, 11 Jul 2017 17:30:27 GMT
RUN pecl install APCu geoip
# Tue, 11 Jul 2017 17:30:28 GMT
ENV PIWIK_VERSION=3.0.4
# Tue, 11 Jul 2017 17:30:35 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Tue, 11 Jul 2017 17:30:36 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Tue, 11 Jul 2017 17:30:37 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Tue, 11 Jul 2017 17:30:38 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Tue, 11 Jul 2017 17:30:38 GMT
VOLUME [/var/www/html]
# Tue, 11 Jul 2017 17:30:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jul 2017 17:30:39 GMT
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
	-	`sha256:d5eda4182835dc9ca2bb13395218c1fa32277c328ae1d264e1af771bc4f26723`  
		Last Modified: Mon, 10 Jul 2017 20:39:25 GMT  
		Size: 12.6 MB (12571174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c218b287baa88789d4076f886112a20a0244a015a1fcd6cf1a8b1ffbde326e9e`  
		Last Modified: Mon, 10 Jul 2017 20:39:22 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f99de4c47d713ca09457eff73f91dd10565636d3e8521f21a851704f3e6954e`  
		Last Modified: Mon, 10 Jul 2017 20:39:24 GMT  
		Size: 8.6 MB (8623472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eaeeef1a522a2eab4cb3e9919a8794c837f427a9d9f46437036a78013656b76`  
		Last Modified: Mon, 10 Jul 2017 20:39:23 GMT  
		Size: 2.1 KB (2118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e313d916c664ba4ec3f84f4243000e73231d1baf74d9b34fb3b27489f061ef7`  
		Last Modified: Mon, 10 Jul 2017 20:39:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93866c3a62636e076b45807efa85e8c360a87e93652eab513d0d4d49c6c5cbe2`  
		Last Modified: Mon, 10 Jul 2017 20:39:23 GMT  
		Size: 7.6 KB (7606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4cc041e59d014395643948b3d234dc284b3dcf61adbefadc0db3d5973107b6`  
		Last Modified: Tue, 11 Jul 2017 17:32:28 GMT  
		Size: 7.1 MB (7073449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1426a45d6c1fe1d87f2b0e9ad412917e49b7c65a1ed6c9a32b9953ee5ed93da6`  
		Last Modified: Tue, 11 Jul 2017 17:32:25 GMT  
		Size: 1.1 MB (1128878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f62c57631df3090b974981f68f0a767ebbbdc59b6e0ca61a97f06ce3c8dd83`  
		Last Modified: Tue, 11 Jul 2017 17:32:25 GMT  
		Size: 46.6 KB (46647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f91f0e351765b7749433c67ef6b8d9a7a867e9489abb514f0864b721362c7a`  
		Last Modified: Tue, 11 Jul 2017 17:32:28 GMT  
		Size: 14.2 MB (14241009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ca963436edadd7f781f3f43f86ccb524a9d46c1cad5c61975bdf728bfc4aa0`  
		Last Modified: Tue, 11 Jul 2017 17:32:26 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f86e685837d9c60fd8498c6388268d9ee8c95e6cf2d7418340c9f07bd7dec30`  
		Last Modified: Tue, 11 Jul 2017 17:32:27 GMT  
		Size: 13.0 MB (13017969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ab41d6bfd12b0bf9c2788f3d4434d09fe95ddd5b514636ac096f329f4a1eba`  
		Last Modified: Tue, 11 Jul 2017 17:32:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3-fpm`

```console
$ docker pull piwik@sha256:15d27b349dfd96e15f9ad9a24179be2345bec172dae232d857b9e7dd9c065226
```

-	Platforms:
	-	linux; amd64

### `piwik:3-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.8 MB (191824313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca49fe5de2566757dcf521582246a69574dad4ee5202bd9250597bf808ab1144`
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
# Mon, 10 Jul 2017 20:10:19 GMT
ENV PHP_VERSION=5.6.31
# Mon, 10 Jul 2017 20:10:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Mon, 10 Jul 2017 20:10:20 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Mon, 10 Jul 2017 20:10:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 10 Jul 2017 20:10:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:14:40 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 10 Jul 2017 20:14:43 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:14:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 10 Jul 2017 20:14:44 GMT
WORKDIR /var/www/html
# Mon, 10 Jul 2017 20:14:45 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 10 Jul 2017 20:14:45 GMT
EXPOSE 9000/tcp
# Mon, 10 Jul 2017 20:14:46 GMT
CMD ["php-fpm"]
# Tue, 11 Jul 2017 17:29:22 GMT
MAINTAINER pierre@piwik.org
# Tue, 11 Jul 2017 17:29:33 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jul 2017 17:30:20 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Tue, 11 Jul 2017 17:30:27 GMT
RUN pecl install APCu geoip
# Tue, 11 Jul 2017 17:30:28 GMT
ENV PIWIK_VERSION=3.0.4
# Tue, 11 Jul 2017 17:30:35 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Tue, 11 Jul 2017 17:30:36 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Tue, 11 Jul 2017 17:30:37 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Tue, 11 Jul 2017 17:30:38 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Tue, 11 Jul 2017 17:30:38 GMT
VOLUME [/var/www/html]
# Tue, 11 Jul 2017 17:30:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jul 2017 17:30:39 GMT
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
	-	`sha256:d5eda4182835dc9ca2bb13395218c1fa32277c328ae1d264e1af771bc4f26723`  
		Last Modified: Mon, 10 Jul 2017 20:39:25 GMT  
		Size: 12.6 MB (12571174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c218b287baa88789d4076f886112a20a0244a015a1fcd6cf1a8b1ffbde326e9e`  
		Last Modified: Mon, 10 Jul 2017 20:39:22 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f99de4c47d713ca09457eff73f91dd10565636d3e8521f21a851704f3e6954e`  
		Last Modified: Mon, 10 Jul 2017 20:39:24 GMT  
		Size: 8.6 MB (8623472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eaeeef1a522a2eab4cb3e9919a8794c837f427a9d9f46437036a78013656b76`  
		Last Modified: Mon, 10 Jul 2017 20:39:23 GMT  
		Size: 2.1 KB (2118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e313d916c664ba4ec3f84f4243000e73231d1baf74d9b34fb3b27489f061ef7`  
		Last Modified: Mon, 10 Jul 2017 20:39:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93866c3a62636e076b45807efa85e8c360a87e93652eab513d0d4d49c6c5cbe2`  
		Last Modified: Mon, 10 Jul 2017 20:39:23 GMT  
		Size: 7.6 KB (7606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4cc041e59d014395643948b3d234dc284b3dcf61adbefadc0db3d5973107b6`  
		Last Modified: Tue, 11 Jul 2017 17:32:28 GMT  
		Size: 7.1 MB (7073449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1426a45d6c1fe1d87f2b0e9ad412917e49b7c65a1ed6c9a32b9953ee5ed93da6`  
		Last Modified: Tue, 11 Jul 2017 17:32:25 GMT  
		Size: 1.1 MB (1128878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f62c57631df3090b974981f68f0a767ebbbdc59b6e0ca61a97f06ce3c8dd83`  
		Last Modified: Tue, 11 Jul 2017 17:32:25 GMT  
		Size: 46.6 KB (46647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f91f0e351765b7749433c67ef6b8d9a7a867e9489abb514f0864b721362c7a`  
		Last Modified: Tue, 11 Jul 2017 17:32:28 GMT  
		Size: 14.2 MB (14241009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ca963436edadd7f781f3f43f86ccb524a9d46c1cad5c61975bdf728bfc4aa0`  
		Last Modified: Tue, 11 Jul 2017 17:32:26 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f86e685837d9c60fd8498c6388268d9ee8c95e6cf2d7418340c9f07bd7dec30`  
		Last Modified: Tue, 11 Jul 2017 17:32:27 GMT  
		Size: 13.0 MB (13017969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ab41d6bfd12b0bf9c2788f3d4434d09fe95ddd5b514636ac096f329f4a1eba`  
		Last Modified: Tue, 11 Jul 2017 17:32:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:fpm`

```console
$ docker pull piwik@sha256:15d27b349dfd96e15f9ad9a24179be2345bec172dae232d857b9e7dd9c065226
```

-	Platforms:
	-	linux; amd64

### `piwik:fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.8 MB (191824313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca49fe5de2566757dcf521582246a69574dad4ee5202bd9250597bf808ab1144`
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
# Mon, 10 Jul 2017 20:10:19 GMT
ENV PHP_VERSION=5.6.31
# Mon, 10 Jul 2017 20:10:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Mon, 10 Jul 2017 20:10:20 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Mon, 10 Jul 2017 20:10:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 10 Jul 2017 20:10:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:14:40 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 10 Jul 2017 20:14:43 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 10 Jul 2017 20:14:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 10 Jul 2017 20:14:44 GMT
WORKDIR /var/www/html
# Mon, 10 Jul 2017 20:14:45 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 10 Jul 2017 20:14:45 GMT
EXPOSE 9000/tcp
# Mon, 10 Jul 2017 20:14:46 GMT
CMD ["php-fpm"]
# Tue, 11 Jul 2017 17:29:22 GMT
MAINTAINER pierre@piwik.org
# Tue, 11 Jul 2017 17:29:33 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jul 2017 17:30:20 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Tue, 11 Jul 2017 17:30:27 GMT
RUN pecl install APCu geoip
# Tue, 11 Jul 2017 17:30:28 GMT
ENV PIWIK_VERSION=3.0.4
# Tue, 11 Jul 2017 17:30:35 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Tue, 11 Jul 2017 17:30:36 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Tue, 11 Jul 2017 17:30:37 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Tue, 11 Jul 2017 17:30:38 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Tue, 11 Jul 2017 17:30:38 GMT
VOLUME [/var/www/html]
# Tue, 11 Jul 2017 17:30:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jul 2017 17:30:39 GMT
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
	-	`sha256:d5eda4182835dc9ca2bb13395218c1fa32277c328ae1d264e1af771bc4f26723`  
		Last Modified: Mon, 10 Jul 2017 20:39:25 GMT  
		Size: 12.6 MB (12571174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c218b287baa88789d4076f886112a20a0244a015a1fcd6cf1a8b1ffbde326e9e`  
		Last Modified: Mon, 10 Jul 2017 20:39:22 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f99de4c47d713ca09457eff73f91dd10565636d3e8521f21a851704f3e6954e`  
		Last Modified: Mon, 10 Jul 2017 20:39:24 GMT  
		Size: 8.6 MB (8623472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eaeeef1a522a2eab4cb3e9919a8794c837f427a9d9f46437036a78013656b76`  
		Last Modified: Mon, 10 Jul 2017 20:39:23 GMT  
		Size: 2.1 KB (2118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e313d916c664ba4ec3f84f4243000e73231d1baf74d9b34fb3b27489f061ef7`  
		Last Modified: Mon, 10 Jul 2017 20:39:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93866c3a62636e076b45807efa85e8c360a87e93652eab513d0d4d49c6c5cbe2`  
		Last Modified: Mon, 10 Jul 2017 20:39:23 GMT  
		Size: 7.6 KB (7606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4cc041e59d014395643948b3d234dc284b3dcf61adbefadc0db3d5973107b6`  
		Last Modified: Tue, 11 Jul 2017 17:32:28 GMT  
		Size: 7.1 MB (7073449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1426a45d6c1fe1d87f2b0e9ad412917e49b7c65a1ed6c9a32b9953ee5ed93da6`  
		Last Modified: Tue, 11 Jul 2017 17:32:25 GMT  
		Size: 1.1 MB (1128878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f62c57631df3090b974981f68f0a767ebbbdc59b6e0ca61a97f06ce3c8dd83`  
		Last Modified: Tue, 11 Jul 2017 17:32:25 GMT  
		Size: 46.6 KB (46647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f91f0e351765b7749433c67ef6b8d9a7a867e9489abb514f0864b721362c7a`  
		Last Modified: Tue, 11 Jul 2017 17:32:28 GMT  
		Size: 14.2 MB (14241009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ca963436edadd7f781f3f43f86ccb524a9d46c1cad5c61975bdf728bfc4aa0`  
		Last Modified: Tue, 11 Jul 2017 17:32:26 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f86e685837d9c60fd8498c6388268d9ee8c95e6cf2d7418340c9f07bd7dec30`  
		Last Modified: Tue, 11 Jul 2017 17:32:27 GMT  
		Size: 13.0 MB (13017969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ab41d6bfd12b0bf9c2788f3d4434d09fe95ddd5b514636ac096f329f4a1eba`  
		Last Modified: Tue, 11 Jul 2017 17:32:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
