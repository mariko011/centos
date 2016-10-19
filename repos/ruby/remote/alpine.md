## `ruby:alpine`

```console
$ docker pull ruby@sha256:f7483a7e39e8e8aedb468eaef70c71bf204fd6d3ada6b2772929c80752a6c6fd
```

-	Platforms:
	-	linux; amd64

### `ruby:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 MB (38222429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6bf6bc4410005a2bf3d7faea23c92898ee32300c108d97f6cca88466ed5cf7a`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 22:54:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 18 Oct 2016 22:58:43 GMT
ENV RUBY_MAJOR=2.3
# Tue, 18 Oct 2016 22:58:43 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 18 Oct 2016 22:58:43 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 18 Oct 2016 22:58:44 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Tue, 18 Oct 2016 23:00:58 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Oct 2016 23:00:59 GMT
ENV BUNDLER_VERSION=1.13.5
# Tue, 18 Oct 2016 23:01:00 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Oct 2016 23:01:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Oct 2016 23:01:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Oct 2016 23:01:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 23:01:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Oct 2016 23:01:03 GMT
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
	-	`sha256:c5d8065d810ce57e413f24e33f231d18f42ad4f15600030dd11c9b31d9715635`  
		Last Modified: Tue, 18 Oct 2016 23:07:28 GMT  
		Size: 35.3 MB (35296777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8150b5599990c215ed814111434207f3b92cc84d58fc36fc1069d5497147093c`  
		Last Modified: Tue, 18 Oct 2016 23:07:16 GMT  
		Size: 612.3 KB (612344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cdc817756ea2c77fdc7fd0c0e59a7e293cdc1392af45fdb0498ab08617e0ce3`  
		Last Modified: Tue, 18 Oct 2016 23:07:15 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
