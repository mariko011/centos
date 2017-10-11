## `ruby:slim-stretch`

```console
$ docker pull ruby@sha256:291092fbb1110986345d45cff05a6462ee5b73afbc4000c941b85714fd68326e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ruby:slim-stretch` - linux; amd64

```console
$ docker pull ruby@sha256:85c01700780418eeac2fcbe4207a7841f1ae74bfa3b729c019854242c4fe966e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82623831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb4e27263e3c8b7a0e541bd21dd56433d980db212adb37dc398ad1a7a6d3861`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:12:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:12:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:12:13 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 03:12:14 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 03:12:14 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 10 Oct 2017 19:48:33 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 19:51:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 19:51:34 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 19:51:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 19:51:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 19:51:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 19:51:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 19:51:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 19:51:36 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188a770a8af1f50198d1a577883cba1f582c1178223ad76a8b93f1f8d73c4a79`  
		Last Modified: Tue, 10 Oct 2017 03:59:07 GMT  
		Size: 12.8 MB (12772148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca51f515180af0f5edb4628ae94b374ee2bf3ee4bbfddf1a8ade370c03cf78f`  
		Last Modified: Tue, 10 Oct 2017 03:58:57 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:877816e0dd59ff9ac2849100c03ff32287a0f98f18bdfeb2ebc9711a0047a6b3`  
		Last Modified: Tue, 10 Oct 2017 20:38:59 GMT  
		Size: 24.0 MB (24045164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f77a63e1c92bb607451500cadd0156a73b95d119f577e3bb13d602f186b8259`  
		Last Modified: Tue, 10 Oct 2017 20:38:53 GMT  
		Size: 677.1 KB (677060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6df1ce9afc381fee65edfed742a6651990c59d6622ea860aaa4db7eae89e51`  
		Last Modified: Tue, 10 Oct 2017 20:38:53 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim-stretch` - linux; arm variant v5

```console
$ docker pull ruby@sha256:7294517ba2fb3c571394c7acfb79039e9e15b954f180fc78e5586746c1e460a6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79437566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1637bdf92ed1838e40c540377e881174fe5e2e2f50d10883f51ab1f9497f0fe`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:31:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:31:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:31:13 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 00:31:13 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 00:31:13 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 11 Oct 2017 01:26:57 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 01:32:37 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 01:32:38 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 01:32:39 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 01:32:39 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 01:32:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 01:32:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 01:32:40 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 01:32:41 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c416c81ba4dff87a2abaab346993bdf7c88b658e2b24bcaf567a01d8bb5f24`  
		Last Modified: Tue, 10 Oct 2017 01:12:44 GMT  
		Size: 11.3 MB (11337171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda218d8320c952835d12b60c05b0a2a04808648848698c2458108f65d88a019`  
		Last Modified: Tue, 10 Oct 2017 01:12:40 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ca89f5d4080a6fbd48de4324fe3853e7e240a2674378e670ba97e1280c18c`  
		Last Modified: Wed, 11 Oct 2017 02:04:06 GMT  
		Size: 23.6 MB (23606979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7420db9200b6fd0b5ebd1b143f7189ad780c403cc5baaa99bedc42245e431794`  
		Last Modified: Wed, 11 Oct 2017 02:03:59 GMT  
		Size: 677.1 KB (677105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73166eadcce273e109036433519f61cb885e745ec81319de3df3729cc9e88a60`  
		Last Modified: Wed, 11 Oct 2017 02:03:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim-stretch` - linux; arm variant v7

```console
$ docker pull ruby@sha256:7d5077032dc5cf30ca93603da4ff87089a9690a5ace2c1962e01cc050fe9122e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76792414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42c47495876a5e8f6a2511a4961f32d05ceae5292468c20c466da8a6d16c76b7`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:22:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:22:18 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:22:18 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 00:22:19 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 00:22:19 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 11 Oct 2017 01:16:41 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 01:21:40 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 01:21:40 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 01:21:42 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 01:21:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 01:21:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 01:21:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 01:21:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 01:21:44 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35a2c00091285c2fc2ebb932b11b45eb5b4bb3ef250f293ad54ba7094577bc4`  
		Last Modified: Tue, 10 Oct 2017 01:01:12 GMT  
		Size: 10.9 MB (10857369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb7bf878e9c07e0b88216d82ef5f9b41183e1ea0d9051ecb47d6ff5258aca7c`  
		Last Modified: Tue, 10 Oct 2017 01:01:08 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928dc6b0bf40d97e133501fda3dfc7876e703b7c26842c3de2d5cbfa40e57ec1`  
		Last Modified: Wed, 11 Oct 2017 01:51:05 GMT  
		Size: 23.4 MB (23415595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784e006fc6955a032bc93b4552d3008e611a64b6cc9a01c503de084914d53428`  
		Last Modified: Wed, 11 Oct 2017 01:50:59 GMT  
		Size: 677.1 KB (677102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5bf6d9a5010fbe9a5e0b58ebb3fc64ad76e28eeb5ecfd30f3db643cb6d7c53`  
		Last Modified: Wed, 11 Oct 2017 01:50:58 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim-stretch` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:92fd7ca7484b6f479403742e677bfe3d7790092d6027b51309c5f2d56c82c3bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.0 MB (78987925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4928537aac9413f719da227c4f51f93ee1b1d82963fb4516e2a550a1ecdb8da`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 07:21:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:21:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 07:21:21 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 07:21:21 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 07:21:22 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 10 Oct 2017 20:47:54 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 20:57:23 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 20:57:24 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 20:57:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 20:57:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 20:57:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 20:57:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 20:57:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 20:57:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4518c9184ff3fe2631b80187dc1942b528822ee88624b0e0232ea19772de94`  
		Last Modified: Tue, 10 Oct 2017 08:38:44 GMT  
		Size: 11.6 MB (11580911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1815da5c8d1101ac2ff3e23fd627a2c38f22de9cd2096e71e4abab845933af`  
		Last Modified: Tue, 10 Oct 2017 08:38:27 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d365c82e688fef63a3eebc47b4794b4449e811324aa6c5091648d8732a5883e`  
		Last Modified: Tue, 10 Oct 2017 21:46:54 GMT  
		Size: 23.8 MB (23817851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e2bcf59e99a9cc8adc3d5cb4ef25c93f62ca4946e6b60268e90ebad4637d13`  
		Last Modified: Tue, 10 Oct 2017 21:46:47 GMT  
		Size: 677.1 KB (677068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c2564c416df8be0e90c9f20561b6c0cfc512d05f6e61a35284ffb9ec69aa09`  
		Last Modified: Tue, 10 Oct 2017 21:46:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim-stretch` - linux; 386

```console
$ docker pull ruby@sha256:98002492fceb62dd25f4e2a066daebe69e2b19bdb52f4470d64b6901e1e6a668
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.4 MB (86372089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3c84b3d2daf4cabc0473ad9e7cf3899898d99bb7e799490bea965c51f286053`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:36:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:37:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 02:37:00 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 02:37:00 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 02:37:00 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 11 Oct 2017 02:39:58 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 02:43:42 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 02:43:42 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 02:43:43 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 02:43:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 02:43:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 02:43:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 02:43:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 02:43:44 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259e90340c1a040510f4401ab1c6a213cfcd826273c165e394fe7113642cbd35`  
		Last Modified: Tue, 10 Oct 2017 03:23:04 GMT  
		Size: 16.2 MB (16212649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e912a3df84503cbab193a207a5373ba7f24e9196bf2e5a4cfd745de7f6075768`  
		Last Modified: Tue, 10 Oct 2017 03:22:59 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8e1bf3bc958656161bb5206391df26803d5a0dd680be9c83e9b21aa099d020`  
		Last Modified: Wed, 11 Oct 2017 03:16:10 GMT  
		Size: 23.6 MB (23648328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05f0006a12a9be78e603ed8a177750e29814b94e04acccbdb99038a5a6ec5d6`  
		Last Modified: Wed, 11 Oct 2017 03:16:03 GMT  
		Size: 677.1 KB (677065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de97ea816340be2e38aab8db740f190241439fc5f40ee4a0941245d10e1e408e`  
		Last Modified: Wed, 11 Oct 2017 03:16:03 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim-stretch` - linux; ppc64le

```console
$ docker pull ruby@sha256:1f39f74b5eba235ed379908a7b76e353263f18d4763c8bf8fc604a86514117f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82504695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85f440a7229e8af5d5da119c932ccecf66a71779b557853f9905cef9831af428`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:36:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:36:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 05:36:27 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 05:36:29 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 05:36:32 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 11 Oct 2017 00:23:21 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 00:39:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 00:39:37 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 00:39:43 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 00:39:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 00:39:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 00:39:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 00:39:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 00:40:01 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6182431fbc15ee9373459d33bed4e9575bf312d7e1391eeb35d2d4a222d76ab6`  
		Last Modified: Tue, 10 Oct 2017 06:48:33 GMT  
		Size: 12.2 MB (12166035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3140d2a860b9451f510be289090b5ddab2c4ab63a919d3af698534b997d9574f`  
		Last Modified: Tue, 10 Oct 2017 06:48:28 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7a54c75c3e665efa9cd35275b2383518ab65c0614854960801b936e07d6d74`  
		Last Modified: Wed, 11 Oct 2017 01:45:14 GMT  
		Size: 24.3 MB (24282806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa780f0efcaf8f332b4f69946f21bea8a45ca6f89bb01eaddbfb791343cfd121`  
		Last Modified: Wed, 11 Oct 2017 01:45:09 GMT  
		Size: 677.1 KB (677087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f368243fd867f0d0b4f3f0e3342042555b312001afcb496a368f33bc1fe4e6e`  
		Last Modified: Wed, 11 Oct 2017 01:45:08 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim-stretch` - linux; s390x

```console
$ docker pull ruby@sha256:0f9504221b33ce550b30cbcd14786ac2cd6a3f93f79b5f7470f3477edbe1a94b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81458679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12fcb730ba8f4d68aa8b8f8ded1d61b7a4bc458f64054ce55828f632bb110ed1`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:53:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:53:03 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 09 Oct 2017 23:53:03 GMT
ENV RUBY_MAJOR=2.4
# Mon, 09 Oct 2017 23:53:03 GMT
ENV RUBY_VERSION=2.4.2
# Mon, 09 Oct 2017 23:53:04 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Mon, 09 Oct 2017 23:53:04 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Mon, 09 Oct 2017 23:56:19 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 09 Oct 2017 23:56:19 GMT
ENV BUNDLER_VERSION=1.15.4
# Mon, 09 Oct 2017 23:56:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 09 Oct 2017 23:56:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 09 Oct 2017 23:56:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 09 Oct 2017 23:56:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:56:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 09 Oct 2017 23:56:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8dc9fb89857e80a11a46c0b89653b2fbca9ae06c5781d24e55f93dc65bfe674`  
		Last Modified: Tue, 10 Oct 2017 00:15:39 GMT  
		Size: 13.2 MB (13174350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4995550c864edc239e5eae3c7fab90f5639e3332c298c3fd64b303e0cc1a4d`  
		Last Modified: Tue, 10 Oct 2017 00:15:34 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f32c3df3b36414a36d0eec25be8b227067bbb9890f8e19967e009493ec6841d`  
		Last Modified: Tue, 10 Oct 2017 00:15:39 GMT  
		Size: 22.6 MB (22634156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9712fd1ce0749cdec5ff501e273bb1e3708af10b95d9f00c70fc0deb2f4360`  
		Last Modified: Tue, 10 Oct 2017 00:15:35 GMT  
		Size: 677.0 KB (677042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36509f077142a45187cf3d0f4195a65c067509c35558c142f8ced6df8ff81cd6`  
		Last Modified: Tue, 10 Oct 2017 00:15:34 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
