## `ruby:alpine`

```console
$ docker pull ruby@sha256:502ebe671776e96520a01cecad973a1a78a749f6408a48f840bada7a306bc433
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ruby:alpine` - linux; amd64

```console
$ docker pull ruby@sha256:1f8f7f377a70eabe823bcad7107f3f81baa50d83a705ad91817aad14851e2ebc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27772138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cff862fd05dd053117c87100a89d22a7058298728b0082e815d1a8e58d240ca`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 03:12:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 03:12:34 GMT
ENV RUBY_MAJOR=2.4
# Thu, 14 Sep 2017 03:12:35 GMT
ENV RUBY_VERSION=2.4.1
# Thu, 14 Sep 2017 03:12:35 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Thu, 14 Sep 2017 03:12:35 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Thu, 14 Sep 2017 03:17:49 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		openssl 		openssl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 14 Sep 2017 03:17:50 GMT
ENV BUNDLER_VERSION=1.15.4
# Thu, 14 Sep 2017 03:17:51 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 14 Sep 2017 03:17:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 14 Sep 2017 03:17:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 14 Sep 2017 03:17:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 03:17:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 14 Sep 2017 03:17:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad7f738df39a8f37ec55b57c893591ee82d107b973ec45e0279bd6e6667d631e`  
		Last Modified: Thu, 14 Sep 2017 03:54:24 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edbccd088f9a9217575520c4ed51ef383930529d07d2fffe43fe1397a53ffad`  
		Last Modified: Thu, 14 Sep 2017 03:54:36 GMT  
		Size: 24.7 MB (24709743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0a698f42847f7ad54f44b0e66478bd0565d1469d6ffd84e3b35ee374d01189`  
		Last Modified: Thu, 14 Sep 2017 03:54:25 GMT  
		Size: 677.0 KB (677031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72485a656ca09c184da166a93b79ca2efa1f8bf1b401669140aab413b413f78e`  
		Last Modified: Thu, 14 Sep 2017 03:54:25 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
