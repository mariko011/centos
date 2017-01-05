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
-	[`ruby:2.2.6`](#ruby226)
-	[`ruby:2.2`](#ruby22)
-	[`ruby:2.2.6-slim`](#ruby226-slim)
-	[`ruby:2.2-slim`](#ruby22-slim)
-	[`ruby:2.2.6-alpine`](#ruby226-alpine)
-	[`ruby:2.2-alpine`](#ruby22-alpine)
-	[`ruby:2.2.6-onbuild`](#ruby226-onbuild)
-	[`ruby:2.2-onbuild`](#ruby22-onbuild)
-	[`ruby:2.3.3`](#ruby233)
-	[`ruby:2.3`](#ruby23)
-	[`ruby:2.3.3-slim`](#ruby233-slim)
-	[`ruby:2.3-slim`](#ruby23-slim)
-	[`ruby:2.3.3-alpine`](#ruby233-alpine)
-	[`ruby:2.3-alpine`](#ruby23-alpine)
-	[`ruby:2.3.3-onbuild`](#ruby233-onbuild)
-	[`ruby:2.3-onbuild`](#ruby23-onbuild)
-	[`ruby:2.4.0`](#ruby240)
-	[`ruby:2.4`](#ruby24)
-	[`ruby:2`](#ruby2)
-	[`ruby:latest`](#rubylatest)
-	[`ruby:2.4.0-slim`](#ruby240-slim)
-	[`ruby:2.4-slim`](#ruby24-slim)
-	[`ruby:2-slim`](#ruby2-slim)
-	[`ruby:slim`](#rubyslim)
-	[`ruby:2.4.0-alpine`](#ruby240-alpine)
-	[`ruby:2.4-alpine`](#ruby24-alpine)
-	[`ruby:2-alpine`](#ruby2-alpine)
-	[`ruby:alpine`](#rubyalpine)
-	[`ruby:2.4.0-onbuild`](#ruby240-onbuild)
-	[`ruby:2.4-onbuild`](#ruby24-onbuild)
-	[`ruby:2-onbuild`](#ruby2-onbuild)
-	[`ruby:onbuild`](#rubyonbuild)

## `ruby:2.1.10`

```console
$ docker pull ruby@sha256:fe20b7c2d1fb046a668d77a0bb37a1dd1262cd1368adb75be977557f711c2bf1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275357973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96fb166e3ba6d00cc03a8bb9eb2fb9080ca87c44c7c833635c4f9769c42f863f`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Dec 2016 03:33:17 GMT
ENV RUBY_MAJOR=2.1
# Fri, 16 Dec 2016 03:33:18 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 04 Jan 2017 21:34:24 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Wed, 04 Jan 2017 21:34:24 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:36:48 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:36:48 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:36:49 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:36:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:36:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:36:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:36:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:36:52 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871436ab7225503e9e951a7acb7b1689a91a60d033bf8cbabcd40fe5ca4cfc87`  
		Last Modified: Thu, 15 Dec 2016 19:33:52 GMT  
		Size: 129.8 MB (129823619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb684ad7765258b3876f3ee6f96244f254b12c72f6bcfd97af3bd02f7912935`  
		Last Modified: Wed, 21 Dec 2016 19:59:54 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c515e9f72d23a13a9855dda775421093979d5275399abb10974f9dd92efb6130`  
		Last Modified: Thu, 05 Jan 2017 01:01:21 GMT  
		Size: 32.5 MB (32525990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11228f979105f51700f0991d3cc50b654ff37d5ef361ff18f748acc24897ea7`  
		Last Modified: Thu, 05 Jan 2017 01:01:10 GMT  
		Size: 612.9 KB (612890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90c73d0d19cc4a84557044967c4edadfe57bb38e91a45b4f9931d1d28ff6363`  
		Last Modified: Thu, 05 Jan 2017 01:01:06 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1`

```console
$ docker pull ruby@sha256:fe20b7c2d1fb046a668d77a0bb37a1dd1262cd1368adb75be977557f711c2bf1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275357973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96fb166e3ba6d00cc03a8bb9eb2fb9080ca87c44c7c833635c4f9769c42f863f`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Dec 2016 03:33:17 GMT
ENV RUBY_MAJOR=2.1
# Fri, 16 Dec 2016 03:33:18 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 04 Jan 2017 21:34:24 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Wed, 04 Jan 2017 21:34:24 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:36:48 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:36:48 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:36:49 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:36:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:36:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:36:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:36:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:36:52 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871436ab7225503e9e951a7acb7b1689a91a60d033bf8cbabcd40fe5ca4cfc87`  
		Last Modified: Thu, 15 Dec 2016 19:33:52 GMT  
		Size: 129.8 MB (129823619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb684ad7765258b3876f3ee6f96244f254b12c72f6bcfd97af3bd02f7912935`  
		Last Modified: Wed, 21 Dec 2016 19:59:54 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c515e9f72d23a13a9855dda775421093979d5275399abb10974f9dd92efb6130`  
		Last Modified: Thu, 05 Jan 2017 01:01:21 GMT  
		Size: 32.5 MB (32525990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11228f979105f51700f0991d3cc50b654ff37d5ef361ff18f748acc24897ea7`  
		Last Modified: Thu, 05 Jan 2017 01:01:10 GMT  
		Size: 612.9 KB (612890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90c73d0d19cc4a84557044967c4edadfe57bb38e91a45b4f9931d1d28ff6363`  
		Last Modified: Thu, 05 Jan 2017 01:01:06 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-slim`

```console
$ docker pull ruby@sha256:2b05f6b16e3b60c4a8fa2add3fa04a1d80512b68c7e34aada7e77c08f37d141a
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94641595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b64a59c51a3ef2214437746e33218792632974f7080f73a83ed172f012e63c4`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:32:26 GMT
ENV RUBY_MAJOR=2.1
# Wed, 14 Dec 2016 19:32:26 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 04 Jan 2017 21:36:52 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Wed, 04 Jan 2017 21:36:53 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:39:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:39:26 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:39:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:39:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:39:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:39:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:39:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:39:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b86477249181f9025ed372f0d6a924f77fca1b49baef72aa7caae1d85a6491`  
		Last Modified: Thu, 05 Jan 2017 01:02:07 GMT  
		Size: 32.7 MB (32684163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292343f502efc0d6b6c4ebef4b4b81df52abf1ea328f2eed4285d8bbc325ab42`  
		Last Modified: Thu, 05 Jan 2017 01:01:55 GMT  
		Size: 612.9 KB (612880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6508d079c8f89b9c5a349b0bb6913463db8502b09cf85d7df48b364a98183f`  
		Last Modified: Thu, 05 Jan 2017 01:01:54 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-slim`

```console
$ docker pull ruby@sha256:2b05f6b16e3b60c4a8fa2add3fa04a1d80512b68c7e34aada7e77c08f37d141a
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94641595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b64a59c51a3ef2214437746e33218792632974f7080f73a83ed172f012e63c4`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:32:26 GMT
ENV RUBY_MAJOR=2.1
# Wed, 14 Dec 2016 19:32:26 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 04 Jan 2017 21:36:52 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Wed, 04 Jan 2017 21:36:53 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:39:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:39:26 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:39:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:39:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:39:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:39:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:39:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:39:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b86477249181f9025ed372f0d6a924f77fca1b49baef72aa7caae1d85a6491`  
		Last Modified: Thu, 05 Jan 2017 01:02:07 GMT  
		Size: 32.7 MB (32684163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292343f502efc0d6b6c4ebef4b4b81df52abf1ea328f2eed4285d8bbc325ab42`  
		Last Modified: Thu, 05 Jan 2017 01:01:55 GMT  
		Size: 612.9 KB (612880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6508d079c8f89b9c5a349b0bb6913463db8502b09cf85d7df48b364a98183f`  
		Last Modified: Thu, 05 Jan 2017 01:01:54 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-alpine`

```console
$ docker pull ruby@sha256:e89af4299c3baaaa1386eee9dcce55dc195392afdeda717061e52c567b307fec
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.7 MB (42694466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73648c6818eeee1daa18204033736e516f39a7a53417268598ef02ff933ef3f4`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:39:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 04 Jan 2017 21:39:31 GMT
ENV RUBY_MAJOR=2.1
# Wed, 04 Jan 2017 21:39:32 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 04 Jan 2017 21:39:32 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Wed, 04 Jan 2017 21:39:32 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:41:46 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:41:46 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:41:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:41:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:41:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:41:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:41:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:41:50 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a61dd3738b21d0a5784f929fe8556e5f097b12cef085d1c27ba2a2a7bd3a64f`  
		Last Modified: Thu, 05 Jan 2017 01:02:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1d223a7b30e45e0b730f69c53c8be8e5e57b7c679c8d5434839154b483f7c8`  
		Last Modified: Thu, 05 Jan 2017 01:02:58 GMT  
		Size: 40.2 MB (40179204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e3dfb3b3b250fa76633143f9c20a8ef36eec3b2bdf7dad4694e594fb0c7df5`  
		Last Modified: Thu, 05 Jan 2017 01:02:43 GMT  
		Size: 612.8 KB (612848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca9a1c4385b0e03f6f0750f890b0f077894d295ab28efd415c9d54a9d84bf7f`  
		Last Modified: Thu, 05 Jan 2017 01:02:44 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-alpine`

```console
$ docker pull ruby@sha256:e89af4299c3baaaa1386eee9dcce55dc195392afdeda717061e52c567b307fec
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.7 MB (42694466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73648c6818eeee1daa18204033736e516f39a7a53417268598ef02ff933ef3f4`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:39:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 04 Jan 2017 21:39:31 GMT
ENV RUBY_MAJOR=2.1
# Wed, 04 Jan 2017 21:39:32 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 04 Jan 2017 21:39:32 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Wed, 04 Jan 2017 21:39:32 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:41:46 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:41:46 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:41:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:41:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:41:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:41:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:41:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:41:50 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a61dd3738b21d0a5784f929fe8556e5f097b12cef085d1c27ba2a2a7bd3a64f`  
		Last Modified: Thu, 05 Jan 2017 01:02:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1d223a7b30e45e0b730f69c53c8be8e5e57b7c679c8d5434839154b483f7c8`  
		Last Modified: Thu, 05 Jan 2017 01:02:58 GMT  
		Size: 40.2 MB (40179204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e3dfb3b3b250fa76633143f9c20a8ef36eec3b2bdf7dad4694e594fb0c7df5`  
		Last Modified: Thu, 05 Jan 2017 01:02:43 GMT  
		Size: 612.8 KB (612848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca9a1c4385b0e03f6f0750f890b0f077894d295ab28efd415c9d54a9d84bf7f`  
		Last Modified: Thu, 05 Jan 2017 01:02:44 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-onbuild`

```console
$ docker pull ruby@sha256:c39af72bf23ccfed3a5aea703cef8a2e65fbb66ec7672971d04c5c2e006e17f2
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275358286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c29d96829f732b5713eab753b8d001e893e86cb2e94b9c510981030291ab442`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Dec 2016 03:33:17 GMT
ENV RUBY_MAJOR=2.1
# Fri, 16 Dec 2016 03:33:18 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 04 Jan 2017 21:34:24 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Wed, 04 Jan 2017 21:34:24 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:36:48 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:36:48 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:36:49 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:36:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:36:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:36:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:36:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:36:52 GMT
CMD ["irb"]
# Wed, 04 Jan 2017 21:41:51 GMT
RUN bundle config --global frozen 1
# Wed, 04 Jan 2017 21:41:52 GMT
RUN mkdir -p /usr/src/app
# Wed, 04 Jan 2017 21:41:52 GMT
WORKDIR /usr/src/app
# Wed, 04 Jan 2017 21:41:53 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 04 Jan 2017 21:41:53 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 04 Jan 2017 21:41:53 GMT
ONBUILD RUN bundle install
# Wed, 04 Jan 2017 21:41:54 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871436ab7225503e9e951a7acb7b1689a91a60d033bf8cbabcd40fe5ca4cfc87`  
		Last Modified: Thu, 15 Dec 2016 19:33:52 GMT  
		Size: 129.8 MB (129823619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb684ad7765258b3876f3ee6f96244f254b12c72f6bcfd97af3bd02f7912935`  
		Last Modified: Wed, 21 Dec 2016 19:59:54 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c515e9f72d23a13a9855dda775421093979d5275399abb10974f9dd92efb6130`  
		Last Modified: Thu, 05 Jan 2017 01:01:21 GMT  
		Size: 32.5 MB (32525990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11228f979105f51700f0991d3cc50b654ff37d5ef361ff18f748acc24897ea7`  
		Last Modified: Thu, 05 Jan 2017 01:01:10 GMT  
		Size: 612.9 KB (612890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90c73d0d19cc4a84557044967c4edadfe57bb38e91a45b4f9931d1d28ff6363`  
		Last Modified: Thu, 05 Jan 2017 01:01:06 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6442c730ddbf2757f462036cf4a52fca21ea3ba1517b6c0e8205e72687d3e3e7`  
		Last Modified: Thu, 05 Jan 2017 01:03:32 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9301eda2177232e4db2460bf210111d65ae678246546cbd96bed8367d7b5865`  
		Last Modified: Thu, 05 Jan 2017 01:03:33 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-onbuild`

```console
$ docker pull ruby@sha256:c39af72bf23ccfed3a5aea703cef8a2e65fbb66ec7672971d04c5c2e006e17f2
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275358286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c29d96829f732b5713eab753b8d001e893e86cb2e94b9c510981030291ab442`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Dec 2016 03:33:17 GMT
ENV RUBY_MAJOR=2.1
# Fri, 16 Dec 2016 03:33:18 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 04 Jan 2017 21:34:24 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Wed, 04 Jan 2017 21:34:24 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:36:48 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:36:48 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:36:49 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:36:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:36:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:36:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:36:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:36:52 GMT
CMD ["irb"]
# Wed, 04 Jan 2017 21:41:51 GMT
RUN bundle config --global frozen 1
# Wed, 04 Jan 2017 21:41:52 GMT
RUN mkdir -p /usr/src/app
# Wed, 04 Jan 2017 21:41:52 GMT
WORKDIR /usr/src/app
# Wed, 04 Jan 2017 21:41:53 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 04 Jan 2017 21:41:53 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 04 Jan 2017 21:41:53 GMT
ONBUILD RUN bundle install
# Wed, 04 Jan 2017 21:41:54 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871436ab7225503e9e951a7acb7b1689a91a60d033bf8cbabcd40fe5ca4cfc87`  
		Last Modified: Thu, 15 Dec 2016 19:33:52 GMT  
		Size: 129.8 MB (129823619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb684ad7765258b3876f3ee6f96244f254b12c72f6bcfd97af3bd02f7912935`  
		Last Modified: Wed, 21 Dec 2016 19:59:54 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c515e9f72d23a13a9855dda775421093979d5275399abb10974f9dd92efb6130`  
		Last Modified: Thu, 05 Jan 2017 01:01:21 GMT  
		Size: 32.5 MB (32525990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11228f979105f51700f0991d3cc50b654ff37d5ef361ff18f748acc24897ea7`  
		Last Modified: Thu, 05 Jan 2017 01:01:10 GMT  
		Size: 612.9 KB (612890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90c73d0d19cc4a84557044967c4edadfe57bb38e91a45b4f9931d1d28ff6363`  
		Last Modified: Thu, 05 Jan 2017 01:01:06 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6442c730ddbf2757f462036cf4a52fca21ea3ba1517b6c0e8205e72687d3e3e7`  
		Last Modified: Thu, 05 Jan 2017 01:03:32 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9301eda2177232e4db2460bf210111d65ae678246546cbd96bed8367d7b5865`  
		Last Modified: Thu, 05 Jan 2017 01:03:33 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6`

```console
$ docker pull ruby@sha256:c302388e049d602003e402df7574630f9155a1a4432ec0370efa376d031259d8
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.0 MB (275955833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a8fea42a0d4fec3639ebfce45f2db5aab5bfcf81b21a30e6e39fa9d43a3910e`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Dec 2016 03:35:35 GMT
ENV RUBY_MAJOR=2.2
# Fri, 16 Dec 2016 03:35:35 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:41:54 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:41:54 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:44:13 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:44:14 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:44:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:44:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:44:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:44:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:44:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:44:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871436ab7225503e9e951a7acb7b1689a91a60d033bf8cbabcd40fe5ca4cfc87`  
		Last Modified: Thu, 15 Dec 2016 19:33:52 GMT  
		Size: 129.8 MB (129823619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb684ad7765258b3876f3ee6f96244f254b12c72f6bcfd97af3bd02f7912935`  
		Last Modified: Wed, 21 Dec 2016 19:59:54 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df50e4a1ad1a37f934af03984096aab5104b85f1d55786eeef8d9ea265c8863`  
		Last Modified: Thu, 05 Jan 2017 01:04:19 GMT  
		Size: 33.1 MB (33123860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03ded5f1c78740c02e99e7d4f7747a0ef0eb4e1d8107389c3336618d1da5876d`  
		Last Modified: Thu, 05 Jan 2017 01:04:05 GMT  
		Size: 612.9 KB (612879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6035cfd9e1892cf16a06e70b2e952bfd6ad33d9b041a76c91e984a7188893c6c`  
		Last Modified: Thu, 05 Jan 2017 01:04:04 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2`

```console
$ docker pull ruby@sha256:c302388e049d602003e402df7574630f9155a1a4432ec0370efa376d031259d8
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.0 MB (275955833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a8fea42a0d4fec3639ebfce45f2db5aab5bfcf81b21a30e6e39fa9d43a3910e`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Dec 2016 03:35:35 GMT
ENV RUBY_MAJOR=2.2
# Fri, 16 Dec 2016 03:35:35 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:41:54 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:41:54 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:44:13 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:44:14 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:44:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:44:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:44:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:44:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:44:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:44:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871436ab7225503e9e951a7acb7b1689a91a60d033bf8cbabcd40fe5ca4cfc87`  
		Last Modified: Thu, 15 Dec 2016 19:33:52 GMT  
		Size: 129.8 MB (129823619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb684ad7765258b3876f3ee6f96244f254b12c72f6bcfd97af3bd02f7912935`  
		Last Modified: Wed, 21 Dec 2016 19:59:54 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df50e4a1ad1a37f934af03984096aab5104b85f1d55786eeef8d9ea265c8863`  
		Last Modified: Thu, 05 Jan 2017 01:04:19 GMT  
		Size: 33.1 MB (33123860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03ded5f1c78740c02e99e7d4f7747a0ef0eb4e1d8107389c3336618d1da5876d`  
		Last Modified: Thu, 05 Jan 2017 01:04:05 GMT  
		Size: 612.9 KB (612879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6035cfd9e1892cf16a06e70b2e952bfd6ad33d9b041a76c91e984a7188893c6c`  
		Last Modified: Thu, 05 Jan 2017 01:04:04 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6-slim`

```console
$ docker pull ruby@sha256:8100a97b1095a8ebc9a45e1a6fdb071bc9ff1b67b47a1c3346bf2b41e2404815
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95249092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2e8c902cd55d3a9d9986dc1500acce3624c973530a4c8a8ef71ae7906f689b`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:44:17 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:44:18 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:46:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:46:54 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:46:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:46:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:46:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:46:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257659db5f268997b3e78b801ebe6066f4d2ba03c4e7f9caa36cb215dbaa0c53`  
		Last Modified: Thu, 05 Jan 2017 01:05:08 GMT  
		Size: 33.3 MB (33291664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a342829244cca6fa4eeef8253356273a37fd3ab9e360df913910c5b3a1448d`  
		Last Modified: Thu, 05 Jan 2017 01:04:54 GMT  
		Size: 612.9 KB (612876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c6533795125255642421c127b0fd21e40df51d30a4a6d78f59b412fcb8adb`  
		Last Modified: Thu, 05 Jan 2017 01:04:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-slim`

```console
$ docker pull ruby@sha256:8100a97b1095a8ebc9a45e1a6fdb071bc9ff1b67b47a1c3346bf2b41e2404815
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95249092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2e8c902cd55d3a9d9986dc1500acce3624c973530a4c8a8ef71ae7906f689b`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:44:17 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:44:18 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:46:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:46:54 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:46:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:46:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:46:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:46:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257659db5f268997b3e78b801ebe6066f4d2ba03c4e7f9caa36cb215dbaa0c53`  
		Last Modified: Thu, 05 Jan 2017 01:05:08 GMT  
		Size: 33.3 MB (33291664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a342829244cca6fa4eeef8253356273a37fd3ab9e360df913910c5b3a1448d`  
		Last Modified: Thu, 05 Jan 2017 01:04:54 GMT  
		Size: 612.9 KB (612876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c6533795125255642421c127b0fd21e40df51d30a4a6d78f59b412fcb8adb`  
		Last Modified: Thu, 05 Jan 2017 01:04:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6-alpine`

```console
$ docker pull ruby@sha256:8431445180363dde140e176579630be736e8888ab399804b8502e4dd5fc2fef4
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.2 MB (43243509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df1ca9b56a7342ca9b7b4253ff78efd43b2c424768f05a1d9157bdf483f4548e`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:39:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 04 Jan 2017 21:46:58 GMT
ENV RUBY_MAJOR=2.2
# Wed, 04 Jan 2017 21:46:59 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:46:59 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:46:59 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:49:12 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:49:13 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:49:14 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:49:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:49:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:49:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:49:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:49:16 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a61dd3738b21d0a5784f929fe8556e5f097b12cef085d1c27ba2a2a7bd3a64f`  
		Last Modified: Thu, 05 Jan 2017 01:02:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa39a3c3f0c2c17fc2f4baac59d363d636c886595f47aae096d84600d0909852`  
		Last Modified: Thu, 05 Jan 2017 01:05:58 GMT  
		Size: 40.7 MB (40728215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdf0431851830adc05fff0fcd1a168d8f27b53f913a620a4f64dffff0cf0a75`  
		Last Modified: Thu, 05 Jan 2017 01:05:42 GMT  
		Size: 612.9 KB (612881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40bcfdcc62754da00da3233cf681f7570021da98ed2ce51227d6b55e56630fc`  
		Last Modified: Thu, 05 Jan 2017 01:05:41 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-alpine`

```console
$ docker pull ruby@sha256:8431445180363dde140e176579630be736e8888ab399804b8502e4dd5fc2fef4
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.2 MB (43243509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df1ca9b56a7342ca9b7b4253ff78efd43b2c424768f05a1d9157bdf483f4548e`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:39:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 04 Jan 2017 21:46:58 GMT
ENV RUBY_MAJOR=2.2
# Wed, 04 Jan 2017 21:46:59 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:46:59 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:46:59 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:49:12 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:49:13 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:49:14 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:49:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:49:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:49:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:49:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:49:16 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a61dd3738b21d0a5784f929fe8556e5f097b12cef085d1c27ba2a2a7bd3a64f`  
		Last Modified: Thu, 05 Jan 2017 01:02:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa39a3c3f0c2c17fc2f4baac59d363d636c886595f47aae096d84600d0909852`  
		Last Modified: Thu, 05 Jan 2017 01:05:58 GMT  
		Size: 40.7 MB (40728215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdf0431851830adc05fff0fcd1a168d8f27b53f913a620a4f64dffff0cf0a75`  
		Last Modified: Thu, 05 Jan 2017 01:05:42 GMT  
		Size: 612.9 KB (612881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40bcfdcc62754da00da3233cf681f7570021da98ed2ce51227d6b55e56630fc`  
		Last Modified: Thu, 05 Jan 2017 01:05:41 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6-onbuild`

```console
$ docker pull ruby@sha256:12f2c1845631b4819b0c8614b4341eb53e94288d46fb038921486ea563125fba
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.0 MB (275956147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3629ef1e09878a657e6d6e0030a6093b0264d6e08668df80ee3d933faeae17b8`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Dec 2016 03:35:35 GMT
ENV RUBY_MAJOR=2.2
# Fri, 16 Dec 2016 03:35:35 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:41:54 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:41:54 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:44:13 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:44:14 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:44:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:44:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:44:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:44:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:44:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:44:17 GMT
CMD ["irb"]
# Wed, 04 Jan 2017 21:49:18 GMT
RUN bundle config --global frozen 1
# Wed, 04 Jan 2017 21:49:18 GMT
RUN mkdir -p /usr/src/app
# Wed, 04 Jan 2017 21:49:19 GMT
WORKDIR /usr/src/app
# Wed, 04 Jan 2017 21:49:19 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 04 Jan 2017 21:49:19 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 04 Jan 2017 21:49:20 GMT
ONBUILD RUN bundle install
# Wed, 04 Jan 2017 21:49:20 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871436ab7225503e9e951a7acb7b1689a91a60d033bf8cbabcd40fe5ca4cfc87`  
		Last Modified: Thu, 15 Dec 2016 19:33:52 GMT  
		Size: 129.8 MB (129823619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb684ad7765258b3876f3ee6f96244f254b12c72f6bcfd97af3bd02f7912935`  
		Last Modified: Wed, 21 Dec 2016 19:59:54 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df50e4a1ad1a37f934af03984096aab5104b85f1d55786eeef8d9ea265c8863`  
		Last Modified: Thu, 05 Jan 2017 01:04:19 GMT  
		Size: 33.1 MB (33123860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03ded5f1c78740c02e99e7d4f7747a0ef0eb4e1d8107389c3336618d1da5876d`  
		Last Modified: Thu, 05 Jan 2017 01:04:05 GMT  
		Size: 612.9 KB (612879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6035cfd9e1892cf16a06e70b2e952bfd6ad33d9b041a76c91e984a7188893c6c`  
		Last Modified: Thu, 05 Jan 2017 01:04:04 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04655e82f2291827f609a6d74b7ecadd19d73eb1e415836b9735a87bf3cb0071`  
		Last Modified: Thu, 05 Jan 2017 01:06:30 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a7a08caf425add2d32500491325a3d156d53f818ded41706a3ea18aa3741e2`  
		Last Modified: Thu, 05 Jan 2017 01:06:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-onbuild`

```console
$ docker pull ruby@sha256:12f2c1845631b4819b0c8614b4341eb53e94288d46fb038921486ea563125fba
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.0 MB (275956147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3629ef1e09878a657e6d6e0030a6093b0264d6e08668df80ee3d933faeae17b8`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Dec 2016 03:35:35 GMT
ENV RUBY_MAJOR=2.2
# Fri, 16 Dec 2016 03:35:35 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:41:54 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:41:54 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:44:13 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:44:14 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:44:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:44:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:44:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:44:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:44:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:44:17 GMT
CMD ["irb"]
# Wed, 04 Jan 2017 21:49:18 GMT
RUN bundle config --global frozen 1
# Wed, 04 Jan 2017 21:49:18 GMT
RUN mkdir -p /usr/src/app
# Wed, 04 Jan 2017 21:49:19 GMT
WORKDIR /usr/src/app
# Wed, 04 Jan 2017 21:49:19 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 04 Jan 2017 21:49:19 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 04 Jan 2017 21:49:20 GMT
ONBUILD RUN bundle install
# Wed, 04 Jan 2017 21:49:20 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871436ab7225503e9e951a7acb7b1689a91a60d033bf8cbabcd40fe5ca4cfc87`  
		Last Modified: Thu, 15 Dec 2016 19:33:52 GMT  
		Size: 129.8 MB (129823619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb684ad7765258b3876f3ee6f96244f254b12c72f6bcfd97af3bd02f7912935`  
		Last Modified: Wed, 21 Dec 2016 19:59:54 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df50e4a1ad1a37f934af03984096aab5104b85f1d55786eeef8d9ea265c8863`  
		Last Modified: Thu, 05 Jan 2017 01:04:19 GMT  
		Size: 33.1 MB (33123860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03ded5f1c78740c02e99e7d4f7747a0ef0eb4e1d8107389c3336618d1da5876d`  
		Last Modified: Thu, 05 Jan 2017 01:04:05 GMT  
		Size: 612.9 KB (612879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6035cfd9e1892cf16a06e70b2e952bfd6ad33d9b041a76c91e984a7188893c6c`  
		Last Modified: Thu, 05 Jan 2017 01:04:04 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04655e82f2291827f609a6d74b7ecadd19d73eb1e415836b9735a87bf3cb0071`  
		Last Modified: Thu, 05 Jan 2017 01:06:30 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a7a08caf425add2d32500491325a3d156d53f818ded41706a3ea18aa3741e2`  
		Last Modified: Thu, 05 Jan 2017 01:06:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3`

```console
$ docker pull ruby@sha256:8123b79fc40717658ef5a846d32cb99b3cc1866362e96feaf6de819594ef6d3c
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277941662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ba4a8ad7651c2af916b401d4e75edf5ac214d749a363f2118eb1b5dc51df087`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Dec 2016 03:30:44 GMT
ENV RUBY_MAJOR=2.3
# Fri, 16 Dec 2016 03:30:44 GMT
ENV RUBY_VERSION=2.3.3
# Wed, 04 Jan 2017 21:49:20 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Wed, 04 Jan 2017 21:49:21 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:51:45 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:51:46 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:51:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:51:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:51:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:51:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:51:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:51:49 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871436ab7225503e9e951a7acb7b1689a91a60d033bf8cbabcd40fe5ca4cfc87`  
		Last Modified: Thu, 15 Dec 2016 19:33:52 GMT  
		Size: 129.8 MB (129823619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb684ad7765258b3876f3ee6f96244f254b12c72f6bcfd97af3bd02f7912935`  
		Last Modified: Wed, 21 Dec 2016 19:59:54 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2807e33cf8416989005a833f0b1cf36ccb635a9c1df5b00dbc1862dfd01330c`  
		Last Modified: Thu, 05 Jan 2017 01:07:15 GMT  
		Size: 35.1 MB (35109684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7025772f9b601093d0f4d16474bab88bca8f180d1e3efcb47899fac48a62c86f`  
		Last Modified: Thu, 05 Jan 2017 01:07:02 GMT  
		Size: 612.9 KB (612883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73729083bf6c97a21d7c753cc31a23e9cb3142f61200ba7c33a32333973e1be7`  
		Last Modified: Thu, 05 Jan 2017 01:07:01 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3`

```console
$ docker pull ruby@sha256:8123b79fc40717658ef5a846d32cb99b3cc1866362e96feaf6de819594ef6d3c
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277941662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ba4a8ad7651c2af916b401d4e75edf5ac214d749a363f2118eb1b5dc51df087`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Dec 2016 03:30:44 GMT
ENV RUBY_MAJOR=2.3
# Fri, 16 Dec 2016 03:30:44 GMT
ENV RUBY_VERSION=2.3.3
# Wed, 04 Jan 2017 21:49:20 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Wed, 04 Jan 2017 21:49:21 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:51:45 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:51:46 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:51:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:51:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:51:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:51:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:51:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:51:49 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871436ab7225503e9e951a7acb7b1689a91a60d033bf8cbabcd40fe5ca4cfc87`  
		Last Modified: Thu, 15 Dec 2016 19:33:52 GMT  
		Size: 129.8 MB (129823619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb684ad7765258b3876f3ee6f96244f254b12c72f6bcfd97af3bd02f7912935`  
		Last Modified: Wed, 21 Dec 2016 19:59:54 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2807e33cf8416989005a833f0b1cf36ccb635a9c1df5b00dbc1862dfd01330c`  
		Last Modified: Thu, 05 Jan 2017 01:07:15 GMT  
		Size: 35.1 MB (35109684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7025772f9b601093d0f4d16474bab88bca8f180d1e3efcb47899fac48a62c86f`  
		Last Modified: Thu, 05 Jan 2017 01:07:02 GMT  
		Size: 612.9 KB (612883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73729083bf6c97a21d7c753cc31a23e9cb3142f61200ba7c33a32333973e1be7`  
		Last Modified: Thu, 05 Jan 2017 01:07:01 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3-slim`

```console
$ docker pull ruby@sha256:0baa9fb9db17fc410a84557d3df65f6df53754f1b0f15f829b8fba081d446851
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.2 MB (97229207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e02bf2b853474abc62aed2cdea541449cebaa5bfa186418cb7a8ff621b6333`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:29:35 GMT
ENV RUBY_MAJOR=2.3
# Wed, 14 Dec 2016 19:29:35 GMT
ENV RUBY_VERSION=2.3.3
# Wed, 04 Jan 2017 21:51:50 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Wed, 04 Jan 2017 21:51:50 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:54:28 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:54:28 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:54:30 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:54:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:54:30 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:54:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:54:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:54:32 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ee72dc76945b7634a84fff85f7687dbb9ffdc3fccb26e5f1eabe01d4bc7d85`  
		Last Modified: Thu, 05 Jan 2017 01:08:05 GMT  
		Size: 35.3 MB (35271776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85661d83925ac61586a93774b1113f913b44327e0f877a21b50cbf0c008cc8a5`  
		Last Modified: Thu, 05 Jan 2017 01:07:50 GMT  
		Size: 612.9 KB (612879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2873776b6a77bf0ae0015c36bdce0371e2ede54cb12a836a367c036211aa1fa`  
		Last Modified: Thu, 05 Jan 2017 01:07:49 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-slim`

```console
$ docker pull ruby@sha256:0baa9fb9db17fc410a84557d3df65f6df53754f1b0f15f829b8fba081d446851
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.2 MB (97229207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e02bf2b853474abc62aed2cdea541449cebaa5bfa186418cb7a8ff621b6333`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:29:35 GMT
ENV RUBY_MAJOR=2.3
# Wed, 14 Dec 2016 19:29:35 GMT
ENV RUBY_VERSION=2.3.3
# Wed, 04 Jan 2017 21:51:50 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Wed, 04 Jan 2017 21:51:50 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:54:28 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:54:28 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:54:30 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:54:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:54:30 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:54:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:54:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:54:32 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ee72dc76945b7634a84fff85f7687dbb9ffdc3fccb26e5f1eabe01d4bc7d85`  
		Last Modified: Thu, 05 Jan 2017 01:08:05 GMT  
		Size: 35.3 MB (35271776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85661d83925ac61586a93774b1113f913b44327e0f877a21b50cbf0c008cc8a5`  
		Last Modified: Thu, 05 Jan 2017 01:07:50 GMT  
		Size: 612.9 KB (612879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2873776b6a77bf0ae0015c36bdce0371e2ede54cb12a836a367c036211aa1fa`  
		Last Modified: Thu, 05 Jan 2017 01:07:49 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3-alpine`

```console
$ docker pull ruby@sha256:52ad78455b8e5f09036c840f059a8821e3ad0042cfaf39e5deee8854eaf80dab
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50164934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63ef7dd954da2f4c97c25c45813a9e80f3cf1314b393e1822f3cdf0e1262b63f`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:39:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 04 Jan 2017 21:54:32 GMT
ENV RUBY_MAJOR=2.3
# Wed, 04 Jan 2017 21:54:33 GMT
ENV RUBY_VERSION=2.3.3
# Wed, 04 Jan 2017 21:54:33 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Wed, 04 Jan 2017 21:54:33 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:56:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:56:58 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:56:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:56:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:56:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:57:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:57:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:57:01 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a61dd3738b21d0a5784f929fe8556e5f097b12cef085d1c27ba2a2a7bd3a64f`  
		Last Modified: Thu, 05 Jan 2017 01:02:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489626ea8c6ca1f3f06beda3d0fbc00b933a89fd39319403f4e161af7b8b3ec1`  
		Last Modified: Thu, 05 Jan 2017 01:08:58 GMT  
		Size: 47.6 MB (47649651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e26a0e2cb982c3022e5ba0c1f00dc718f89e9aab59a4d642beac10fcd5752`  
		Last Modified: Thu, 05 Jan 2017 01:08:40 GMT  
		Size: 612.9 KB (612871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61a4af1dc0d2a9531d3243c42297b212ae8d87b2d47f2a978fc2c88301fb34e`  
		Last Modified: Thu, 05 Jan 2017 01:08:40 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-alpine`

```console
$ docker pull ruby@sha256:52ad78455b8e5f09036c840f059a8821e3ad0042cfaf39e5deee8854eaf80dab
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50164934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63ef7dd954da2f4c97c25c45813a9e80f3cf1314b393e1822f3cdf0e1262b63f`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:39:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 04 Jan 2017 21:54:32 GMT
ENV RUBY_MAJOR=2.3
# Wed, 04 Jan 2017 21:54:33 GMT
ENV RUBY_VERSION=2.3.3
# Wed, 04 Jan 2017 21:54:33 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Wed, 04 Jan 2017 21:54:33 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:56:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:56:58 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:56:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:56:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:56:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:57:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:57:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:57:01 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a61dd3738b21d0a5784f929fe8556e5f097b12cef085d1c27ba2a2a7bd3a64f`  
		Last Modified: Thu, 05 Jan 2017 01:02:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489626ea8c6ca1f3f06beda3d0fbc00b933a89fd39319403f4e161af7b8b3ec1`  
		Last Modified: Thu, 05 Jan 2017 01:08:58 GMT  
		Size: 47.6 MB (47649651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e26a0e2cb982c3022e5ba0c1f00dc718f89e9aab59a4d642beac10fcd5752`  
		Last Modified: Thu, 05 Jan 2017 01:08:40 GMT  
		Size: 612.9 KB (612871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61a4af1dc0d2a9531d3243c42297b212ae8d87b2d47f2a978fc2c88301fb34e`  
		Last Modified: Thu, 05 Jan 2017 01:08:40 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3-onbuild`

```console
$ docker pull ruby@sha256:30dca888c8b079bfdbf20db0ec82b9473199d6e8a60fa6545e466035f56d905d
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277941974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19ec2b96249af4d92f1cee83f74c93456f3b9cbae4c672ad2e0b04ba15d7aba3`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Dec 2016 03:30:44 GMT
ENV RUBY_MAJOR=2.3
# Fri, 16 Dec 2016 03:30:44 GMT
ENV RUBY_VERSION=2.3.3
# Wed, 04 Jan 2017 21:49:20 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Wed, 04 Jan 2017 21:49:21 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:51:45 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:51:46 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:51:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:51:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:51:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:51:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:51:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:51:49 GMT
CMD ["irb"]
# Wed, 04 Jan 2017 21:57:02 GMT
RUN bundle config --global frozen 1
# Wed, 04 Jan 2017 21:57:03 GMT
RUN mkdir -p /usr/src/app
# Wed, 04 Jan 2017 21:57:04 GMT
WORKDIR /usr/src/app
# Wed, 04 Jan 2017 21:57:04 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 04 Jan 2017 21:57:04 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 04 Jan 2017 21:57:05 GMT
ONBUILD RUN bundle install
# Wed, 04 Jan 2017 21:57:05 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871436ab7225503e9e951a7acb7b1689a91a60d033bf8cbabcd40fe5ca4cfc87`  
		Last Modified: Thu, 15 Dec 2016 19:33:52 GMT  
		Size: 129.8 MB (129823619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb684ad7765258b3876f3ee6f96244f254b12c72f6bcfd97af3bd02f7912935`  
		Last Modified: Wed, 21 Dec 2016 19:59:54 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2807e33cf8416989005a833f0b1cf36ccb635a9c1df5b00dbc1862dfd01330c`  
		Last Modified: Thu, 05 Jan 2017 01:07:15 GMT  
		Size: 35.1 MB (35109684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7025772f9b601093d0f4d16474bab88bca8f180d1e3efcb47899fac48a62c86f`  
		Last Modified: Thu, 05 Jan 2017 01:07:02 GMT  
		Size: 612.9 KB (612883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73729083bf6c97a21d7c753cc31a23e9cb3142f61200ba7c33a32333973e1be7`  
		Last Modified: Thu, 05 Jan 2017 01:07:01 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd5c25407b9e37801744e881ed23ca9487c677946bc6044782cdd5669419df4`  
		Last Modified: Thu, 05 Jan 2017 01:09:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6defb3a556076ab6db72907c70121f45b1f730bcd53074c8c9beb4936d4008`  
		Last Modified: Thu, 05 Jan 2017 01:09:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-onbuild`

```console
$ docker pull ruby@sha256:30dca888c8b079bfdbf20db0ec82b9473199d6e8a60fa6545e466035f56d905d
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277941974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19ec2b96249af4d92f1cee83f74c93456f3b9cbae4c672ad2e0b04ba15d7aba3`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Dec 2016 03:30:44 GMT
ENV RUBY_MAJOR=2.3
# Fri, 16 Dec 2016 03:30:44 GMT
ENV RUBY_VERSION=2.3.3
# Wed, 04 Jan 2017 21:49:20 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Wed, 04 Jan 2017 21:49:21 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:51:45 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:51:46 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:51:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:51:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:51:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:51:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:51:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:51:49 GMT
CMD ["irb"]
# Wed, 04 Jan 2017 21:57:02 GMT
RUN bundle config --global frozen 1
# Wed, 04 Jan 2017 21:57:03 GMT
RUN mkdir -p /usr/src/app
# Wed, 04 Jan 2017 21:57:04 GMT
WORKDIR /usr/src/app
# Wed, 04 Jan 2017 21:57:04 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 04 Jan 2017 21:57:04 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 04 Jan 2017 21:57:05 GMT
ONBUILD RUN bundle install
# Wed, 04 Jan 2017 21:57:05 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871436ab7225503e9e951a7acb7b1689a91a60d033bf8cbabcd40fe5ca4cfc87`  
		Last Modified: Thu, 15 Dec 2016 19:33:52 GMT  
		Size: 129.8 MB (129823619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb684ad7765258b3876f3ee6f96244f254b12c72f6bcfd97af3bd02f7912935`  
		Last Modified: Wed, 21 Dec 2016 19:59:54 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2807e33cf8416989005a833f0b1cf36ccb635a9c1df5b00dbc1862dfd01330c`  
		Last Modified: Thu, 05 Jan 2017 01:07:15 GMT  
		Size: 35.1 MB (35109684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7025772f9b601093d0f4d16474bab88bca8f180d1e3efcb47899fac48a62c86f`  
		Last Modified: Thu, 05 Jan 2017 01:07:02 GMT  
		Size: 612.9 KB (612883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73729083bf6c97a21d7c753cc31a23e9cb3142f61200ba7c33a32333973e1be7`  
		Last Modified: Thu, 05 Jan 2017 01:07:01 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd5c25407b9e37801744e881ed23ca9487c677946bc6044782cdd5669419df4`  
		Last Modified: Thu, 05 Jan 2017 01:09:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6defb3a556076ab6db72907c70121f45b1f730bcd53074c8c9beb4936d4008`  
		Last Modified: Thu, 05 Jan 2017 01:09:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.0`

```console
$ docker pull ruby@sha256:eb66dcc3c72d0f34ab57d6e8a8dfef33e5ece29878dc705be6d773129ef961df
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263632103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971665584b747848ba5e404bbf26436bf684f979ffd1b5b9685422b1b2177ed0`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Dec 2016 22:19:48 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Dec 2016 22:19:48 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 04 Jan 2017 21:57:05 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Wed, 04 Jan 2017 21:57:06 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:59:44 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:59:44 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:59:46 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:59:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:59:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:59:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:59:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:59:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871436ab7225503e9e951a7acb7b1689a91a60d033bf8cbabcd40fe5ca4cfc87`  
		Last Modified: Thu, 15 Dec 2016 19:33:52 GMT  
		Size: 129.8 MB (129823619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb684ad7765258b3876f3ee6f96244f254b12c72f6bcfd97af3bd02f7912935`  
		Last Modified: Wed, 21 Dec 2016 19:59:54 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c35d0208dfc69c9df71741186bf21f57a5f9758685cf05009322f9529ae1e3`  
		Last Modified: Thu, 05 Jan 2017 01:10:15 GMT  
		Size: 20.8 MB (20800125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9912ffcbd57f6a8a6b526abebb47e3704f12d58d8f1cd088542a601cd002faba`  
		Last Modified: Thu, 05 Jan 2017 01:10:04 GMT  
		Size: 612.9 KB (612885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad28114ada0941ef20078746a69c7408f370ee38049b0717a33eeae3360c8d6b`  
		Last Modified: Thu, 05 Jan 2017 01:10:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4`

```console
$ docker pull ruby@sha256:eb66dcc3c72d0f34ab57d6e8a8dfef33e5ece29878dc705be6d773129ef961df
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263632103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971665584b747848ba5e404bbf26436bf684f979ffd1b5b9685422b1b2177ed0`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Dec 2016 22:19:48 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Dec 2016 22:19:48 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 04 Jan 2017 21:57:05 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Wed, 04 Jan 2017 21:57:06 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:59:44 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:59:44 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:59:46 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:59:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:59:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:59:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:59:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:59:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871436ab7225503e9e951a7acb7b1689a91a60d033bf8cbabcd40fe5ca4cfc87`  
		Last Modified: Thu, 15 Dec 2016 19:33:52 GMT  
		Size: 129.8 MB (129823619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb684ad7765258b3876f3ee6f96244f254b12c72f6bcfd97af3bd02f7912935`  
		Last Modified: Wed, 21 Dec 2016 19:59:54 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c35d0208dfc69c9df71741186bf21f57a5f9758685cf05009322f9529ae1e3`  
		Last Modified: Thu, 05 Jan 2017 01:10:15 GMT  
		Size: 20.8 MB (20800125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9912ffcbd57f6a8a6b526abebb47e3704f12d58d8f1cd088542a601cd002faba`  
		Last Modified: Thu, 05 Jan 2017 01:10:04 GMT  
		Size: 612.9 KB (612885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad28114ada0941ef20078746a69c7408f370ee38049b0717a33eeae3360c8d6b`  
		Last Modified: Thu, 05 Jan 2017 01:10:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2`

```console
$ docker pull ruby@sha256:eb66dcc3c72d0f34ab57d6e8a8dfef33e5ece29878dc705be6d773129ef961df
```

-	Platforms:
	-	linux; amd64

### `ruby:2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263632103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971665584b747848ba5e404bbf26436bf684f979ffd1b5b9685422b1b2177ed0`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Dec 2016 22:19:48 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Dec 2016 22:19:48 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 04 Jan 2017 21:57:05 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Wed, 04 Jan 2017 21:57:06 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:59:44 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:59:44 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:59:46 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:59:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:59:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:59:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:59:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:59:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871436ab7225503e9e951a7acb7b1689a91a60d033bf8cbabcd40fe5ca4cfc87`  
		Last Modified: Thu, 15 Dec 2016 19:33:52 GMT  
		Size: 129.8 MB (129823619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb684ad7765258b3876f3ee6f96244f254b12c72f6bcfd97af3bd02f7912935`  
		Last Modified: Wed, 21 Dec 2016 19:59:54 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c35d0208dfc69c9df71741186bf21f57a5f9758685cf05009322f9529ae1e3`  
		Last Modified: Thu, 05 Jan 2017 01:10:15 GMT  
		Size: 20.8 MB (20800125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9912ffcbd57f6a8a6b526abebb47e3704f12d58d8f1cd088542a601cd002faba`  
		Last Modified: Thu, 05 Jan 2017 01:10:04 GMT  
		Size: 612.9 KB (612885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad28114ada0941ef20078746a69c7408f370ee38049b0717a33eeae3360c8d6b`  
		Last Modified: Thu, 05 Jan 2017 01:10:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:latest`

```console
$ docker pull ruby@sha256:eb66dcc3c72d0f34ab57d6e8a8dfef33e5ece29878dc705be6d773129ef961df
```

-	Platforms:
	-	linux; amd64

### `ruby:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263632103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971665584b747848ba5e404bbf26436bf684f979ffd1b5b9685422b1b2177ed0`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Dec 2016 22:19:48 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Dec 2016 22:19:48 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 04 Jan 2017 21:57:05 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Wed, 04 Jan 2017 21:57:06 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:59:44 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:59:44 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:59:46 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:59:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:59:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:59:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:59:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:59:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871436ab7225503e9e951a7acb7b1689a91a60d033bf8cbabcd40fe5ca4cfc87`  
		Last Modified: Thu, 15 Dec 2016 19:33:52 GMT  
		Size: 129.8 MB (129823619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb684ad7765258b3876f3ee6f96244f254b12c72f6bcfd97af3bd02f7912935`  
		Last Modified: Wed, 21 Dec 2016 19:59:54 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c35d0208dfc69c9df71741186bf21f57a5f9758685cf05009322f9529ae1e3`  
		Last Modified: Thu, 05 Jan 2017 01:10:15 GMT  
		Size: 20.8 MB (20800125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9912ffcbd57f6a8a6b526abebb47e3704f12d58d8f1cd088542a601cd002faba`  
		Last Modified: Thu, 05 Jan 2017 01:10:04 GMT  
		Size: 612.9 KB (612885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad28114ada0941ef20078746a69c7408f370ee38049b0717a33eeae3360c8d6b`  
		Last Modified: Thu, 05 Jan 2017 01:10:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.0-slim`

```console
$ docker pull ruby@sha256:44026b18cf9296c109947eaaeef3e744a480b7dfdaf80287d6452d871bd0cbbb
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.0-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82920680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540be904efd6dd8959f35a5a1a0df54bee78f3a7c8b54e4a0eb3b46178e31d4f`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Dec 2016 22:22:43 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Dec 2016 22:22:43 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 04 Jan 2017 21:59:48 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Wed, 04 Jan 2017 21:59:49 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 22:02:40 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 22:02:40 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 22:02:41 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 22:02:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 22:02:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 22:02:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 22:02:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 22:02:43 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76a28922800b98a5f904aa8b85ad78302f80496c0cc43f375d275e0344f3ec2`  
		Last Modified: Thu, 05 Jan 2017 01:11:26 GMT  
		Size: 21.0 MB (20963247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4e256bff2d4a5ae58dc1b647ab0ae1f0caaa916876e1dfe05650b41d548013`  
		Last Modified: Thu, 05 Jan 2017 01:11:18 GMT  
		Size: 612.9 KB (612880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b60e133af03c7965cdeab7dc98761392abcd988837917769b73e565d6e5280`  
		Last Modified: Thu, 05 Jan 2017 01:11:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-slim`

```console
$ docker pull ruby@sha256:44026b18cf9296c109947eaaeef3e744a480b7dfdaf80287d6452d871bd0cbbb
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82920680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540be904efd6dd8959f35a5a1a0df54bee78f3a7c8b54e4a0eb3b46178e31d4f`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Dec 2016 22:22:43 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Dec 2016 22:22:43 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 04 Jan 2017 21:59:48 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Wed, 04 Jan 2017 21:59:49 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 22:02:40 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 22:02:40 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 22:02:41 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 22:02:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 22:02:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 22:02:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 22:02:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 22:02:43 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76a28922800b98a5f904aa8b85ad78302f80496c0cc43f375d275e0344f3ec2`  
		Last Modified: Thu, 05 Jan 2017 01:11:26 GMT  
		Size: 21.0 MB (20963247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4e256bff2d4a5ae58dc1b647ab0ae1f0caaa916876e1dfe05650b41d548013`  
		Last Modified: Thu, 05 Jan 2017 01:11:18 GMT  
		Size: 612.9 KB (612880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b60e133af03c7965cdeab7dc98761392abcd988837917769b73e565d6e5280`  
		Last Modified: Thu, 05 Jan 2017 01:11:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-slim`

```console
$ docker pull ruby@sha256:44026b18cf9296c109947eaaeef3e744a480b7dfdaf80287d6452d871bd0cbbb
```

-	Platforms:
	-	linux; amd64

### `ruby:2-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82920680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540be904efd6dd8959f35a5a1a0df54bee78f3a7c8b54e4a0eb3b46178e31d4f`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Dec 2016 22:22:43 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Dec 2016 22:22:43 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 04 Jan 2017 21:59:48 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Wed, 04 Jan 2017 21:59:49 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 22:02:40 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 22:02:40 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 22:02:41 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 22:02:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 22:02:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 22:02:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 22:02:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 22:02:43 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76a28922800b98a5f904aa8b85ad78302f80496c0cc43f375d275e0344f3ec2`  
		Last Modified: Thu, 05 Jan 2017 01:11:26 GMT  
		Size: 21.0 MB (20963247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4e256bff2d4a5ae58dc1b647ab0ae1f0caaa916876e1dfe05650b41d548013`  
		Last Modified: Thu, 05 Jan 2017 01:11:18 GMT  
		Size: 612.9 KB (612880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b60e133af03c7965cdeab7dc98761392abcd988837917769b73e565d6e5280`  
		Last Modified: Thu, 05 Jan 2017 01:11:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:slim`

```console
$ docker pull ruby@sha256:44026b18cf9296c109947eaaeef3e744a480b7dfdaf80287d6452d871bd0cbbb
```

-	Platforms:
	-	linux; amd64

### `ruby:slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82920680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540be904efd6dd8959f35a5a1a0df54bee78f3a7c8b54e4a0eb3b46178e31d4f`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Dec 2016 22:22:43 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Dec 2016 22:22:43 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 04 Jan 2017 21:59:48 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Wed, 04 Jan 2017 21:59:49 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 22:02:40 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 22:02:40 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 22:02:41 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 22:02:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 22:02:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 22:02:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 22:02:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 22:02:43 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76a28922800b98a5f904aa8b85ad78302f80496c0cc43f375d275e0344f3ec2`  
		Last Modified: Thu, 05 Jan 2017 01:11:26 GMT  
		Size: 21.0 MB (20963247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4e256bff2d4a5ae58dc1b647ab0ae1f0caaa916876e1dfe05650b41d548013`  
		Last Modified: Thu, 05 Jan 2017 01:11:18 GMT  
		Size: 612.9 KB (612880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b60e133af03c7965cdeab7dc98761392abcd988837917769b73e565d6e5280`  
		Last Modified: Thu, 05 Jan 2017 01:11:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.0-alpine`

```console
$ docker pull ruby@sha256:d3909072338634333102da1098665df22030f0f5f7e4854e956df33d39855c06
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.0-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32354320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4962d9cd701ff00643e315258b36b77209ef5d71ee52d9bcd05dab0599c7aa6f`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:39:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 04 Jan 2017 22:02:44 GMT
ENV RUBY_MAJOR=2.4
# Wed, 04 Jan 2017 22:02:44 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 04 Jan 2017 22:02:44 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Wed, 04 Jan 2017 22:02:45 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 22:05:33 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 22:05:34 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 22:05:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 22:05:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 22:05:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 22:05:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 22:05:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 22:05:37 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a61dd3738b21d0a5784f929fe8556e5f097b12cef085d1c27ba2a2a7bd3a64f`  
		Last Modified: Thu, 05 Jan 2017 01:02:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196cbc39e8f8036c11514c9a2f1e26972bb89a85a3576a8bc194a250aa6b55e7`  
		Last Modified: Thu, 05 Jan 2017 01:12:35 GMT  
		Size: 29.8 MB (29839029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49dd64704e4d7859eb8fa7652324e0197540fdb04d76b3f76c7533646a5cdef5`  
		Last Modified: Thu, 05 Jan 2017 01:12:26 GMT  
		Size: 612.9 KB (612878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dbe0ce98d2fe2518d757031f6a67f6b4d6767a1735d7175aa95b3231dbf3e28`  
		Last Modified: Thu, 05 Jan 2017 01:12:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-alpine`

```console
$ docker pull ruby@sha256:d3909072338634333102da1098665df22030f0f5f7e4854e956df33d39855c06
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32354320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4962d9cd701ff00643e315258b36b77209ef5d71ee52d9bcd05dab0599c7aa6f`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:39:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 04 Jan 2017 22:02:44 GMT
ENV RUBY_MAJOR=2.4
# Wed, 04 Jan 2017 22:02:44 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 04 Jan 2017 22:02:44 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Wed, 04 Jan 2017 22:02:45 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 22:05:33 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 22:05:34 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 22:05:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 22:05:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 22:05:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 22:05:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 22:05:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 22:05:37 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a61dd3738b21d0a5784f929fe8556e5f097b12cef085d1c27ba2a2a7bd3a64f`  
		Last Modified: Thu, 05 Jan 2017 01:02:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196cbc39e8f8036c11514c9a2f1e26972bb89a85a3576a8bc194a250aa6b55e7`  
		Last Modified: Thu, 05 Jan 2017 01:12:35 GMT  
		Size: 29.8 MB (29839029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49dd64704e4d7859eb8fa7652324e0197540fdb04d76b3f76c7533646a5cdef5`  
		Last Modified: Thu, 05 Jan 2017 01:12:26 GMT  
		Size: 612.9 KB (612878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dbe0ce98d2fe2518d757031f6a67f6b4d6767a1735d7175aa95b3231dbf3e28`  
		Last Modified: Thu, 05 Jan 2017 01:12:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-alpine`

```console
$ docker pull ruby@sha256:d3909072338634333102da1098665df22030f0f5f7e4854e956df33d39855c06
```

-	Platforms:
	-	linux; amd64

### `ruby:2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32354320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4962d9cd701ff00643e315258b36b77209ef5d71ee52d9bcd05dab0599c7aa6f`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:39:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 04 Jan 2017 22:02:44 GMT
ENV RUBY_MAJOR=2.4
# Wed, 04 Jan 2017 22:02:44 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 04 Jan 2017 22:02:44 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Wed, 04 Jan 2017 22:02:45 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 22:05:33 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 22:05:34 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 22:05:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 22:05:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 22:05:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 22:05:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 22:05:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 22:05:37 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a61dd3738b21d0a5784f929fe8556e5f097b12cef085d1c27ba2a2a7bd3a64f`  
		Last Modified: Thu, 05 Jan 2017 01:02:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196cbc39e8f8036c11514c9a2f1e26972bb89a85a3576a8bc194a250aa6b55e7`  
		Last Modified: Thu, 05 Jan 2017 01:12:35 GMT  
		Size: 29.8 MB (29839029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49dd64704e4d7859eb8fa7652324e0197540fdb04d76b3f76c7533646a5cdef5`  
		Last Modified: Thu, 05 Jan 2017 01:12:26 GMT  
		Size: 612.9 KB (612878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dbe0ce98d2fe2518d757031f6a67f6b4d6767a1735d7175aa95b3231dbf3e28`  
		Last Modified: Thu, 05 Jan 2017 01:12:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:alpine`

```console
$ docker pull ruby@sha256:d3909072338634333102da1098665df22030f0f5f7e4854e956df33d39855c06
```

-	Platforms:
	-	linux; amd64

### `ruby:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32354320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4962d9cd701ff00643e315258b36b77209ef5d71ee52d9bcd05dab0599c7aa6f`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:39:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 04 Jan 2017 22:02:44 GMT
ENV RUBY_MAJOR=2.4
# Wed, 04 Jan 2017 22:02:44 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 04 Jan 2017 22:02:44 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Wed, 04 Jan 2017 22:02:45 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 22:05:33 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 22:05:34 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 22:05:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 22:05:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 22:05:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 22:05:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 22:05:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 22:05:37 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a61dd3738b21d0a5784f929fe8556e5f097b12cef085d1c27ba2a2a7bd3a64f`  
		Last Modified: Thu, 05 Jan 2017 01:02:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196cbc39e8f8036c11514c9a2f1e26972bb89a85a3576a8bc194a250aa6b55e7`  
		Last Modified: Thu, 05 Jan 2017 01:12:35 GMT  
		Size: 29.8 MB (29839029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49dd64704e4d7859eb8fa7652324e0197540fdb04d76b3f76c7533646a5cdef5`  
		Last Modified: Thu, 05 Jan 2017 01:12:26 GMT  
		Size: 612.9 KB (612878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dbe0ce98d2fe2518d757031f6a67f6b4d6767a1735d7175aa95b3231dbf3e28`  
		Last Modified: Thu, 05 Jan 2017 01:12:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.0-onbuild`

```console
$ docker pull ruby@sha256:5cf929699b7979cb31645d15b8ea7bd9017391d3260e08e0fbc3c2821cd27007
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263632416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6e2296eb0ec78a4c9cb7b124066d0706dd8c5e6d7dd433faeee12b16d1a9d75`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Dec 2016 22:19:48 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Dec 2016 22:19:48 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 04 Jan 2017 21:57:05 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Wed, 04 Jan 2017 21:57:06 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:59:44 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:59:44 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:59:46 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:59:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:59:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:59:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:59:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:59:48 GMT
CMD ["irb"]
# Wed, 04 Jan 2017 22:05:39 GMT
RUN bundle config --global frozen 1
# Wed, 04 Jan 2017 22:05:40 GMT
RUN mkdir -p /usr/src/app
# Wed, 04 Jan 2017 22:05:40 GMT
WORKDIR /usr/src/app
# Wed, 04 Jan 2017 22:05:40 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 04 Jan 2017 22:05:41 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 04 Jan 2017 22:05:41 GMT
ONBUILD RUN bundle install
# Wed, 04 Jan 2017 22:05:41 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871436ab7225503e9e951a7acb7b1689a91a60d033bf8cbabcd40fe5ca4cfc87`  
		Last Modified: Thu, 15 Dec 2016 19:33:52 GMT  
		Size: 129.8 MB (129823619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb684ad7765258b3876f3ee6f96244f254b12c72f6bcfd97af3bd02f7912935`  
		Last Modified: Wed, 21 Dec 2016 19:59:54 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c35d0208dfc69c9df71741186bf21f57a5f9758685cf05009322f9529ae1e3`  
		Last Modified: Thu, 05 Jan 2017 01:10:15 GMT  
		Size: 20.8 MB (20800125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9912ffcbd57f6a8a6b526abebb47e3704f12d58d8f1cd088542a601cd002faba`  
		Last Modified: Thu, 05 Jan 2017 01:10:04 GMT  
		Size: 612.9 KB (612885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad28114ada0941ef20078746a69c7408f370ee38049b0717a33eeae3360c8d6b`  
		Last Modified: Thu, 05 Jan 2017 01:10:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927444e3e2bc57ee34aec38eb0187ab754eeee0af89ecf6becff4f862aa1020a`  
		Last Modified: Thu, 05 Jan 2017 01:13:33 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5a03438c9716034f813fb7b390c5920bded48758c9a3bfe545c7171935bd05`  
		Last Modified: Thu, 05 Jan 2017 01:13:33 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-onbuild`

```console
$ docker pull ruby@sha256:5cf929699b7979cb31645d15b8ea7bd9017391d3260e08e0fbc3c2821cd27007
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263632416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6e2296eb0ec78a4c9cb7b124066d0706dd8c5e6d7dd433faeee12b16d1a9d75`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Dec 2016 22:19:48 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Dec 2016 22:19:48 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 04 Jan 2017 21:57:05 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Wed, 04 Jan 2017 21:57:06 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:59:44 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:59:44 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:59:46 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:59:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:59:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:59:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:59:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:59:48 GMT
CMD ["irb"]
# Wed, 04 Jan 2017 22:05:39 GMT
RUN bundle config --global frozen 1
# Wed, 04 Jan 2017 22:05:40 GMT
RUN mkdir -p /usr/src/app
# Wed, 04 Jan 2017 22:05:40 GMT
WORKDIR /usr/src/app
# Wed, 04 Jan 2017 22:05:40 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 04 Jan 2017 22:05:41 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 04 Jan 2017 22:05:41 GMT
ONBUILD RUN bundle install
# Wed, 04 Jan 2017 22:05:41 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871436ab7225503e9e951a7acb7b1689a91a60d033bf8cbabcd40fe5ca4cfc87`  
		Last Modified: Thu, 15 Dec 2016 19:33:52 GMT  
		Size: 129.8 MB (129823619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb684ad7765258b3876f3ee6f96244f254b12c72f6bcfd97af3bd02f7912935`  
		Last Modified: Wed, 21 Dec 2016 19:59:54 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c35d0208dfc69c9df71741186bf21f57a5f9758685cf05009322f9529ae1e3`  
		Last Modified: Thu, 05 Jan 2017 01:10:15 GMT  
		Size: 20.8 MB (20800125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9912ffcbd57f6a8a6b526abebb47e3704f12d58d8f1cd088542a601cd002faba`  
		Last Modified: Thu, 05 Jan 2017 01:10:04 GMT  
		Size: 612.9 KB (612885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad28114ada0941ef20078746a69c7408f370ee38049b0717a33eeae3360c8d6b`  
		Last Modified: Thu, 05 Jan 2017 01:10:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927444e3e2bc57ee34aec38eb0187ab754eeee0af89ecf6becff4f862aa1020a`  
		Last Modified: Thu, 05 Jan 2017 01:13:33 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5a03438c9716034f813fb7b390c5920bded48758c9a3bfe545c7171935bd05`  
		Last Modified: Thu, 05 Jan 2017 01:13:33 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-onbuild`

```console
$ docker pull ruby@sha256:5cf929699b7979cb31645d15b8ea7bd9017391d3260e08e0fbc3c2821cd27007
```

-	Platforms:
	-	linux; amd64

### `ruby:2-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263632416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6e2296eb0ec78a4c9cb7b124066d0706dd8c5e6d7dd433faeee12b16d1a9d75`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Dec 2016 22:19:48 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Dec 2016 22:19:48 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 04 Jan 2017 21:57:05 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Wed, 04 Jan 2017 21:57:06 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:59:44 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:59:44 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:59:46 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:59:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:59:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:59:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:59:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:59:48 GMT
CMD ["irb"]
# Wed, 04 Jan 2017 22:05:39 GMT
RUN bundle config --global frozen 1
# Wed, 04 Jan 2017 22:05:40 GMT
RUN mkdir -p /usr/src/app
# Wed, 04 Jan 2017 22:05:40 GMT
WORKDIR /usr/src/app
# Wed, 04 Jan 2017 22:05:40 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 04 Jan 2017 22:05:41 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 04 Jan 2017 22:05:41 GMT
ONBUILD RUN bundle install
# Wed, 04 Jan 2017 22:05:41 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871436ab7225503e9e951a7acb7b1689a91a60d033bf8cbabcd40fe5ca4cfc87`  
		Last Modified: Thu, 15 Dec 2016 19:33:52 GMT  
		Size: 129.8 MB (129823619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb684ad7765258b3876f3ee6f96244f254b12c72f6bcfd97af3bd02f7912935`  
		Last Modified: Wed, 21 Dec 2016 19:59:54 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c35d0208dfc69c9df71741186bf21f57a5f9758685cf05009322f9529ae1e3`  
		Last Modified: Thu, 05 Jan 2017 01:10:15 GMT  
		Size: 20.8 MB (20800125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9912ffcbd57f6a8a6b526abebb47e3704f12d58d8f1cd088542a601cd002faba`  
		Last Modified: Thu, 05 Jan 2017 01:10:04 GMT  
		Size: 612.9 KB (612885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad28114ada0941ef20078746a69c7408f370ee38049b0717a33eeae3360c8d6b`  
		Last Modified: Thu, 05 Jan 2017 01:10:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927444e3e2bc57ee34aec38eb0187ab754eeee0af89ecf6becff4f862aa1020a`  
		Last Modified: Thu, 05 Jan 2017 01:13:33 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5a03438c9716034f813fb7b390c5920bded48758c9a3bfe545c7171935bd05`  
		Last Modified: Thu, 05 Jan 2017 01:13:33 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:onbuild`

```console
$ docker pull ruby@sha256:5cf929699b7979cb31645d15b8ea7bd9017391d3260e08e0fbc3c2821cd27007
```

-	Platforms:
	-	linux; amd64

### `ruby:onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263632416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6e2296eb0ec78a4c9cb7b124066d0706dd8c5e6d7dd433faeee12b16d1a9d75`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Dec 2016 22:19:48 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Dec 2016 22:19:48 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 04 Jan 2017 21:57:05 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Wed, 04 Jan 2017 21:57:06 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:59:44 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:59:44 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:59:46 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:59:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:59:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:59:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:59:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:59:48 GMT
CMD ["irb"]
# Wed, 04 Jan 2017 22:05:39 GMT
RUN bundle config --global frozen 1
# Wed, 04 Jan 2017 22:05:40 GMT
RUN mkdir -p /usr/src/app
# Wed, 04 Jan 2017 22:05:40 GMT
WORKDIR /usr/src/app
# Wed, 04 Jan 2017 22:05:40 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 04 Jan 2017 22:05:41 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 04 Jan 2017 22:05:41 GMT
ONBUILD RUN bundle install
# Wed, 04 Jan 2017 22:05:41 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871436ab7225503e9e951a7acb7b1689a91a60d033bf8cbabcd40fe5ca4cfc87`  
		Last Modified: Thu, 15 Dec 2016 19:33:52 GMT  
		Size: 129.8 MB (129823619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb684ad7765258b3876f3ee6f96244f254b12c72f6bcfd97af3bd02f7912935`  
		Last Modified: Wed, 21 Dec 2016 19:59:54 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c35d0208dfc69c9df71741186bf21f57a5f9758685cf05009322f9529ae1e3`  
		Last Modified: Thu, 05 Jan 2017 01:10:15 GMT  
		Size: 20.8 MB (20800125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9912ffcbd57f6a8a6b526abebb47e3704f12d58d8f1cd088542a601cd002faba`  
		Last Modified: Thu, 05 Jan 2017 01:10:04 GMT  
		Size: 612.9 KB (612885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad28114ada0941ef20078746a69c7408f370ee38049b0717a33eeae3360c8d6b`  
		Last Modified: Thu, 05 Jan 2017 01:10:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927444e3e2bc57ee34aec38eb0187ab754eeee0af89ecf6becff4f862aa1020a`  
		Last Modified: Thu, 05 Jan 2017 01:13:33 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5a03438c9716034f813fb7b390c5920bded48758c9a3bfe545c7171935bd05`  
		Last Modified: Thu, 05 Jan 2017 01:13:33 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
