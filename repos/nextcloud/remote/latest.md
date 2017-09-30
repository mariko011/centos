## `nextcloud:latest`

```console
$ docker pull nextcloud@sha256:b88fd9e1d734170f7c31088f333d42862377a288103deb3e1acf595b4081e4f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nextcloud:latest` - linux; amd64

```console
$ docker pull nextcloud@sha256:c737c554373e43d0580d0328e95125498b6dca48564d2c513e8ab0e31ce224e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250458182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2938874c0a65b04b77c61f28cea8587f4e122792ea66a530915567eedbc287f8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 23:57:45 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 14 Sep 2017 23:58:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:58:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 14 Sep 2017 23:58:24 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 15 Sep 2017 00:08:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 00:08:17 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 15 Sep 2017 00:08:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 15 Sep 2017 00:08:18 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 15 Sep 2017 00:08:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 15 Sep 2017 00:08:19 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 15 Sep 2017 00:08:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 15 Sep 2017 00:08:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 15 Sep 2017 00:08:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 15 Sep 2017 00:08:21 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 29 Sep 2017 23:07:28 GMT
ENV PHP_VERSION=7.1.10
# Fri, 29 Sep 2017 23:07:28 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.10.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.10.tar.xz.asc/from/this/mirror
# Fri, 29 Sep 2017 23:07:28 GMT
ENV PHP_SHA256=2b8efa771a2ead0bb3ae67b530ca505b5b286adc873cca9ce97a6e1d6815c50b PHP_MD5=
# Fri, 29 Sep 2017 23:07:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 29 Sep 2017 23:07:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 29 Sep 2017 23:10:26 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 29 Sep 2017 23:10:27 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Fri, 29 Sep 2017 23:10:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 29 Sep 2017 23:10:27 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 29 Sep 2017 23:10:27 GMT
WORKDIR /var/www/html
# Fri, 29 Sep 2017 23:10:28 GMT
EXPOSE 80/tcp
# Fri, 29 Sep 2017 23:10:28 GMT
CMD ["apache2-foreground"]
# Sat, 30 Sep 2017 00:25:44 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Sat, 30 Sep 2017 00:27:52 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Sat, 30 Sep 2017 00:31:08 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 30 Sep 2017 00:31:09 GMT
RUN a2enmod rewrite
# Sat, 30 Sep 2017 00:31:43 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.4  && docker-php-ext-enable apcu redis memcached
# Sat, 30 Sep 2017 00:33:50 GMT
RUN a2enmod rewrite
# Sat, 30 Sep 2017 00:43:40 GMT
ENV NEXTCLOUD_VERSION=12.0.3
# Sat, 30 Sep 2017 00:43:40 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Sat, 30 Sep 2017 00:43:40 GMT
VOLUME [/var/www/html]
# Sat, 30 Sep 2017 00:43:53 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Sat, 30 Sep 2017 00:43:54 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Sat, 30 Sep 2017 00:43:54 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Sat, 30 Sep 2017 00:43:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 30 Sep 2017 00:43:55 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d5f85af454812aec1820ce0e52e003b81e4569823e2da5b0cccb58e31b136f`  
		Last Modified: Fri, 15 Sep 2017 01:34:31 GMT  
		Size: 82.5 MB (82495988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca642e7826b9552669a262d36f5488e3a478c2f9f97a98db37b203194ea6248`  
		Last Modified: Fri, 15 Sep 2017 01:34:12 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3638d91a90398e9b21e86d5f58ce592dcef089e461ed52559ddcc99d1021c04b`  
		Last Modified: Fri, 15 Sep 2017 01:35:48 GMT  
		Size: 3.0 MB (3012522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3646a95ab6778f36ca28c448f0217a571157bd80a83faa94284a046540d9b90e`  
		Last Modified: Fri, 15 Sep 2017 01:35:46 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628b8373e193144e4047261fde47c3b10881e013cc4730690c28281e30f340d4`  
		Last Modified: Fri, 15 Sep 2017 01:35:45 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24a2b2280edf466db78ea09cb8f23295781c7472f63e5ee7ebd5302e6ef3c45`  
		Last Modified: Fri, 15 Sep 2017 01:35:45 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f968b84cbbbc7f23c623c4ae9ad247431a59a370333ec20de8191284b4838b54`  
		Last Modified: Fri, 15 Sep 2017 01:35:44 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77afd73ce87d8a835726d0c9b72b750bad785a6cda38015d6aa383c0cfe519c`  
		Last Modified: Fri, 29 Sep 2017 23:43:38 GMT  
		Size: 12.5 MB (12520223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863afbb954365f5f975093a2eb7094211798ef1c2bda6945449a78969af9bc94`  
		Last Modified: Fri, 29 Sep 2017 23:43:37 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f381536e9279732352befaf4f534e8ba6f937e97c061e96e83e4bd1b7e3005`  
		Last Modified: Fri, 29 Sep 2017 23:43:40 GMT  
		Size: 13.5 MB (13521858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e96e9b4935a1b0dbaadd56fd518ad6dd0fb7fbb5bdc9d308ac91d5cbe365f22`  
		Last Modified: Fri, 29 Sep 2017 23:43:37 GMT  
		Size: 2.2 KB (2183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca94deb9c4dfde50548223713993b67299f97259943b49e9a6cfca6aa89e7116`  
		Last Modified: Fri, 29 Sep 2017 23:43:37 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68983d3ae24da45da202621acd76c416638cda0f4d829977bd72e8f1ee988878`  
		Last Modified: Sat, 30 Sep 2017 00:45:48 GMT  
		Size: 36.1 MB (36114656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1fbb2e7ff542a628c93210cf0c3b2effd502575e620a39a7a63792a49231162`  
		Last Modified: Sat, 30 Sep 2017 00:45:38 GMT  
		Size: 1.9 MB (1919525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae50876be10f815ac03cd212ad399809486dfff5edca0778fc6bb4f05c822d`  
		Last Modified: Sat, 30 Sep 2017 00:45:37 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a61f1fdd832f257285c5df2710177f625a4ba977738b2b8f204ab62df9f914`  
		Last Modified: Sat, 30 Sep 2017 00:45:35 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c70784ddc61a1fbab962a8bd899b7caffd37963999a1f751ba09f81d956a0dc`  
		Last Modified: Sat, 30 Sep 2017 00:45:36 GMT  
		Size: 1.3 MB (1298776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b05403852597bb0b8207abb20d1704b5153d120512ebd59cfd85e70a6d4445`  
		Last Modified: Fri, 15 Sep 2017 02:29:44 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f20697bbe3c5fcddf6f0486060c239c6812ac48ba991f2555968c78d4699d0`  
		Last Modified: Sat, 30 Sep 2017 00:47:49 GMT  
		Size: 47.0 MB (46970327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92933d9a2dfd289e47459e12ac67324a2760d265d6832a2b218af8d503c37237`  
		Last Modified: Sat, 30 Sep 2017 00:47:33 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17dcbfd451fe4f934fcd32fabe9bf7d96b30d884ea7f98afe4aaa50390a3e3ff`  
		Last Modified: Sat, 30 Sep 2017 00:47:34 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:latest` - linux; arm variant v7

```console
$ docker pull nextcloud@sha256:ac9384b56f3892b7223696123d11f6f835900f735f50a9e725539bce893f62fa
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.9 MB (225924346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da317c3055dbdfcb34a2f03a4366ad1a048bd401618931a24d36bb909d44f188`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:55:51 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 27 Sep 2017 05:56:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:56:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Sep 2017 05:56:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 27 Sep 2017 06:01:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 06:01:29 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 27 Sep 2017 06:01:30 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 27 Sep 2017 06:01:31 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 27 Sep 2017 06:01:31 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 27 Sep 2017 06:01:32 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 27 Sep 2017 06:01:33 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 27 Sep 2017 06:01:33 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 27 Sep 2017 06:01:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 27 Sep 2017 06:01:34 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Sep 2017 06:01:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Sep 2017 06:01:34 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Sep 2017 06:01:34 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 27 Sep 2017 06:01:35 GMT
ENV PHP_VERSION=7.1.9
# Wed, 27 Sep 2017 06:01:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Wed, 27 Sep 2017 06:01:35 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Wed, 27 Sep 2017 06:02:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 27 Sep 2017 06:02:15 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 27 Sep 2017 06:04:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Sep 2017 06:04:50 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Wed, 27 Sep 2017 06:04:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Sep 2017 06:04:51 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 27 Sep 2017 06:04:51 GMT
WORKDIR /var/www/html
# Wed, 27 Sep 2017 06:04:51 GMT
EXPOSE 80/tcp
# Wed, 27 Sep 2017 06:04:51 GMT
CMD ["apache2-foreground"]
# Wed, 27 Sep 2017 07:42:37 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:46:52 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Wed, 27 Sep 2017 07:46:53 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 27 Sep 2017 07:46:54 GMT
RUN a2enmod rewrite
# Thu, 28 Sep 2017 03:08:10 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.4  && docker-php-ext-enable apcu redis memcached
# Thu, 28 Sep 2017 03:08:11 GMT
RUN a2enmod rewrite
# Thu, 28 Sep 2017 03:10:05 GMT
ENV NEXTCLOUD_VERSION=12.0.3
# Thu, 28 Sep 2017 03:10:06 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 28 Sep 2017 03:10:06 GMT
VOLUME [/var/www/html]
# Thu, 28 Sep 2017 03:10:26 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 28 Sep 2017 03:10:27 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 28 Sep 2017 03:10:28 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Thu, 28 Sep 2017 03:10:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 28 Sep 2017 03:10:28 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db1de3127d7e96ad6b868f813d5e0b57e21afc5674327c70ce0b8cd633704a5`  
		Last Modified: Wed, 27 Sep 2017 06:45:47 GMT  
		Size: 65.3 MB (65339529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39483d99c7d76b7445eb69f0ff89ac68a292e07d2e057cfd1b73563b0685111`  
		Last Modified: Wed, 27 Sep 2017 06:45:34 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fbc113e48d6e7e9be59895d947acf44a0b617476421e7d9b54d14e4e04d95c`  
		Last Modified: Wed, 27 Sep 2017 06:46:16 GMT  
		Size: 2.7 MB (2679600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e486cb806e2febd0a36781598317b427638aa015f75e276c08737ea7a75f98f6`  
		Last Modified: Wed, 27 Sep 2017 06:46:14 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6f702cfca9588c24c81d7833dc66e4d1f5932f8b032be700a2c9a7a9facff5`  
		Last Modified: Wed, 27 Sep 2017 06:46:14 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd38dc0cd3aa8aa84a9148b07e396abf674eeb29573c350b1243be47901948f`  
		Last Modified: Wed, 27 Sep 2017 06:46:13 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52dca40cc7ce1cbb768c7ddd946d14b663acf81cbcbc75331558b764059155c4`  
		Last Modified: Wed, 27 Sep 2017 06:46:13 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f22692b72cb6d0ddfd4a04feece31d55d73617d30daf46a4218591221d4f36a`  
		Last Modified: Wed, 27 Sep 2017 06:46:14 GMT  
		Size: 12.5 MB (12510640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe42049dcfcf97ea7ef440cd6fec2ff4c6b3b2167b0510b0dc47a92158b38ce`  
		Last Modified: Wed, 27 Sep 2017 06:46:12 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2ae980460d6ad2d29ce8af66ed1687651fc6a498c2232dce9bea75cc607e8b`  
		Last Modified: Wed, 27 Sep 2017 06:46:16 GMT  
		Size: 12.2 MB (12207548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79a1b115a9bfecd4e60abdab5dc9b764cac4a92a2445cfe8a20f87c68c6b380`  
		Last Modified: Wed, 27 Sep 2017 06:46:12 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8acc3e2b6a0a07799fcc14da8341b8a2ed26b7b5b56dee8e67503648184917`  
		Last Modified: Wed, 27 Sep 2017 06:46:12 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae25ee6da84fd1772adc86a40d4cd5482b6d35333e7ac2e5d63cbd44f2b7ccd`  
		Last Modified: Wed, 27 Sep 2017 07:56:05 GMT  
		Size: 34.4 MB (34424894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf003aa8dc503064829ca2e4511863cf91cc1a18aca2da5c575b4de90013dbb8`  
		Last Modified: Wed, 27 Sep 2017 07:55:54 GMT  
		Size: 1.8 MB (1769782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983a97ef6c060846d3feae90978120e6d39340288b8c60be0016b58a34fc5843`  
		Last Modified: Wed, 27 Sep 2017 07:55:53 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5890faefa536fe64d412fb6fc68a1fcdb871a117e4409d204411ed5e826b39f3`  
		Last Modified: Wed, 27 Sep 2017 07:55:53 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e43b772e67f33840aceb1ab5cb47ddf0399de56eb51b693b83dadf0d40b30a`  
		Last Modified: Thu, 28 Sep 2017 03:11:06 GMT  
		Size: 1.3 MB (1326579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b7801fb61d8e7a7a0ba470d463cc563fa5781f4fe45baf52400dba1dfb8337`  
		Last Modified: Wed, 27 Sep 2017 07:55:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba88b764b2bf3ca5d3c008737c8d6597bbc55fa4e69c4ba2df1e54668de6329`  
		Last Modified: Thu, 28 Sep 2017 03:12:35 GMT  
		Size: 47.0 MB (46970350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feb917d81d99b360611885233d8b6e2ba09f46b51734773ac1944322fdd7ca00`  
		Last Modified: Thu, 28 Sep 2017 03:12:18 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ceae521a2e159b437845fe0a7994b32e8c5c3b7ff277d18a9a08920dac7ec59`  
		Last Modified: Thu, 28 Sep 2017 03:12:18 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:latest` - linux; arm64 variant v8

```console
$ docker pull nextcloud@sha256:34cff125ac12bd18b08383cfce5c8d19d6277463e35f447bcb89517c8e2de17d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.4 MB (228436204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ad90cf469d3c12b21163076d33d11dd37221f4dccc352aa710582b6df0e0e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 23:36:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 23:39:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 23:39:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 23:39:17 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 23:51:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 23:51:22 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 23:51:24 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 23:51:32 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 23:51:39 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 23:51:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 23:51:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 23:51:51 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 23:51:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 23:51:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 23:51:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 23:51:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 23:51:58 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Sat, 30 Sep 2017 02:04:10 GMT
ENV PHP_VERSION=7.1.10
# Sat, 30 Sep 2017 02:04:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.10.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.10.tar.xz.asc/from/this/mirror
# Sat, 30 Sep 2017 02:04:12 GMT
ENV PHP_SHA256=2b8efa771a2ead0bb3ae67b530ca505b5b286adc873cca9ce97a6e1d6815c50b PHP_MD5=
# Sat, 30 Sep 2017 02:04:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 30 Sep 2017 02:04:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 30 Sep 2017 02:10:04 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 30 Sep 2017 02:10:05 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Sat, 30 Sep 2017 02:10:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 30 Sep 2017 02:10:06 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 30 Sep 2017 02:10:07 GMT
WORKDIR /var/www/html
# Sat, 30 Sep 2017 02:10:07 GMT
EXPOSE 80/tcp
# Sat, 30 Sep 2017 02:10:08 GMT
CMD ["apache2-foreground"]
# Sat, 30 Sep 2017 02:58:43 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Sat, 30 Sep 2017 03:04:27 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Sat, 30 Sep 2017 03:04:29 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 30 Sep 2017 03:04:30 GMT
RUN a2enmod rewrite
# Sat, 30 Sep 2017 03:05:37 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.4  && docker-php-ext-enable apcu redis memcached
# Sat, 30 Sep 2017 03:05:39 GMT
RUN a2enmod rewrite
# Sat, 30 Sep 2017 03:15:00 GMT
ENV NEXTCLOUD_VERSION=12.0.3
# Sat, 30 Sep 2017 03:15:01 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Sat, 30 Sep 2017 03:15:02 GMT
VOLUME [/var/www/html]
# Sat, 30 Sep 2017 03:15:28 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Sat, 30 Sep 2017 03:15:30 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Sat, 30 Sep 2017 03:15:31 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Sat, 30 Sep 2017 03:15:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 30 Sep 2017 03:15:33 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ce2ee409521cc41fb7b4a0f2b1afb85e1f4e0866aa17193d1c6fe2f05b84a3`  
		Last Modified: Sat, 09 Sep 2017 01:20:46 GMT  
		Size: 64.6 MB (64611190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8673d63cbfe1fbf0b951a59b088c845b7d04f9084298af89c958da9faf363396`  
		Last Modified: Sat, 09 Sep 2017 01:20:21 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d89ea097bf9d1fba3c6b2632307dab2966fbba034f584474cfa3d13104f00aea`  
		Last Modified: Sat, 09 Sep 2017 01:22:01 GMT  
		Size: 2.8 MB (2789168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6daf0d22283f2e44141dd7de63df0a6ad9df0a2025a939c10a695fedfdc68fff`  
		Last Modified: Sat, 09 Sep 2017 01:21:59 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d2d3332a3c152a24b43a87cc9fbfd80a0bdaee0776ecb87b29138d0fbc66f9`  
		Last Modified: Sat, 09 Sep 2017 01:21:56 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c653cbc235f2add8afb9702f8e5a9a98c3bc48ec6fda9ba5baf3ad9771a502d`  
		Last Modified: Sat, 09 Sep 2017 01:21:56 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ecae187fb1efe8f36b8f955997c43aee0fa13fe840887142fa6f77ba4b4bb4`  
		Last Modified: Sat, 09 Sep 2017 01:21:57 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a899eb461a7f13e1fe91149a9556ee96dfa86735ff81fe133be45c723f8304`  
		Last Modified: Sat, 30 Sep 2017 02:28:20 GMT  
		Size: 12.5 MB (12518245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460395ad9f70ed815bede2250855abfd4aa3f4854499a0390234ebe4b66c368b`  
		Last Modified: Sat, 30 Sep 2017 02:28:16 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c3ec01fd283dc98ab1694fd56c7af5a314b1f17c3e6315d0ac30acd525e5f0`  
		Last Modified: Sat, 30 Sep 2017 02:28:21 GMT  
		Size: 12.7 MB (12663131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befd4fe939ea6a1221fb51bf4d6348fdf4a9099c2324a129bcbe97b42eb47f26`  
		Last Modified: Sat, 30 Sep 2017 02:28:16 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c661db5851574dc7c699919c7a67d4f222ce2419ac006b97ad37cf13461f83`  
		Last Modified: Sat, 30 Sep 2017 02:28:16 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117336d561fb25233dc7cfcd5b3182fa346e516c35b2d5a16cdfa95d8a03f3f5`  
		Last Modified: Sat, 30 Sep 2017 03:17:03 GMT  
		Size: 35.8 MB (35760604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb6396b77ab57749c4c3a0077fb702fcac91eb7620502ae5ad35ebd37fc12de`  
		Last Modified: Sat, 30 Sep 2017 03:16:48 GMT  
		Size: 1.8 MB (1816468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b12e1e2395c347b7453e43ce29d794aa8b00a48e8315522e1996f045414879`  
		Last Modified: Sat, 30 Sep 2017 03:16:47 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d348dac023b945df41ad561c1d2ba41ebc606a2d318dac6c92bfb206da5f5f6`  
		Last Modified: Sat, 30 Sep 2017 03:16:45 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9229ea5c62dd7384d59a6ab98d630a55eaa591e2e0d86d8e8108abfbcdba229a`  
		Last Modified: Sat, 30 Sep 2017 03:16:45 GMT  
		Size: 1.4 MB (1368864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa5a605e9dd73fba4d8943247b48ae6c7cd0e3bc79e83a1ba149f7e03b8d6905`  
		Last Modified: Sat, 09 Sep 2017 04:40:10 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c8713cb85bd8cfa167afd1b4dec41e9f13e615d0d4c23ef7d5c10d23381365`  
		Last Modified: Sat, 30 Sep 2017 03:19:31 GMT  
		Size: 47.0 MB (46970305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17b5dc5040f704a96a7dfd383dd9ab761fabe709cb04a5389f12b471a968560`  
		Last Modified: Sat, 30 Sep 2017 03:19:13 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abef917ed7f49cf455ca78b6706dd267279813d01d1a8331b608f3124be93014`  
		Last Modified: Sat, 30 Sep 2017 03:19:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:latest` - linux; 386

```console
$ docker pull nextcloud@sha256:e214166c30ea9c86d78956f3e7469f476a4e7cf8b0241180174e70c4e09ae534
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252830461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75aa26bb6143ef047d53299306df5ebc8b15533034c500dd08a7dda2abf062d6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:42:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 15:43:33 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 15:43:33 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 15:43:34 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 15:51:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 15:51:15 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 15:51:15 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 15:51:16 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 15:51:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 15:51:17 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 15:51:18 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 15:51:18 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 15:51:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 15:51:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 15:51:19 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 15:51:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 15:51:19 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Sat, 30 Sep 2017 08:45:19 GMT
ENV PHP_VERSION=7.1.10
# Sat, 30 Sep 2017 08:45:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.10.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.10.tar.xz.asc/from/this/mirror
# Sat, 30 Sep 2017 08:45:19 GMT
ENV PHP_SHA256=2b8efa771a2ead0bb3ae67b530ca505b5b286adc873cca9ce97a6e1d6815c50b PHP_MD5=
# Sat, 30 Sep 2017 08:45:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 30 Sep 2017 08:45:58 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 30 Sep 2017 08:49:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 30 Sep 2017 08:49:04 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Sat, 30 Sep 2017 08:49:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 30 Sep 2017 08:49:04 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 30 Sep 2017 08:49:05 GMT
WORKDIR /var/www/html
# Sat, 30 Sep 2017 08:49:05 GMT
EXPOSE 80/tcp
# Sat, 30 Sep 2017 08:49:05 GMT
CMD ["apache2-foreground"]
# Sat, 30 Sep 2017 09:21:39 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Sat, 30 Sep 2017 09:24:16 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Sat, 30 Sep 2017 09:26:33 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 30 Sep 2017 09:26:34 GMT
RUN a2enmod rewrite
# Sat, 30 Sep 2017 09:27:12 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.4  && docker-php-ext-enable apcu redis memcached
# Sat, 30 Sep 2017 09:27:13 GMT
RUN a2enmod rewrite
# Sat, 30 Sep 2017 09:35:59 GMT
ENV NEXTCLOUD_VERSION=12.0.3
# Sat, 30 Sep 2017 09:36:00 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Sat, 30 Sep 2017 09:36:00 GMT
VOLUME [/var/www/html]
# Sat, 30 Sep 2017 09:36:15 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Sat, 30 Sep 2017 09:36:16 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Sat, 30 Sep 2017 09:36:17 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Sat, 30 Sep 2017 09:36:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 30 Sep 2017 09:36:17 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b0c6e6c0af331a9399924d3d78ed076049dca893469ce8512cd3d173708f6`  
		Last Modified: Fri, 08 Sep 2017 17:16:02 GMT  
		Size: 83.9 MB (83883283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7374d46215ae1d83309d33a1f57a658d05346f2983de18430fe1d3cca2f3bfb7`  
		Last Modified: Fri, 08 Sep 2017 17:15:31 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a562efdebb7af789a726bd5cfb7df9a4e856178902a0c1e219de7eb55357bbd`  
		Last Modified: Fri, 08 Sep 2017 17:17:03 GMT  
		Size: 3.1 MB (3118756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c6a0f9af3a9e53a282f553d7d2a526ce530040102a213eb930eff1ec9ea000`  
		Last Modified: Fri, 08 Sep 2017 17:17:00 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393a49c8f26a8b26b9e9e74c0fa097c54e6ba818e477637b1daaa848852d2468`  
		Last Modified: Fri, 08 Sep 2017 17:17:00 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749bfae9d7367ce39222f000d59736b4fb111c14039fe245c00c1e49dcc40c4`  
		Last Modified: Fri, 08 Sep 2017 17:17:00 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a17f8b1ddfc050dd99a1c42de3ad3cd125058ab97bd8c2f1df00884965c464`  
		Last Modified: Fri, 08 Sep 2017 17:17:00 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c809666588704b415086bd6b7f270f858593f3b3de29b6b22ada49b9b663af0`  
		Last Modified: Sat, 30 Sep 2017 09:04:00 GMT  
		Size: 12.5 MB (12519728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0276413f25cbd63cbf83fe98021114677cc3016eaf68f26f6c938116b1f9b`  
		Last Modified: Sat, 30 Sep 2017 09:03:59 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8bdf40c9257135266121d1feba3a4f4e5adb673739333b04008f4b3287666b7`  
		Last Modified: Sat, 30 Sep 2017 09:04:02 GMT  
		Size: 14.0 MB (13970009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59be3e0a3038bf371d4ad31142fd9212c7704ae73dd38a2d43b63bb28fe79dd8`  
		Last Modified: Sat, 30 Sep 2017 09:03:59 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679f19647fc0846e549b64cad9472041eab6a2c2186094c9cb4f232c0ad30e94`  
		Last Modified: Sat, 30 Sep 2017 09:03:59 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d66287314de3171fda7b91a0de23f123d92112d83f9681eadd60960b3a35d0`  
		Last Modified: Sat, 30 Sep 2017 09:37:12 GMT  
		Size: 36.4 MB (36365382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdcf0325d54d9503e4ccd1b51191b2b9abeca4635e93eda18d13ab5541c33623`  
		Last Modified: Sat, 30 Sep 2017 09:37:05 GMT  
		Size: 1.9 MB (1939508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f29a6af417e9e834665c11f8215a72c842f30e44b7c3daf2675da5dfa684acb`  
		Last Modified: Sat, 30 Sep 2017 09:37:03 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858fd3f2c832491ac409a6527467ff81eb7790541e36bf3bfaace869ca3c329b`  
		Last Modified: Sat, 30 Sep 2017 09:37:03 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb0c32f2ed43d7d1e9540d93965b1989c235dcadea68a3d2404020e34064686`  
		Last Modified: Sat, 30 Sep 2017 09:37:03 GMT  
		Size: 1.3 MB (1281555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce10a4e803c7bef8c073e9ddd8e5243858e0c9cc919468db0f9940421c90ca83`  
		Last Modified: Fri, 08 Sep 2017 17:51:31 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:788640c33dbd9a148700b212b5d4b2afa2a2e47b5f79831cbe04217967f0a845`  
		Last Modified: Sat, 30 Sep 2017 09:40:23 GMT  
		Size: 47.0 MB (46970351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd41018d6d3fe590383af656930a54d151b92efce8d475f97a8933832c3f14c3`  
		Last Modified: Sat, 30 Sep 2017 09:40:05 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba0fb4fa41dd101ad797d8a8c531e0201fcb1dad1e7b07992ded6bf7cce0cc9`  
		Last Modified: Sat, 30 Sep 2017 09:40:05 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:latest` - linux; ppc64le

```console
$ docker pull nextcloud@sha256:6b9c12f72b38d0c275de91bc61f50321a354bce43962427e7c4fb06b3c46d955
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237515556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c994b7e27b788c9619fe603a7660d59a8484ddde1c3c657f2f13aa7febbdc1a5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:48:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 01:49:18 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:49:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 01:49:19 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 01:53:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:53:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 01:53:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 01:53:05 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 01:53:06 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 01:53:07 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 01:53:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 01:53:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 01:53:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 01:53:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 01:53:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 01:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 01:53:11 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Sat, 30 Sep 2017 08:53:48 GMT
ENV PHP_VERSION=7.1.10
# Sat, 30 Sep 2017 08:53:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.10.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.10.tar.xz.asc/from/this/mirror
# Sat, 30 Sep 2017 08:53:52 GMT
ENV PHP_SHA256=2b8efa771a2ead0bb3ae67b530ca505b5b286adc873cca9ce97a6e1d6815c50b PHP_MD5=
# Sat, 30 Sep 2017 08:54:45 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 30 Sep 2017 08:54:47 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 30 Sep 2017 09:00:32 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 30 Sep 2017 09:00:34 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Sat, 30 Sep 2017 09:00:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 30 Sep 2017 09:00:38 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 30 Sep 2017 09:00:40 GMT
WORKDIR /var/www/html
# Sat, 30 Sep 2017 09:00:42 GMT
EXPOSE 80/tcp
# Sat, 30 Sep 2017 09:00:45 GMT
CMD ["apache2-foreground"]
# Sat, 30 Sep 2017 09:42:07 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Sat, 30 Sep 2017 09:45:27 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Sat, 30 Sep 2017 09:45:32 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 30 Sep 2017 09:45:37 GMT
RUN a2enmod rewrite
# Sat, 30 Sep 2017 09:46:21 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.4  && docker-php-ext-enable apcu redis memcached
# Sat, 30 Sep 2017 09:46:27 GMT
RUN a2enmod rewrite
# Sat, 30 Sep 2017 09:55:12 GMT
ENV NEXTCLOUD_VERSION=12.0.3
# Sat, 30 Sep 2017 09:55:18 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Sat, 30 Sep 2017 09:55:23 GMT
VOLUME [/var/www/html]
# Sat, 30 Sep 2017 09:56:00 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Sat, 30 Sep 2017 09:56:05 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Sat, 30 Sep 2017 09:56:11 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Sat, 30 Sep 2017 09:56:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 30 Sep 2017 09:56:16 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17dcfe91b8601953aafd744d3b843930c543043e6685df075ee8e09cea485fcb`  
		Last Modified: Fri, 08 Sep 2017 02:35:19 GMT  
		Size: 70.0 MB (69977302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f39d9a27644155d78cc51a93b3a444e99fce2906b6659cff0fb8b86cc4bcb1`  
		Last Modified: Fri, 08 Sep 2017 02:34:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344650e36f4dcfb3ea68b7f9aedc88f8401d8ed55d514f3d0761009d77ef0509`  
		Last Modified: Fri, 08 Sep 2017 02:36:17 GMT  
		Size: 2.9 MB (2907397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee722fea46b8c76f4b89406147777d1a34a8329510f59345ea6370e24e9c6f1`  
		Last Modified: Fri, 08 Sep 2017 02:36:17 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c940695ffbad0df7d8c0493f95b4f94337856e81a8e8211177d1fd75bafcb1`  
		Last Modified: Fri, 08 Sep 2017 02:36:14 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244297169990efebf3304f95f358c437cc3e6dc625d78d97ec6dd7cfa81a22d4`  
		Last Modified: Fri, 08 Sep 2017 02:36:14 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12df92fff39d127eca6dd6ead3478e6d4e377c924c181d93090d06d31886ca87`  
		Last Modified: Fri, 08 Sep 2017 02:36:14 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0090eedec8cb8827c7676dcaca1146a27371b1601540891e7a4d4eefbe80a8`  
		Last Modified: Sat, 30 Sep 2017 09:12:33 GMT  
		Size: 12.5 MB (12517541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944682f5714409c635fba7fd3d4322511fbb8b5a875781350a81d98fa2e017da`  
		Last Modified: Sat, 30 Sep 2017 09:12:31 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ab7d7cadaf35a41fbf83e30c2c8ffe2452cb86b8d35193e0cb8dab606333d6`  
		Last Modified: Sat, 30 Sep 2017 09:12:35 GMT  
		Size: 13.4 MB (13443497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c79b93190e6d1a470344d13bbf02e5310aefe9f361939fd01020ac18dc18026`  
		Last Modified: Sat, 30 Sep 2017 09:12:31 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be18ddd89ebb573c4b5bbf246d1c032526dde7fa2cd782274ac25919e846172`  
		Last Modified: Sat, 30 Sep 2017 09:12:31 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28497adcb943edd739f99c9b6be34c181a64cd70742fb1a60f3dc690ceadf0d2`  
		Last Modified: Sat, 30 Sep 2017 09:58:00 GMT  
		Size: 36.6 MB (36553714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28def4e4dfb66c8ddb3f160c92b4b50e3aa94f71c20d2f95e10599b3462dda06`  
		Last Modified: Sat, 30 Sep 2017 09:57:51 GMT  
		Size: 1.9 MB (1926802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93295634c1c1c39121c7c277c7bbcba2ec75d43c2d1869fd2adff9044b296647`  
		Last Modified: Sat, 30 Sep 2017 09:57:50 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd0ca3ff3aff539a8289802fd277aa49a9d8053e6d76b099ca9456642bdfcb0`  
		Last Modified: Sat, 30 Sep 2017 09:57:48 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afa3101891877b4dad18be89c35bd50deb068911e90abb7110eef9b52baa410`  
		Last Modified: Sat, 30 Sep 2017 09:57:48 GMT  
		Size: 1.4 MB (1400464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5e1aad75eae38ca1fa202c3fd14705e4bd7900cd271caf94fbed2d625fc1a7`  
		Last Modified: Fri, 08 Sep 2017 03:32:50 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d31b0e98ac7ccc390f6221e65c4024397366430f1906f605b6ef7a24f248c09`  
		Last Modified: Sat, 30 Sep 2017 09:59:19 GMT  
		Size: 47.0 MB (46970362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fdfdbd1ee906b6d52c1e1680e5177941a769d2a3b247f0b4a98ae88f1ade01`  
		Last Modified: Sat, 30 Sep 2017 09:59:06 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276b73c4620ee14e0f49874963a18f37fa9d8784d4d04bbd585174fc84b450c5`  
		Last Modified: Sat, 30 Sep 2017 09:59:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:latest` - linux; s390x

```console
$ docker pull nextcloud@sha256:077617c0795530ad0b7670c8efea924abc7686399887d1e930234164183ba3e1
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.5 MB (233491477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:026b021a2790fa04ae5120154e1c40263f76fc54ad7200adc3ea73e797e10db4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 06:19:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:19:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 06:19:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 06:22:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:22:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 06:23:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 06:23:00 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 06:23:01 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 06:23:01 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 06:23:02 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 06:23:03 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_VERSION=7.1.9
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 08 Sep 2017 06:23:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 06:23:19 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:25:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 17:22:33 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 17:22:33 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:34 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 17:22:34 GMT
EXPOSE 80/tcp
# Thu, 21 Sep 2017 17:22:34 GMT
CMD ["apache2-foreground"]
# Thu, 21 Sep 2017 17:50:49 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 17:52:53 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 21 Sep 2017 17:52:54 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Sep 2017 17:52:54 GMT
RUN a2enmod rewrite
# Wed, 27 Sep 2017 23:00:58 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.4  && docker-php-ext-enable apcu redis memcached
# Wed, 27 Sep 2017 23:00:59 GMT
RUN a2enmod rewrite
# Wed, 27 Sep 2017 23:02:21 GMT
ENV NEXTCLOUD_VERSION=12.0.3
# Wed, 27 Sep 2017 23:02:22 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Wed, 27 Sep 2017 23:02:22 GMT
VOLUME [/var/www/html]
# Wed, 27 Sep 2017 23:02:37 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Wed, 27 Sep 2017 23:02:37 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 27 Sep 2017 23:02:38 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Wed, 27 Sep 2017 23:02:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Sep 2017 23:02:38 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701b1d6891093c664aafb5ddded8b897bab2678b49b4c39ed152c86139e3b472`  
		Last Modified: Fri, 08 Sep 2017 06:58:03 GMT  
		Size: 64.0 MB (63977876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fee1ce9a2412b1abf6eb058badc7a59941c997bf3c5764c47e9f3d51e2f0`  
		Last Modified: Fri, 08 Sep 2017 06:57:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e311b1d5cc2339ce23df72332cc46172629bd6963e8637778bb8f88fcdd864`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 3.0 MB (3022480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d672acbf183bc3af07e7748180d93a6840e2318cd89c297d412c1e411529260`  
		Last Modified: Fri, 08 Sep 2017 06:58:24 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab45def1c89dc1f846f7d3ae8e83f3d1e4545980614f582148db747e84351a72`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d137773f7744dbe6997e12c595f10532708ad0d138d8bee39c78b11a3876048`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f35a6f0e12655b63b7b31b460fbbd16bf9b36b984c3d681e9dd64788a29998`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d829983b803a79caeb8eddf17a4b9589d56bbde42e6f9be16a66cf837addfc9`  
		Last Modified: Fri, 08 Sep 2017 06:58:22 GMT  
		Size: 12.5 MB (12509581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186566cc709c8c1a770d57f62a500a9eb6a9f59812ce47d28cde8774b850648`  
		Last Modified: Fri, 08 Sep 2017 06:58:21 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb759026a75c2bfeb3e7b0d2bca8a72ec0859321feabfa7d74bc386d29874e3`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 14.0 MB (14048119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfd73e35d71aa65f5fe44fcf1f25c670da66c2497ab351fd488d16e5e327a4f`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1affa5a5b42c12b3722de9c5817991ede94966f37761dd1edc15c4a0e3b5ec62`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1d8755b9754237c1548613becaeabf8ad6a1c2918977dcf231e7381269cc80`  
		Last Modified: Thu, 21 Sep 2017 17:59:00 GMT  
		Size: 36.8 MB (36830226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc9b4cb21ecaded08735db51e5a1b7592f7bc5c62d2284b25f7482e1fb8c070`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 2.0 MB (1963481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c57085e60c6a0dc86a69e2d554ddc2f1a7a6f1e59f460c06ab8874e479b69b`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07a516baa82fba28515e2a8ab3c3ec83c1f3a4db04599e062b24a64400ab5d3`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a104a16632c50e039d8a56c2143f1866a9cc1049e72b0123fff71120268d624`  
		Last Modified: Wed, 27 Sep 2017 23:03:19 GMT  
		Size: 1.4 MB (1371869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190366b0e92dcf802d8c591bdeb52d480524e845433188c14afba2d04782c123`  
		Last Modified: Fri, 08 Sep 2017 07:43:46 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b16e90096eaddbb5cb9b080362211543d4a47d396b66c13dcab93eb989fc9b7`  
		Last Modified: Wed, 27 Sep 2017 23:04:27 GMT  
		Size: 47.0 MB (46970314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0845e6196cf97d583b6208eacb3a6bf5c38810a02bf53270ac334d448e0b2305`  
		Last Modified: Wed, 27 Sep 2017 23:04:18 GMT  
		Size: 938.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67a847a71d0f648e8bfadbf94eb76e84fd8b61c1f9e994d42f3130673981ea5`  
		Last Modified: Wed, 27 Sep 2017 23:04:18 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
