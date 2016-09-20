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
-	[`ruby:2.2.5`](#ruby225)
-	[`ruby:2.2`](#ruby22)
-	[`ruby:2.2.5-slim`](#ruby225-slim)
-	[`ruby:2.2-slim`](#ruby22-slim)
-	[`ruby:2.2.5-alpine`](#ruby225-alpine)
-	[`ruby:2.2-alpine`](#ruby22-alpine)
-	[`ruby:2.2.5-onbuild`](#ruby225-onbuild)
-	[`ruby:2.2-onbuild`](#ruby22-onbuild)
-	[`ruby:2.3.1`](#ruby231)
-	[`ruby:2.3`](#ruby23)
-	[`ruby:2`](#ruby2)
-	[`ruby:latest`](#rubylatest)
-	[`ruby:2.3.1-slim`](#ruby231-slim)
-	[`ruby:2.3-slim`](#ruby23-slim)
-	[`ruby:2-slim`](#ruby2-slim)
-	[`ruby:slim`](#rubyslim)
-	[`ruby:2.3.1-alpine`](#ruby231-alpine)
-	[`ruby:2.3-alpine`](#ruby23-alpine)
-	[`ruby:2-alpine`](#ruby2-alpine)
-	[`ruby:alpine`](#rubyalpine)
-	[`ruby:2.3.1-onbuild`](#ruby231-onbuild)
-	[`ruby:2.3-onbuild`](#ruby23-onbuild)
-	[`ruby:2-onbuild`](#ruby2-onbuild)
-	[`ruby:onbuild`](#rubyonbuild)

## `ruby:2.1.10`

```console
$ docker pull ruby@sha256:dbc1aa2de9b50e9d01889dde431c7e0952c9f3fbf4606e2668c916f7d8ce9ff5
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.7 MB (275689132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9857fcf705d162edd2bed2daf22f58cbfc6f38810d62ae5b4e59403acb4a8b1b`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:21:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:21:05 GMT
ENV RUBY_MAJOR=2.1
# Wed, 31 Aug 2016 03:21:05 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 31 Aug 2016 03:21:05 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Wed, 31 Aug 2016 03:21:06 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:23:19 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 17:59:50 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 17:59:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 17:59:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 17:59:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 17:59:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 17:59:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 17:59:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437dbd1dc4e1e62b82f33900e29059fa4075456e0f270461276dd249069d3276`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572f733b44d045ac984fd14288dd689bca6ba1d31daf6fd97159b02b1dbb5cd6`  
		Last Modified: Wed, 14 Sep 2016 18:01:07 GMT  
		Size: 32.9 MB (32938602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6662ebcbdd08459edf5581a15bccba23b8da1e1f76e71bf9a3c143991e8ed1e`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 609.9 KB (609930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736d5cc3fe5cc5c3e6bf4754faa229dded6505aca7667f5bbb6b0e42dc974796`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1`

```console
$ docker pull ruby@sha256:dbc1aa2de9b50e9d01889dde431c7e0952c9f3fbf4606e2668c916f7d8ce9ff5
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.7 MB (275689132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9857fcf705d162edd2bed2daf22f58cbfc6f38810d62ae5b4e59403acb4a8b1b`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:21:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:21:05 GMT
ENV RUBY_MAJOR=2.1
# Wed, 31 Aug 2016 03:21:05 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 31 Aug 2016 03:21:05 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Wed, 31 Aug 2016 03:21:06 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:23:19 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 17:59:50 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 17:59:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 17:59:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 17:59:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 17:59:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 17:59:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 17:59:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437dbd1dc4e1e62b82f33900e29059fa4075456e0f270461276dd249069d3276`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572f733b44d045ac984fd14288dd689bca6ba1d31daf6fd97159b02b1dbb5cd6`  
		Last Modified: Wed, 14 Sep 2016 18:01:07 GMT  
		Size: 32.9 MB (32938602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6662ebcbdd08459edf5581a15bccba23b8da1e1f76e71bf9a3c143991e8ed1e`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 609.9 KB (609930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736d5cc3fe5cc5c3e6bf4754faa229dded6505aca7667f5bbb6b0e42dc974796`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-slim`

```console
$ docker pull ruby@sha256:2b33d0468b708ab6725de84c08264c4fab54fe59afb2e4a40b9257984117f9e0
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.7 MB (98749565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52327318d1b76f3832b57a6cb0890aa7b3f57ab2d2d069d538e2657555e691ee`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 03:23:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		curl 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:23:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:23:38 GMT
ENV RUBY_MAJOR=2.1
# Wed, 31 Aug 2016 03:23:39 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 31 Aug 2016 03:23:39 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Wed, 31 Aug 2016 03:23:39 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:27:17 GMT
RUN set -ex 	&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 17:59:55 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 17:59:57 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 17:59:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 17:59:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 17:59:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 17:59:59 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 17:59:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e8b87673550f90ea78b9b5bd76d6a3108f59804254744a839549004efe879e`  
		Last Modified: Wed, 31 Aug 2016 20:33:22 GMT  
		Size: 13.7 MB (13655213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b3b9b9b942ed70825e9eddface6b2f4e8e0b80f72b868ae49f4a3a6750a35f`  
		Last Modified: Wed, 31 Aug 2016 20:33:15 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4a2f4eaa696b0e32671275c6489d2e4656a6891ed573dc6ad3a3a6bf436f57`  
		Last Modified: Wed, 14 Sep 2016 18:01:45 GMT  
		Size: 33.1 MB (33116785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:238c8745bbf8f85307cc9553247dac7314799b42795a266b08238de792df4c70`  
		Last Modified: Wed, 14 Sep 2016 18:01:29 GMT  
		Size: 609.9 KB (609936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbda81a959363dd0d05f5581c43a8cdb8103125b6fff8c3a7e92d8adc363dcc3`  
		Last Modified: Wed, 14 Sep 2016 18:01:28 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-slim`

```console
$ docker pull ruby@sha256:2b33d0468b708ab6725de84c08264c4fab54fe59afb2e4a40b9257984117f9e0
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.7 MB (98749565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52327318d1b76f3832b57a6cb0890aa7b3f57ab2d2d069d538e2657555e691ee`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 03:23:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		curl 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:23:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:23:38 GMT
ENV RUBY_MAJOR=2.1
# Wed, 31 Aug 2016 03:23:39 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 31 Aug 2016 03:23:39 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Wed, 31 Aug 2016 03:23:39 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:27:17 GMT
RUN set -ex 	&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 17:59:55 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 17:59:57 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 17:59:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 17:59:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 17:59:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 17:59:59 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 17:59:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e8b87673550f90ea78b9b5bd76d6a3108f59804254744a839549004efe879e`  
		Last Modified: Wed, 31 Aug 2016 20:33:22 GMT  
		Size: 13.7 MB (13655213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b3b9b9b942ed70825e9eddface6b2f4e8e0b80f72b868ae49f4a3a6750a35f`  
		Last Modified: Wed, 31 Aug 2016 20:33:15 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4a2f4eaa696b0e32671275c6489d2e4656a6891ed573dc6ad3a3a6bf436f57`  
		Last Modified: Wed, 14 Sep 2016 18:01:45 GMT  
		Size: 33.1 MB (33116785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:238c8745bbf8f85307cc9553247dac7314799b42795a266b08238de792df4c70`  
		Last Modified: Wed, 14 Sep 2016 18:01:29 GMT  
		Size: 609.9 KB (609936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbda81a959363dd0d05f5581c43a8cdb8103125b6fff8c3a7e92d8adc363dcc3`  
		Last Modified: Wed, 14 Sep 2016 18:01:28 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-alpine`

```console
$ docker pull ruby@sha256:49d77519acce42076754e77e40dbf7356b76a497497524b9e9a2fc69edfeb341
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36193053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79433834d9c113f105fb6fcc992f35ff60b7aae459fb824c410cb7327890b7f0`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 02:34:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 02:34:05 GMT
ENV RUBY_MAJOR=2.1
# Tue, 20 Sep 2016 02:34:06 GMT
ENV RUBY_VERSION=2.1.10
# Tue, 20 Sep 2016 02:34:06 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Tue, 20 Sep 2016 02:34:07 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Tue, 20 Sep 2016 02:38:47 GMT
RUN set -ex 	&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		curl 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		procps 		readline-dev 		ruby 		yaml-dev 		zlib-dev 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src 	&& tar -xzf ruby.tar.gz -C /usr/src 	&& mv "/usr/src/ruby-$RUBY_VERSION" /usr/src/ruby 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		curl 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 02:38:48 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 02:38:50 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 02:38:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 02:38:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 02:38:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 02:38:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 02:38:52 GMT
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
	-	`sha256:5668c5639a6259c8057f1951bfcac605b76ede7ecd79852d574bf9c3647a7d0f`  
		Last Modified: Tue, 20 Sep 2016 02:39:21 GMT  
		Size: 33.3 MB (33271745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd91c4dfbae0f5067171298ce539d7176fbe9df57ab287d6336eca0d98878701`  
		Last Modified: Tue, 20 Sep 2016 02:39:02 GMT  
		Size: 609.9 KB (609905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15396a33dd7a43d9f2b4617daf6d63667c3d658a4f16d1463ae7688a4ecdf3e`  
		Last Modified: Tue, 20 Sep 2016 02:39:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-alpine`

```console
$ docker pull ruby@sha256:49d77519acce42076754e77e40dbf7356b76a497497524b9e9a2fc69edfeb341
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36193053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79433834d9c113f105fb6fcc992f35ff60b7aae459fb824c410cb7327890b7f0`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 02:34:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 02:34:05 GMT
ENV RUBY_MAJOR=2.1
# Tue, 20 Sep 2016 02:34:06 GMT
ENV RUBY_VERSION=2.1.10
# Tue, 20 Sep 2016 02:34:06 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Tue, 20 Sep 2016 02:34:07 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Tue, 20 Sep 2016 02:38:47 GMT
RUN set -ex 	&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		curl 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		procps 		readline-dev 		ruby 		yaml-dev 		zlib-dev 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src 	&& tar -xzf ruby.tar.gz -C /usr/src 	&& mv "/usr/src/ruby-$RUBY_VERSION" /usr/src/ruby 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		curl 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 02:38:48 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 02:38:50 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 02:38:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 02:38:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 02:38:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 02:38:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 02:38:52 GMT
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
	-	`sha256:5668c5639a6259c8057f1951bfcac605b76ede7ecd79852d574bf9c3647a7d0f`  
		Last Modified: Tue, 20 Sep 2016 02:39:21 GMT  
		Size: 33.3 MB (33271745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd91c4dfbae0f5067171298ce539d7176fbe9df57ab287d6336eca0d98878701`  
		Last Modified: Tue, 20 Sep 2016 02:39:02 GMT  
		Size: 609.9 KB (609905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15396a33dd7a43d9f2b4617daf6d63667c3d658a4f16d1463ae7688a4ecdf3e`  
		Last Modified: Tue, 20 Sep 2016 02:39:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-onbuild`

```console
$ docker pull ruby@sha256:082c065b18aa155d008accc3a600f88874ed9e2e963329ea587a2dd1838f8351
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.7 MB (275689442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51e97042dff81806a8bc58cae6f7fbf45b20b51d898a02c0de895cd831cdaf2d`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:21:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:21:05 GMT
ENV RUBY_MAJOR=2.1
# Wed, 31 Aug 2016 03:21:05 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 31 Aug 2016 03:21:05 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Wed, 31 Aug 2016 03:21:06 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:23:19 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 17:59:50 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 17:59:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 17:59:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 17:59:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 17:59:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 17:59:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 17:59:54 GMT
CMD ["irb"]
# Wed, 14 Sep 2016 18:00:05 GMT
RUN bundle config --global frozen 1
# Wed, 14 Sep 2016 18:00:06 GMT
RUN mkdir -p /usr/src/app
# Wed, 14 Sep 2016 18:00:06 GMT
WORKDIR /usr/src/app
# Wed, 14 Sep 2016 18:00:07 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 14 Sep 2016 18:00:07 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 14 Sep 2016 18:00:07 GMT
ONBUILD RUN bundle install
# Wed, 14 Sep 2016 18:00:07 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437dbd1dc4e1e62b82f33900e29059fa4075456e0f270461276dd249069d3276`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572f733b44d045ac984fd14288dd689bca6ba1d31daf6fd97159b02b1dbb5cd6`  
		Last Modified: Wed, 14 Sep 2016 18:01:07 GMT  
		Size: 32.9 MB (32938602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6662ebcbdd08459edf5581a15bccba23b8da1e1f76e71bf9a3c143991e8ed1e`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 609.9 KB (609930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736d5cc3fe5cc5c3e6bf4754faa229dded6505aca7667f5bbb6b0e42dc974796`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49404e0a380c93ada6b291e1fe1b432fc2bc6989cc02332fe2522139f0f7ade1`  
		Last Modified: Wed, 14 Sep 2016 18:02:42 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fd4ce5ba94d491902e2b038d4a2929cc37d593724b88045bb172d10e737531`  
		Last Modified: Wed, 14 Sep 2016 18:02:42 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-onbuild`

```console
$ docker pull ruby@sha256:082c065b18aa155d008accc3a600f88874ed9e2e963329ea587a2dd1838f8351
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.7 MB (275689442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51e97042dff81806a8bc58cae6f7fbf45b20b51d898a02c0de895cd831cdaf2d`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:21:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:21:05 GMT
ENV RUBY_MAJOR=2.1
# Wed, 31 Aug 2016 03:21:05 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 31 Aug 2016 03:21:05 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Wed, 31 Aug 2016 03:21:06 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:23:19 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 17:59:50 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 17:59:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 17:59:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 17:59:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 17:59:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 17:59:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 17:59:54 GMT
CMD ["irb"]
# Wed, 14 Sep 2016 18:00:05 GMT
RUN bundle config --global frozen 1
# Wed, 14 Sep 2016 18:00:06 GMT
RUN mkdir -p /usr/src/app
# Wed, 14 Sep 2016 18:00:06 GMT
WORKDIR /usr/src/app
# Wed, 14 Sep 2016 18:00:07 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 14 Sep 2016 18:00:07 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 14 Sep 2016 18:00:07 GMT
ONBUILD RUN bundle install
# Wed, 14 Sep 2016 18:00:07 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437dbd1dc4e1e62b82f33900e29059fa4075456e0f270461276dd249069d3276`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572f733b44d045ac984fd14288dd689bca6ba1d31daf6fd97159b02b1dbb5cd6`  
		Last Modified: Wed, 14 Sep 2016 18:01:07 GMT  
		Size: 32.9 MB (32938602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6662ebcbdd08459edf5581a15bccba23b8da1e1f76e71bf9a3c143991e8ed1e`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 609.9 KB (609930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736d5cc3fe5cc5c3e6bf4754faa229dded6505aca7667f5bbb6b0e42dc974796`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49404e0a380c93ada6b291e1fe1b432fc2bc6989cc02332fe2522139f0f7ade1`  
		Last Modified: Wed, 14 Sep 2016 18:02:42 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fd4ce5ba94d491902e2b038d4a2929cc37d593724b88045bb172d10e737531`  
		Last Modified: Wed, 14 Sep 2016 18:02:42 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.5`

```console
$ docker pull ruby@sha256:e594fe0877d7e3c92b16d55dc6e96516f3523b4610194d4817b157471432b3e1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.2 MB (276214994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5512053c1ef5a77149092450f85e61c8d032a66f57a65ab840219b247087f3b`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:21:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:31:13 GMT
ENV RUBY_MAJOR=2.2
# Wed, 31 Aug 2016 03:31:14 GMT
ENV RUBY_VERSION=2.2.5
# Wed, 31 Aug 2016 03:31:16 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Wed, 31 Aug 2016 03:31:18 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:35:05 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 18:00:08 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:10 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:12 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:12 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437dbd1dc4e1e62b82f33900e29059fa4075456e0f270461276dd249069d3276`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe957b88e9bbeb591a216f8eb9a34f412265d59607733fd2d522e99dc54e0f5`  
		Last Modified: Wed, 14 Sep 2016 18:03:16 GMT  
		Size: 33.5 MB (33464460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9aa15a20e4b17c145393c94a05fe5b2d4238683a9002dbe108302c34f6915f5`  
		Last Modified: Wed, 14 Sep 2016 18:03:04 GMT  
		Size: 609.9 KB (609934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7666f7dc4bbcefb419dad37eb3db680699cd73104fb0d6cbca79c06db646ef5`  
		Last Modified: Wed, 14 Sep 2016 18:03:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2`

```console
$ docker pull ruby@sha256:e594fe0877d7e3c92b16d55dc6e96516f3523b4610194d4817b157471432b3e1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.2 MB (276214994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5512053c1ef5a77149092450f85e61c8d032a66f57a65ab840219b247087f3b`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:21:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:31:13 GMT
ENV RUBY_MAJOR=2.2
# Wed, 31 Aug 2016 03:31:14 GMT
ENV RUBY_VERSION=2.2.5
# Wed, 31 Aug 2016 03:31:16 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Wed, 31 Aug 2016 03:31:18 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:35:05 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 18:00:08 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:10 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:12 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:12 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437dbd1dc4e1e62b82f33900e29059fa4075456e0f270461276dd249069d3276`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe957b88e9bbeb591a216f8eb9a34f412265d59607733fd2d522e99dc54e0f5`  
		Last Modified: Wed, 14 Sep 2016 18:03:16 GMT  
		Size: 33.5 MB (33464460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9aa15a20e4b17c145393c94a05fe5b2d4238683a9002dbe108302c34f6915f5`  
		Last Modified: Wed, 14 Sep 2016 18:03:04 GMT  
		Size: 609.9 KB (609934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7666f7dc4bbcefb419dad37eb3db680699cd73104fb0d6cbca79c06db646ef5`  
		Last Modified: Wed, 14 Sep 2016 18:03:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.5-slim`

```console
$ docker pull ruby@sha256:667b2ec58fadc8f359edb2ba67e070436988f22830f20f1f4c0ee43c944ae8a6
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.5-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99265735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5600c6497bd77b26c05de68abc0f4c34659d7dc26b545c0ababc6028693222a`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 03:23:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		curl 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:23:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:35:09 GMT
ENV RUBY_MAJOR=2.2
# Wed, 31 Aug 2016 03:35:09 GMT
ENV RUBY_VERSION=2.2.5
# Wed, 31 Aug 2016 03:35:10 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Wed, 31 Aug 2016 03:35:10 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:37:52 GMT
RUN set -ex 	&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 18:00:13 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e8b87673550f90ea78b9b5bd76d6a3108f59804254744a839549004efe879e`  
		Last Modified: Wed, 31 Aug 2016 20:33:22 GMT  
		Size: 13.7 MB (13655213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b3b9b9b942ed70825e9eddface6b2f4e8e0b80f72b868ae49f4a3a6750a35f`  
		Last Modified: Wed, 31 Aug 2016 20:33:15 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2009a9db65f416f7c11b22ae6ee03dda1ca6634d2c7e2b0cc9c53d0dd36323`  
		Last Modified: Wed, 31 Aug 2016 20:33:30 GMT  
		Size: 33.6 MB (33632949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c050d1c54e8292a396e866874d11ff550d3b37c58e529dedeebd3feae77ce7aa`  
		Last Modified: Wed, 14 Sep 2016 18:03:40 GMT  
		Size: 609.9 KB (609943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d50d10ea976147bca607f024a71251a6af2ce0e0a57782e74d7eb0d543877d`  
		Last Modified: Wed, 14 Sep 2016 18:03:39 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-slim`

```console
$ docker pull ruby@sha256:667b2ec58fadc8f359edb2ba67e070436988f22830f20f1f4c0ee43c944ae8a6
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99265735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5600c6497bd77b26c05de68abc0f4c34659d7dc26b545c0ababc6028693222a`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 03:23:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		curl 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:23:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:35:09 GMT
ENV RUBY_MAJOR=2.2
# Wed, 31 Aug 2016 03:35:09 GMT
ENV RUBY_VERSION=2.2.5
# Wed, 31 Aug 2016 03:35:10 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Wed, 31 Aug 2016 03:35:10 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:37:52 GMT
RUN set -ex 	&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 18:00:13 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e8b87673550f90ea78b9b5bd76d6a3108f59804254744a839549004efe879e`  
		Last Modified: Wed, 31 Aug 2016 20:33:22 GMT  
		Size: 13.7 MB (13655213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b3b9b9b942ed70825e9eddface6b2f4e8e0b80f72b868ae49f4a3a6750a35f`  
		Last Modified: Wed, 31 Aug 2016 20:33:15 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2009a9db65f416f7c11b22ae6ee03dda1ca6634d2c7e2b0cc9c53d0dd36323`  
		Last Modified: Wed, 31 Aug 2016 20:33:30 GMT  
		Size: 33.6 MB (33632949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c050d1c54e8292a396e866874d11ff550d3b37c58e529dedeebd3feae77ce7aa`  
		Last Modified: Wed, 14 Sep 2016 18:03:40 GMT  
		Size: 609.9 KB (609943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d50d10ea976147bca607f024a71251a6af2ce0e0a57782e74d7eb0d543877d`  
		Last Modified: Wed, 14 Sep 2016 18:03:39 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.5-alpine`

```console
$ docker pull ruby@sha256:7a14f2bf753312a1e290f031484b6de6c0c0e1aae8e4a6907cc2b683084a02d5
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.5-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36579032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd68f4f05e59eebf3df0c1ac34ecda08364717e8802aaf2f039774e7cdf03d1e`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 02:34:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 02:45:58 GMT
ENV RUBY_MAJOR=2.2
# Tue, 20 Sep 2016 02:45:58 GMT
ENV RUBY_VERSION=2.2.5
# Tue, 20 Sep 2016 02:45:59 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 20 Sep 2016 02:45:59 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Tue, 20 Sep 2016 02:50:27 GMT
RUN set -ex 	&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		curl 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		procps 		readline-dev 		ruby 		yaml-dev 		zlib-dev 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src 	&& tar -xzf ruby.tar.gz -C /usr/src 	&& mv "/usr/src/ruby-$RUBY_VERSION" /usr/src/ruby 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		curl 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 02:50:28 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 02:50:30 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 02:50:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 02:50:30 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 02:50:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 02:50:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 02:50:32 GMT
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
	-	`sha256:4f880405dde218fc07e57245391a339702e70a4ed2ab92f1960ce64fe52086b8`  
		Last Modified: Tue, 20 Sep 2016 02:50:56 GMT  
		Size: 33.7 MB (33657709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2c7212181c3ecbb2f1f469bed95b8f5ba00bccbfa004f04ed1cd6d9eb37351`  
		Last Modified: Tue, 20 Sep 2016 02:50:40 GMT  
		Size: 609.9 KB (609920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3013ef8fc98a31309eec8c93aac78eabb1e569c0ff47afbd08552e5e2bb17a`  
		Last Modified: Tue, 20 Sep 2016 02:50:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-alpine`

```console
$ docker pull ruby@sha256:7a14f2bf753312a1e290f031484b6de6c0c0e1aae8e4a6907cc2b683084a02d5
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36579032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd68f4f05e59eebf3df0c1ac34ecda08364717e8802aaf2f039774e7cdf03d1e`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 02:34:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 02:45:58 GMT
ENV RUBY_MAJOR=2.2
# Tue, 20 Sep 2016 02:45:58 GMT
ENV RUBY_VERSION=2.2.5
# Tue, 20 Sep 2016 02:45:59 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 20 Sep 2016 02:45:59 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Tue, 20 Sep 2016 02:50:27 GMT
RUN set -ex 	&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		curl 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		procps 		readline-dev 		ruby 		yaml-dev 		zlib-dev 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src 	&& tar -xzf ruby.tar.gz -C /usr/src 	&& mv "/usr/src/ruby-$RUBY_VERSION" /usr/src/ruby 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		curl 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 02:50:28 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 02:50:30 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 02:50:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 02:50:30 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 02:50:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 02:50:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 02:50:32 GMT
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
	-	`sha256:4f880405dde218fc07e57245391a339702e70a4ed2ab92f1960ce64fe52086b8`  
		Last Modified: Tue, 20 Sep 2016 02:50:56 GMT  
		Size: 33.7 MB (33657709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2c7212181c3ecbb2f1f469bed95b8f5ba00bccbfa004f04ed1cd6d9eb37351`  
		Last Modified: Tue, 20 Sep 2016 02:50:40 GMT  
		Size: 609.9 KB (609920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3013ef8fc98a31309eec8c93aac78eabb1e569c0ff47afbd08552e5e2bb17a`  
		Last Modified: Tue, 20 Sep 2016 02:50:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.5-onbuild`

```console
$ docker pull ruby@sha256:1efb6011001c7515af5544dc80a9749a3a7dc83d9702881f2b8286197da50648
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.5-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.2 MB (276215305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb347df6c8900858ba3347f11f76ae33bb70a2fc2fac1a6776cd13b0c83511f`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:21:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:31:13 GMT
ENV RUBY_MAJOR=2.2
# Wed, 31 Aug 2016 03:31:14 GMT
ENV RUBY_VERSION=2.2.5
# Wed, 31 Aug 2016 03:31:16 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Wed, 31 Aug 2016 03:31:18 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:35:05 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 18:00:08 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:10 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:12 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:12 GMT
CMD ["irb"]
# Wed, 14 Sep 2016 18:00:23 GMT
RUN bundle config --global frozen 1
# Wed, 14 Sep 2016 18:00:24 GMT
RUN mkdir -p /usr/src/app
# Wed, 14 Sep 2016 18:00:24 GMT
WORKDIR /usr/src/app
# Wed, 14 Sep 2016 18:00:25 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 14 Sep 2016 18:00:25 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 14 Sep 2016 18:00:25 GMT
ONBUILD RUN bundle install
# Wed, 14 Sep 2016 18:00:25 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437dbd1dc4e1e62b82f33900e29059fa4075456e0f270461276dd249069d3276`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe957b88e9bbeb591a216f8eb9a34f412265d59607733fd2d522e99dc54e0f5`  
		Last Modified: Wed, 14 Sep 2016 18:03:16 GMT  
		Size: 33.5 MB (33464460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9aa15a20e4b17c145393c94a05fe5b2d4238683a9002dbe108302c34f6915f5`  
		Last Modified: Wed, 14 Sep 2016 18:03:04 GMT  
		Size: 609.9 KB (609934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7666f7dc4bbcefb419dad37eb3db680699cd73104fb0d6cbca79c06db646ef5`  
		Last Modified: Wed, 14 Sep 2016 18:03:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d76d4d0a0d54c56aa403a36235af75bd00d036f22e1e3e84bbccfbfa0fdc5b`  
		Last Modified: Wed, 14 Sep 2016 18:04:33 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff81776b2542116165b1ebf0facffe9c80afccb1e42be4f3b9840a4bb9def042`  
		Last Modified: Wed, 14 Sep 2016 18:04:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-onbuild`

```console
$ docker pull ruby@sha256:1efb6011001c7515af5544dc80a9749a3a7dc83d9702881f2b8286197da50648
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.2 MB (276215305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb347df6c8900858ba3347f11f76ae33bb70a2fc2fac1a6776cd13b0c83511f`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:21:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:31:13 GMT
ENV RUBY_MAJOR=2.2
# Wed, 31 Aug 2016 03:31:14 GMT
ENV RUBY_VERSION=2.2.5
# Wed, 31 Aug 2016 03:31:16 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Wed, 31 Aug 2016 03:31:18 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:35:05 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 18:00:08 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:10 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:12 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:12 GMT
CMD ["irb"]
# Wed, 14 Sep 2016 18:00:23 GMT
RUN bundle config --global frozen 1
# Wed, 14 Sep 2016 18:00:24 GMT
RUN mkdir -p /usr/src/app
# Wed, 14 Sep 2016 18:00:24 GMT
WORKDIR /usr/src/app
# Wed, 14 Sep 2016 18:00:25 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 14 Sep 2016 18:00:25 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 14 Sep 2016 18:00:25 GMT
ONBUILD RUN bundle install
# Wed, 14 Sep 2016 18:00:25 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437dbd1dc4e1e62b82f33900e29059fa4075456e0f270461276dd249069d3276`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe957b88e9bbeb591a216f8eb9a34f412265d59607733fd2d522e99dc54e0f5`  
		Last Modified: Wed, 14 Sep 2016 18:03:16 GMT  
		Size: 33.5 MB (33464460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9aa15a20e4b17c145393c94a05fe5b2d4238683a9002dbe108302c34f6915f5`  
		Last Modified: Wed, 14 Sep 2016 18:03:04 GMT  
		Size: 609.9 KB (609934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7666f7dc4bbcefb419dad37eb3db680699cd73104fb0d6cbca79c06db646ef5`  
		Last Modified: Wed, 14 Sep 2016 18:03:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d76d4d0a0d54c56aa403a36235af75bd00d036f22e1e3e84bbccfbfa0fdc5b`  
		Last Modified: Wed, 14 Sep 2016 18:04:33 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff81776b2542116165b1ebf0facffe9c80afccb1e42be4f3b9840a4bb9def042`  
		Last Modified: Wed, 14 Sep 2016 18:04:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.1`

```console
$ docker pull ruby@sha256:d7db5c56fd396249530304acac81e1c99ba82b9c0f81928f1a2fa6a0e5d63a0d
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278013927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8576862d34424c275a1f367c61403f81b2e1a854b70a12b4bd73428b6069e793`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:21:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_MAJOR=2.3
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_VERSION=2.3.1
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 31 Aug 2016 03:40:16 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:43:55 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 18:00:26 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437dbd1dc4e1e62b82f33900e29059fa4075456e0f270461276dd249069d3276`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6ddf69d9f1545eaae4ff46e51b37651f13233cd8735a479e8d5013ac006f97`  
		Last Modified: Wed, 14 Sep 2016 18:05:07 GMT  
		Size: 35.3 MB (35263386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e080a1aec774d318b2b5cf9ec3d8c46c3dcd90d8c7b93fb8172ceab6389f9d7`  
		Last Modified: Wed, 14 Sep 2016 18:04:54 GMT  
		Size: 609.9 KB (609941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c06d61a5a2affa492bfa9de10cf459ceab9a989707cf5136001697ecad60994`  
		Last Modified: Wed, 14 Sep 2016 18:04:53 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3`

```console
$ docker pull ruby@sha256:d7db5c56fd396249530304acac81e1c99ba82b9c0f81928f1a2fa6a0e5d63a0d
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278013927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8576862d34424c275a1f367c61403f81b2e1a854b70a12b4bd73428b6069e793`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:21:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_MAJOR=2.3
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_VERSION=2.3.1
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 31 Aug 2016 03:40:16 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:43:55 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 18:00:26 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437dbd1dc4e1e62b82f33900e29059fa4075456e0f270461276dd249069d3276`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6ddf69d9f1545eaae4ff46e51b37651f13233cd8735a479e8d5013ac006f97`  
		Last Modified: Wed, 14 Sep 2016 18:05:07 GMT  
		Size: 35.3 MB (35263386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e080a1aec774d318b2b5cf9ec3d8c46c3dcd90d8c7b93fb8172ceab6389f9d7`  
		Last Modified: Wed, 14 Sep 2016 18:04:54 GMT  
		Size: 609.9 KB (609941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c06d61a5a2affa492bfa9de10cf459ceab9a989707cf5136001697ecad60994`  
		Last Modified: Wed, 14 Sep 2016 18:04:53 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2`

```console
$ docker pull ruby@sha256:d7db5c56fd396249530304acac81e1c99ba82b9c0f81928f1a2fa6a0e5d63a0d
```

-	Platforms:
	-	linux; amd64

### `ruby:2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278013927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8576862d34424c275a1f367c61403f81b2e1a854b70a12b4bd73428b6069e793`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:21:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_MAJOR=2.3
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_VERSION=2.3.1
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 31 Aug 2016 03:40:16 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:43:55 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 18:00:26 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437dbd1dc4e1e62b82f33900e29059fa4075456e0f270461276dd249069d3276`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6ddf69d9f1545eaae4ff46e51b37651f13233cd8735a479e8d5013ac006f97`  
		Last Modified: Wed, 14 Sep 2016 18:05:07 GMT  
		Size: 35.3 MB (35263386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e080a1aec774d318b2b5cf9ec3d8c46c3dcd90d8c7b93fb8172ceab6389f9d7`  
		Last Modified: Wed, 14 Sep 2016 18:04:54 GMT  
		Size: 609.9 KB (609941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c06d61a5a2affa492bfa9de10cf459ceab9a989707cf5136001697ecad60994`  
		Last Modified: Wed, 14 Sep 2016 18:04:53 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:latest`

```console
$ docker pull ruby@sha256:d7db5c56fd396249530304acac81e1c99ba82b9c0f81928f1a2fa6a0e5d63a0d
```

-	Platforms:
	-	linux; amd64

### `ruby:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278013927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8576862d34424c275a1f367c61403f81b2e1a854b70a12b4bd73428b6069e793`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:21:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_MAJOR=2.3
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_VERSION=2.3.1
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 31 Aug 2016 03:40:16 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:43:55 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 18:00:26 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437dbd1dc4e1e62b82f33900e29059fa4075456e0f270461276dd249069d3276`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6ddf69d9f1545eaae4ff46e51b37651f13233cd8735a479e8d5013ac006f97`  
		Last Modified: Wed, 14 Sep 2016 18:05:07 GMT  
		Size: 35.3 MB (35263386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e080a1aec774d318b2b5cf9ec3d8c46c3dcd90d8c7b93fb8172ceab6389f9d7`  
		Last Modified: Wed, 14 Sep 2016 18:04:54 GMT  
		Size: 609.9 KB (609941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c06d61a5a2affa492bfa9de10cf459ceab9a989707cf5136001697ecad60994`  
		Last Modified: Wed, 14 Sep 2016 18:04:53 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.1-slim`

```console
$ docker pull ruby@sha256:c8a6e548e80395c0e64ab88763a0cb8ae21204cb91cfa415c488cad94f835c2d
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.1-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101066878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7417c45ce48adc571298cdc4dde87aa8e6c2be3f20deb77ff14ce733dc6d20`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 03:23:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		curl 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:23:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:44:00 GMT
ENV RUBY_MAJOR=2.3
# Wed, 31 Aug 2016 03:44:01 GMT
ENV RUBY_VERSION=2.3.1
# Wed, 31 Aug 2016 03:44:01 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 31 Aug 2016 03:44:02 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:57:07 GMT
RUN set -ex 	&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 18:00:31 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:33 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:35 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e8b87673550f90ea78b9b5bd76d6a3108f59804254744a839549004efe879e`  
		Last Modified: Wed, 31 Aug 2016 20:33:22 GMT  
		Size: 13.7 MB (13655213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b3b9b9b942ed70825e9eddface6b2f4e8e0b80f72b868ae49f4a3a6750a35f`  
		Last Modified: Wed, 31 Aug 2016 20:33:15 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaebcf9fc01b575dfe3c11028674d29deac954e57d4b69be49d3bec1de7651a9`  
		Last Modified: Wed, 14 Sep 2016 18:05:57 GMT  
		Size: 35.4 MB (35434103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e666442f5c3a14e55267efec7224e8a43a8adb219b30901dcc33c14db54d59f0`  
		Last Modified: Wed, 14 Sep 2016 18:05:43 GMT  
		Size: 609.9 KB (609931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a690f79e2f4ad8d6f8ce72bdf7d55e0d98a1eda201e553b4d04797130fc1309`  
		Last Modified: Wed, 14 Sep 2016 18:05:43 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-slim`

```console
$ docker pull ruby@sha256:c8a6e548e80395c0e64ab88763a0cb8ae21204cb91cfa415c488cad94f835c2d
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101066878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7417c45ce48adc571298cdc4dde87aa8e6c2be3f20deb77ff14ce733dc6d20`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 03:23:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		curl 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:23:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:44:00 GMT
ENV RUBY_MAJOR=2.3
# Wed, 31 Aug 2016 03:44:01 GMT
ENV RUBY_VERSION=2.3.1
# Wed, 31 Aug 2016 03:44:01 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 31 Aug 2016 03:44:02 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:57:07 GMT
RUN set -ex 	&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 18:00:31 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:33 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:35 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e8b87673550f90ea78b9b5bd76d6a3108f59804254744a839549004efe879e`  
		Last Modified: Wed, 31 Aug 2016 20:33:22 GMT  
		Size: 13.7 MB (13655213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b3b9b9b942ed70825e9eddface6b2f4e8e0b80f72b868ae49f4a3a6750a35f`  
		Last Modified: Wed, 31 Aug 2016 20:33:15 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaebcf9fc01b575dfe3c11028674d29deac954e57d4b69be49d3bec1de7651a9`  
		Last Modified: Wed, 14 Sep 2016 18:05:57 GMT  
		Size: 35.4 MB (35434103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e666442f5c3a14e55267efec7224e8a43a8adb219b30901dcc33c14db54d59f0`  
		Last Modified: Wed, 14 Sep 2016 18:05:43 GMT  
		Size: 609.9 KB (609931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a690f79e2f4ad8d6f8ce72bdf7d55e0d98a1eda201e553b4d04797130fc1309`  
		Last Modified: Wed, 14 Sep 2016 18:05:43 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-slim`

```console
$ docker pull ruby@sha256:c8a6e548e80395c0e64ab88763a0cb8ae21204cb91cfa415c488cad94f835c2d
```

-	Platforms:
	-	linux; amd64

### `ruby:2-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101066878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7417c45ce48adc571298cdc4dde87aa8e6c2be3f20deb77ff14ce733dc6d20`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 03:23:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		curl 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:23:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:44:00 GMT
ENV RUBY_MAJOR=2.3
# Wed, 31 Aug 2016 03:44:01 GMT
ENV RUBY_VERSION=2.3.1
# Wed, 31 Aug 2016 03:44:01 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 31 Aug 2016 03:44:02 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:57:07 GMT
RUN set -ex 	&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 18:00:31 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:33 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:35 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e8b87673550f90ea78b9b5bd76d6a3108f59804254744a839549004efe879e`  
		Last Modified: Wed, 31 Aug 2016 20:33:22 GMT  
		Size: 13.7 MB (13655213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b3b9b9b942ed70825e9eddface6b2f4e8e0b80f72b868ae49f4a3a6750a35f`  
		Last Modified: Wed, 31 Aug 2016 20:33:15 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaebcf9fc01b575dfe3c11028674d29deac954e57d4b69be49d3bec1de7651a9`  
		Last Modified: Wed, 14 Sep 2016 18:05:57 GMT  
		Size: 35.4 MB (35434103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e666442f5c3a14e55267efec7224e8a43a8adb219b30901dcc33c14db54d59f0`  
		Last Modified: Wed, 14 Sep 2016 18:05:43 GMT  
		Size: 609.9 KB (609931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a690f79e2f4ad8d6f8ce72bdf7d55e0d98a1eda201e553b4d04797130fc1309`  
		Last Modified: Wed, 14 Sep 2016 18:05:43 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:slim`

```console
$ docker pull ruby@sha256:c8a6e548e80395c0e64ab88763a0cb8ae21204cb91cfa415c488cad94f835c2d
```

-	Platforms:
	-	linux; amd64

### `ruby:slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101066878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7417c45ce48adc571298cdc4dde87aa8e6c2be3f20deb77ff14ce733dc6d20`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 03:23:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		curl 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:23:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:44:00 GMT
ENV RUBY_MAJOR=2.3
# Wed, 31 Aug 2016 03:44:01 GMT
ENV RUBY_VERSION=2.3.1
# Wed, 31 Aug 2016 03:44:01 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 31 Aug 2016 03:44:02 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:57:07 GMT
RUN set -ex 	&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 18:00:31 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:33 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:35 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e8b87673550f90ea78b9b5bd76d6a3108f59804254744a839549004efe879e`  
		Last Modified: Wed, 31 Aug 2016 20:33:22 GMT  
		Size: 13.7 MB (13655213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b3b9b9b942ed70825e9eddface6b2f4e8e0b80f72b868ae49f4a3a6750a35f`  
		Last Modified: Wed, 31 Aug 2016 20:33:15 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaebcf9fc01b575dfe3c11028674d29deac954e57d4b69be49d3bec1de7651a9`  
		Last Modified: Wed, 14 Sep 2016 18:05:57 GMT  
		Size: 35.4 MB (35434103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e666442f5c3a14e55267efec7224e8a43a8adb219b30901dcc33c14db54d59f0`  
		Last Modified: Wed, 14 Sep 2016 18:05:43 GMT  
		Size: 609.9 KB (609931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a690f79e2f4ad8d6f8ce72bdf7d55e0d98a1eda201e553b4d04797130fc1309`  
		Last Modified: Wed, 14 Sep 2016 18:05:43 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.1-alpine`

```console
$ docker pull ruby@sha256:f8205fc8863c6835be1cae6a7afb8a77fd210246815b7cd65e47349ce99fe665
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.5 MB (38540812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5138c9c4494d5fa6ecfb5b9c6d9bf1230e44ae7dd684ea2f884cd98f42c737d8`
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
# Tue, 20 Sep 2016 02:44:45 GMT
RUN set -ex 	&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		curl 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		procps 		readline-dev 		ruby 		yaml-dev 		zlib-dev 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src 	&& tar -xzf ruby.tar.gz -C /usr/src 	&& mv "/usr/src/ruby-$RUBY_VERSION" /usr/src/ruby 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		curl 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 02:44:46 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 02:44:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 02:44:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 02:44:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 02:44:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 02:44:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 02:44:51 GMT
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
	-	`sha256:963f3bddebc57cd6e75c89b36d7d97790028d5ff12f425f0f1831213c304aa3d`  
		Last Modified: Tue, 20 Sep 2016 02:45:23 GMT  
		Size: 35.6 MB (35619491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9c2996e43179c9cbe8535d6f6128d3fb3e50443c848f53bd54a72da6498692`  
		Last Modified: Tue, 20 Sep 2016 02:45:00 GMT  
		Size: 609.9 KB (609919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a4962a0d242c3de362bb4b394f9bef513c7bd0270d7ffb73039f98ee0df538`  
		Last Modified: Tue, 20 Sep 2016 02:45:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-alpine`

```console
$ docker pull ruby@sha256:f8205fc8863c6835be1cae6a7afb8a77fd210246815b7cd65e47349ce99fe665
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.5 MB (38540812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5138c9c4494d5fa6ecfb5b9c6d9bf1230e44ae7dd684ea2f884cd98f42c737d8`
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
# Tue, 20 Sep 2016 02:44:45 GMT
RUN set -ex 	&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		curl 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		procps 		readline-dev 		ruby 		yaml-dev 		zlib-dev 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src 	&& tar -xzf ruby.tar.gz -C /usr/src 	&& mv "/usr/src/ruby-$RUBY_VERSION" /usr/src/ruby 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		curl 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 02:44:46 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 02:44:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 02:44:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 02:44:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 02:44:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 02:44:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 02:44:51 GMT
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
	-	`sha256:963f3bddebc57cd6e75c89b36d7d97790028d5ff12f425f0f1831213c304aa3d`  
		Last Modified: Tue, 20 Sep 2016 02:45:23 GMT  
		Size: 35.6 MB (35619491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9c2996e43179c9cbe8535d6f6128d3fb3e50443c848f53bd54a72da6498692`  
		Last Modified: Tue, 20 Sep 2016 02:45:00 GMT  
		Size: 609.9 KB (609919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a4962a0d242c3de362bb4b394f9bef513c7bd0270d7ffb73039f98ee0df538`  
		Last Modified: Tue, 20 Sep 2016 02:45:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-alpine`

```console
$ docker pull ruby@sha256:f8205fc8863c6835be1cae6a7afb8a77fd210246815b7cd65e47349ce99fe665
```

-	Platforms:
	-	linux; amd64

### `ruby:2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.5 MB (38540812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5138c9c4494d5fa6ecfb5b9c6d9bf1230e44ae7dd684ea2f884cd98f42c737d8`
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
# Tue, 20 Sep 2016 02:44:45 GMT
RUN set -ex 	&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		curl 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		procps 		readline-dev 		ruby 		yaml-dev 		zlib-dev 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src 	&& tar -xzf ruby.tar.gz -C /usr/src 	&& mv "/usr/src/ruby-$RUBY_VERSION" /usr/src/ruby 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		curl 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 02:44:46 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 02:44:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 02:44:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 02:44:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 02:44:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 02:44:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 02:44:51 GMT
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
	-	`sha256:963f3bddebc57cd6e75c89b36d7d97790028d5ff12f425f0f1831213c304aa3d`  
		Last Modified: Tue, 20 Sep 2016 02:45:23 GMT  
		Size: 35.6 MB (35619491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9c2996e43179c9cbe8535d6f6128d3fb3e50443c848f53bd54a72da6498692`  
		Last Modified: Tue, 20 Sep 2016 02:45:00 GMT  
		Size: 609.9 KB (609919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a4962a0d242c3de362bb4b394f9bef513c7bd0270d7ffb73039f98ee0df538`  
		Last Modified: Tue, 20 Sep 2016 02:45:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:alpine`

```console
$ docker pull ruby@sha256:f8205fc8863c6835be1cae6a7afb8a77fd210246815b7cd65e47349ce99fe665
```

-	Platforms:
	-	linux; amd64

### `ruby:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.5 MB (38540812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5138c9c4494d5fa6ecfb5b9c6d9bf1230e44ae7dd684ea2f884cd98f42c737d8`
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
# Tue, 20 Sep 2016 02:44:45 GMT
RUN set -ex 	&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		curl 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		procps 		readline-dev 		ruby 		yaml-dev 		zlib-dev 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src 	&& tar -xzf ruby.tar.gz -C /usr/src 	&& mv "/usr/src/ruby-$RUBY_VERSION" /usr/src/ruby 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		curl 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 02:44:46 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 02:44:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 02:44:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 02:44:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 02:44:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 02:44:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 02:44:51 GMT
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
	-	`sha256:963f3bddebc57cd6e75c89b36d7d97790028d5ff12f425f0f1831213c304aa3d`  
		Last Modified: Tue, 20 Sep 2016 02:45:23 GMT  
		Size: 35.6 MB (35619491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9c2996e43179c9cbe8535d6f6128d3fb3e50443c848f53bd54a72da6498692`  
		Last Modified: Tue, 20 Sep 2016 02:45:00 GMT  
		Size: 609.9 KB (609919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a4962a0d242c3de362bb4b394f9bef513c7bd0270d7ffb73039f98ee0df538`  
		Last Modified: Tue, 20 Sep 2016 02:45:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.1-onbuild`

```console
$ docker pull ruby@sha256:8eb9f7055e2c29ceffd6eafd9171922a73d0f18247fef6b8d1088a53bcc3904e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278014237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591c610b45e05947eaa33fe1e407c234beb586b51e80a3085bd582bc7f3e5070`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:21:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_MAJOR=2.3
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_VERSION=2.3.1
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 31 Aug 2016 03:40:16 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:43:55 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 18:00:26 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:30 GMT
CMD ["irb"]
# Wed, 14 Sep 2016 18:00:42 GMT
RUN bundle config --global frozen 1
# Wed, 14 Sep 2016 18:00:42 GMT
RUN mkdir -p /usr/src/app
# Wed, 14 Sep 2016 18:00:43 GMT
WORKDIR /usr/src/app
# Wed, 14 Sep 2016 18:00:43 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 14 Sep 2016 18:00:43 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 14 Sep 2016 18:00:43 GMT
ONBUILD RUN bundle install
# Wed, 14 Sep 2016 18:00:44 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437dbd1dc4e1e62b82f33900e29059fa4075456e0f270461276dd249069d3276`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6ddf69d9f1545eaae4ff46e51b37651f13233cd8735a479e8d5013ac006f97`  
		Last Modified: Wed, 14 Sep 2016 18:05:07 GMT  
		Size: 35.3 MB (35263386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e080a1aec774d318b2b5cf9ec3d8c46c3dcd90d8c7b93fb8172ceab6389f9d7`  
		Last Modified: Wed, 14 Sep 2016 18:04:54 GMT  
		Size: 609.9 KB (609941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c06d61a5a2affa492bfa9de10cf459ceab9a989707cf5136001697ecad60994`  
		Last Modified: Wed, 14 Sep 2016 18:04:53 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbdfa2e9d311fd2c253f9692a8fa960ccfea30c5f3251f9f9b6ba13ad72972fe`  
		Last Modified: Wed, 14 Sep 2016 18:07:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8215c6ef63573ad8d75276651afe205202c833a92041053c2dd8d777510ac60c`  
		Last Modified: Wed, 14 Sep 2016 18:07:22 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-onbuild`

```console
$ docker pull ruby@sha256:8eb9f7055e2c29ceffd6eafd9171922a73d0f18247fef6b8d1088a53bcc3904e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278014237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591c610b45e05947eaa33fe1e407c234beb586b51e80a3085bd582bc7f3e5070`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:21:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_MAJOR=2.3
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_VERSION=2.3.1
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 31 Aug 2016 03:40:16 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:43:55 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 18:00:26 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:30 GMT
CMD ["irb"]
# Wed, 14 Sep 2016 18:00:42 GMT
RUN bundle config --global frozen 1
# Wed, 14 Sep 2016 18:00:42 GMT
RUN mkdir -p /usr/src/app
# Wed, 14 Sep 2016 18:00:43 GMT
WORKDIR /usr/src/app
# Wed, 14 Sep 2016 18:00:43 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 14 Sep 2016 18:00:43 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 14 Sep 2016 18:00:43 GMT
ONBUILD RUN bundle install
# Wed, 14 Sep 2016 18:00:44 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437dbd1dc4e1e62b82f33900e29059fa4075456e0f270461276dd249069d3276`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6ddf69d9f1545eaae4ff46e51b37651f13233cd8735a479e8d5013ac006f97`  
		Last Modified: Wed, 14 Sep 2016 18:05:07 GMT  
		Size: 35.3 MB (35263386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e080a1aec774d318b2b5cf9ec3d8c46c3dcd90d8c7b93fb8172ceab6389f9d7`  
		Last Modified: Wed, 14 Sep 2016 18:04:54 GMT  
		Size: 609.9 KB (609941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c06d61a5a2affa492bfa9de10cf459ceab9a989707cf5136001697ecad60994`  
		Last Modified: Wed, 14 Sep 2016 18:04:53 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbdfa2e9d311fd2c253f9692a8fa960ccfea30c5f3251f9f9b6ba13ad72972fe`  
		Last Modified: Wed, 14 Sep 2016 18:07:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8215c6ef63573ad8d75276651afe205202c833a92041053c2dd8d777510ac60c`  
		Last Modified: Wed, 14 Sep 2016 18:07:22 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-onbuild`

```console
$ docker pull ruby@sha256:8eb9f7055e2c29ceffd6eafd9171922a73d0f18247fef6b8d1088a53bcc3904e
```

-	Platforms:
	-	linux; amd64

### `ruby:2-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278014237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591c610b45e05947eaa33fe1e407c234beb586b51e80a3085bd582bc7f3e5070`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:21:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_MAJOR=2.3
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_VERSION=2.3.1
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 31 Aug 2016 03:40:16 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:43:55 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 18:00:26 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:30 GMT
CMD ["irb"]
# Wed, 14 Sep 2016 18:00:42 GMT
RUN bundle config --global frozen 1
# Wed, 14 Sep 2016 18:00:42 GMT
RUN mkdir -p /usr/src/app
# Wed, 14 Sep 2016 18:00:43 GMT
WORKDIR /usr/src/app
# Wed, 14 Sep 2016 18:00:43 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 14 Sep 2016 18:00:43 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 14 Sep 2016 18:00:43 GMT
ONBUILD RUN bundle install
# Wed, 14 Sep 2016 18:00:44 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437dbd1dc4e1e62b82f33900e29059fa4075456e0f270461276dd249069d3276`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6ddf69d9f1545eaae4ff46e51b37651f13233cd8735a479e8d5013ac006f97`  
		Last Modified: Wed, 14 Sep 2016 18:05:07 GMT  
		Size: 35.3 MB (35263386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e080a1aec774d318b2b5cf9ec3d8c46c3dcd90d8c7b93fb8172ceab6389f9d7`  
		Last Modified: Wed, 14 Sep 2016 18:04:54 GMT  
		Size: 609.9 KB (609941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c06d61a5a2affa492bfa9de10cf459ceab9a989707cf5136001697ecad60994`  
		Last Modified: Wed, 14 Sep 2016 18:04:53 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbdfa2e9d311fd2c253f9692a8fa960ccfea30c5f3251f9f9b6ba13ad72972fe`  
		Last Modified: Wed, 14 Sep 2016 18:07:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8215c6ef63573ad8d75276651afe205202c833a92041053c2dd8d777510ac60c`  
		Last Modified: Wed, 14 Sep 2016 18:07:22 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:onbuild`

```console
$ docker pull ruby@sha256:8eb9f7055e2c29ceffd6eafd9171922a73d0f18247fef6b8d1088a53bcc3904e
```

-	Platforms:
	-	linux; amd64

### `ruby:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278014237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591c610b45e05947eaa33fe1e407c234beb586b51e80a3085bd582bc7f3e5070`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:21:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_MAJOR=2.3
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_VERSION=2.3.1
# Wed, 31 Aug 2016 03:40:15 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 31 Aug 2016 03:40:16 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:43:55 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 14 Sep 2016 18:00:26 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:30 GMT
CMD ["irb"]
# Wed, 14 Sep 2016 18:00:42 GMT
RUN bundle config --global frozen 1
# Wed, 14 Sep 2016 18:00:42 GMT
RUN mkdir -p /usr/src/app
# Wed, 14 Sep 2016 18:00:43 GMT
WORKDIR /usr/src/app
# Wed, 14 Sep 2016 18:00:43 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 14 Sep 2016 18:00:43 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 14 Sep 2016 18:00:43 GMT
ONBUILD RUN bundle install
# Wed, 14 Sep 2016 18:00:44 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437dbd1dc4e1e62b82f33900e29059fa4075456e0f270461276dd249069d3276`  
		Last Modified: Wed, 14 Sep 2016 18:00:50 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6ddf69d9f1545eaae4ff46e51b37651f13233cd8735a479e8d5013ac006f97`  
		Last Modified: Wed, 14 Sep 2016 18:05:07 GMT  
		Size: 35.3 MB (35263386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e080a1aec774d318b2b5cf9ec3d8c46c3dcd90d8c7b93fb8172ceab6389f9d7`  
		Last Modified: Wed, 14 Sep 2016 18:04:54 GMT  
		Size: 609.9 KB (609941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c06d61a5a2affa492bfa9de10cf459ceab9a989707cf5136001697ecad60994`  
		Last Modified: Wed, 14 Sep 2016 18:04:53 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbdfa2e9d311fd2c253f9692a8fa960ccfea30c5f3251f9f9b6ba13ad72972fe`  
		Last Modified: Wed, 14 Sep 2016 18:07:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8215c6ef63573ad8d75276651afe205202c833a92041053c2dd8d777510ac60c`  
		Last Modified: Wed, 14 Sep 2016 18:07:22 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
