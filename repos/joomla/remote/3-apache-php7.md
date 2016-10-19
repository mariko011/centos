## `joomla:3-apache-php7`

```console
$ docker pull joomla@sha256:df282ec858b153f404b77599f0a3039770e9335968f8a400796e02502bd70cb3
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176301700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f39a41cc29ad6fd05ec24a0ae2004a337c7be2708557ac36152d0ccaa75430`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:24:54 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 23 Sep 2016 21:24:55 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 23 Sep 2016 21:24:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 23 Sep 2016 21:24:57 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 23 Sep 2016 21:24:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 23 Sep 2016 21:24:58 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 23 Sep 2016 21:41:20 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 14 Oct 2016 23:23:12 GMT
ENV PHP_VERSION=7.0.12
# Tue, 18 Oct 2016 21:49:30 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.12.tar.xz.asc/from/this/mirror
# Tue, 18 Oct 2016 21:49:30 GMT
ENV PHP_SHA256=f3d6c49e1c242e5995dec15e503fde996c327eb86cd7ec45c690e93c971b83ff PHP_MD5=bdcc4dbdac90c2a39422786653059f70
# Tue, 18 Oct 2016 21:49:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 21:49:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:52:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 21:52:04 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:52:05 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:52:05 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 21:52:05 GMT
EXPOSE 80/tcp
# Tue, 18 Oct 2016 21:52:05 GMT
CMD ["apache2-foreground"]
# Tue, 18 Oct 2016 23:27:51 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Oct 2016 23:27:52 GMT
RUN a2enmod rewrite
# Tue, 18 Oct 2016 23:28:20 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 18 Oct 2016 23:28:30 GMT
RUN docker-php-ext-install mysqli
# Tue, 18 Oct 2016 23:28:36 GMT
RUN docker-php-ext-install mcrypt
# Tue, 18 Oct 2016 23:28:40 GMT
VOLUME [/var/www/html]
# Tue, 18 Oct 2016 23:28:46 GMT
ENV JOOMLA_VERSION=3.6.3
# Tue, 18 Oct 2016 23:28:46 GMT
ENV JOOMLA_SHA1=01eb3724e191fcfd034b54f54745703a8a4f288e
# Tue, 18 Oct 2016 23:28:54 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Oct 2016 23:29:00 GMT
COPY file:b25e9b5a462d4b2e75d2eed880fc99f96f68514e36f2b37606804556f62a3752 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:29:00 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 18 Oct 2016 23:29:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:29:01 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05dcf7da5898c6779d2972c35fd7695512c8d3639d4316f6c5fb5c92cf7a587`  
		Last Modified: Fri, 23 Sep 2016 21:27:38 GMT  
		Size: 2.8 MB (2849086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38500c090694a52f13ac803f1786e1b6eaf47d8efa2c5129d5db2ef52ebbf1`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cba9364455184cd78edc0d317497664453686c65153710dfd4e9cce5ead08e`  
		Last Modified: Fri, 23 Sep 2016 21:27:34 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc53f7ef49062cf4ce2d2a03d7d282c1c79cc3de048012605d5e53abe748c83b`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a63a6d9035b4a9307637baf440ceb1cda513c63cee3dbf7f29b406eea9b5b`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38bc0a9031f0d8d51e8ce37f570d47a260bab28fb7b01ce6e7a97d593e0782b0`  
		Last Modified: Tue, 18 Oct 2016 22:44:06 GMT  
		Size: 12.6 MB (12649182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707d619b5aa32a8fc5811ca00536d4953593df31b4aee0d7f4885637aecaca2b`  
		Last Modified: Tue, 18 Oct 2016 22:44:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972b2adb78d6d07851e5a9d87b2b01ff7ff1e73d8d115e7492ab12d3bde365af`  
		Last Modified: Tue, 18 Oct 2016 22:44:12 GMT  
		Size: 19.8 MB (19835552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c070ee48346190f54d1493a4266a04378c73ba25ce7a97f32632727cfdbb1830`  
		Last Modified: Tue, 18 Oct 2016 22:44:04 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6bd4d1ec02418c73f6ec9368c3621706b8aa856815097506926462f0374e36`  
		Last Modified: Tue, 18 Oct 2016 22:44:04 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978f52187af5b12b003c413a8c7ee27b4ae105585619c7ea5329e5f7bd50e397`  
		Last Modified: Tue, 18 Oct 2016 23:33:33 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4478202ef4b8e1ec6ac29adf7ea3914b77ade62af409c36db2542047d92e5916`  
		Last Modified: Tue, 18 Oct 2016 23:33:34 GMT  
		Size: 3.0 MB (3025679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb945431297c251309ecd781a6d00447a082811c28d1c8fac49c61c32f2f729`  
		Last Modified: Tue, 18 Oct 2016 23:33:29 GMT  
		Size: 257.3 KB (257338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8760c54923f804cc98cde12314262a70d435408d66c5ed0d4826b2a3c860a1f3`  
		Last Modified: Tue, 18 Oct 2016 23:33:31 GMT  
		Size: 56.4 KB (56417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e87839b4323d0592301c1cc22bb58f43a67231f0316eab0a0b453e7e9c42613`  
		Last Modified: Tue, 18 Oct 2016 23:33:33 GMT  
		Size: 8.7 MB (8674380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22593db00eaa7e32f24c936214f4b135d106ddf0372fc1986c0a5d6400ff9bc`  
		Last Modified: Tue, 18 Oct 2016 23:33:29 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2601ef327ff7a8ca6a597c5a2a40609e636bc8221966d38817135ba404c85ac5`  
		Last Modified: Tue, 18 Oct 2016 23:33:29 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
