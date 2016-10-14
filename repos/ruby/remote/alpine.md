## `ruby:alpine`

```console
$ docker pull ruby@sha256:a8dc611523fa8b7aded886b9b2d41d62ecd8cc4a095c58f838cb343bd0b82657
```

-	Platforms:
	-	linux; amd64

### `ruby:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39444959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c2aef3deb8a1a27599c868f908ad96977bfeb77cd6abf4d5cfb8a3ff9244885`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:16:26 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 18:16:26 GMT
ENV RUBY_MAJOR=2.3
# Fri, 23 Sep 2016 18:16:26 GMT
ENV RUBY_VERSION=2.3.1
# Fri, 23 Sep 2016 18:16:26 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 28 Sep 2016 21:15:16 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:17:18 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 14 Oct 2016 17:53:40 GMT
ENV BUNDLER_VERSION=1.13.3
# Fri, 14 Oct 2016 17:53:42 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 14 Oct 2016 17:53:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 14 Oct 2016 17:53:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 14 Oct 2016 17:53:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:53:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 14 Oct 2016 17:53:45 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd465d7a14827a004df1c03908761bdcd30a38bebd3c08221c002dda9651c51c`  
		Last Modified: Fri, 23 Sep 2016 18:19:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab718ce8eb91a71a2b6843ec8437f1f90844cfd254155d48ac26a5cb2d9051a9`  
		Last Modified: Wed, 28 Sep 2016 21:24:21 GMT  
		Size: 36.5 MB (36519834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78db86401a00779b54b4abd923d85bcdba11fa083205ae0a08bfd01afe37b20e`  
		Last Modified: Fri, 14 Oct 2016 17:59:03 GMT  
		Size: 611.8 KB (611847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5fdb694c73f39bbeaff7209eb5f8899c26c2892a0d0c46f5388bffa8050b14`  
		Last Modified: Fri, 14 Oct 2016 17:59:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
