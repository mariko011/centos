## `ruby:alpine`

```console
$ docker pull ruby@sha256:4224be27d840c81bf2ba974163fdea99daeea40a30f3a7de5a891e8689100ce9
```

-	Platforms:
	-	linux; amd64

### `ruby:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 MB (38181196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:753badcdeeb6f33a0d65bc13e9539052e9caf8c1234ed3a373512a378fcb91a6`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 02:34:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 02:39:40 GMT
ENV RUBY_MAJOR=2.3
# Tue, 20 Sep 2016 02:39:40 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 20 Sep 2016 02:39:41 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 20 Sep 2016 02:39:41 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:54:39 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:54:40 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:54:41 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:54:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:54:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:54:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:54:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:54:43 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737cb6a1cd9f23c9b9603b4cf692410677c75b057ddfdb7aa6c42284ba2c7877`  
		Last Modified: Tue, 20 Sep 2016 02:39:01 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5007f23dba6dd2099f21ca693434bfed7092091014111ccadbfe32483281aa53`  
		Last Modified: Thu, 22 Sep 2016 00:01:09 GMT  
		Size: 35.3 MB (35259842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2d23698e0c0b05963c45be94e8d19e65498fda81f308fa0eba6688ea2bcff5`  
		Last Modified: Thu, 22 Sep 2016 00:00:58 GMT  
		Size: 610.0 KB (609952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74dbd3c36702504c393198143d57bca6e22ccd79a59061e4ee4e90fb81bfee9d`  
		Last Modified: Thu, 22 Sep 2016 00:00:58 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
