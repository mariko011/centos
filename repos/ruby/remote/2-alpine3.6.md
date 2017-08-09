## `ruby:2-alpine3.6`

```console
$ docker pull ruby@sha256:43dab81bf6799c7c609839b4489314eb2c4cf6dae1d805fec2f4844d0327d7e6
```

-	Platforms:
	-	linux; amd64

### `ruby:2-alpine3.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37103967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf9e0ff527d072c1f001c2cd2099e1345b4949e29aba72fc4d370ff3f0ff5907`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Mon, 07 Aug 2017 22:49:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 07 Aug 2017 22:49:11 GMT
ENV RUBY_MAJOR=2.4
# Mon, 07 Aug 2017 22:49:11 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 07 Aug 2017 22:49:12 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 07 Aug 2017 22:49:12 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Wed, 09 Aug 2017 21:23:48 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libressl 		libressl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		libressl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 09 Aug 2017 21:23:49 GMT
ENV BUNDLER_VERSION=1.15.3
# Wed, 09 Aug 2017 21:23:50 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 09 Aug 2017 21:23:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 09 Aug 2017 21:23:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 09 Aug 2017 21:23:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Aug 2017 21:23:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 09 Aug 2017 21:23:52 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c9e9766f9e5c17c96b9feeb64ae34f86fa1026ef01106eca51061f60ebe97d`  
		Last Modified: Mon, 07 Aug 2017 23:02:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e935c9e40c5f91ab83f812943da300847b2c0a6f8018cce435db3afa64555f27`  
		Last Modified: Wed, 09 Aug 2017 21:34:08 GMT  
		Size: 34.4 MB (34439859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a745922c995734fb18d7dd564f3e81013bebfb867c45f3968a39500f67eac3`  
		Last Modified: Wed, 09 Aug 2017 21:34:03 GMT  
		Size: 673.4 KB (673359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb620fc0bdf18b4bf7cc0f2eda6c5143ff4b86353f359f917f0e8f90344f51e`  
		Last Modified: Wed, 09 Aug 2017 21:34:03 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
