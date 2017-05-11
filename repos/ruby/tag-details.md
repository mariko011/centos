<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ruby`

-	[`ruby:2.1.10`](#ruby2110)
-	[`ruby:2.1`](#ruby21)
-	[`ruby:2.1.10-slim`](#ruby2110-slim)
-	[`ruby:2.1-slim`](#ruby21-slim)
-	[`ruby:2.1.10-alpine`](#ruby2110-alpine)
-	[`ruby:2.1-alpine`](#ruby21-alpine)
-	[`ruby:2.1.10-onbuild`](#ruby2110-onbuild)
-	[`ruby:2.1-onbuild`](#ruby21-onbuild)
-	[`ruby:2.2.7`](#ruby227)
-	[`ruby:2.2`](#ruby22)
-	[`ruby:2.2.7-slim`](#ruby227-slim)
-	[`ruby:2.2-slim`](#ruby22-slim)
-	[`ruby:2.2.7-alpine`](#ruby227-alpine)
-	[`ruby:2.2-alpine`](#ruby22-alpine)
-	[`ruby:2.2.7-onbuild`](#ruby227-onbuild)
-	[`ruby:2.2-onbuild`](#ruby22-onbuild)
-	[`ruby:2.3.4`](#ruby234)
-	[`ruby:2.3`](#ruby23)
-	[`ruby:2.3.4-slim`](#ruby234-slim)
-	[`ruby:2.3-slim`](#ruby23-slim)
-	[`ruby:2.3.4-alpine`](#ruby234-alpine)
-	[`ruby:2.3-alpine`](#ruby23-alpine)
-	[`ruby:2.3.4-onbuild`](#ruby234-onbuild)
-	[`ruby:2.3-onbuild`](#ruby23-onbuild)
-	[`ruby:2.4.1`](#ruby241)
-	[`ruby:2.4`](#ruby24)
-	[`ruby:2`](#ruby2)
-	[`ruby:latest`](#rubylatest)
-	[`ruby:2.4.1-slim`](#ruby241-slim)
-	[`ruby:2.4-slim`](#ruby24-slim)
-	[`ruby:2-slim`](#ruby2-slim)
-	[`ruby:slim`](#rubyslim)
-	[`ruby:2.4.1-alpine`](#ruby241-alpine)
-	[`ruby:2.4-alpine`](#ruby24-alpine)
-	[`ruby:2-alpine`](#ruby2-alpine)
-	[`ruby:alpine`](#rubyalpine)
-	[`ruby:2.4.1-onbuild`](#ruby241-onbuild)
-	[`ruby:2.4-onbuild`](#ruby24-onbuild)
-	[`ruby:2-onbuild`](#ruby2-onbuild)
-	[`ruby:onbuild`](#rubyonbuild)

## `ruby:2.1.10`

```console
$ docker pull ruby@sha256:61ee744b319b87141bc0f1862e62594b78d90a31b42a0977012a776fe6de6dd5
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280581549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a74bf0b24675d337f04bc2777c342d3091963f04a63dd04503706bc26775955a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 06:41:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 11 May 2017 06:45:35 GMT
ENV RUBY_MAJOR=2.1
# Thu, 11 May 2017 06:45:36 GMT
ENV RUBY_VERSION=2.1.10
# Thu, 11 May 2017 06:45:37 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Thu, 11 May 2017 06:45:38 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:30:34 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:30:36 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:30:39 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:30:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:30:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:30:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:30:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:30:44 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b67985d109310b1e251db627eab93f7822660ed9b7ca59ea7f6df51957c18`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37ceb9eeb38f83cfe1adbeaee928d92a109daa307ee08a710bdcb3aa6b2325e`  
		Last Modified: Thu, 11 May 2017 19:22:20 GMT  
		Size: 33.0 MB (33029050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db1e4e5d7a40dd90ae4dad7ccdc06290d86dbbf717da7542d041473dda202d8`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 639.5 KB (639480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3171d3c843992a9e068b06cb96f7c7a141d5554ac3840076de42a4e05ee80352`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1`

```console
$ docker pull ruby@sha256:61ee744b319b87141bc0f1862e62594b78d90a31b42a0977012a776fe6de6dd5
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280581549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a74bf0b24675d337f04bc2777c342d3091963f04a63dd04503706bc26775955a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 06:41:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 11 May 2017 06:45:35 GMT
ENV RUBY_MAJOR=2.1
# Thu, 11 May 2017 06:45:36 GMT
ENV RUBY_VERSION=2.1.10
# Thu, 11 May 2017 06:45:37 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Thu, 11 May 2017 06:45:38 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:30:34 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:30:36 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:30:39 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:30:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:30:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:30:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:30:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:30:44 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b67985d109310b1e251db627eab93f7822660ed9b7ca59ea7f6df51957c18`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37ceb9eeb38f83cfe1adbeaee928d92a109daa307ee08a710bdcb3aa6b2325e`  
		Last Modified: Thu, 11 May 2017 19:22:20 GMT  
		Size: 33.0 MB (33029050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db1e4e5d7a40dd90ae4dad7ccdc06290d86dbbf717da7542d041473dda202d8`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 639.5 KB (639480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3171d3c843992a9e068b06cb96f7c7a141d5554ac3840076de42a4e05ee80352`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-slim`

```console
$ docker pull ruby@sha256:d539a9ee703176f2b0bedda4d2e81b0e534cc604318578afb0970c5b68a6baf2
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-slim` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96558409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df73c1d1476f2235c4c9c8ad324bfcbb032ca361e5d79f3de21aa5aa90c03c2b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 15:56:56 GMT
ENV RUBY_MAJOR=2.1
# Wed, 10 May 2017 15:56:57 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 10 May 2017 15:56:58 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Wed, 10 May 2017 15:56:59 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:35:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:35:32 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:35:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:35:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:35:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:35:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:35:40 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:35:40 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef90ceb206fbdfc97c7e36ff5b0d1aa23a21552a21bfcf54e8a21e977287be88`  
		Last Modified: Thu, 11 May 2017 19:23:30 GMT  
		Size: 33.2 MB (33174570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4811ca80717d867b455c77daac759f309bb9b8299c09ca4fb65930ea964025`  
		Last Modified: Thu, 11 May 2017 19:23:17 GMT  
		Size: 639.5 KB (639479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b741a60438002efc7d8768f64420ea3cba5425474d114a803b5c3ddd779bc77`  
		Last Modified: Thu, 11 May 2017 19:23:17 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-slim`

```console
$ docker pull ruby@sha256:d539a9ee703176f2b0bedda4d2e81b0e534cc604318578afb0970c5b68a6baf2
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-slim` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96558409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df73c1d1476f2235c4c9c8ad324bfcbb032ca361e5d79f3de21aa5aa90c03c2b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 15:56:56 GMT
ENV RUBY_MAJOR=2.1
# Wed, 10 May 2017 15:56:57 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 10 May 2017 15:56:58 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Wed, 10 May 2017 15:56:59 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:35:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:35:32 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:35:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:35:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:35:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:35:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:35:40 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:35:40 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef90ceb206fbdfc97c7e36ff5b0d1aa23a21552a21bfcf54e8a21e977287be88`  
		Last Modified: Thu, 11 May 2017 19:23:30 GMT  
		Size: 33.2 MB (33174570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4811ca80717d867b455c77daac759f309bb9b8299c09ca4fb65930ea964025`  
		Last Modified: Thu, 11 May 2017 19:23:17 GMT  
		Size: 639.5 KB (639479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b741a60438002efc7d8768f64420ea3cba5425474d114a803b5c3ddd779bc77`  
		Last Modified: Thu, 11 May 2017 19:23:17 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-alpine`

```console
$ docker pull ruby@sha256:430142518d56b00566d086e569c9cd8ade5f4ff04dfdb3d23bdd984e5aa2c6bf
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36161795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84aff9e2defb46db7b466d8c6315ba4fe8a155556d019985cc566cf9d7e22e69`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 23:00:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 23:03:49 GMT
ENV RUBY_MAJOR=2.1
# Wed, 10 May 2017 23:03:50 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 10 May 2017 23:03:50 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Wed, 10 May 2017 23:03:51 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:38:24 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:38:25 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:38:27 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:38:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:38:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:38:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:38:31 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:38:31 GMT
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
	-	`sha256:846aebd8c555f0a9efc5e3cb0794f4a1001a136fe83b67235486a5af505730c4`  
		Last Modified: Thu, 11 May 2017 19:24:47 GMT  
		Size: 33.1 MB (33138951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01c6da3203645fecfb420afac68a67b056c19b482ba57a7e1004f9a947b5f1a`  
		Last Modified: Thu, 11 May 2017 19:24:35 GMT  
		Size: 639.5 KB (639460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749d0560c561c1e727529fa95da5a9ee0a3914cff36f5976b577cb2122911ce5`  
		Last Modified: Thu, 11 May 2017 19:24:34 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-alpine`

```console
$ docker pull ruby@sha256:430142518d56b00566d086e569c9cd8ade5f4ff04dfdb3d23bdd984e5aa2c6bf
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36161795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84aff9e2defb46db7b466d8c6315ba4fe8a155556d019985cc566cf9d7e22e69`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 23:00:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 23:03:49 GMT
ENV RUBY_MAJOR=2.1
# Wed, 10 May 2017 23:03:50 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 10 May 2017 23:03:50 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Wed, 10 May 2017 23:03:51 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:38:24 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:38:25 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:38:27 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:38:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:38:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:38:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:38:31 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:38:31 GMT
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
	-	`sha256:846aebd8c555f0a9efc5e3cb0794f4a1001a136fe83b67235486a5af505730c4`  
		Last Modified: Thu, 11 May 2017 19:24:47 GMT  
		Size: 33.1 MB (33138951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01c6da3203645fecfb420afac68a67b056c19b482ba57a7e1004f9a947b5f1a`  
		Last Modified: Thu, 11 May 2017 19:24:35 GMT  
		Size: 639.5 KB (639460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749d0560c561c1e727529fa95da5a9ee0a3914cff36f5976b577cb2122911ce5`  
		Last Modified: Thu, 11 May 2017 19:24:34 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-onbuild`

```console
$ docker pull ruby@sha256:55548858de92ae3b0900190696a9f0e312f044644ac3b352a8b81b92bb8ace8a
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280581861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f9f82876a58bba3a36dd09218d432cace9b8070f5b9564927b3d1a89e5dfc16`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 06:41:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 11 May 2017 06:45:35 GMT
ENV RUBY_MAJOR=2.1
# Thu, 11 May 2017 06:45:36 GMT
ENV RUBY_VERSION=2.1.10
# Thu, 11 May 2017 06:45:37 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Thu, 11 May 2017 06:45:38 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:30:34 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:30:36 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:30:39 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:30:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:30:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:30:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:30:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:30:44 GMT
CMD ["irb"]
# Thu, 11 May 2017 18:38:53 GMT
RUN bundle config --global frozen 1
# Thu, 11 May 2017 18:38:55 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 18:38:56 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 18:38:57 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Thu, 11 May 2017 18:38:57 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Thu, 11 May 2017 18:38:58 GMT
ONBUILD RUN bundle install
# Thu, 11 May 2017 18:38:59 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b67985d109310b1e251db627eab93f7822660ed9b7ca59ea7f6df51957c18`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37ceb9eeb38f83cfe1adbeaee928d92a109daa307ee08a710bdcb3aa6b2325e`  
		Last Modified: Thu, 11 May 2017 19:22:20 GMT  
		Size: 33.0 MB (33029050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db1e4e5d7a40dd90ae4dad7ccdc06290d86dbbf717da7542d041473dda202d8`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 639.5 KB (639480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3171d3c843992a9e068b06cb96f7c7a141d5554ac3840076de42a4e05ee80352`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc29cfe7ea6ef8b41298ec14eda259801229c8a2835797b84b1c82c518d21eee`  
		Last Modified: Thu, 11 May 2017 19:25:38 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc22841bd5a3a6ec52c283a26f4ac961ee30c2cac427ae9f83db4e6479d99ce`  
		Last Modified: Thu, 11 May 2017 19:25:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-onbuild`

```console
$ docker pull ruby@sha256:55548858de92ae3b0900190696a9f0e312f044644ac3b352a8b81b92bb8ace8a
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280581861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f9f82876a58bba3a36dd09218d432cace9b8070f5b9564927b3d1a89e5dfc16`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 06:41:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 11 May 2017 06:45:35 GMT
ENV RUBY_MAJOR=2.1
# Thu, 11 May 2017 06:45:36 GMT
ENV RUBY_VERSION=2.1.10
# Thu, 11 May 2017 06:45:37 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Thu, 11 May 2017 06:45:38 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:30:34 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:30:36 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:30:39 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:30:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:30:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:30:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:30:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:30:44 GMT
CMD ["irb"]
# Thu, 11 May 2017 18:38:53 GMT
RUN bundle config --global frozen 1
# Thu, 11 May 2017 18:38:55 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 18:38:56 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 18:38:57 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Thu, 11 May 2017 18:38:57 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Thu, 11 May 2017 18:38:58 GMT
ONBUILD RUN bundle install
# Thu, 11 May 2017 18:38:59 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b67985d109310b1e251db627eab93f7822660ed9b7ca59ea7f6df51957c18`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37ceb9eeb38f83cfe1adbeaee928d92a109daa307ee08a710bdcb3aa6b2325e`  
		Last Modified: Thu, 11 May 2017 19:22:20 GMT  
		Size: 33.0 MB (33029050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db1e4e5d7a40dd90ae4dad7ccdc06290d86dbbf717da7542d041473dda202d8`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 639.5 KB (639480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3171d3c843992a9e068b06cb96f7c7a141d5554ac3840076de42a4e05ee80352`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc29cfe7ea6ef8b41298ec14eda259801229c8a2835797b84b1c82c518d21eee`  
		Last Modified: Thu, 11 May 2017 19:25:38 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc22841bd5a3a6ec52c283a26f4ac961ee30c2cac427ae9f83db4e6479d99ce`  
		Last Modified: Thu, 11 May 2017 19:25:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.7`

```console
$ docker pull ruby@sha256:101644c21e44b86983bd4715e755f4a512f7dc3ba45dde8cb7a1579cd849834d
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.2 MB (281211168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b11164c5c112e65df182525401b9b3deaffa42890e5e892b31a084112b9e2bb3`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 06:41:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 11 May 2017 06:48:50 GMT
ENV RUBY_MAJOR=2.2
# Thu, 11 May 2017 06:48:51 GMT
ENV RUBY_VERSION=2.2.7
# Thu, 11 May 2017 06:48:51 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Thu, 11 May 2017 06:48:52 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:43:39 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:43:40 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:43:42 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:43:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:43:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:43:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:43:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:43:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b67985d109310b1e251db627eab93f7822660ed9b7ca59ea7f6df51957c18`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f9ba257efd300c005b90391c95e0581e0d8f4cebe8255fef30719ebaf55375`  
		Last Modified: Thu, 11 May 2017 19:26:53 GMT  
		Size: 33.7 MB (33658640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc1cd8592b93845a4dda8df676b2bf7990451aa4ed5d81b7407d41f58087d2c`  
		Last Modified: Thu, 11 May 2017 19:26:43 GMT  
		Size: 639.5 KB (639509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f915ea41708f245fabfdbe907ddecfcabddd7918c2754c5c647e7af221411a`  
		Last Modified: Thu, 11 May 2017 19:26:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2`

```console
$ docker pull ruby@sha256:101644c21e44b86983bd4715e755f4a512f7dc3ba45dde8cb7a1579cd849834d
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.2 MB (281211168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b11164c5c112e65df182525401b9b3deaffa42890e5e892b31a084112b9e2bb3`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 06:41:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 11 May 2017 06:48:50 GMT
ENV RUBY_MAJOR=2.2
# Thu, 11 May 2017 06:48:51 GMT
ENV RUBY_VERSION=2.2.7
# Thu, 11 May 2017 06:48:51 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Thu, 11 May 2017 06:48:52 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:43:39 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:43:40 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:43:42 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:43:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:43:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:43:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:43:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:43:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b67985d109310b1e251db627eab93f7822660ed9b7ca59ea7f6df51957c18`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f9ba257efd300c005b90391c95e0581e0d8f4cebe8255fef30719ebaf55375`  
		Last Modified: Thu, 11 May 2017 19:26:53 GMT  
		Size: 33.7 MB (33658640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc1cd8592b93845a4dda8df676b2bf7990451aa4ed5d81b7407d41f58087d2c`  
		Last Modified: Thu, 11 May 2017 19:26:43 GMT  
		Size: 639.5 KB (639509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f915ea41708f245fabfdbe907ddecfcabddd7918c2754c5c647e7af221411a`  
		Last Modified: Thu, 11 May 2017 19:26:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.7-slim`

```console
$ docker pull ruby@sha256:f5df373391ebf8c5853b7dda90cc56996237b6099f05d0ae5846e2036b167ae5
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.7-slim` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.2 MB (97189429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd5065c82d0668351e946f042af672e5b92580e9459af461a6f6001b8dd2191`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_MAJOR=2.2
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_VERSION=2.2.7
# Wed, 10 May 2017 16:00:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Wed, 10 May 2017 16:00:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:47:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:47:34 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:47:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:47:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:47:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:47:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:47:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:47:42 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c399ee88adc9c41869a4d43d7adf200cd366d681b8a37e8496ce79f80a14b2`  
		Last Modified: Thu, 11 May 2017 19:27:58 GMT  
		Size: 33.8 MB (33805598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5ccd387319782eeaddcf31a8eeeb50455c70fd4b17cf692d026dc03b28d9ea`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 639.5 KB (639471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c40912eb7260242149274ddcd3239d42ec8deba28d6ca6829cf6673f7bc6c57`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-slim`

```console
$ docker pull ruby@sha256:f5df373391ebf8c5853b7dda90cc56996237b6099f05d0ae5846e2036b167ae5
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-slim` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.2 MB (97189429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd5065c82d0668351e946f042af672e5b92580e9459af461a6f6001b8dd2191`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_MAJOR=2.2
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_VERSION=2.2.7
# Wed, 10 May 2017 16:00:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Wed, 10 May 2017 16:00:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:47:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:47:34 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:47:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:47:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:47:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:47:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:47:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:47:42 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c399ee88adc9c41869a4d43d7adf200cd366d681b8a37e8496ce79f80a14b2`  
		Last Modified: Thu, 11 May 2017 19:27:58 GMT  
		Size: 33.8 MB (33805598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5ccd387319782eeaddcf31a8eeeb50455c70fd4b17cf692d026dc03b28d9ea`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 639.5 KB (639471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c40912eb7260242149274ddcd3239d42ec8deba28d6ca6829cf6673f7bc6c57`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.7-alpine`

```console
$ docker pull ruby@sha256:63722c718d3342e6a18d1bbd8bc707e63b40a7f8d98610fe0cb0e17274ea8ad0
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.7-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36566346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a217d9b63c1c659af06d5f7281b2c9c21c520b099e26ed9d77a5755d187f9f64`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 23:00:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 23:06:22 GMT
ENV RUBY_MAJOR=2.2
# Wed, 10 May 2017 23:06:22 GMT
ENV RUBY_VERSION=2.2.7
# Wed, 10 May 2017 23:06:23 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Wed, 10 May 2017 23:06:24 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:50:59 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:51:00 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:51:03 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:51:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:51:05 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:51:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:51:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:51:10 GMT
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
	-	`sha256:f652365ff6ee2a6bf0b5a340ea1aa712798184be48405508005cbfed437c1ad6`  
		Last Modified: Thu, 11 May 2017 19:29:12 GMT  
		Size: 33.5 MB (33543509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ee5e48e6eaf601f1512202007ee2e118ccfa2c20cd05ff661132338ffd82b8`  
		Last Modified: Thu, 11 May 2017 19:29:00 GMT  
		Size: 639.5 KB (639452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8eab0a214784540a930515020c8adac5691fff09fb478ba2bffe66953bbfec`  
		Last Modified: Thu, 11 May 2017 19:29:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-alpine`

```console
$ docker pull ruby@sha256:63722c718d3342e6a18d1bbd8bc707e63b40a7f8d98610fe0cb0e17274ea8ad0
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36566346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a217d9b63c1c659af06d5f7281b2c9c21c520b099e26ed9d77a5755d187f9f64`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 23:00:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 23:06:22 GMT
ENV RUBY_MAJOR=2.2
# Wed, 10 May 2017 23:06:22 GMT
ENV RUBY_VERSION=2.2.7
# Wed, 10 May 2017 23:06:23 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Wed, 10 May 2017 23:06:24 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:50:59 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:51:00 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:51:03 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:51:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:51:05 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:51:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:51:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:51:10 GMT
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
	-	`sha256:f652365ff6ee2a6bf0b5a340ea1aa712798184be48405508005cbfed437c1ad6`  
		Last Modified: Thu, 11 May 2017 19:29:12 GMT  
		Size: 33.5 MB (33543509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ee5e48e6eaf601f1512202007ee2e118ccfa2c20cd05ff661132338ffd82b8`  
		Last Modified: Thu, 11 May 2017 19:29:00 GMT  
		Size: 639.5 KB (639452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8eab0a214784540a930515020c8adac5691fff09fb478ba2bffe66953bbfec`  
		Last Modified: Thu, 11 May 2017 19:29:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.7-onbuild`

```console
$ docker pull ruby@sha256:507a8ec7a55e4edc84f1924767f142a03926d2246c6b27d7d01f0b6acf83cd57
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.7-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.2 MB (281211480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c162dec2e136a6b637e63ff53217802d21825762b26ddea4263a188d13f7e75`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 06:41:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 11 May 2017 06:48:50 GMT
ENV RUBY_MAJOR=2.2
# Thu, 11 May 2017 06:48:51 GMT
ENV RUBY_VERSION=2.2.7
# Thu, 11 May 2017 06:48:51 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Thu, 11 May 2017 06:48:52 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:43:39 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:43:40 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:43:42 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:43:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:43:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:43:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:43:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:43:48 GMT
CMD ["irb"]
# Thu, 11 May 2017 18:51:39 GMT
RUN bundle config --global frozen 1
# Thu, 11 May 2017 18:51:41 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 18:51:42 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 18:51:43 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Thu, 11 May 2017 18:51:44 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Thu, 11 May 2017 18:51:45 GMT
ONBUILD RUN bundle install
# Thu, 11 May 2017 18:51:45 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b67985d109310b1e251db627eab93f7822660ed9b7ca59ea7f6df51957c18`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f9ba257efd300c005b90391c95e0581e0d8f4cebe8255fef30719ebaf55375`  
		Last Modified: Thu, 11 May 2017 19:26:53 GMT  
		Size: 33.7 MB (33658640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc1cd8592b93845a4dda8df676b2bf7990451aa4ed5d81b7407d41f58087d2c`  
		Last Modified: Thu, 11 May 2017 19:26:43 GMT  
		Size: 639.5 KB (639509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f915ea41708f245fabfdbe907ddecfcabddd7918c2754c5c647e7af221411a`  
		Last Modified: Thu, 11 May 2017 19:26:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf30330d4eb5b0664e85008e3cacd83d08e471c990d8357fd644c2b3042dff8`  
		Last Modified: Thu, 11 May 2017 19:30:15 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce32d73262d370b5fedd8bc72c2dc660e24885b95e6f46cbb60b1a12268ebe5d`  
		Last Modified: Thu, 11 May 2017 19:30:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-onbuild`

```console
$ docker pull ruby@sha256:507a8ec7a55e4edc84f1924767f142a03926d2246c6b27d7d01f0b6acf83cd57
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.2 MB (281211480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c162dec2e136a6b637e63ff53217802d21825762b26ddea4263a188d13f7e75`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 06:41:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 11 May 2017 06:48:50 GMT
ENV RUBY_MAJOR=2.2
# Thu, 11 May 2017 06:48:51 GMT
ENV RUBY_VERSION=2.2.7
# Thu, 11 May 2017 06:48:51 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Thu, 11 May 2017 06:48:52 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:43:39 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:43:40 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:43:42 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:43:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:43:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:43:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:43:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:43:48 GMT
CMD ["irb"]
# Thu, 11 May 2017 18:51:39 GMT
RUN bundle config --global frozen 1
# Thu, 11 May 2017 18:51:41 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 18:51:42 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 18:51:43 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Thu, 11 May 2017 18:51:44 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Thu, 11 May 2017 18:51:45 GMT
ONBUILD RUN bundle install
# Thu, 11 May 2017 18:51:45 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b67985d109310b1e251db627eab93f7822660ed9b7ca59ea7f6df51957c18`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f9ba257efd300c005b90391c95e0581e0d8f4cebe8255fef30719ebaf55375`  
		Last Modified: Thu, 11 May 2017 19:26:53 GMT  
		Size: 33.7 MB (33658640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc1cd8592b93845a4dda8df676b2bf7990451aa4ed5d81b7407d41f58087d2c`  
		Last Modified: Thu, 11 May 2017 19:26:43 GMT  
		Size: 639.5 KB (639509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f915ea41708f245fabfdbe907ddecfcabddd7918c2754c5c647e7af221411a`  
		Last Modified: Thu, 11 May 2017 19:26:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf30330d4eb5b0664e85008e3cacd83d08e471c990d8357fd644c2b3042dff8`  
		Last Modified: Thu, 11 May 2017 19:30:15 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce32d73262d370b5fedd8bc72c2dc660e24885b95e6f46cbb60b1a12268ebe5d`  
		Last Modified: Thu, 11 May 2017 19:30:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.4`

```console
$ docker pull ruby@sha256:3fbf5c023e48613a502c0cb3ab76bc94200856258bb30fc5b081a70b6f81213a
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283157241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a67e06d65103a7a29ca083dfda10f7802669554edd3914a4af1fe63473b6328`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 06:41:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 11 May 2017 06:52:10 GMT
ENV RUBY_MAJOR=2.3
# Thu, 11 May 2017 06:52:11 GMT
ENV RUBY_VERSION=2.3.4
# Thu, 11 May 2017 06:52:12 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Thu, 11 May 2017 06:52:13 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:55:42 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:55:43 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:55:46 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:55:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:55:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:55:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:55:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:55:52 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b67985d109310b1e251db627eab93f7822660ed9b7ca59ea7f6df51957c18`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc9ebd25af679b8642e57f73b479f70084abaa1cdb78f0044633561b4bea651`  
		Last Modified: Thu, 11 May 2017 19:31:23 GMT  
		Size: 35.6 MB (35604739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f433e49b59361f744502ecf61bbb864f9a448b8f757d1f320a1d3646546362`  
		Last Modified: Thu, 11 May 2017 19:31:12 GMT  
		Size: 639.5 KB (639483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b55bcadb0025388dcad491ca53fba557fb6396c73d2cfd3e361c5c6e0b6bd29`  
		Last Modified: Thu, 11 May 2017 19:31:11 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3`

```console
$ docker pull ruby@sha256:3fbf5c023e48613a502c0cb3ab76bc94200856258bb30fc5b081a70b6f81213a
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283157241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a67e06d65103a7a29ca083dfda10f7802669554edd3914a4af1fe63473b6328`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 06:41:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 11 May 2017 06:52:10 GMT
ENV RUBY_MAJOR=2.3
# Thu, 11 May 2017 06:52:11 GMT
ENV RUBY_VERSION=2.3.4
# Thu, 11 May 2017 06:52:12 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Thu, 11 May 2017 06:52:13 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:55:42 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:55:43 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:55:46 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:55:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:55:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:55:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:55:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:55:52 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b67985d109310b1e251db627eab93f7822660ed9b7ca59ea7f6df51957c18`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc9ebd25af679b8642e57f73b479f70084abaa1cdb78f0044633561b4bea651`  
		Last Modified: Thu, 11 May 2017 19:31:23 GMT  
		Size: 35.6 MB (35604739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f433e49b59361f744502ecf61bbb864f9a448b8f757d1f320a1d3646546362`  
		Last Modified: Thu, 11 May 2017 19:31:12 GMT  
		Size: 639.5 KB (639483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b55bcadb0025388dcad491ca53fba557fb6396c73d2cfd3e361c5c6e0b6bd29`  
		Last Modified: Thu, 11 May 2017 19:31:11 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.4-slim`

```console
$ docker pull ruby@sha256:e961d38014fbb80f542189eb5b4039b89a90508124a1374c20d4830a1feb7e8e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.4-slim` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.2 MB (99171496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d295629c8dad6120ca7c431f074a5039667468db5ff9f3b36998910e0796aca7`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 16:03:14 GMT
ENV RUBY_MAJOR=2.3
# Wed, 10 May 2017 16:03:15 GMT
ENV RUBY_VERSION=2.3.4
# Wed, 10 May 2017 16:03:16 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Wed, 10 May 2017 16:03:16 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 19:00:46 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 19:00:47 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 19:00:50 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 19:00:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 19:00:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 19:00:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 19:00:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 19:00:55 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4cc290a1157a13782e5a513e64df511e361d1d6506cc92af400706fe2376ca3`  
		Last Modified: Thu, 11 May 2017 19:32:33 GMT  
		Size: 35.8 MB (35787666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d529f9e37a1a02cef95033c77782912ac1d0f61f39122f001d232e77552b8c3`  
		Last Modified: Thu, 11 May 2017 19:32:23 GMT  
		Size: 639.5 KB (639470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5284caf22fbe4be75ebf3f5e2725d2eac3b4b3eff62dbc4d789d4ab29645047`  
		Last Modified: Thu, 11 May 2017 19:32:23 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-slim`

```console
$ docker pull ruby@sha256:e961d38014fbb80f542189eb5b4039b89a90508124a1374c20d4830a1feb7e8e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-slim` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.2 MB (99171496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d295629c8dad6120ca7c431f074a5039667468db5ff9f3b36998910e0796aca7`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 16:03:14 GMT
ENV RUBY_MAJOR=2.3
# Wed, 10 May 2017 16:03:15 GMT
ENV RUBY_VERSION=2.3.4
# Wed, 10 May 2017 16:03:16 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Wed, 10 May 2017 16:03:16 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 19:00:46 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 19:00:47 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 19:00:50 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 19:00:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 19:00:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 19:00:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 19:00:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 19:00:55 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4cc290a1157a13782e5a513e64df511e361d1d6506cc92af400706fe2376ca3`  
		Last Modified: Thu, 11 May 2017 19:32:33 GMT  
		Size: 35.8 MB (35787666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d529f9e37a1a02cef95033c77782912ac1d0f61f39122f001d232e77552b8c3`  
		Last Modified: Thu, 11 May 2017 19:32:23 GMT  
		Size: 639.5 KB (639470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5284caf22fbe4be75ebf3f5e2725d2eac3b4b3eff62dbc4d789d4ab29645047`  
		Last Modified: Thu, 11 May 2017 19:32:23 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.4-alpine`

```console
$ docker pull ruby@sha256:a82ffa1a15e22e762da2b753898a6136c63e887e13c6c27f79daed36dae8cd06
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.4-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43671695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dea39d236f013f0d854e2f331a1dcf6652c2d1962138950108e123a0a9fac6b`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 23:00:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 23:08:52 GMT
ENV RUBY_MAJOR=2.3
# Wed, 10 May 2017 23:08:52 GMT
ENV RUBY_VERSION=2.3.4
# Wed, 10 May 2017 23:08:53 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Wed, 10 May 2017 23:08:54 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 19:05:02 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 19:05:04 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 19:05:07 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 19:05:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 19:05:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 19:05:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 19:05:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 19:05:12 GMT
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
	-	`sha256:662e0066133bee2064707cba0d232327bf646fae71686d6ae5fd79f59029a4f1`  
		Last Modified: Thu, 11 May 2017 19:33:52 GMT  
		Size: 40.6 MB (40648831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a20821729efe0047bafa4024d5561a1b51a56913802f12f96d7bae018d6377`  
		Last Modified: Thu, 11 May 2017 19:33:35 GMT  
		Size: 639.5 KB (639480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d80cd9cd9db3df433bfdec98391f69b75b1e048fae3257e8c333931aadb76e`  
		Last Modified: Thu, 11 May 2017 19:33:34 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-alpine`

```console
$ docker pull ruby@sha256:a82ffa1a15e22e762da2b753898a6136c63e887e13c6c27f79daed36dae8cd06
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43671695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dea39d236f013f0d854e2f331a1dcf6652c2d1962138950108e123a0a9fac6b`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 23:00:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 23:08:52 GMT
ENV RUBY_MAJOR=2.3
# Wed, 10 May 2017 23:08:52 GMT
ENV RUBY_VERSION=2.3.4
# Wed, 10 May 2017 23:08:53 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Wed, 10 May 2017 23:08:54 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 19:05:02 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 19:05:04 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 19:05:07 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 19:05:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 19:05:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 19:05:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 19:05:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 19:05:12 GMT
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
	-	`sha256:662e0066133bee2064707cba0d232327bf646fae71686d6ae5fd79f59029a4f1`  
		Last Modified: Thu, 11 May 2017 19:33:52 GMT  
		Size: 40.6 MB (40648831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a20821729efe0047bafa4024d5561a1b51a56913802f12f96d7bae018d6377`  
		Last Modified: Thu, 11 May 2017 19:33:35 GMT  
		Size: 639.5 KB (639480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d80cd9cd9db3df433bfdec98391f69b75b1e048fae3257e8c333931aadb76e`  
		Last Modified: Thu, 11 May 2017 19:33:34 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.4-onbuild`

```console
$ docker pull ruby@sha256:a24c79f3fc1b6e4ef38878154b8ae1771b7861eaeb927fe98a13295cc09c6f76
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.4-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283157553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45376812c8dd7fc416bbcca7f8208ec7ab2698328403a16978e3052d19801f3b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 06:41:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 11 May 2017 06:52:10 GMT
ENV RUBY_MAJOR=2.3
# Thu, 11 May 2017 06:52:11 GMT
ENV RUBY_VERSION=2.3.4
# Thu, 11 May 2017 06:52:12 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Thu, 11 May 2017 06:52:13 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:55:42 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:55:43 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:55:46 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:55:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:55:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:55:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:55:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:55:52 GMT
CMD ["irb"]
# Thu, 11 May 2017 19:05:44 GMT
RUN bundle config --global frozen 1
# Thu, 11 May 2017 19:05:46 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 19:05:47 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 19:05:47 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Thu, 11 May 2017 19:05:48 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Thu, 11 May 2017 19:05:49 GMT
ONBUILD RUN bundle install
# Thu, 11 May 2017 19:05:49 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b67985d109310b1e251db627eab93f7822660ed9b7ca59ea7f6df51957c18`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc9ebd25af679b8642e57f73b479f70084abaa1cdb78f0044633561b4bea651`  
		Last Modified: Thu, 11 May 2017 19:31:23 GMT  
		Size: 35.6 MB (35604739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f433e49b59361f744502ecf61bbb864f9a448b8f757d1f320a1d3646546362`  
		Last Modified: Thu, 11 May 2017 19:31:12 GMT  
		Size: 639.5 KB (639483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b55bcadb0025388dcad491ca53fba557fb6396c73d2cfd3e361c5c6e0b6bd29`  
		Last Modified: Thu, 11 May 2017 19:31:11 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a329a19f8f95108bca04dd50720893f0708457c84367bd314867684c3005e754`  
		Last Modified: Thu, 11 May 2017 19:35:02 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01130506b7ac3b06a517d33787833738eb98feded758b84c4acb85e8b58bd7b`  
		Last Modified: Thu, 11 May 2017 19:35:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-onbuild`

```console
$ docker pull ruby@sha256:a24c79f3fc1b6e4ef38878154b8ae1771b7861eaeb927fe98a13295cc09c6f76
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283157553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45376812c8dd7fc416bbcca7f8208ec7ab2698328403a16978e3052d19801f3b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 06:41:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 11 May 2017 06:52:10 GMT
ENV RUBY_MAJOR=2.3
# Thu, 11 May 2017 06:52:11 GMT
ENV RUBY_VERSION=2.3.4
# Thu, 11 May 2017 06:52:12 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Thu, 11 May 2017 06:52:13 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:55:42 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:55:43 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:55:46 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:55:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:55:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:55:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:55:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:55:52 GMT
CMD ["irb"]
# Thu, 11 May 2017 19:05:44 GMT
RUN bundle config --global frozen 1
# Thu, 11 May 2017 19:05:46 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 19:05:47 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 19:05:47 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Thu, 11 May 2017 19:05:48 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Thu, 11 May 2017 19:05:49 GMT
ONBUILD RUN bundle install
# Thu, 11 May 2017 19:05:49 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b67985d109310b1e251db627eab93f7822660ed9b7ca59ea7f6df51957c18`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc9ebd25af679b8642e57f73b479f70084abaa1cdb78f0044633561b4bea651`  
		Last Modified: Thu, 11 May 2017 19:31:23 GMT  
		Size: 35.6 MB (35604739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f433e49b59361f744502ecf61bbb864f9a448b8f757d1f320a1d3646546362`  
		Last Modified: Thu, 11 May 2017 19:31:12 GMT  
		Size: 639.5 KB (639483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b55bcadb0025388dcad491ca53fba557fb6396c73d2cfd3e361c5c6e0b6bd29`  
		Last Modified: Thu, 11 May 2017 19:31:11 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a329a19f8f95108bca04dd50720893f0708457c84367bd314867684c3005e754`  
		Last Modified: Thu, 11 May 2017 19:35:02 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01130506b7ac3b06a517d33787833738eb98feded758b84c4acb85e8b58bd7b`  
		Last Modified: Thu, 11 May 2017 19:35:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.1`

```console
$ docker pull ruby@sha256:f7cb2fda8271b272f9adb5f396937c09499113a2e5299e871efb04195dabfc96
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.6 MB (270577866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5cfccf111795cc67c1736df6ad1832afbd4842533b5a897d91e8d6122963657`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 06:41:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 11 May 2017 06:41:42 GMT
ENV RUBY_MAJOR=2.4
# Thu, 11 May 2017 06:41:43 GMT
ENV RUBY_VERSION=2.4.1
# Thu, 11 May 2017 06:41:43 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Thu, 11 May 2017 06:41:44 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 19:10:23 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 19:10:24 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 19:10:27 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 19:10:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 19:10:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 19:10:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 19:10:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 19:10:33 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b67985d109310b1e251db627eab93f7822660ed9b7ca59ea7f6df51957c18`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2ffc998aca23d313f9b3a77e94b7e665ce7a7f047ba25460f2f284c6a14dce`  
		Last Modified: Thu, 11 May 2017 19:36:11 GMT  
		Size: 23.0 MB (23025371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ea8bf6a34ee0129a080f3c9cbb793dfabb04a50b5ccf5fc064e45682ca9e8c`  
		Last Modified: Thu, 11 May 2017 19:36:03 GMT  
		Size: 639.5 KB (639476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b6e6204a6b598f6da9eca7cb8b0070fe5c91e3138a0f4d2158e8391e374373`  
		Last Modified: Thu, 11 May 2017 19:36:02 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4`

```console
$ docker pull ruby@sha256:f7cb2fda8271b272f9adb5f396937c09499113a2e5299e871efb04195dabfc96
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.6 MB (270577866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5cfccf111795cc67c1736df6ad1832afbd4842533b5a897d91e8d6122963657`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 06:41:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 11 May 2017 06:41:42 GMT
ENV RUBY_MAJOR=2.4
# Thu, 11 May 2017 06:41:43 GMT
ENV RUBY_VERSION=2.4.1
# Thu, 11 May 2017 06:41:43 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Thu, 11 May 2017 06:41:44 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 19:10:23 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 19:10:24 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 19:10:27 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 19:10:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 19:10:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 19:10:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 19:10:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 19:10:33 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b67985d109310b1e251db627eab93f7822660ed9b7ca59ea7f6df51957c18`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2ffc998aca23d313f9b3a77e94b7e665ce7a7f047ba25460f2f284c6a14dce`  
		Last Modified: Thu, 11 May 2017 19:36:11 GMT  
		Size: 23.0 MB (23025371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ea8bf6a34ee0129a080f3c9cbb793dfabb04a50b5ccf5fc064e45682ca9e8c`  
		Last Modified: Thu, 11 May 2017 19:36:03 GMT  
		Size: 639.5 KB (639476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b6e6204a6b598f6da9eca7cb8b0070fe5c91e3138a0f4d2158e8391e374373`  
		Last Modified: Thu, 11 May 2017 19:36:02 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2`

```console
$ docker pull ruby@sha256:f7cb2fda8271b272f9adb5f396937c09499113a2e5299e871efb04195dabfc96
```

-	Platforms:
	-	linux; amd64

### `ruby:2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.6 MB (270577866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5cfccf111795cc67c1736df6ad1832afbd4842533b5a897d91e8d6122963657`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 06:41:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 11 May 2017 06:41:42 GMT
ENV RUBY_MAJOR=2.4
# Thu, 11 May 2017 06:41:43 GMT
ENV RUBY_VERSION=2.4.1
# Thu, 11 May 2017 06:41:43 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Thu, 11 May 2017 06:41:44 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 19:10:23 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 19:10:24 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 19:10:27 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 19:10:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 19:10:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 19:10:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 19:10:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 19:10:33 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b67985d109310b1e251db627eab93f7822660ed9b7ca59ea7f6df51957c18`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2ffc998aca23d313f9b3a77e94b7e665ce7a7f047ba25460f2f284c6a14dce`  
		Last Modified: Thu, 11 May 2017 19:36:11 GMT  
		Size: 23.0 MB (23025371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ea8bf6a34ee0129a080f3c9cbb793dfabb04a50b5ccf5fc064e45682ca9e8c`  
		Last Modified: Thu, 11 May 2017 19:36:03 GMT  
		Size: 639.5 KB (639476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b6e6204a6b598f6da9eca7cb8b0070fe5c91e3138a0f4d2158e8391e374373`  
		Last Modified: Thu, 11 May 2017 19:36:02 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:latest`

```console
$ docker pull ruby@sha256:6b8c363e222d688b8b3b3a0543afe8b47c343e3ae21e17a139a4664792a6c495
```

-	Platforms:
	-	linux; amd64

### `ruby:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 MB (270495925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a95ee9eb97a306ddd0110c4a481ba1fbc4f750411349e83a92e92778da6216`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:15:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:37:17 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 25 Apr 2017 14:37:18 GMT
ENV RUBY_MAJOR=2.4
# Tue, 25 Apr 2017 14:37:19 GMT
ENV RUBY_VERSION=2.4.1
# Tue, 25 Apr 2017 14:37:36 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 01 May 2017 23:22:10 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 01 May 2017 23:25:40 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 01 May 2017 23:25:40 GMT
ENV BUNDLER_VERSION=1.14.6
# Mon, 01 May 2017 23:25:42 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 01 May 2017 23:25:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 01 May 2017 23:25:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 01 May 2017 23:25:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 23:25:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 01 May 2017 23:25:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c546d9d6a84ca2a1b7459a47978abe757bf67096d9dd704a9a5a0a786d2d325`  
		Last Modified: Mon, 24 Apr 2017 22:21:26 GMT  
		Size: 131.8 MB (131793725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2ea17fcd18aebba250c8b5681bb0cbc4b14b7521eada0b7582d2a301dfdd47`  
		Last Modified: Tue, 25 Apr 2017 21:36:34 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2435260ee93b1366fe28f6ddea56d6b045c283518295ff0956d50d2d59cdb29c`  
		Last Modified: Mon, 01 May 2017 23:47:25 GMT  
		Size: 23.0 MB (23014548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ac7620c19d38060abf64e99b406747f992980c4165aafceb459d2d42b8944f`  
		Last Modified: Mon, 01 May 2017 23:47:15 GMT  
		Size: 639.5 KB (639476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d3eea329330f0b55b904a473e063a9bb25e26d49e8dc7d9d87a89ebc1428e6`  
		Last Modified: Mon, 01 May 2017 23:47:15 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.1-slim`

```console
$ docker pull ruby@sha256:58b2db02050b501dbe657c515e3c8d1d37c237fa2b16415de5126fdd38c4308c
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.1-slim` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86572679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3befd1cf40230231ebb325bda8458037d57d376321d5af7b53904148a8ad9535`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 15:53:12 GMT
ENV RUBY_MAJOR=2.4
# Wed, 10 May 2017 15:53:13 GMT
ENV RUBY_VERSION=2.4.1
# Wed, 10 May 2017 15:53:14 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Wed, 10 May 2017 15:53:14 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 19:15:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 19:15:12 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 19:15:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 19:15:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 19:15:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 19:15:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 19:15:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 19:15:21 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607f837da88cbb3dc216f236e87164c0368ee2f8e341156ddaf5b3591cf81e10`  
		Last Modified: Thu, 11 May 2017 19:38:13 GMT  
		Size: 23.2 MB (23188840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036b623f7e3d8aad0ffda27a791d3d60b8afea0ca71e9e3826f628f8718cafbe`  
		Last Modified: Thu, 11 May 2017 19:38:06 GMT  
		Size: 639.5 KB (639479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5811b54a850b7205ce405f18df0d0cf4fb1ead8690817408c54336c4dae4a66`  
		Last Modified: Thu, 11 May 2017 19:38:04 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-slim`

```console
$ docker pull ruby@sha256:58b2db02050b501dbe657c515e3c8d1d37c237fa2b16415de5126fdd38c4308c
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-slim` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86572679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3befd1cf40230231ebb325bda8458037d57d376321d5af7b53904148a8ad9535`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 15:53:12 GMT
ENV RUBY_MAJOR=2.4
# Wed, 10 May 2017 15:53:13 GMT
ENV RUBY_VERSION=2.4.1
# Wed, 10 May 2017 15:53:14 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Wed, 10 May 2017 15:53:14 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 19:15:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 19:15:12 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 19:15:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 19:15:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 19:15:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 19:15:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 19:15:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 19:15:21 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607f837da88cbb3dc216f236e87164c0368ee2f8e341156ddaf5b3591cf81e10`  
		Last Modified: Thu, 11 May 2017 19:38:13 GMT  
		Size: 23.2 MB (23188840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036b623f7e3d8aad0ffda27a791d3d60b8afea0ca71e9e3826f628f8718cafbe`  
		Last Modified: Thu, 11 May 2017 19:38:06 GMT  
		Size: 639.5 KB (639479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5811b54a850b7205ce405f18df0d0cf4fb1ead8690817408c54336c4dae4a66`  
		Last Modified: Thu, 11 May 2017 19:38:04 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-slim`

```console
$ docker pull ruby@sha256:58b2db02050b501dbe657c515e3c8d1d37c237fa2b16415de5126fdd38c4308c
```

-	Platforms:
	-	linux; amd64

### `ruby:2-slim` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86572679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3befd1cf40230231ebb325bda8458037d57d376321d5af7b53904148a8ad9535`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 15:53:12 GMT
ENV RUBY_MAJOR=2.4
# Wed, 10 May 2017 15:53:13 GMT
ENV RUBY_VERSION=2.4.1
# Wed, 10 May 2017 15:53:14 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Wed, 10 May 2017 15:53:14 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 19:15:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 19:15:12 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 19:15:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 19:15:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 19:15:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 19:15:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 19:15:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 19:15:21 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607f837da88cbb3dc216f236e87164c0368ee2f8e341156ddaf5b3591cf81e10`  
		Last Modified: Thu, 11 May 2017 19:38:13 GMT  
		Size: 23.2 MB (23188840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036b623f7e3d8aad0ffda27a791d3d60b8afea0ca71e9e3826f628f8718cafbe`  
		Last Modified: Thu, 11 May 2017 19:38:06 GMT  
		Size: 639.5 KB (639479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5811b54a850b7205ce405f18df0d0cf4fb1ead8690817408c54336c4dae4a66`  
		Last Modified: Thu, 11 May 2017 19:38:04 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:slim`

```console
$ docker pull ruby@sha256:58b2db02050b501dbe657c515e3c8d1d37c237fa2b16415de5126fdd38c4308c
```

-	Platforms:
	-	linux; amd64

### `ruby:slim` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86572679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3befd1cf40230231ebb325bda8458037d57d376321d5af7b53904148a8ad9535`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 15:53:12 GMT
ENV RUBY_MAJOR=2.4
# Wed, 10 May 2017 15:53:13 GMT
ENV RUBY_VERSION=2.4.1
# Wed, 10 May 2017 15:53:14 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Wed, 10 May 2017 15:53:14 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 19:15:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 19:15:12 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 19:15:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 19:15:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 19:15:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 19:15:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 19:15:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 19:15:21 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607f837da88cbb3dc216f236e87164c0368ee2f8e341156ddaf5b3591cf81e10`  
		Last Modified: Thu, 11 May 2017 19:38:13 GMT  
		Size: 23.2 MB (23188840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036b623f7e3d8aad0ffda27a791d3d60b8afea0ca71e9e3826f628f8718cafbe`  
		Last Modified: Thu, 11 May 2017 19:38:06 GMT  
		Size: 639.5 KB (639479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5811b54a850b7205ce405f18df0d0cf4fb1ead8690817408c54336c4dae4a66`  
		Last Modified: Thu, 11 May 2017 19:38:04 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.1-alpine`

```console
$ docker pull ruby@sha256:4ae9326fd47dcdace7e02c184ec64561e81a6d9c1589a3eaa7faac13a3faf04f
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.1-alpine` - linux; amd64

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

## `ruby:2.4-alpine`

```console
$ docker pull ruby@sha256:4ae9326fd47dcdace7e02c184ec64561e81a6d9c1589a3eaa7faac13a3faf04f
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-alpine` - linux; amd64

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

## `ruby:2-alpine`

```console
$ docker pull ruby@sha256:4ae9326fd47dcdace7e02c184ec64561e81a6d9c1589a3eaa7faac13a3faf04f
```

-	Platforms:
	-	linux; amd64

### `ruby:2-alpine` - linux; amd64

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

## `ruby:2.4.1-onbuild`

```console
$ docker pull ruby@sha256:ea83d3a6f9de0a1ab9c8c3f1074bec8274defb01929fb195434ef734b4cdc069
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.1-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.6 MB (270578176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2237ea03e82764adca1d1fff4a058c4d45b975bc88f041600ef23de26a7e1100`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 06:41:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 11 May 2017 06:41:42 GMT
ENV RUBY_MAJOR=2.4
# Thu, 11 May 2017 06:41:43 GMT
ENV RUBY_VERSION=2.4.1
# Thu, 11 May 2017 06:41:43 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Thu, 11 May 2017 06:41:44 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 19:10:23 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 19:10:24 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 19:10:27 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 19:10:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 19:10:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 19:10:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 19:10:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 19:10:33 GMT
CMD ["irb"]
# Thu, 11 May 2017 19:20:45 GMT
RUN bundle config --global frozen 1
# Thu, 11 May 2017 19:20:47 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 19:20:48 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 19:20:49 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Thu, 11 May 2017 19:20:50 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Thu, 11 May 2017 19:20:51 GMT
ONBUILD RUN bundle install
# Thu, 11 May 2017 19:20:52 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b67985d109310b1e251db627eab93f7822660ed9b7ca59ea7f6df51957c18`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2ffc998aca23d313f9b3a77e94b7e665ce7a7f047ba25460f2f284c6a14dce`  
		Last Modified: Thu, 11 May 2017 19:36:11 GMT  
		Size: 23.0 MB (23025371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ea8bf6a34ee0129a080f3c9cbb793dfabb04a50b5ccf5fc064e45682ca9e8c`  
		Last Modified: Thu, 11 May 2017 19:36:03 GMT  
		Size: 639.5 KB (639476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b6e6204a6b598f6da9eca7cb8b0070fe5c91e3138a0f4d2158e8391e374373`  
		Last Modified: Thu, 11 May 2017 19:36:02 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f9e0a19250f0476bfc546403ea20f6960c4b7090d56d127efc5eecf1bec5ae`  
		Last Modified: Thu, 11 May 2017 19:42:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480d8a1b728f9bf9b217310da7a01f35383b805de47681e531eb7f77fe652161`  
		Last Modified: Thu, 11 May 2017 19:42:07 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-onbuild`

```console
$ docker pull ruby@sha256:55c92ccb6a02fcab3097659f107d2d574292e0970c943c6893623d0c63b9ff87
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 MB (270496237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:932dc42ac7113729636d75a133bd1d7ea3ce81c3561b69faaaf6eda49be4432a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:15:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:37:17 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 25 Apr 2017 14:37:18 GMT
ENV RUBY_MAJOR=2.4
# Tue, 25 Apr 2017 14:37:19 GMT
ENV RUBY_VERSION=2.4.1
# Tue, 25 Apr 2017 14:37:36 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 01 May 2017 23:22:10 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 01 May 2017 23:25:40 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 01 May 2017 23:25:40 GMT
ENV BUNDLER_VERSION=1.14.6
# Mon, 01 May 2017 23:25:42 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 01 May 2017 23:25:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 01 May 2017 23:25:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 01 May 2017 23:25:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 23:25:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 01 May 2017 23:25:47 GMT
CMD ["irb"]
# Mon, 01 May 2017 23:35:13 GMT
RUN bundle config --global frozen 1
# Mon, 01 May 2017 23:35:14 GMT
RUN mkdir -p /usr/src/app
# Mon, 01 May 2017 23:35:15 GMT
WORKDIR /usr/src/app
# Mon, 01 May 2017 23:35:16 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Mon, 01 May 2017 23:35:17 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Mon, 01 May 2017 23:35:18 GMT
ONBUILD RUN bundle install
# Mon, 01 May 2017 23:35:19 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c546d9d6a84ca2a1b7459a47978abe757bf67096d9dd704a9a5a0a786d2d325`  
		Last Modified: Mon, 24 Apr 2017 22:21:26 GMT  
		Size: 131.8 MB (131793725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2ea17fcd18aebba250c8b5681bb0cbc4b14b7521eada0b7582d2a301dfdd47`  
		Last Modified: Tue, 25 Apr 2017 21:36:34 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2435260ee93b1366fe28f6ddea56d6b045c283518295ff0956d50d2d59cdb29c`  
		Last Modified: Mon, 01 May 2017 23:47:25 GMT  
		Size: 23.0 MB (23014548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ac7620c19d38060abf64e99b406747f992980c4165aafceb459d2d42b8944f`  
		Last Modified: Mon, 01 May 2017 23:47:15 GMT  
		Size: 639.5 KB (639476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d3eea329330f0b55b904a473e063a9bb25e26d49e8dc7d9d87a89ebc1428e6`  
		Last Modified: Mon, 01 May 2017 23:47:15 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feb7226142524a8ebe112d0feaaf25a17a10b36c683cdf343ef7c9f34f3cec4c`  
		Last Modified: Mon, 01 May 2017 23:51:38 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd0b0fd838cd2806591cc882400b6f7bc30096f9971e605b8a1692d8cdbbce0`  
		Last Modified: Mon, 01 May 2017 23:51:39 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-onbuild`

```console
$ docker pull ruby@sha256:55c92ccb6a02fcab3097659f107d2d574292e0970c943c6893623d0c63b9ff87
```

-	Platforms:
	-	linux; amd64

### `ruby:2-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 MB (270496237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:932dc42ac7113729636d75a133bd1d7ea3ce81c3561b69faaaf6eda49be4432a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:15:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:37:17 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 25 Apr 2017 14:37:18 GMT
ENV RUBY_MAJOR=2.4
# Tue, 25 Apr 2017 14:37:19 GMT
ENV RUBY_VERSION=2.4.1
# Tue, 25 Apr 2017 14:37:36 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 01 May 2017 23:22:10 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 01 May 2017 23:25:40 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 01 May 2017 23:25:40 GMT
ENV BUNDLER_VERSION=1.14.6
# Mon, 01 May 2017 23:25:42 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 01 May 2017 23:25:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 01 May 2017 23:25:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 01 May 2017 23:25:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 23:25:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 01 May 2017 23:25:47 GMT
CMD ["irb"]
# Mon, 01 May 2017 23:35:13 GMT
RUN bundle config --global frozen 1
# Mon, 01 May 2017 23:35:14 GMT
RUN mkdir -p /usr/src/app
# Mon, 01 May 2017 23:35:15 GMT
WORKDIR /usr/src/app
# Mon, 01 May 2017 23:35:16 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Mon, 01 May 2017 23:35:17 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Mon, 01 May 2017 23:35:18 GMT
ONBUILD RUN bundle install
# Mon, 01 May 2017 23:35:19 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c546d9d6a84ca2a1b7459a47978abe757bf67096d9dd704a9a5a0a786d2d325`  
		Last Modified: Mon, 24 Apr 2017 22:21:26 GMT  
		Size: 131.8 MB (131793725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2ea17fcd18aebba250c8b5681bb0cbc4b14b7521eada0b7582d2a301dfdd47`  
		Last Modified: Tue, 25 Apr 2017 21:36:34 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2435260ee93b1366fe28f6ddea56d6b045c283518295ff0956d50d2d59cdb29c`  
		Last Modified: Mon, 01 May 2017 23:47:25 GMT  
		Size: 23.0 MB (23014548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ac7620c19d38060abf64e99b406747f992980c4165aafceb459d2d42b8944f`  
		Last Modified: Mon, 01 May 2017 23:47:15 GMT  
		Size: 639.5 KB (639476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d3eea329330f0b55b904a473e063a9bb25e26d49e8dc7d9d87a89ebc1428e6`  
		Last Modified: Mon, 01 May 2017 23:47:15 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feb7226142524a8ebe112d0feaaf25a17a10b36c683cdf343ef7c9f34f3cec4c`  
		Last Modified: Mon, 01 May 2017 23:51:38 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd0b0fd838cd2806591cc882400b6f7bc30096f9971e605b8a1692d8cdbbce0`  
		Last Modified: Mon, 01 May 2017 23:51:39 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:onbuild`

```console
$ docker pull ruby@sha256:55c92ccb6a02fcab3097659f107d2d574292e0970c943c6893623d0c63b9ff87
```

-	Platforms:
	-	linux; amd64

### `ruby:onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 MB (270496237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:932dc42ac7113729636d75a133bd1d7ea3ce81c3561b69faaaf6eda49be4432a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:15:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:37:17 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 25 Apr 2017 14:37:18 GMT
ENV RUBY_MAJOR=2.4
# Tue, 25 Apr 2017 14:37:19 GMT
ENV RUBY_VERSION=2.4.1
# Tue, 25 Apr 2017 14:37:36 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 01 May 2017 23:22:10 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 01 May 2017 23:25:40 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 01 May 2017 23:25:40 GMT
ENV BUNDLER_VERSION=1.14.6
# Mon, 01 May 2017 23:25:42 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 01 May 2017 23:25:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 01 May 2017 23:25:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 01 May 2017 23:25:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 23:25:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 01 May 2017 23:25:47 GMT
CMD ["irb"]
# Mon, 01 May 2017 23:35:13 GMT
RUN bundle config --global frozen 1
# Mon, 01 May 2017 23:35:14 GMT
RUN mkdir -p /usr/src/app
# Mon, 01 May 2017 23:35:15 GMT
WORKDIR /usr/src/app
# Mon, 01 May 2017 23:35:16 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Mon, 01 May 2017 23:35:17 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Mon, 01 May 2017 23:35:18 GMT
ONBUILD RUN bundle install
# Mon, 01 May 2017 23:35:19 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c546d9d6a84ca2a1b7459a47978abe757bf67096d9dd704a9a5a0a786d2d325`  
		Last Modified: Mon, 24 Apr 2017 22:21:26 GMT  
		Size: 131.8 MB (131793725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2ea17fcd18aebba250c8b5681bb0cbc4b14b7521eada0b7582d2a301dfdd47`  
		Last Modified: Tue, 25 Apr 2017 21:36:34 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2435260ee93b1366fe28f6ddea56d6b045c283518295ff0956d50d2d59cdb29c`  
		Last Modified: Mon, 01 May 2017 23:47:25 GMT  
		Size: 23.0 MB (23014548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ac7620c19d38060abf64e99b406747f992980c4165aafceb459d2d42b8944f`  
		Last Modified: Mon, 01 May 2017 23:47:15 GMT  
		Size: 639.5 KB (639476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d3eea329330f0b55b904a473e063a9bb25e26d49e8dc7d9d87a89ebc1428e6`  
		Last Modified: Mon, 01 May 2017 23:47:15 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feb7226142524a8ebe112d0feaaf25a17a10b36c683cdf343ef7c9f34f3cec4c`  
		Last Modified: Mon, 01 May 2017 23:51:38 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd0b0fd838cd2806591cc882400b6f7bc30096f9971e605b8a1692d8cdbbce0`  
		Last Modified: Mon, 01 May 2017 23:51:39 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
