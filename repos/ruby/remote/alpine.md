## `ruby:alpine`

```console
$ docker pull ruby@sha256:c199bd326d5db7e7dfde972cc2e86085bb707ae0af6f8de5fe4b9c321715f3c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ruby:alpine` - linux; amd64

```console
$ docker pull ruby@sha256:c31d8efa9c08c78cae7402b858b7958b054888f337753ba32d6d5889f8bc931b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27770240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7995570d37f272fbbd664c452d1f83087bfd8b1b1826fb60d172089792b78b1`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 22:57:57 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Sep 2017 22:57:57 GMT
ENV RUBY_MAJOR=2.4
# Tue, 12 Sep 2017 22:57:58 GMT
ENV RUBY_VERSION=2.4.1
# Tue, 12 Sep 2017 22:57:58 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Tue, 12 Sep 2017 22:57:58 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 12 Sep 2017 23:00:31 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		openssl 		openssl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 12 Sep 2017 23:00:31 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 12 Sep 2017 23:00:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 12 Sep 2017 23:00:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Sep 2017 23:00:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Sep 2017 23:00:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:00:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Sep 2017 23:00:33 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbfe53d7816c1f7c4515fe1e28b5b4372cbd910fbd5a2b871c343bd53b2ae786`  
		Last Modified: Tue, 12 Sep 2017 23:19:52 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8784479168836bba2866b78dd9218573f3e863fbaf298ba3c6e5ce2d78f04a38`  
		Last Modified: Tue, 12 Sep 2017 23:20:00 GMT  
		Size: 24.7 MB (24707849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b02a72070058476f1da5b3f04528f7159b9c5c9ce63442b4b195bd2c56b0a53`  
		Last Modified: Tue, 12 Sep 2017 23:19:53 GMT  
		Size: 677.0 KB (677028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef919064e0e0dfc24f4ecf5601244fe44abc1bc45caacef55cd754e54bf3b4e`  
		Last Modified: Tue, 12 Sep 2017 23:19:52 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
