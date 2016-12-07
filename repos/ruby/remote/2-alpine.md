## `ruby:2-alpine`

```console
$ docker pull ruby@sha256:7a788690ce2c36e1d06558685c086a75af067f5763dbd2b99a29e3219a8465ae
```

-	Platforms:
	-	linux; amd64

### `ruby:2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.2 MB (43221644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a45f57ec75ba415660ca89809178e3e26a349cd7b66e8f0302e8ba8a40d1b6b8`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 22:54:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 18 Oct 2016 22:58:43 GMT
ENV RUBY_MAJOR=2.3
# Mon, 21 Nov 2016 20:43:45 GMT
ENV RUBY_VERSION=2.3.3
# Mon, 21 Nov 2016 20:43:54 GMT
ENV RUBY_DOWNLOAD_SHA256=241408c8c555b258846368830a06146e4849a1d58dcaf6b14a3b6a73058115b7
# Mon, 21 Nov 2016 20:43:54 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 06 Dec 2016 23:37:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 06 Dec 2016 23:38:06 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 06 Dec 2016 23:38:08 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 06 Dec 2016 23:38:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 06 Dec 2016 23:38:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 06 Dec 2016 23:38:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Dec 2016 23:38:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 06 Dec 2016 23:38:10 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6353f0aa4196a8fc633cf2d380738d61dcbf87fd305e5a546ec603b490aa33f0`  
		Last Modified: Tue, 18 Oct 2016 23:02:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d5126b7327f01bdee2533d1c998ce06caae4795f0af0caceb9e9d878331307`  
		Last Modified: Tue, 06 Dec 2016 23:56:57 GMT  
		Size: 40.3 MB (40295763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1485806b5da44c0a2334a86a7f3ae460580e8a78820b537996403cdf1d6a538a`  
		Last Modified: Tue, 06 Dec 2016 23:56:45 GMT  
		Size: 612.6 KB (612574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b431878784e556781681668caa8762f8212c788a0a3293332df62ca4ae63cb8`  
		Last Modified: Tue, 06 Dec 2016 23:56:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
