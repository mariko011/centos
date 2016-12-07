## `joomla:3-fpm-php7`

```console
$ docker pull joomla@sha256:cf938f9553349775e43b53eedfe2d5363247fa71c8485cb01357f036bb7e0f7e
```

-	Platforms:
	-	linux; amd64

### `joomla:3-fpm-php7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165246606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:848e44d926678a5e72a810a95d18c39b8fdaf1b65a24fab6ab68569c918b51ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:26:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 06 Dec 2016 21:29:28 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 21:54:52 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 06 Dec 2016 21:54:52 GMT
ENV PHP_VERSION=7.0.13
# Tue, 06 Dec 2016 21:54:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.13.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 21:54:53 GMT
ENV PHP_SHA256=357ba7f93975d7d836abed0852dc3ed96a988af539e87750613294cbee82f1bf PHP_MD5=eb117bf1d1efc99c522f132b265a3402
# Tue, 06 Dec 2016 21:55:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 21:55:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 21:58:26 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:07 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:07 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:09 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 07 Dec 2016 19:12:09 GMT
EXPOSE 9000/tcp
# Wed, 07 Dec 2016 19:12:09 GMT
CMD ["php-fpm"]
# Wed, 07 Dec 2016 21:44:56 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 07 Dec 2016 21:45:19 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 07 Dec 2016 21:45:27 GMT
RUN docker-php-ext-install mysqli
# Wed, 07 Dec 2016 21:45:32 GMT
RUN docker-php-ext-install mcrypt
# Wed, 07 Dec 2016 21:45:33 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 21:45:33 GMT
ENV JOOMLA_VERSION=3.6.4
# Wed, 07 Dec 2016 21:45:33 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Wed, 07 Dec 2016 21:45:41 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 07 Dec 2016 21:45:41 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 07 Dec 2016 21:45:42 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 07 Dec 2016 21:45:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Dec 2016 21:45:43 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c243a3f96daa7f9d67fae3fbdfffc4b2684d89d973c8b2914f0ea14f3fa7f9f1`  
		Last Modified: Tue, 06 Dec 2016 22:44:34 GMT  
		Size: 12.6 MB (12640152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb7426c1b74cb1e3bf89e564f0f9d8d02bf4bb8660bf67e7e810eaf965a4d8b`  
		Last Modified: Tue, 06 Dec 2016 22:44:29 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa901f179399d9b4739755d78a3b4b4b4ed4d15f0b363b7d21e58bdcf1fa4d9`  
		Last Modified: Tue, 06 Dec 2016 22:44:34 GMT  
		Size: 12.2 MB (12184094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbf4c299c8ac0dd09e1d7a88e2883e13ced4d773cff4177b15fed8b5c364ba0`  
		Last Modified: Wed, 07 Dec 2016 19:23:45 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11321c1c71df528de9e4970df6d6f600c337036d443e8ac434db563728fffd07`  
		Last Modified: Wed, 07 Dec 2016 19:23:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0565c464d9ee05bd325e2973cb82c144e661aaf945903a1b47b2011b70605139`  
		Last Modified: Wed, 07 Dec 2016 19:23:46 GMT  
		Size: 7.7 KB (7689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f588d37b17b44036382d752daa726d31135af49291806e5a0e7c6f30e30dff7`  
		Last Modified: Wed, 07 Dec 2016 21:50:35 GMT  
		Size: 2.7 MB (2713966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed414ba58e0b30bf38ff2b558ea7071f0c31347c6887454336006939e24289a`  
		Last Modified: Wed, 07 Dec 2016 21:50:32 GMT  
		Size: 55.3 KB (55252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a1ac3d2bb4de85aa7ac319f01085928e930bc8e21780fc3c982e332502dde3`  
		Last Modified: Wed, 07 Dec 2016 21:50:31 GMT  
		Size: 17.9 KB (17871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df9f4171133edaaf2bfb6399d1524094e1b6b52cfcd00fb27e83b5be197c8c6`  
		Last Modified: Wed, 07 Dec 2016 21:50:36 GMT  
		Size: 8.7 MB (8674918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3739dd7734cbbe6c2a5dbb8a8191ecd045c678ddc46d93d6979ece0ff87c01`  
		Last Modified: Wed, 07 Dec 2016 21:50:31 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b70418d3f9c40b4c0e04c26bebf1635fc30b31205eb4c8c9d8adf3ae479f4ab`  
		Last Modified: Wed, 07 Dec 2016 21:50:31 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
