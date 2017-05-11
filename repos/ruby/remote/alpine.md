## `ruby:alpine`

```console
$ docker pull ruby@sha256:4ae9326fd47dcdace7e02c184ec64561e81a6d9c1589a3eaa7faac13a3faf04f
```

-	Platforms:
	-	linux; amd64

### `ruby:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 MB (27595482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d70c440840a7531f87bcb6e927cfdf08cffc2c4988e4264a236e9f61e054715`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 23:00:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 23:00:43 GMT
ENV RUBY_MAJOR=2.4
# Wed, 10 May 2017 23:00:44 GMT
ENV RUBY_VERSION=2.4.1
# Wed, 10 May 2017 23:00:45 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Wed, 10 May 2017 23:00:46 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 19:19:16 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 19:19:18 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 19:19:21 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 19:19:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 19:19:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 19:19:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 19:19:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 19:19:27 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed882a02057810c686275ba296fe4314930f534cabd6ec3f7f2a8fdfaf15417`  
		Last Modified: Thu, 11 May 2017 19:24:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7285d557511464e4077e780808c4fe2e3f28739f2a1a35ecbd8ddb1dec91586d`  
		Last Modified: Thu, 11 May 2017 19:40:04 GMT  
		Size: 24.6 MB (24572629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e136d55ae705bf6222d4a85cb43c5434f8bb7d08220a04ab6ff77d83b0f115`  
		Last Modified: Thu, 11 May 2017 19:39:54 GMT  
		Size: 639.5 KB (639469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a3e4d4590a636f1cb89cf737717f7c81e01a0197b1bf5eebf870043f612754`  
		Last Modified: Thu, 11 May 2017 19:39:53 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
