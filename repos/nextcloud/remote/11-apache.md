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
