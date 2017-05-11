## `php:5-apache`

```console
$ docker pull php@sha256:72d8dbbea9dbf5440f296aac2ca78589cf02d157b65fb66ee269eeea76eb2ca1
```

-	Platforms:
	-	linux; amd64

### `php:5-apache` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (158990989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47c7ad689669904583da0bc61239080e0f7022732072bca4f1e241e0ce1f4236`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Thu, 11 May 2017 17:17:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 11 May 2017 17:18:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 11 May 2017 17:18:35 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 11 May 2017 17:18:36 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 11 May 2017 17:58:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 17:58:36 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 11 May 2017 17:58:37 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 11 May 2017 17:58:39 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 11 May 2017 17:58:42 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 11 May 2017 17:58:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 11 May 2017 17:58:46 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 11 May 2017 17:58:47 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 11 May 2017 17:58:48 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 11 May 2017 17:58:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 11 May 2017 17:58:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 11 May 2017 17:58:51 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 11 May 2017 19:21:58 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 11 May 2017 19:21:59 GMT
ENV PHP_VERSION=5.6.30
# Thu, 11 May 2017 19:22:00 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Thu, 11 May 2017 19:22:01 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Thu, 11 May 2017 19:22:14 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 11 May 2017 19:22:15 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 11 May 2017 19:25:00 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libpcre3-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Thu, 11 May 2017 19:25:14 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Thu, 11 May 2017 19:25:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 11 May 2017 19:25:35 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 11 May 2017 19:25:36 GMT
WORKDIR /var/www/html
# Thu, 11 May 2017 19:25:37 GMT
EXPOSE 80/tcp
# Thu, 11 May 2017 19:25:38 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae70f02659526dd1f8e50c9d97129a48abdc653b58147b3b02097aa14722b25b`  
		Last Modified: Thu, 11 May 2017 20:51:15 GMT  
		Size: 81.9 MB (81853948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341a01ca9848318f463ca85196e2f418ffca0e20be976024967a2868e68e53ce`  
		Last Modified: Thu, 11 May 2017 20:50:59 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30973260011039ccccdddc4610ba612726a5bb529cbfc580c81f6451341aae4d`  
		Last Modified: Thu, 11 May 2017 20:55:51 GMT  
		Size: 2.8 MB (2787962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ba42addcaddb0da29837a8f32c5e48794525953e710ff76f1718cdfa1bcac24`  
		Last Modified: Thu, 11 May 2017 20:55:49 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b494a619ffe1e4d5db7f9bcda11dcca5e2a36c6e1c3464b1ab401266fee5be80`  
		Last Modified: Thu, 11 May 2017 20:55:49 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e988f2160929f75a2940b20af14b17dac06f7ea51a54fe5866215928f62626f`  
		Last Modified: Thu, 11 May 2017 20:55:48 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df3b312569af88674dfcd31b0cbdd789bcdbf661d88a64bd93dd2c16b29b2bc`  
		Last Modified: Thu, 11 May 2017 20:55:46 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0d784261dc530575041d5614f4eda360f4d7a7cc0f13a6015a2893f39c01f5`  
		Last Modified: Thu, 11 May 2017 21:14:13 GMT  
		Size: 12.6 MB (12580810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59a11812061fc681092f2c250fd681ec672e33070b6727d3bda325cbafe98e6`  
		Last Modified: Thu, 11 May 2017 21:14:11 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0d0ca106a28ba942c5fa089c79184d37a4257c8fd8fcd3ed8f3ad2df1f2c64`  
		Last Modified: Thu, 11 May 2017 21:14:15 GMT  
		Size: 9.2 MB (9178191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c308761d58f6a7214bd415727b3deea1e03acad32fd1da9cd3160fcf4ea956d`  
		Last Modified: Thu, 11 May 2017 21:14:10 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da8aafb93ab522c6c34c20295f369d29747bf1d2c6e32943f97aa0f42b0b0c7`  
		Last Modified: Thu, 11 May 2017 21:14:11 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
