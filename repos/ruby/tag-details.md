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
$ docker pull ruby@sha256:9993987fff3d5280b14e1570e5526de4eecd7d57fef60bbdc1e05d79b3f585c1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275407694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd11166ba38523b49bc0d97db0239eae0f042857a18c1552fc7809cde65e4f68`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:19:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 18 Jan 2017 03:23:26 GMT
ENV RUBY_MAJOR=2.1
# Wed, 18 Jan 2017 03:23:27 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 18 Jan 2017 03:23:39 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Tue, 24 Jan 2017 20:04:54 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:07:13 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:07:13 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:07:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:07:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:07:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:07:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:07:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:07:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3db4b5710849a53bc2eea0b6f0895c494d751c38c597404d805da82b3f37c`  
		Last Modified: Tue, 17 Jan 2017 00:26:00 GMT  
		Size: 129.8 MB (129823115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0dc2c700a064aa674936ea4b17811cd59dbe1f68b46be92c5a95cfcc2b3cc`  
		Last Modified: Wed, 18 Jan 2017 07:24:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc1b4f6a733da9dc108edda9ffe7a0611f5422ade7c10915aef62201bff93c0`  
		Last Modified: Tue, 24 Jan 2017 20:35:23 GMT  
		Size: 32.6 MB (32553778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1861d5010bfaf7ecdfeeebd5c7e76cab6655665354bd3433e1f46b5a818647a5`  
		Last Modified: Tue, 24 Jan 2017 20:35:12 GMT  
		Size: 631.4 KB (631380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df640c6ece5eb2608da4b0490cac18c89fdf7a0b9a9efa0986ec1668e70a6d2`  
		Last Modified: Tue, 24 Jan 2017 20:35:12 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1`

```console
$ docker pull ruby@sha256:9993987fff3d5280b14e1570e5526de4eecd7d57fef60bbdc1e05d79b3f585c1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275407694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd11166ba38523b49bc0d97db0239eae0f042857a18c1552fc7809cde65e4f68`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:19:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 18 Jan 2017 03:23:26 GMT
ENV RUBY_MAJOR=2.1
# Wed, 18 Jan 2017 03:23:27 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 18 Jan 2017 03:23:39 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Tue, 24 Jan 2017 20:04:54 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:07:13 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:07:13 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:07:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:07:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:07:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:07:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:07:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:07:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3db4b5710849a53bc2eea0b6f0895c494d751c38c597404d805da82b3f37c`  
		Last Modified: Tue, 17 Jan 2017 00:26:00 GMT  
		Size: 129.8 MB (129823115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0dc2c700a064aa674936ea4b17811cd59dbe1f68b46be92c5a95cfcc2b3cc`  
		Last Modified: Wed, 18 Jan 2017 07:24:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc1b4f6a733da9dc108edda9ffe7a0611f5422ade7c10915aef62201bff93c0`  
		Last Modified: Tue, 24 Jan 2017 20:35:23 GMT  
		Size: 32.6 MB (32553778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1861d5010bfaf7ecdfeeebd5c7e76cab6655665354bd3433e1f46b5a818647a5`  
		Last Modified: Tue, 24 Jan 2017 20:35:12 GMT  
		Size: 631.4 KB (631380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df640c6ece5eb2608da4b0490cac18c89fdf7a0b9a9efa0986ec1668e70a6d2`  
		Last Modified: Tue, 24 Jan 2017 20:35:12 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-slim`

```console
$ docker pull ruby@sha256:f0bc690d7f2dc660c46284b511afe2ac6028b156d2fac4f3a9666cea4637470a
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 MB (94704305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb02095ac530f11015c03ca6766a0a1db25a639588591a599d8f1c16416c869c`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:15:20 GMT
ENV RUBY_MAJOR=2.1
# Tue, 17 Jan 2017 20:15:20 GMT
ENV RUBY_VERSION=2.1.10
# Tue, 17 Jan 2017 20:15:20 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Tue, 24 Jan 2017 20:07:19 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:09:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:09:44 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:09:46 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:09:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:09:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:09:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:09:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:09:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a46df1fba4a400098379afd63092fcf5e214236dab4dd086902620c5af0346e`  
		Last Modified: Tue, 24 Jan 2017 20:36:10 GMT  
		Size: 32.7 MB (32717122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be61ed1e0452d2a0305a6d3cd0b43c342c475bae60459c43f2d3ae8b03dbee7d`  
		Last Modified: Tue, 24 Jan 2017 20:35:59 GMT  
		Size: 631.4 KB (631365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26786a9c5515694ebd5b1c88eace7dd6306447c01622f6bd997a4901d01b981`  
		Last Modified: Tue, 24 Jan 2017 20:36:00 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-slim`

```console
$ docker pull ruby@sha256:f0bc690d7f2dc660c46284b511afe2ac6028b156d2fac4f3a9666cea4637470a
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 MB (94704305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb02095ac530f11015c03ca6766a0a1db25a639588591a599d8f1c16416c869c`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:15:20 GMT
ENV RUBY_MAJOR=2.1
# Tue, 17 Jan 2017 20:15:20 GMT
ENV RUBY_VERSION=2.1.10
# Tue, 17 Jan 2017 20:15:20 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Tue, 24 Jan 2017 20:07:19 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:09:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:09:44 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:09:46 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:09:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:09:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:09:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:09:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:09:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a46df1fba4a400098379afd63092fcf5e214236dab4dd086902620c5af0346e`  
		Last Modified: Tue, 24 Jan 2017 20:36:10 GMT  
		Size: 32.7 MB (32717122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be61ed1e0452d2a0305a6d3cd0b43c342c475bae60459c43f2d3ae8b03dbee7d`  
		Last Modified: Tue, 24 Jan 2017 20:35:59 GMT  
		Size: 631.4 KB (631365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26786a9c5515694ebd5b1c88eace7dd6306447c01622f6bd997a4901d01b981`  
		Last Modified: Tue, 24 Jan 2017 20:36:00 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-alpine`

```console
$ docker pull ruby@sha256:2b0ce3ad32a4f1de4865a763d181a0998c02f28d0511450e58a0693a6e50b604
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35590565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73906b941d75aff7635f745153699b16265a807ae956273c01f17acdb598b34c`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 21:39:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 27 Dec 2016 21:39:57 GMT
ENV RUBY_MAJOR=2.1
# Tue, 27 Dec 2016 21:39:57 GMT
ENV RUBY_VERSION=2.1.10
# Fri, 06 Jan 2017 00:11:13 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Tue, 24 Jan 2017 20:09:49 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:11:49 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:11:49 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:11:51 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:11:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:11:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:11:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:11:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:11:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863b574175a645e7bda540e41976d579fd2c765613e7046b16ceabb78f7cadfa`  
		Last Modified: Tue, 27 Dec 2016 21:51:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3b8b35056f57026bc583a78e1f0552274fb5d952a024e0ccc1ed6b03dbc362`  
		Last Modified: Tue, 24 Jan 2017 20:36:54 GMT  
		Size: 32.6 MB (32645769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ecde8ced976203f5d5ffab3bbd586a4b58886a6448cdde5978063133259f900`  
		Last Modified: Tue, 24 Jan 2017 20:36:44 GMT  
		Size: 631.4 KB (631356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edea46ff8005119fd9687e5ad39b0c62c6f9aa86b379dbe87034fa5619c58051`  
		Last Modified: Tue, 24 Jan 2017 20:36:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-alpine`

```console
$ docker pull ruby@sha256:2b0ce3ad32a4f1de4865a763d181a0998c02f28d0511450e58a0693a6e50b604
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35590565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73906b941d75aff7635f745153699b16265a807ae956273c01f17acdb598b34c`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 21:39:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 27 Dec 2016 21:39:57 GMT
ENV RUBY_MAJOR=2.1
# Tue, 27 Dec 2016 21:39:57 GMT
ENV RUBY_VERSION=2.1.10
# Fri, 06 Jan 2017 00:11:13 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Tue, 24 Jan 2017 20:09:49 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:11:49 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:11:49 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:11:51 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:11:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:11:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:11:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:11:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:11:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863b574175a645e7bda540e41976d579fd2c765613e7046b16ceabb78f7cadfa`  
		Last Modified: Tue, 27 Dec 2016 21:51:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3b8b35056f57026bc583a78e1f0552274fb5d952a024e0ccc1ed6b03dbc362`  
		Last Modified: Tue, 24 Jan 2017 20:36:54 GMT  
		Size: 32.6 MB (32645769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ecde8ced976203f5d5ffab3bbd586a4b58886a6448cdde5978063133259f900`  
		Last Modified: Tue, 24 Jan 2017 20:36:44 GMT  
		Size: 631.4 KB (631356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edea46ff8005119fd9687e5ad39b0c62c6f9aa86b379dbe87034fa5619c58051`  
		Last Modified: Tue, 24 Jan 2017 20:36:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-onbuild`

```console
$ docker pull ruby@sha256:aaed96cef6f41cb8f5a4dc53943a81387f06cf64cbb43bc8f3656f667d8b4257
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275408006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8cf572c365b00ece44e88781bfa6f06cf43cb6c55f5028c8339bce39a94f22c`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:19:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 18 Jan 2017 03:23:26 GMT
ENV RUBY_MAJOR=2.1
# Wed, 18 Jan 2017 03:23:27 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 18 Jan 2017 03:23:39 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Tue, 24 Jan 2017 20:04:54 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:07:13 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:07:13 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:07:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:07:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:07:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:07:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:07:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:07:18 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 20:11:55 GMT
RUN bundle config --global frozen 1
# Tue, 24 Jan 2017 20:11:56 GMT
RUN mkdir -p /usr/src/app
# Tue, 24 Jan 2017 20:11:57 GMT
WORKDIR /usr/src/app
# Tue, 24 Jan 2017 20:11:57 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 24 Jan 2017 20:11:58 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 24 Jan 2017 20:11:58 GMT
ONBUILD RUN bundle install
# Tue, 24 Jan 2017 20:11:58 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3db4b5710849a53bc2eea0b6f0895c494d751c38c597404d805da82b3f37c`  
		Last Modified: Tue, 17 Jan 2017 00:26:00 GMT  
		Size: 129.8 MB (129823115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0dc2c700a064aa674936ea4b17811cd59dbe1f68b46be92c5a95cfcc2b3cc`  
		Last Modified: Wed, 18 Jan 2017 07:24:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc1b4f6a733da9dc108edda9ffe7a0611f5422ade7c10915aef62201bff93c0`  
		Last Modified: Tue, 24 Jan 2017 20:35:23 GMT  
		Size: 32.6 MB (32553778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1861d5010bfaf7ecdfeeebd5c7e76cab6655665354bd3433e1f46b5a818647a5`  
		Last Modified: Tue, 24 Jan 2017 20:35:12 GMT  
		Size: 631.4 KB (631380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df640c6ece5eb2608da4b0490cac18c89fdf7a0b9a9efa0986ec1668e70a6d2`  
		Last Modified: Tue, 24 Jan 2017 20:35:12 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08bc8503fb5b7ed0b7dad2eba5e0830f75d3a53802e7e38235788f6b0f59fd0f`  
		Last Modified: Tue, 24 Jan 2017 20:37:27 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1315469562200879887ff0bb5c4c1d5b95d8fd74ce80ababf940f93ead7605d6`  
		Last Modified: Tue, 24 Jan 2017 20:37:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-onbuild`

```console
$ docker pull ruby@sha256:aaed96cef6f41cb8f5a4dc53943a81387f06cf64cbb43bc8f3656f667d8b4257
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275408006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8cf572c365b00ece44e88781bfa6f06cf43cb6c55f5028c8339bce39a94f22c`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:19:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 18 Jan 2017 03:23:26 GMT
ENV RUBY_MAJOR=2.1
# Wed, 18 Jan 2017 03:23:27 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 18 Jan 2017 03:23:39 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Tue, 24 Jan 2017 20:04:54 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:07:13 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:07:13 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:07:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:07:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:07:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:07:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:07:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:07:18 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 20:11:55 GMT
RUN bundle config --global frozen 1
# Tue, 24 Jan 2017 20:11:56 GMT
RUN mkdir -p /usr/src/app
# Tue, 24 Jan 2017 20:11:57 GMT
WORKDIR /usr/src/app
# Tue, 24 Jan 2017 20:11:57 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 24 Jan 2017 20:11:58 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 24 Jan 2017 20:11:58 GMT
ONBUILD RUN bundle install
# Tue, 24 Jan 2017 20:11:58 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3db4b5710849a53bc2eea0b6f0895c494d751c38c597404d805da82b3f37c`  
		Last Modified: Tue, 17 Jan 2017 00:26:00 GMT  
		Size: 129.8 MB (129823115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0dc2c700a064aa674936ea4b17811cd59dbe1f68b46be92c5a95cfcc2b3cc`  
		Last Modified: Wed, 18 Jan 2017 07:24:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc1b4f6a733da9dc108edda9ffe7a0611f5422ade7c10915aef62201bff93c0`  
		Last Modified: Tue, 24 Jan 2017 20:35:23 GMT  
		Size: 32.6 MB (32553778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1861d5010bfaf7ecdfeeebd5c7e76cab6655665354bd3433e1f46b5a818647a5`  
		Last Modified: Tue, 24 Jan 2017 20:35:12 GMT  
		Size: 631.4 KB (631380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df640c6ece5eb2608da4b0490cac18c89fdf7a0b9a9efa0986ec1668e70a6d2`  
		Last Modified: Tue, 24 Jan 2017 20:35:12 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08bc8503fb5b7ed0b7dad2eba5e0830f75d3a53802e7e38235788f6b0f59fd0f`  
		Last Modified: Tue, 24 Jan 2017 20:37:27 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1315469562200879887ff0bb5c4c1d5b95d8fd74ce80ababf940f93ead7605d6`  
		Last Modified: Tue, 24 Jan 2017 20:37:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6`

```console
$ docker pull ruby@sha256:aad53dc9b8df3c47dbba75679425beadf248469a0d33db54f8c45603b1e49ab4
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.0 MB (276020546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19212f8912a082e9048a2ab23edb9a8d27248e5e4b46ab4da4a3a3850fc62c04`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:19:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 18 Jan 2017 03:26:32 GMT
ENV RUBY_MAJOR=2.2
# Wed, 18 Jan 2017 03:26:32 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 18 Jan 2017 03:26:33 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:11:59 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:14:18 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:14:18 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:14:19 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:14:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:14:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:14:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:14:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:14:21 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3db4b5710849a53bc2eea0b6f0895c494d751c38c597404d805da82b3f37c`  
		Last Modified: Tue, 17 Jan 2017 00:26:00 GMT  
		Size: 129.8 MB (129823115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0dc2c700a064aa674936ea4b17811cd59dbe1f68b46be92c5a95cfcc2b3cc`  
		Last Modified: Wed, 18 Jan 2017 07:24:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013f2f0db8faf4974dc2f37300ca7495c36787c5fbdd104577165f8aa916dacb`  
		Last Modified: Tue, 24 Jan 2017 20:38:11 GMT  
		Size: 33.2 MB (33166639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ef28e4136541484c3c52e6c4093e845fade0e16679df9895188e9ac289e018`  
		Last Modified: Tue, 24 Jan 2017 20:38:01 GMT  
		Size: 631.4 KB (631370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fab737af9c564672eaa11ae56549a9d7aa2f7dd751922518ceec682790ef93`  
		Last Modified: Tue, 24 Jan 2017 20:38:00 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2`

```console
$ docker pull ruby@sha256:aad53dc9b8df3c47dbba75679425beadf248469a0d33db54f8c45603b1e49ab4
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.0 MB (276020546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19212f8912a082e9048a2ab23edb9a8d27248e5e4b46ab4da4a3a3850fc62c04`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:19:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 18 Jan 2017 03:26:32 GMT
ENV RUBY_MAJOR=2.2
# Wed, 18 Jan 2017 03:26:32 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 18 Jan 2017 03:26:33 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:11:59 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:14:18 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:14:18 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:14:19 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:14:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:14:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:14:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:14:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:14:21 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3db4b5710849a53bc2eea0b6f0895c494d751c38c597404d805da82b3f37c`  
		Last Modified: Tue, 17 Jan 2017 00:26:00 GMT  
		Size: 129.8 MB (129823115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0dc2c700a064aa674936ea4b17811cd59dbe1f68b46be92c5a95cfcc2b3cc`  
		Last Modified: Wed, 18 Jan 2017 07:24:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013f2f0db8faf4974dc2f37300ca7495c36787c5fbdd104577165f8aa916dacb`  
		Last Modified: Tue, 24 Jan 2017 20:38:11 GMT  
		Size: 33.2 MB (33166639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ef28e4136541484c3c52e6c4093e845fade0e16679df9895188e9ac289e018`  
		Last Modified: Tue, 24 Jan 2017 20:38:01 GMT  
		Size: 631.4 KB (631370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fab737af9c564672eaa11ae56549a9d7aa2f7dd751922518ceec682790ef93`  
		Last Modified: Tue, 24 Jan 2017 20:38:00 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6-slim`

```console
$ docker pull ruby@sha256:449fb584cd269280c8783261a845566ae703c6883723f18460df3624899693a9
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.3 MB (95306404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0f4f08dcc1af68cdd208d5e9f124414ec765df2834d33d366a4e4077d2dcd5`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:14:22 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:16:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:16:53 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:16:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:16:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:16:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:16:57 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c588799b12a44b94535e22c24ed52e730c117e69851c2549b94864816c2717`  
		Last Modified: Tue, 24 Jan 2017 20:38:58 GMT  
		Size: 33.3 MB (33319219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049f04d6fa693f7e6251f1392968eb5b541443838e53781a42f7eb20fa2fbfbd`  
		Last Modified: Tue, 24 Jan 2017 20:38:45 GMT  
		Size: 631.4 KB (631367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96f442ea7ef033ec31cf4e76151925ba4e984fc4ce545182eed9496fa7424de`  
		Last Modified: Tue, 24 Jan 2017 20:38:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-slim`

```console
$ docker pull ruby@sha256:449fb584cd269280c8783261a845566ae703c6883723f18460df3624899693a9
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.3 MB (95306404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0f4f08dcc1af68cdd208d5e9f124414ec765df2834d33d366a4e4077d2dcd5`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:14:22 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:16:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:16:53 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:16:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:16:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:16:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:16:57 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c588799b12a44b94535e22c24ed52e730c117e69851c2549b94864816c2717`  
		Last Modified: Tue, 24 Jan 2017 20:38:58 GMT  
		Size: 33.3 MB (33319219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049f04d6fa693f7e6251f1392968eb5b541443838e53781a42f7eb20fa2fbfbd`  
		Last Modified: Tue, 24 Jan 2017 20:38:45 GMT  
		Size: 631.4 KB (631367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96f442ea7ef033ec31cf4e76151925ba4e984fc4ce545182eed9496fa7424de`  
		Last Modified: Tue, 24 Jan 2017 20:38:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6-alpine`

```console
$ docker pull ruby@sha256:7fafe0e622cd98389c5fa0e2594e89e700ac72e782f32343f5e855a03d7ee24b
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35976902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a18b5e3e2c42a48c7671238670d69758064806f51f6185711c382bc5984a32e5`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 21:39:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 27 Dec 2016 21:43:14 GMT
ENV RUBY_MAJOR=2.2
# Tue, 27 Dec 2016 21:43:15 GMT
ENV RUBY_VERSION=2.2.6
# Fri, 06 Jan 2017 00:14:32 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:16:58 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:18:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:18:57 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:18:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:18:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:18:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:19:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:19:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:19:01 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863b574175a645e7bda540e41976d579fd2c765613e7046b16ceabb78f7cadfa`  
		Last Modified: Tue, 27 Dec 2016 21:51:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def8a1529bf88aa8b9263a31fc58fd5bc7a74d14252a8fe00a299a4378efcae5`  
		Last Modified: Tue, 24 Jan 2017 20:39:43 GMT  
		Size: 33.0 MB (33032114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500620cdabdecfab1d37feb12681c92a8dd6971819d5fe83057c977a35ab5ef0`  
		Last Modified: Tue, 24 Jan 2017 20:39:32 GMT  
		Size: 631.3 KB (631349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07105a52122215dd25e8ae9dbd649e58d197d039329187c83c73fb3fca85d68f`  
		Last Modified: Tue, 24 Jan 2017 20:39:31 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-alpine`

```console
$ docker pull ruby@sha256:7fafe0e622cd98389c5fa0e2594e89e700ac72e782f32343f5e855a03d7ee24b
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35976902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a18b5e3e2c42a48c7671238670d69758064806f51f6185711c382bc5984a32e5`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 21:39:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 27 Dec 2016 21:43:14 GMT
ENV RUBY_MAJOR=2.2
# Tue, 27 Dec 2016 21:43:15 GMT
ENV RUBY_VERSION=2.2.6
# Fri, 06 Jan 2017 00:14:32 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:16:58 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:18:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:18:57 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:18:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:18:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:18:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:19:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:19:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:19:01 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863b574175a645e7bda540e41976d579fd2c765613e7046b16ceabb78f7cadfa`  
		Last Modified: Tue, 27 Dec 2016 21:51:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def8a1529bf88aa8b9263a31fc58fd5bc7a74d14252a8fe00a299a4378efcae5`  
		Last Modified: Tue, 24 Jan 2017 20:39:43 GMT  
		Size: 33.0 MB (33032114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500620cdabdecfab1d37feb12681c92a8dd6971819d5fe83057c977a35ab5ef0`  
		Last Modified: Tue, 24 Jan 2017 20:39:32 GMT  
		Size: 631.3 KB (631349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07105a52122215dd25e8ae9dbd649e58d197d039329187c83c73fb3fca85d68f`  
		Last Modified: Tue, 24 Jan 2017 20:39:31 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6-onbuild`

```console
$ docker pull ruby@sha256:49a117d2729d9397abbb687de513c8c4bad5c417d8a8aa4e73dcc129b29af31b
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.0 MB (276020859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5904f2ab9b8d36709a2d63d720fe948bb2a105bf09024f4b97874381353b6de7`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:19:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 18 Jan 2017 03:26:32 GMT
ENV RUBY_MAJOR=2.2
# Wed, 18 Jan 2017 03:26:32 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 18 Jan 2017 03:26:33 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:11:59 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:14:18 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:14:18 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:14:19 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:14:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:14:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:14:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:14:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:14:21 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 20:19:02 GMT
RUN bundle config --global frozen 1
# Tue, 24 Jan 2017 20:19:03 GMT
RUN mkdir -p /usr/src/app
# Tue, 24 Jan 2017 20:19:03 GMT
WORKDIR /usr/src/app
# Tue, 24 Jan 2017 20:19:03 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 24 Jan 2017 20:19:04 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 24 Jan 2017 20:19:04 GMT
ONBUILD RUN bundle install
# Tue, 24 Jan 2017 20:19:04 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3db4b5710849a53bc2eea0b6f0895c494d751c38c597404d805da82b3f37c`  
		Last Modified: Tue, 17 Jan 2017 00:26:00 GMT  
		Size: 129.8 MB (129823115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0dc2c700a064aa674936ea4b17811cd59dbe1f68b46be92c5a95cfcc2b3cc`  
		Last Modified: Wed, 18 Jan 2017 07:24:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013f2f0db8faf4974dc2f37300ca7495c36787c5fbdd104577165f8aa916dacb`  
		Last Modified: Tue, 24 Jan 2017 20:38:11 GMT  
		Size: 33.2 MB (33166639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ef28e4136541484c3c52e6c4093e845fade0e16679df9895188e9ac289e018`  
		Last Modified: Tue, 24 Jan 2017 20:38:01 GMT  
		Size: 631.4 KB (631370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fab737af9c564672eaa11ae56549a9d7aa2f7dd751922518ceec682790ef93`  
		Last Modified: Tue, 24 Jan 2017 20:38:00 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78525797874834254c5b619876fea57a4c26675d61447372512faa9ef77618a9`  
		Last Modified: Tue, 24 Jan 2017 20:40:16 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5613b1ce505159ea5369ce4168f2ad3814674bdc86ea9649f6bf409de5f47c49`  
		Last Modified: Tue, 24 Jan 2017 20:40:16 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-onbuild`

```console
$ docker pull ruby@sha256:49a117d2729d9397abbb687de513c8c4bad5c417d8a8aa4e73dcc129b29af31b
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.0 MB (276020859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5904f2ab9b8d36709a2d63d720fe948bb2a105bf09024f4b97874381353b6de7`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:19:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 18 Jan 2017 03:26:32 GMT
ENV RUBY_MAJOR=2.2
# Wed, 18 Jan 2017 03:26:32 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 18 Jan 2017 03:26:33 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:11:59 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:14:18 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:14:18 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:14:19 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:14:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:14:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:14:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:14:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:14:21 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 20:19:02 GMT
RUN bundle config --global frozen 1
# Tue, 24 Jan 2017 20:19:03 GMT
RUN mkdir -p /usr/src/app
# Tue, 24 Jan 2017 20:19:03 GMT
WORKDIR /usr/src/app
# Tue, 24 Jan 2017 20:19:03 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 24 Jan 2017 20:19:04 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 24 Jan 2017 20:19:04 GMT
ONBUILD RUN bundle install
# Tue, 24 Jan 2017 20:19:04 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3db4b5710849a53bc2eea0b6f0895c494d751c38c597404d805da82b3f37c`  
		Last Modified: Tue, 17 Jan 2017 00:26:00 GMT  
		Size: 129.8 MB (129823115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0dc2c700a064aa674936ea4b17811cd59dbe1f68b46be92c5a95cfcc2b3cc`  
		Last Modified: Wed, 18 Jan 2017 07:24:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013f2f0db8faf4974dc2f37300ca7495c36787c5fbdd104577165f8aa916dacb`  
		Last Modified: Tue, 24 Jan 2017 20:38:11 GMT  
		Size: 33.2 MB (33166639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ef28e4136541484c3c52e6c4093e845fade0e16679df9895188e9ac289e018`  
		Last Modified: Tue, 24 Jan 2017 20:38:01 GMT  
		Size: 631.4 KB (631370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fab737af9c564672eaa11ae56549a9d7aa2f7dd751922518ceec682790ef93`  
		Last Modified: Tue, 24 Jan 2017 20:38:00 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78525797874834254c5b619876fea57a4c26675d61447372512faa9ef77618a9`  
		Last Modified: Tue, 24 Jan 2017 20:40:16 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5613b1ce505159ea5369ce4168f2ad3814674bdc86ea9649f6bf409de5f47c49`  
		Last Modified: Tue, 24 Jan 2017 20:40:16 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3`

```console
$ docker pull ruby@sha256:71b4afcdd94a609601925b33e0e57a765e5c1fea4df6f992a1b1e52430c721c9
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277992501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0e1016a8dfa82944b43ef52604f075e44af6e8650dd9c8965f41d345e7ed0e`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:19:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 18 Jan 2017 03:29:33 GMT
ENV RUBY_MAJOR=2.3
# Wed, 18 Jan 2017 03:29:33 GMT
ENV RUBY_VERSION=2.3.3
# Wed, 18 Jan 2017 03:29:34 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Tue, 24 Jan 2017 20:19:05 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:21:32 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:21:32 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:21:34 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:21:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:21:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:21:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:21:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:21:36 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3db4b5710849a53bc2eea0b6f0895c494d751c38c597404d805da82b3f37c`  
		Last Modified: Tue, 17 Jan 2017 00:26:00 GMT  
		Size: 129.8 MB (129823115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0dc2c700a064aa674936ea4b17811cd59dbe1f68b46be92c5a95cfcc2b3cc`  
		Last Modified: Wed, 18 Jan 2017 07:24:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b927b0d58207e33529a43c2bc4343d8f3c316b60545733a2f1c45aadea2fda92`  
		Last Modified: Tue, 24 Jan 2017 20:41:00 GMT  
		Size: 35.1 MB (35138583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6bee1e8c0c6166846a6d3fd0a5278ee77961433502ee79263b06bd6f5a0b0b`  
		Last Modified: Tue, 24 Jan 2017 20:40:50 GMT  
		Size: 631.4 KB (631382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e697e78d15ff1751370a0dc31f7a842253b5030b374919107ec4102c4144eb`  
		Last Modified: Tue, 24 Jan 2017 20:40:49 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3`

```console
$ docker pull ruby@sha256:71b4afcdd94a609601925b33e0e57a765e5c1fea4df6f992a1b1e52430c721c9
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277992501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0e1016a8dfa82944b43ef52604f075e44af6e8650dd9c8965f41d345e7ed0e`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:19:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 18 Jan 2017 03:29:33 GMT
ENV RUBY_MAJOR=2.3
# Wed, 18 Jan 2017 03:29:33 GMT
ENV RUBY_VERSION=2.3.3
# Wed, 18 Jan 2017 03:29:34 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Tue, 24 Jan 2017 20:19:05 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:21:32 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:21:32 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:21:34 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:21:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:21:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:21:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:21:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:21:36 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3db4b5710849a53bc2eea0b6f0895c494d751c38c597404d805da82b3f37c`  
		Last Modified: Tue, 17 Jan 2017 00:26:00 GMT  
		Size: 129.8 MB (129823115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0dc2c700a064aa674936ea4b17811cd59dbe1f68b46be92c5a95cfcc2b3cc`  
		Last Modified: Wed, 18 Jan 2017 07:24:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b927b0d58207e33529a43c2bc4343d8f3c316b60545733a2f1c45aadea2fda92`  
		Last Modified: Tue, 24 Jan 2017 20:41:00 GMT  
		Size: 35.1 MB (35138583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6bee1e8c0c6166846a6d3fd0a5278ee77961433502ee79263b06bd6f5a0b0b`  
		Last Modified: Tue, 24 Jan 2017 20:40:50 GMT  
		Size: 631.4 KB (631382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e697e78d15ff1751370a0dc31f7a842253b5030b374919107ec4102c4144eb`  
		Last Modified: Tue, 24 Jan 2017 20:40:49 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3-slim`

```console
$ docker pull ruby@sha256:66d6184b912a92c0a0534d1f1ee2fc61cb1048c282ce0cf362dcf3210a667bbc
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97298832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24bfdea9ea4bd35c0a46009c0d2e49b5b22ba5f959762fcf904bfee80cb00b29`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:20:35 GMT
ENV RUBY_MAJOR=2.3
# Tue, 17 Jan 2017 20:20:35 GMT
ENV RUBY_VERSION=2.3.3
# Tue, 17 Jan 2017 20:20:36 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Tue, 24 Jan 2017 20:21:36 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:24:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:24:12 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:24:13 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:24:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:24:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:24:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:24:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:24:15 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b80a14348b570a6a8decff2cce1882f853b8875e9db20a8e11b72139dfa32ff`  
		Last Modified: Tue, 24 Jan 2017 20:41:45 GMT  
		Size: 35.3 MB (35311627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ee97f29771fa1b4c1f42aa2fcd1b1b55e55e2f23ca89b04937dacc7eff0445`  
		Last Modified: Tue, 24 Jan 2017 20:41:34 GMT  
		Size: 631.4 KB (631390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d52ebf91d844cce40a3faf388882d9bec469afe7ef84f3ae9650d0e56676d9f`  
		Last Modified: Tue, 24 Jan 2017 20:41:34 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-slim`

```console
$ docker pull ruby@sha256:66d6184b912a92c0a0534d1f1ee2fc61cb1048c282ce0cf362dcf3210a667bbc
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97298832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24bfdea9ea4bd35c0a46009c0d2e49b5b22ba5f959762fcf904bfee80cb00b29`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:20:35 GMT
ENV RUBY_MAJOR=2.3
# Tue, 17 Jan 2017 20:20:35 GMT
ENV RUBY_VERSION=2.3.3
# Tue, 17 Jan 2017 20:20:36 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Tue, 24 Jan 2017 20:21:36 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:24:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:24:12 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:24:13 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:24:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:24:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:24:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:24:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:24:15 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b80a14348b570a6a8decff2cce1882f853b8875e9db20a8e11b72139dfa32ff`  
		Last Modified: Tue, 24 Jan 2017 20:41:45 GMT  
		Size: 35.3 MB (35311627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ee97f29771fa1b4c1f42aa2fcd1b1b55e55e2f23ca89b04937dacc7eff0445`  
		Last Modified: Tue, 24 Jan 2017 20:41:34 GMT  
		Size: 631.4 KB (631390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d52ebf91d844cce40a3faf388882d9bec469afe7ef84f3ae9650d0e56676d9f`  
		Last Modified: Tue, 24 Jan 2017 20:41:34 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3-alpine`

```console
$ docker pull ruby@sha256:9cb8b064687a7cbf4ae893c3e16addbe1b899972fe8f54532e15dce0ad5b1b94
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42923556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89d3cf3bd9df0034896280808f68a88bd52eb965cc2a69242785c25fe87aeea2`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 21:39:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 27 Dec 2016 21:41:57 GMT
ENV RUBY_MAJOR=2.3
# Tue, 27 Dec 2016 21:41:57 GMT
ENV RUBY_VERSION=2.3.3
# Fri, 06 Jan 2017 00:17:51 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Tue, 24 Jan 2017 20:24:16 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:26:23 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:26:23 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:26:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:26:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:26:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:26:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:26:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:26:26 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863b574175a645e7bda540e41976d579fd2c765613e7046b16ceabb78f7cadfa`  
		Last Modified: Tue, 27 Dec 2016 21:51:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e436641cf583ad07f51cafe16f4b6e745a7b64b85dab1b18ff71ed5656cccb0`  
		Last Modified: Tue, 24 Jan 2017 20:42:33 GMT  
		Size: 40.0 MB (39978758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee73ea7c45d23574bc3468164ae7fb18fabd1960a9ad4b4fc9183b27f416972d`  
		Last Modified: Tue, 24 Jan 2017 20:42:20 GMT  
		Size: 631.4 KB (631359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e807651393538763a70926b3280632f61a2bdbeb60ecc1ceba610876a611236`  
		Last Modified: Tue, 24 Jan 2017 20:42:20 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-alpine`

```console
$ docker pull ruby@sha256:9cb8b064687a7cbf4ae893c3e16addbe1b899972fe8f54532e15dce0ad5b1b94
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42923556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89d3cf3bd9df0034896280808f68a88bd52eb965cc2a69242785c25fe87aeea2`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 21:39:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 27 Dec 2016 21:41:57 GMT
ENV RUBY_MAJOR=2.3
# Tue, 27 Dec 2016 21:41:57 GMT
ENV RUBY_VERSION=2.3.3
# Fri, 06 Jan 2017 00:17:51 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Tue, 24 Jan 2017 20:24:16 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:26:23 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:26:23 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:26:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:26:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:26:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:26:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:26:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:26:26 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863b574175a645e7bda540e41976d579fd2c765613e7046b16ceabb78f7cadfa`  
		Last Modified: Tue, 27 Dec 2016 21:51:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e436641cf583ad07f51cafe16f4b6e745a7b64b85dab1b18ff71ed5656cccb0`  
		Last Modified: Tue, 24 Jan 2017 20:42:33 GMT  
		Size: 40.0 MB (39978758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee73ea7c45d23574bc3468164ae7fb18fabd1960a9ad4b4fc9183b27f416972d`  
		Last Modified: Tue, 24 Jan 2017 20:42:20 GMT  
		Size: 631.4 KB (631359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e807651393538763a70926b3280632f61a2bdbeb60ecc1ceba610876a611236`  
		Last Modified: Tue, 24 Jan 2017 20:42:20 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3-onbuild`

```console
$ docker pull ruby@sha256:462e9b10762a0ea5085ec915ca5b613fd7cdef328ee895d361d60f9bb81674d3
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277992814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e638c9a51f7b12b0656256a981c3bac5df6f43aa96971e3c98669cd2a734b4bb`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:19:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 18 Jan 2017 03:29:33 GMT
ENV RUBY_MAJOR=2.3
# Wed, 18 Jan 2017 03:29:33 GMT
ENV RUBY_VERSION=2.3.3
# Wed, 18 Jan 2017 03:29:34 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Tue, 24 Jan 2017 20:19:05 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:21:32 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:21:32 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:21:34 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:21:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:21:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:21:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:21:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:21:36 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 20:26:28 GMT
RUN bundle config --global frozen 1
# Tue, 24 Jan 2017 20:26:29 GMT
RUN mkdir -p /usr/src/app
# Tue, 24 Jan 2017 20:26:29 GMT
WORKDIR /usr/src/app
# Tue, 24 Jan 2017 20:26:29 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 24 Jan 2017 20:26:29 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 24 Jan 2017 20:26:30 GMT
ONBUILD RUN bundle install
# Tue, 24 Jan 2017 20:26:30 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3db4b5710849a53bc2eea0b6f0895c494d751c38c597404d805da82b3f37c`  
		Last Modified: Tue, 17 Jan 2017 00:26:00 GMT  
		Size: 129.8 MB (129823115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0dc2c700a064aa674936ea4b17811cd59dbe1f68b46be92c5a95cfcc2b3cc`  
		Last Modified: Wed, 18 Jan 2017 07:24:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b927b0d58207e33529a43c2bc4343d8f3c316b60545733a2f1c45aadea2fda92`  
		Last Modified: Tue, 24 Jan 2017 20:41:00 GMT  
		Size: 35.1 MB (35138583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6bee1e8c0c6166846a6d3fd0a5278ee77961433502ee79263b06bd6f5a0b0b`  
		Last Modified: Tue, 24 Jan 2017 20:40:50 GMT  
		Size: 631.4 KB (631382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e697e78d15ff1751370a0dc31f7a842253b5030b374919107ec4102c4144eb`  
		Last Modified: Tue, 24 Jan 2017 20:40:49 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa259809f777e2f0080cce42ddacffc60e2ee03f19f6a1969dc09d59e780e0ca`  
		Last Modified: Tue, 24 Jan 2017 20:43:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fb81987623fee7c42771b859187212b93837e14fbd71f72f53f9e8536f61a1`  
		Last Modified: Tue, 24 Jan 2017 20:43:07 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-onbuild`

```console
$ docker pull ruby@sha256:462e9b10762a0ea5085ec915ca5b613fd7cdef328ee895d361d60f9bb81674d3
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277992814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e638c9a51f7b12b0656256a981c3bac5df6f43aa96971e3c98669cd2a734b4bb`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:19:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 18 Jan 2017 03:29:33 GMT
ENV RUBY_MAJOR=2.3
# Wed, 18 Jan 2017 03:29:33 GMT
ENV RUBY_VERSION=2.3.3
# Wed, 18 Jan 2017 03:29:34 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Tue, 24 Jan 2017 20:19:05 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:21:32 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:21:32 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:21:34 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:21:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:21:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:21:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:21:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:21:36 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 20:26:28 GMT
RUN bundle config --global frozen 1
# Tue, 24 Jan 2017 20:26:29 GMT
RUN mkdir -p /usr/src/app
# Tue, 24 Jan 2017 20:26:29 GMT
WORKDIR /usr/src/app
# Tue, 24 Jan 2017 20:26:29 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 24 Jan 2017 20:26:29 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 24 Jan 2017 20:26:30 GMT
ONBUILD RUN bundle install
# Tue, 24 Jan 2017 20:26:30 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3db4b5710849a53bc2eea0b6f0895c494d751c38c597404d805da82b3f37c`  
		Last Modified: Tue, 17 Jan 2017 00:26:00 GMT  
		Size: 129.8 MB (129823115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0dc2c700a064aa674936ea4b17811cd59dbe1f68b46be92c5a95cfcc2b3cc`  
		Last Modified: Wed, 18 Jan 2017 07:24:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b927b0d58207e33529a43c2bc4343d8f3c316b60545733a2f1c45aadea2fda92`  
		Last Modified: Tue, 24 Jan 2017 20:41:00 GMT  
		Size: 35.1 MB (35138583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6bee1e8c0c6166846a6d3fd0a5278ee77961433502ee79263b06bd6f5a0b0b`  
		Last Modified: Tue, 24 Jan 2017 20:40:50 GMT  
		Size: 631.4 KB (631382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e697e78d15ff1751370a0dc31f7a842253b5030b374919107ec4102c4144eb`  
		Last Modified: Tue, 24 Jan 2017 20:40:49 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa259809f777e2f0080cce42ddacffc60e2ee03f19f6a1969dc09d59e780e0ca`  
		Last Modified: Tue, 24 Jan 2017 20:43:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fb81987623fee7c42771b859187212b93837e14fbd71f72f53f9e8536f61a1`  
		Last Modified: Tue, 24 Jan 2017 20:43:07 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.0`

```console
$ docker pull ruby@sha256:7fe7381d4ed5e3f08b4c9e5a31fa7984ca1dbc82d895762be526daec71aab363
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.4 MB (265434185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79fc6a9b9c76f2079386cf9936b8c5459c9283bddc40a2f4c2a0b96cac5748fc`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:19:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 18 Jan 2017 03:19:33 GMT
ENV RUBY_MAJOR=2.4
# Wed, 18 Jan 2017 03:19:33 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 18 Jan 2017 03:19:34 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 24 Jan 2017 20:26:31 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:29:10 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:29:11 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:29:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:29:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:29:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:29:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:29:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:29:14 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3db4b5710849a53bc2eea0b6f0895c494d751c38c597404d805da82b3f37c`  
		Last Modified: Tue, 17 Jan 2017 00:26:00 GMT  
		Size: 129.8 MB (129823115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0dc2c700a064aa674936ea4b17811cd59dbe1f68b46be92c5a95cfcc2b3cc`  
		Last Modified: Wed, 18 Jan 2017 07:24:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855fedd53ab9d139047e9beb24617e727591434c3bf1825d2e86130cfad4145c`  
		Last Modified: Tue, 24 Jan 2017 20:43:47 GMT  
		Size: 22.6 MB (22580270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0171dda3bc711c8bccbd3d373e7fab687819ae4938dd13e078ef9410269d24cd`  
		Last Modified: Tue, 24 Jan 2017 20:43:40 GMT  
		Size: 631.4 KB (631378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43b65669da2b26c415eb6bd199099251322cd0316297b368a686546393ab31d`  
		Last Modified: Tue, 24 Jan 2017 20:43:41 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4`

```console
$ docker pull ruby@sha256:7fe7381d4ed5e3f08b4c9e5a31fa7984ca1dbc82d895762be526daec71aab363
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.4 MB (265434185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79fc6a9b9c76f2079386cf9936b8c5459c9283bddc40a2f4c2a0b96cac5748fc`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:19:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 18 Jan 2017 03:19:33 GMT
ENV RUBY_MAJOR=2.4
# Wed, 18 Jan 2017 03:19:33 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 18 Jan 2017 03:19:34 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 24 Jan 2017 20:26:31 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:29:10 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:29:11 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:29:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:29:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:29:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:29:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:29:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:29:14 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3db4b5710849a53bc2eea0b6f0895c494d751c38c597404d805da82b3f37c`  
		Last Modified: Tue, 17 Jan 2017 00:26:00 GMT  
		Size: 129.8 MB (129823115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0dc2c700a064aa674936ea4b17811cd59dbe1f68b46be92c5a95cfcc2b3cc`  
		Last Modified: Wed, 18 Jan 2017 07:24:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855fedd53ab9d139047e9beb24617e727591434c3bf1825d2e86130cfad4145c`  
		Last Modified: Tue, 24 Jan 2017 20:43:47 GMT  
		Size: 22.6 MB (22580270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0171dda3bc711c8bccbd3d373e7fab687819ae4938dd13e078ef9410269d24cd`  
		Last Modified: Tue, 24 Jan 2017 20:43:40 GMT  
		Size: 631.4 KB (631378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43b65669da2b26c415eb6bd199099251322cd0316297b368a686546393ab31d`  
		Last Modified: Tue, 24 Jan 2017 20:43:41 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2`

```console
$ docker pull ruby@sha256:7fe7381d4ed5e3f08b4c9e5a31fa7984ca1dbc82d895762be526daec71aab363
```

-	Platforms:
	-	linux; amd64

### `ruby:2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.4 MB (265434185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79fc6a9b9c76f2079386cf9936b8c5459c9283bddc40a2f4c2a0b96cac5748fc`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:19:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 18 Jan 2017 03:19:33 GMT
ENV RUBY_MAJOR=2.4
# Wed, 18 Jan 2017 03:19:33 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 18 Jan 2017 03:19:34 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 24 Jan 2017 20:26:31 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:29:10 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:29:11 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:29:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:29:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:29:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:29:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:29:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:29:14 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3db4b5710849a53bc2eea0b6f0895c494d751c38c597404d805da82b3f37c`  
		Last Modified: Tue, 17 Jan 2017 00:26:00 GMT  
		Size: 129.8 MB (129823115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0dc2c700a064aa674936ea4b17811cd59dbe1f68b46be92c5a95cfcc2b3cc`  
		Last Modified: Wed, 18 Jan 2017 07:24:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855fedd53ab9d139047e9beb24617e727591434c3bf1825d2e86130cfad4145c`  
		Last Modified: Tue, 24 Jan 2017 20:43:47 GMT  
		Size: 22.6 MB (22580270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0171dda3bc711c8bccbd3d373e7fab687819ae4938dd13e078ef9410269d24cd`  
		Last Modified: Tue, 24 Jan 2017 20:43:40 GMT  
		Size: 631.4 KB (631378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43b65669da2b26c415eb6bd199099251322cd0316297b368a686546393ab31d`  
		Last Modified: Tue, 24 Jan 2017 20:43:41 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:latest`

```console
$ docker pull ruby@sha256:7fe7381d4ed5e3f08b4c9e5a31fa7984ca1dbc82d895762be526daec71aab363
```

-	Platforms:
	-	linux; amd64

### `ruby:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.4 MB (265434185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79fc6a9b9c76f2079386cf9936b8c5459c9283bddc40a2f4c2a0b96cac5748fc`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:19:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 18 Jan 2017 03:19:33 GMT
ENV RUBY_MAJOR=2.4
# Wed, 18 Jan 2017 03:19:33 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 18 Jan 2017 03:19:34 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 24 Jan 2017 20:26:31 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:29:10 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:29:11 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:29:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:29:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:29:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:29:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:29:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:29:14 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3db4b5710849a53bc2eea0b6f0895c494d751c38c597404d805da82b3f37c`  
		Last Modified: Tue, 17 Jan 2017 00:26:00 GMT  
		Size: 129.8 MB (129823115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0dc2c700a064aa674936ea4b17811cd59dbe1f68b46be92c5a95cfcc2b3cc`  
		Last Modified: Wed, 18 Jan 2017 07:24:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855fedd53ab9d139047e9beb24617e727591434c3bf1825d2e86130cfad4145c`  
		Last Modified: Tue, 24 Jan 2017 20:43:47 GMT  
		Size: 22.6 MB (22580270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0171dda3bc711c8bccbd3d373e7fab687819ae4938dd13e078ef9410269d24cd`  
		Last Modified: Tue, 24 Jan 2017 20:43:40 GMT  
		Size: 631.4 KB (631378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43b65669da2b26c415eb6bd199099251322cd0316297b368a686546393ab31d`  
		Last Modified: Tue, 24 Jan 2017 20:43:41 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.0-slim`

```console
$ docker pull ruby@sha256:88024720e26639872917bdd17b44f1740d68c99f8044ae621831bd3f24ba5fd7
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.0-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84729357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:194c5bd4a311fa1a97c5f5f93d23330187535981d356a5f454cd69d4da317416`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:12:21 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jan 2017 20:12:21 GMT
ENV RUBY_VERSION=2.4.0
# Tue, 17 Jan 2017 20:12:21 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 24 Jan 2017 20:29:15 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:32:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:32:07 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:32:09 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:32:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:32:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:32:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:32:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:32:11 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71b4269631a878c798d197252d03ee021f0a4cacb33b79048d7861e0ab04ce1`  
		Last Modified: Tue, 24 Jan 2017 20:44:56 GMT  
		Size: 22.7 MB (22742172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0061737cc688331e6fe711c39448408cf82b5dfb1ede9cdce1f30cb41ba8718b`  
		Last Modified: Tue, 24 Jan 2017 20:44:50 GMT  
		Size: 631.4 KB (631368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970b8f4b6d0979b9ce8fd763b86ecfc09cc8a3871c33d23c4a3d34906da9d42c`  
		Last Modified: Tue, 24 Jan 2017 20:44:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-slim`

```console
$ docker pull ruby@sha256:88024720e26639872917bdd17b44f1740d68c99f8044ae621831bd3f24ba5fd7
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84729357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:194c5bd4a311fa1a97c5f5f93d23330187535981d356a5f454cd69d4da317416`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:12:21 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jan 2017 20:12:21 GMT
ENV RUBY_VERSION=2.4.0
# Tue, 17 Jan 2017 20:12:21 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 24 Jan 2017 20:29:15 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:32:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:32:07 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:32:09 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:32:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:32:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:32:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:32:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:32:11 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71b4269631a878c798d197252d03ee021f0a4cacb33b79048d7861e0ab04ce1`  
		Last Modified: Tue, 24 Jan 2017 20:44:56 GMT  
		Size: 22.7 MB (22742172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0061737cc688331e6fe711c39448408cf82b5dfb1ede9cdce1f30cb41ba8718b`  
		Last Modified: Tue, 24 Jan 2017 20:44:50 GMT  
		Size: 631.4 KB (631368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970b8f4b6d0979b9ce8fd763b86ecfc09cc8a3871c33d23c4a3d34906da9d42c`  
		Last Modified: Tue, 24 Jan 2017 20:44:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-slim`

```console
$ docker pull ruby@sha256:88024720e26639872917bdd17b44f1740d68c99f8044ae621831bd3f24ba5fd7
```

-	Platforms:
	-	linux; amd64

### `ruby:2-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84729357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:194c5bd4a311fa1a97c5f5f93d23330187535981d356a5f454cd69d4da317416`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:12:21 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jan 2017 20:12:21 GMT
ENV RUBY_VERSION=2.4.0
# Tue, 17 Jan 2017 20:12:21 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 24 Jan 2017 20:29:15 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:32:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:32:07 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:32:09 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:32:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:32:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:32:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:32:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:32:11 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71b4269631a878c798d197252d03ee021f0a4cacb33b79048d7861e0ab04ce1`  
		Last Modified: Tue, 24 Jan 2017 20:44:56 GMT  
		Size: 22.7 MB (22742172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0061737cc688331e6fe711c39448408cf82b5dfb1ede9cdce1f30cb41ba8718b`  
		Last Modified: Tue, 24 Jan 2017 20:44:50 GMT  
		Size: 631.4 KB (631368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970b8f4b6d0979b9ce8fd763b86ecfc09cc8a3871c33d23c4a3d34906da9d42c`  
		Last Modified: Tue, 24 Jan 2017 20:44:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:slim`

```console
$ docker pull ruby@sha256:88024720e26639872917bdd17b44f1740d68c99f8044ae621831bd3f24ba5fd7
```

-	Platforms:
	-	linux; amd64

### `ruby:slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84729357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:194c5bd4a311fa1a97c5f5f93d23330187535981d356a5f454cd69d4da317416`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:12:21 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jan 2017 20:12:21 GMT
ENV RUBY_VERSION=2.4.0
# Tue, 17 Jan 2017 20:12:21 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 24 Jan 2017 20:29:15 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:32:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:32:07 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:32:09 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:32:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:32:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:32:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:32:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:32:11 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71b4269631a878c798d197252d03ee021f0a4cacb33b79048d7861e0ab04ce1`  
		Last Modified: Tue, 24 Jan 2017 20:44:56 GMT  
		Size: 22.7 MB (22742172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0061737cc688331e6fe711c39448408cf82b5dfb1ede9cdce1f30cb41ba8718b`  
		Last Modified: Tue, 24 Jan 2017 20:44:50 GMT  
		Size: 631.4 KB (631368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970b8f4b6d0979b9ce8fd763b86ecfc09cc8a3871c33d23c4a3d34906da9d42c`  
		Last Modified: Tue, 24 Jan 2017 20:44:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.0-alpine`

```console
$ docker pull ruby@sha256:ea3a43b6677de52de6150166c0fada680f06942ea34d5266f1e6f9bfdc54afb4
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.0-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27131915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f8317725b494714d1787989f74565c6fea777f3a01455be0b882c10d705085d`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 21:39:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Dec 2016 22:25:51 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Dec 2016 22:25:51 GMT
ENV RUBY_VERSION=2.4.0
# Fri, 06 Jan 2017 00:21:19 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 24 Jan 2017 20:32:11 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:34:44 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:34:44 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:34:46 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:34:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:34:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:34:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:34:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:34:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863b574175a645e7bda540e41976d579fd2c765613e7046b16ceabb78f7cadfa`  
		Last Modified: Tue, 27 Dec 2016 21:51:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64743e8a9ce2487b5ccf86c970bd149da4dd7b02d77f08100091aea957a18fb1`  
		Last Modified: Tue, 24 Jan 2017 20:46:04 GMT  
		Size: 24.2 MB (24187110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f758ea653b418cc9b09cb3a5d144176312dc34a752581683e2aff6f05226c0fe`  
		Last Modified: Tue, 24 Jan 2017 20:45:58 GMT  
		Size: 631.4 KB (631365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c695d09e7969f0c132d258a15e2bcaec5d4d3ae061e07570e323acbda0c72ecf`  
		Last Modified: Tue, 24 Jan 2017 20:45:58 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-alpine`

```console
$ docker pull ruby@sha256:ea3a43b6677de52de6150166c0fada680f06942ea34d5266f1e6f9bfdc54afb4
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27131915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f8317725b494714d1787989f74565c6fea777f3a01455be0b882c10d705085d`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 21:39:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Dec 2016 22:25:51 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Dec 2016 22:25:51 GMT
ENV RUBY_VERSION=2.4.0
# Fri, 06 Jan 2017 00:21:19 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 24 Jan 2017 20:32:11 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:34:44 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:34:44 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:34:46 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:34:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:34:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:34:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:34:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:34:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863b574175a645e7bda540e41976d579fd2c765613e7046b16ceabb78f7cadfa`  
		Last Modified: Tue, 27 Dec 2016 21:51:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64743e8a9ce2487b5ccf86c970bd149da4dd7b02d77f08100091aea957a18fb1`  
		Last Modified: Tue, 24 Jan 2017 20:46:04 GMT  
		Size: 24.2 MB (24187110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f758ea653b418cc9b09cb3a5d144176312dc34a752581683e2aff6f05226c0fe`  
		Last Modified: Tue, 24 Jan 2017 20:45:58 GMT  
		Size: 631.4 KB (631365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c695d09e7969f0c132d258a15e2bcaec5d4d3ae061e07570e323acbda0c72ecf`  
		Last Modified: Tue, 24 Jan 2017 20:45:58 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-alpine`

```console
$ docker pull ruby@sha256:ea3a43b6677de52de6150166c0fada680f06942ea34d5266f1e6f9bfdc54afb4
```

-	Platforms:
	-	linux; amd64

### `ruby:2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27131915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f8317725b494714d1787989f74565c6fea777f3a01455be0b882c10d705085d`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 21:39:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Dec 2016 22:25:51 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Dec 2016 22:25:51 GMT
ENV RUBY_VERSION=2.4.0
# Fri, 06 Jan 2017 00:21:19 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 24 Jan 2017 20:32:11 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:34:44 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:34:44 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:34:46 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:34:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:34:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:34:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:34:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:34:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863b574175a645e7bda540e41976d579fd2c765613e7046b16ceabb78f7cadfa`  
		Last Modified: Tue, 27 Dec 2016 21:51:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64743e8a9ce2487b5ccf86c970bd149da4dd7b02d77f08100091aea957a18fb1`  
		Last Modified: Tue, 24 Jan 2017 20:46:04 GMT  
		Size: 24.2 MB (24187110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f758ea653b418cc9b09cb3a5d144176312dc34a752581683e2aff6f05226c0fe`  
		Last Modified: Tue, 24 Jan 2017 20:45:58 GMT  
		Size: 631.4 KB (631365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c695d09e7969f0c132d258a15e2bcaec5d4d3ae061e07570e323acbda0c72ecf`  
		Last Modified: Tue, 24 Jan 2017 20:45:58 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:alpine`

```console
$ docker pull ruby@sha256:ea3a43b6677de52de6150166c0fada680f06942ea34d5266f1e6f9bfdc54afb4
```

-	Platforms:
	-	linux; amd64

### `ruby:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27131915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f8317725b494714d1787989f74565c6fea777f3a01455be0b882c10d705085d`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 21:39:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Dec 2016 22:25:51 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Dec 2016 22:25:51 GMT
ENV RUBY_VERSION=2.4.0
# Fri, 06 Jan 2017 00:21:19 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 24 Jan 2017 20:32:11 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:34:44 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:34:44 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:34:46 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:34:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:34:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:34:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:34:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:34:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863b574175a645e7bda540e41976d579fd2c765613e7046b16ceabb78f7cadfa`  
		Last Modified: Tue, 27 Dec 2016 21:51:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64743e8a9ce2487b5ccf86c970bd149da4dd7b02d77f08100091aea957a18fb1`  
		Last Modified: Tue, 24 Jan 2017 20:46:04 GMT  
		Size: 24.2 MB (24187110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f758ea653b418cc9b09cb3a5d144176312dc34a752581683e2aff6f05226c0fe`  
		Last Modified: Tue, 24 Jan 2017 20:45:58 GMT  
		Size: 631.4 KB (631365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c695d09e7969f0c132d258a15e2bcaec5d4d3ae061e07570e323acbda0c72ecf`  
		Last Modified: Tue, 24 Jan 2017 20:45:58 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.0-onbuild`

```console
$ docker pull ruby@sha256:5c5b65aa6029cef2d6b42e08bab6abc18628f06d23b8a749d67d78e71c98915d
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.0-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.4 MB (265434498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3063cddef27258063ba91907470dd028978d7e3559109940b7f428abdf9200f`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:19:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 18 Jan 2017 03:19:33 GMT
ENV RUBY_MAJOR=2.4
# Wed, 18 Jan 2017 03:19:33 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 18 Jan 2017 03:19:34 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 24 Jan 2017 20:26:31 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:29:10 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:29:11 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:29:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:29:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:29:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:29:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:29:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:29:14 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 20:34:49 GMT
RUN bundle config --global frozen 1
# Tue, 24 Jan 2017 20:34:50 GMT
RUN mkdir -p /usr/src/app
# Tue, 24 Jan 2017 20:34:50 GMT
WORKDIR /usr/src/app
# Tue, 24 Jan 2017 20:34:51 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 24 Jan 2017 20:34:51 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 24 Jan 2017 20:34:51 GMT
ONBUILD RUN bundle install
# Tue, 24 Jan 2017 20:34:51 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3db4b5710849a53bc2eea0b6f0895c494d751c38c597404d805da82b3f37c`  
		Last Modified: Tue, 17 Jan 2017 00:26:00 GMT  
		Size: 129.8 MB (129823115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0dc2c700a064aa674936ea4b17811cd59dbe1f68b46be92c5a95cfcc2b3cc`  
		Last Modified: Wed, 18 Jan 2017 07:24:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855fedd53ab9d139047e9beb24617e727591434c3bf1825d2e86130cfad4145c`  
		Last Modified: Tue, 24 Jan 2017 20:43:47 GMT  
		Size: 22.6 MB (22580270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0171dda3bc711c8bccbd3d373e7fab687819ae4938dd13e078ef9410269d24cd`  
		Last Modified: Tue, 24 Jan 2017 20:43:40 GMT  
		Size: 631.4 KB (631378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43b65669da2b26c415eb6bd199099251322cd0316297b368a686546393ab31d`  
		Last Modified: Tue, 24 Jan 2017 20:43:41 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e91f93f223859ee33a4de30f51514b20d1151470f0e52554a3287452fb290a`  
		Last Modified: Tue, 24 Jan 2017 20:47:12 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed85cd8abf5717357af15f97e9dba989c6a91687ee76ed02c27fbafbf1d54b6`  
		Last Modified: Tue, 24 Jan 2017 20:47:13 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-onbuild`

```console
$ docker pull ruby@sha256:5c5b65aa6029cef2d6b42e08bab6abc18628f06d23b8a749d67d78e71c98915d
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.4 MB (265434498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3063cddef27258063ba91907470dd028978d7e3559109940b7f428abdf9200f`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:19:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 18 Jan 2017 03:19:33 GMT
ENV RUBY_MAJOR=2.4
# Wed, 18 Jan 2017 03:19:33 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 18 Jan 2017 03:19:34 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 24 Jan 2017 20:26:31 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:29:10 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:29:11 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:29:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:29:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:29:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:29:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:29:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:29:14 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 20:34:49 GMT
RUN bundle config --global frozen 1
# Tue, 24 Jan 2017 20:34:50 GMT
RUN mkdir -p /usr/src/app
# Tue, 24 Jan 2017 20:34:50 GMT
WORKDIR /usr/src/app
# Tue, 24 Jan 2017 20:34:51 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 24 Jan 2017 20:34:51 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 24 Jan 2017 20:34:51 GMT
ONBUILD RUN bundle install
# Tue, 24 Jan 2017 20:34:51 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3db4b5710849a53bc2eea0b6f0895c494d751c38c597404d805da82b3f37c`  
		Last Modified: Tue, 17 Jan 2017 00:26:00 GMT  
		Size: 129.8 MB (129823115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0dc2c700a064aa674936ea4b17811cd59dbe1f68b46be92c5a95cfcc2b3cc`  
		Last Modified: Wed, 18 Jan 2017 07:24:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855fedd53ab9d139047e9beb24617e727591434c3bf1825d2e86130cfad4145c`  
		Last Modified: Tue, 24 Jan 2017 20:43:47 GMT  
		Size: 22.6 MB (22580270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0171dda3bc711c8bccbd3d373e7fab687819ae4938dd13e078ef9410269d24cd`  
		Last Modified: Tue, 24 Jan 2017 20:43:40 GMT  
		Size: 631.4 KB (631378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43b65669da2b26c415eb6bd199099251322cd0316297b368a686546393ab31d`  
		Last Modified: Tue, 24 Jan 2017 20:43:41 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e91f93f223859ee33a4de30f51514b20d1151470f0e52554a3287452fb290a`  
		Last Modified: Tue, 24 Jan 2017 20:47:12 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed85cd8abf5717357af15f97e9dba989c6a91687ee76ed02c27fbafbf1d54b6`  
		Last Modified: Tue, 24 Jan 2017 20:47:13 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-onbuild`

```console
$ docker pull ruby@sha256:5c5b65aa6029cef2d6b42e08bab6abc18628f06d23b8a749d67d78e71c98915d
```

-	Platforms:
	-	linux; amd64

### `ruby:2-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.4 MB (265434498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3063cddef27258063ba91907470dd028978d7e3559109940b7f428abdf9200f`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:19:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 18 Jan 2017 03:19:33 GMT
ENV RUBY_MAJOR=2.4
# Wed, 18 Jan 2017 03:19:33 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 18 Jan 2017 03:19:34 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 24 Jan 2017 20:26:31 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:29:10 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:29:11 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:29:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:29:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:29:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:29:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:29:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:29:14 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 20:34:49 GMT
RUN bundle config --global frozen 1
# Tue, 24 Jan 2017 20:34:50 GMT
RUN mkdir -p /usr/src/app
# Tue, 24 Jan 2017 20:34:50 GMT
WORKDIR /usr/src/app
# Tue, 24 Jan 2017 20:34:51 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 24 Jan 2017 20:34:51 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 24 Jan 2017 20:34:51 GMT
ONBUILD RUN bundle install
# Tue, 24 Jan 2017 20:34:51 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3db4b5710849a53bc2eea0b6f0895c494d751c38c597404d805da82b3f37c`  
		Last Modified: Tue, 17 Jan 2017 00:26:00 GMT  
		Size: 129.8 MB (129823115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0dc2c700a064aa674936ea4b17811cd59dbe1f68b46be92c5a95cfcc2b3cc`  
		Last Modified: Wed, 18 Jan 2017 07:24:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855fedd53ab9d139047e9beb24617e727591434c3bf1825d2e86130cfad4145c`  
		Last Modified: Tue, 24 Jan 2017 20:43:47 GMT  
		Size: 22.6 MB (22580270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0171dda3bc711c8bccbd3d373e7fab687819ae4938dd13e078ef9410269d24cd`  
		Last Modified: Tue, 24 Jan 2017 20:43:40 GMT  
		Size: 631.4 KB (631378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43b65669da2b26c415eb6bd199099251322cd0316297b368a686546393ab31d`  
		Last Modified: Tue, 24 Jan 2017 20:43:41 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e91f93f223859ee33a4de30f51514b20d1151470f0e52554a3287452fb290a`  
		Last Modified: Tue, 24 Jan 2017 20:47:12 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed85cd8abf5717357af15f97e9dba989c6a91687ee76ed02c27fbafbf1d54b6`  
		Last Modified: Tue, 24 Jan 2017 20:47:13 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:onbuild`

```console
$ docker pull ruby@sha256:5c5b65aa6029cef2d6b42e08bab6abc18628f06d23b8a749d67d78e71c98915d
```

-	Platforms:
	-	linux; amd64

### `ruby:onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.4 MB (265434498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3063cddef27258063ba91907470dd028978d7e3559109940b7f428abdf9200f`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:19:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 18 Jan 2017 03:19:33 GMT
ENV RUBY_MAJOR=2.4
# Wed, 18 Jan 2017 03:19:33 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 18 Jan 2017 03:19:34 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 24 Jan 2017 20:26:31 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:29:10 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:29:11 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:29:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:29:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:29:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:29:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:29:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:29:14 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 20:34:49 GMT
RUN bundle config --global frozen 1
# Tue, 24 Jan 2017 20:34:50 GMT
RUN mkdir -p /usr/src/app
# Tue, 24 Jan 2017 20:34:50 GMT
WORKDIR /usr/src/app
# Tue, 24 Jan 2017 20:34:51 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 24 Jan 2017 20:34:51 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 24 Jan 2017 20:34:51 GMT
ONBUILD RUN bundle install
# Tue, 24 Jan 2017 20:34:51 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3db4b5710849a53bc2eea0b6f0895c494d751c38c597404d805da82b3f37c`  
		Last Modified: Tue, 17 Jan 2017 00:26:00 GMT  
		Size: 129.8 MB (129823115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0dc2c700a064aa674936ea4b17811cd59dbe1f68b46be92c5a95cfcc2b3cc`  
		Last Modified: Wed, 18 Jan 2017 07:24:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855fedd53ab9d139047e9beb24617e727591434c3bf1825d2e86130cfad4145c`  
		Last Modified: Tue, 24 Jan 2017 20:43:47 GMT  
		Size: 22.6 MB (22580270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0171dda3bc711c8bccbd3d373e7fab687819ae4938dd13e078ef9410269d24cd`  
		Last Modified: Tue, 24 Jan 2017 20:43:40 GMT  
		Size: 631.4 KB (631378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43b65669da2b26c415eb6bd199099251322cd0316297b368a686546393ab31d`  
		Last Modified: Tue, 24 Jan 2017 20:43:41 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e91f93f223859ee33a4de30f51514b20d1151470f0e52554a3287452fb290a`  
		Last Modified: Tue, 24 Jan 2017 20:47:12 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed85cd8abf5717357af15f97e9dba989c6a91687ee76ed02c27fbafbf1d54b6`  
		Last Modified: Tue, 24 Jan 2017 20:47:13 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
