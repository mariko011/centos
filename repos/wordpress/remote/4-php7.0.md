## `wordpress:4-php7.0`

```console
$ docker pull wordpress@sha256:c9e0fe819fb551f3b4029f1898f683975b5052c88f1b6b008e9cdb339bef8a51
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (174975776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b28aa495383f468b8cbab38c04beff19610742992ba486b6fbf0624272723a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:24:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 21 Oct 2016 23:24:50 GMT
ENV PHP_VERSION=7.0.12
# Fri, 21 Oct 2016 23:24:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.12.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:24:51 GMT
ENV PHP_SHA256=f3d6c49e1c242e5995dec15e503fde996c327eb86cd7ec45c690e93c971b83ff PHP_MD5=bdcc4dbdac90c2a39422786653059f70
# Fri, 21 Oct 2016 23:25:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:25:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:27:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:27:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:27:29 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:27:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:27:30 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:27:30 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 02:25:41 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Sat, 22 Oct 2016 02:25:42 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Oct 2016 02:25:43 GMT
RUN a2enmod rewrite expires
# Sat, 22 Oct 2016 02:25:43 GMT
VOLUME [/var/www/html]
# Sat, 22 Oct 2016 02:25:44 GMT
ENV WORDPRESS_VERSION=4.6.1
# Sat, 22 Oct 2016 02:25:44 GMT
ENV WORDPRESS_SHA1=027e065d30a64720624a7404a1820e6c6fff1202
# Sat, 22 Oct 2016 02:25:46 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Sat, 22 Oct 2016 02:25:47 GMT
COPY file:edc5484a4fe2732599d330aa3fa262e223f936c97c5119cd00f8d2336584ba48 in /usr/local/bin/ 
# Sat, 22 Oct 2016 02:25:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 22 Oct 2016 02:25:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Oct 2016 02:25:48 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e96bbe5f39331b13ed5029c35c06d9ed53a5a34f25d5f91f9f21ec1d43580d`  
		Last Modified: Fri, 21 Oct 2016 23:27:42 GMT  
		Size: 12.6 MB (12649180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a0f9cbb0e8ce246d971c38650768fc9156e35f79d6ada5e17ef56690be4bea`  
		Last Modified: Fri, 21 Oct 2016 23:27:39 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35993c3d51fa74bf0a46b8150fc26f92aff643a2fb636aa550c0171ad6d8a4ea`  
		Last Modified: Fri, 21 Oct 2016 23:27:48 GMT  
		Size: 19.8 MB (19835446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca744082437711d140c6f674637b5aa956d757a9b48d17f8999f9ae4f11d74f8`  
		Last Modified: Fri, 21 Oct 2016 23:27:40 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68eaf37ec0f8c4de829239ceb5a013c39e842e86a898d8c529e7eb4cb4833256`  
		Last Modified: Fri, 21 Oct 2016 23:27:40 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ac0a84e756835a59adf0fd99fe62d2777bf1b6b353f463fa6f4350de9451ee`  
		Last Modified: Sat, 22 Oct 2016 02:26:04 GMT  
		Size: 2.9 MB (2899196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e263bb3d6b9573ed796660263de70f472c2ae3eac16309a3afa184f0da764fe`  
		Last Modified: Sat, 22 Oct 2016 02:25:59 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6a4a9444980e5624c2b0e776f147dd972efde3cbabdaba5ef7edcaf0927f76`  
		Last Modified: Sat, 22 Oct 2016 02:25:58 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb58bd433e271b3b785c8579d426a572bfea2c265f028f4ecc3b8b0c7d2c166`  
		Last Modified: Sat, 22 Oct 2016 02:26:01 GMT  
		Size: 7.8 MB (7789785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873e1dcd97f1b15433f9afa6725cba218d5ec9fbcc811aba0b61aa38491ce6b1`  
		Last Modified: Sat, 22 Oct 2016 02:25:58 GMT  
		Size: 2.7 KB (2681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7556c2161528fb1825ed59ce2ce8d9226656f67b13bf0f69c7080f7e0b32de23`  
		Last Modified: Sat, 22 Oct 2016 02:25:59 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
