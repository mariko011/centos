## `ruby:2-alpine`

```console
$ docker pull ruby@sha256:e5f4e39a17bd56e5b5c07fe7981a427f654549234f3100bcdc15c8fb4ceb1702
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ruby:2-alpine` - linux; amd64

```console
$ docker pull ruby@sha256:062e644b1364eb82673e8dd45a1bd734ba345d21559ad851cf89f67167d3253d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.0 MB (26029542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa924a8a0276f6c9607dacd28920232cc56aa5991752633d763185af29d488b`
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
# Fri, 15 Sep 2017 20:16:37 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:16:37 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:16:37 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 26 Sep 2017 00:55:19 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		openssl 		openssl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 26 Sep 2017 00:55:19 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 26 Sep 2017 00:55:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 26 Sep 2017 00:55:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 26 Sep 2017 00:55:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 26 Sep 2017 00:55:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 00:55:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 26 Sep 2017 00:55:25 GMT
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
	-	`sha256:43cbf48fe9ce5c12aad5843d5a3aeb9c65831441d027905fb78051b5aa3bfa36`  
		Last Modified: Tue, 26 Sep 2017 01:03:45 GMT  
		Size: 23.0 MB (22967149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a812de5dfb9c4356284fcbab63beaf4126beeba20f8cf3dc5f75b13feb2759`  
		Last Modified: Tue, 26 Sep 2017 01:03:39 GMT  
		Size: 677.0 KB (677027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c2ef55c91ae6281ab5fe8f4631df60fea9dbfcbacc9ab396849a234f7b75fe`  
		Last Modified: Tue, 26 Sep 2017 01:03:38 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
