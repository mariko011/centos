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
$ docker pull ruby@sha256:10229d3841185f65826f1d8671335d2008fd9b0e8fa95bd317a618fb2c2e509a
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.3 MB (95259726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2996e576e29e18836ef4d3b5f2d688699a905c0033aa306e7ae62180dffc1a8`
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
# Tue, 17 Jan 2017 20:17:56 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:20:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:20:31 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:20:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:20:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:20:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:20:34 GMT
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
	-	`sha256:d4e4fe1f26bf3d150b8c3052783cfa2ee94e7c30b42f126f35e6e13d1e3a091c`  
		Last Modified: Wed, 18 Jan 2017 07:27:55 GMT  
		Size: 33.3 MB (33291034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85941b2b500c731a1e20049c6a917cda138b8547b0e9b1e89fe5e886f7e697d`  
		Last Modified: Wed, 18 Jan 2017 07:27:44 GMT  
		Size: 612.9 KB (612874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa593a868c419a82105e83708f0c77f333c3c94c7d817545addcad5ea1173894`  
		Last Modified: Wed, 18 Jan 2017 07:27:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-slim`

```console
$ docker pull ruby@sha256:10229d3841185f65826f1d8671335d2008fd9b0e8fa95bd317a618fb2c2e509a
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.3 MB (95259726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2996e576e29e18836ef4d3b5f2d688699a905c0033aa306e7ae62180dffc1a8`
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
# Tue, 17 Jan 2017 20:17:56 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:20:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:20:31 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:20:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:20:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:20:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:20:34 GMT
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
	-	`sha256:d4e4fe1f26bf3d150b8c3052783cfa2ee94e7c30b42f126f35e6e13d1e3a091c`  
		Last Modified: Wed, 18 Jan 2017 07:27:55 GMT  
		Size: 33.3 MB (33291034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85941b2b500c731a1e20049c6a917cda138b8547b0e9b1e89fe5e886f7e697d`  
		Last Modified: Wed, 18 Jan 2017 07:27:44 GMT  
		Size: 612.9 KB (612874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa593a868c419a82105e83708f0c77f333c3c94c7d817545addcad5ea1173894`  
		Last Modified: Wed, 18 Jan 2017 07:27:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6-alpine`

```console
$ docker pull ruby@sha256:905777cb71d8a252f120dfe4fc7d58ed65687d434a4f93a5f58281855716909b
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35935046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be4c2d44e894004c6e1774ea92a42e6a769922b6dc4dd1b2721a918f3b2c1b1f`
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
# Fri, 06 Jan 2017 00:14:33 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 06 Jan 2017 00:17:15 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 06 Jan 2017 00:17:23 GMT
ENV BUNDLER_VERSION=1.13.7
# Fri, 06 Jan 2017 00:17:25 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 06 Jan 2017 00:17:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 06 Jan 2017 00:17:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 06 Jan 2017 00:17:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jan 2017 00:17:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 06 Jan 2017 00:17:39 GMT
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
	-	`sha256:97aca70fd7c134cbd2b77256140ec2c9fb9674f88a92d5e18c7aa6e79e2518ad`  
		Last Modified: Fri, 06 Jan 2017 00:29:09 GMT  
		Size: 33.0 MB (33008742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1f3a61c5ae08d0a7bd3c9640b3f2494606710ba05adb277e179c52b2bbd090`  
		Last Modified: Fri, 06 Jan 2017 00:28:58 GMT  
		Size: 612.9 KB (612864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b21be7cade0bc69e3f721d74995bb837fc5ff38a8cac82a1af3346177d9e6b`  
		Last Modified: Fri, 06 Jan 2017 00:28:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-alpine`

```console
$ docker pull ruby@sha256:905777cb71d8a252f120dfe4fc7d58ed65687d434a4f93a5f58281855716909b
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35935046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be4c2d44e894004c6e1774ea92a42e6a769922b6dc4dd1b2721a918f3b2c1b1f`
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
# Fri, 06 Jan 2017 00:14:33 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 06 Jan 2017 00:17:15 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 06 Jan 2017 00:17:23 GMT
ENV BUNDLER_VERSION=1.13.7
# Fri, 06 Jan 2017 00:17:25 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 06 Jan 2017 00:17:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 06 Jan 2017 00:17:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 06 Jan 2017 00:17:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jan 2017 00:17:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 06 Jan 2017 00:17:39 GMT
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
	-	`sha256:97aca70fd7c134cbd2b77256140ec2c9fb9674f88a92d5e18c7aa6e79e2518ad`  
		Last Modified: Fri, 06 Jan 2017 00:29:09 GMT  
		Size: 33.0 MB (33008742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1f3a61c5ae08d0a7bd3c9640b3f2494606710ba05adb277e179c52b2bbd090`  
		Last Modified: Fri, 06 Jan 2017 00:28:58 GMT  
		Size: 612.9 KB (612864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b21be7cade0bc69e3f721d74995bb837fc5ff38a8cac82a1af3346177d9e6b`  
		Last Modified: Fri, 06 Jan 2017 00:28:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6-onbuild`

```console
$ docker pull ruby@sha256:cfe2089b28c158aef7c2c601891e73c98b4eea349dea27d017d94053aa3778fe
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.0 MB (275980731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8af578c3974d984b86643e334cb5e3644e0751484687fb9599201805be613f93`
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
# Wed, 18 Jan 2017 03:26:33 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 18 Jan 2017 03:29:22 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 18 Jan 2017 03:29:23 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 18 Jan 2017 03:29:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 18 Jan 2017 03:29:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 18 Jan 2017 03:29:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 18 Jan 2017 03:29:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 03:29:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 18 Jan 2017 03:29:27 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:29:29 GMT
RUN bundle config --global frozen 1
# Wed, 18 Jan 2017 03:29:30 GMT
RUN mkdir -p /usr/src/app
# Wed, 18 Jan 2017 03:29:30 GMT
WORKDIR /usr/src/app
# Wed, 18 Jan 2017 03:29:31 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 18 Jan 2017 03:29:31 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 18 Jan 2017 03:29:32 GMT
ONBUILD RUN bundle install
# Wed, 18 Jan 2017 03:29:32 GMT
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
	-	`sha256:8e2cfbc6834556c37d39c8ab914fc99cdc748f5e80b9b0a59ded536ff24d9cac`  
		Last Modified: Wed, 18 Jan 2017 07:26:34 GMT  
		Size: 33.1 MB (33144999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a15ef1570c39b899c50721cca23017e309cac204582c26db36ea9fd5d0b46d`  
		Last Modified: Wed, 18 Jan 2017 07:26:22 GMT  
		Size: 612.9 KB (612882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a53e2a1ecf1670febe9b3fdee12623172f9983eae99ff336018abfb0e3035d3`  
		Last Modified: Wed, 18 Jan 2017 07:26:21 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4eba430f7ede30e5be6e98f3ee8d6140dfa004787f7bec49e5d2d113ffe524`  
		Last Modified: Wed, 18 Jan 2017 07:27:09 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252a4cfd45cb7cc39311820ef6dda467203f900b98a5036b3caeaa8bd3a75623`  
		Last Modified: Wed, 18 Jan 2017 07:27:09 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-onbuild`

```console
$ docker pull ruby@sha256:cfe2089b28c158aef7c2c601891e73c98b4eea349dea27d017d94053aa3778fe
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.0 MB (275980731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8af578c3974d984b86643e334cb5e3644e0751484687fb9599201805be613f93`
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
# Wed, 18 Jan 2017 03:26:33 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 18 Jan 2017 03:29:22 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 18 Jan 2017 03:29:23 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 18 Jan 2017 03:29:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 18 Jan 2017 03:29:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 18 Jan 2017 03:29:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 18 Jan 2017 03:29:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 03:29:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 18 Jan 2017 03:29:27 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:29:29 GMT
RUN bundle config --global frozen 1
# Wed, 18 Jan 2017 03:29:30 GMT
RUN mkdir -p /usr/src/app
# Wed, 18 Jan 2017 03:29:30 GMT
WORKDIR /usr/src/app
# Wed, 18 Jan 2017 03:29:31 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 18 Jan 2017 03:29:31 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 18 Jan 2017 03:29:32 GMT
ONBUILD RUN bundle install
# Wed, 18 Jan 2017 03:29:32 GMT
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
	-	`sha256:8e2cfbc6834556c37d39c8ab914fc99cdc748f5e80b9b0a59ded536ff24d9cac`  
		Last Modified: Wed, 18 Jan 2017 07:26:34 GMT  
		Size: 33.1 MB (33144999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a15ef1570c39b899c50721cca23017e309cac204582c26db36ea9fd5d0b46d`  
		Last Modified: Wed, 18 Jan 2017 07:26:22 GMT  
		Size: 612.9 KB (612882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a53e2a1ecf1670febe9b3fdee12623172f9983eae99ff336018abfb0e3035d3`  
		Last Modified: Wed, 18 Jan 2017 07:26:21 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4eba430f7ede30e5be6e98f3ee8d6140dfa004787f7bec49e5d2d113ffe524`  
		Last Modified: Wed, 18 Jan 2017 07:27:09 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252a4cfd45cb7cc39311820ef6dda467203f900b98a5036b3caeaa8bd3a75623`  
		Last Modified: Wed, 18 Jan 2017 07:27:09 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3`

```console
$ docker pull ruby@sha256:fd93bf016b7432f47ca011c4685a30ef28fbb47298cfa78651a9a25658b80927
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277952378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03af4b6d6af6f553d809f4b06a74c3bc1be285de756e244e0d9637636ce6a842`
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
# Wed, 18 Jan 2017 03:29:35 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 18 Jan 2017 03:32:26 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 18 Jan 2017 03:32:27 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 18 Jan 2017 03:32:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 18 Jan 2017 03:32:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 18 Jan 2017 03:32:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 18 Jan 2017 03:32:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 03:32:31 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 18 Jan 2017 03:32:31 GMT
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
	-	`sha256:cd54288693c1dcf6ec31caec4f3c829ad27d510da2a727b1649de6f05a938ece`  
		Last Modified: Wed, 18 Jan 2017 07:28:45 GMT  
		Size: 35.1 MB (35116958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7eab361ca1986e7d4e3838c783848362b6a43e914998ef1dc8f03df791f5d8`  
		Last Modified: Wed, 18 Jan 2017 07:28:31 GMT  
		Size: 612.9 KB (612884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4d7067b03db2a04185638e0c7294187c183a2edc68e719b40eefb8fccd9b1d`  
		Last Modified: Wed, 18 Jan 2017 07:28:32 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3`

```console
$ docker pull ruby@sha256:fd93bf016b7432f47ca011c4685a30ef28fbb47298cfa78651a9a25658b80927
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277952378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03af4b6d6af6f553d809f4b06a74c3bc1be285de756e244e0d9637636ce6a842`
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
# Wed, 18 Jan 2017 03:29:35 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 18 Jan 2017 03:32:26 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 18 Jan 2017 03:32:27 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 18 Jan 2017 03:32:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 18 Jan 2017 03:32:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 18 Jan 2017 03:32:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 18 Jan 2017 03:32:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 03:32:31 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 18 Jan 2017 03:32:31 GMT
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
	-	`sha256:cd54288693c1dcf6ec31caec4f3c829ad27d510da2a727b1649de6f05a938ece`  
		Last Modified: Wed, 18 Jan 2017 07:28:45 GMT  
		Size: 35.1 MB (35116958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7eab361ca1986e7d4e3838c783848362b6a43e914998ef1dc8f03df791f5d8`  
		Last Modified: Wed, 18 Jan 2017 07:28:31 GMT  
		Size: 612.9 KB (612884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4d7067b03db2a04185638e0c7294187c183a2edc68e719b40eefb8fccd9b1d`  
		Last Modified: Wed, 18 Jan 2017 07:28:32 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3-slim`

```console
$ docker pull ruby@sha256:9e37ae1dc7de90fd9e45938d0b1a873ba7882d98019cb7999376bdc79b5369f5
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.2 MB (97242713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a63c1bda2ed49e69e64c90732abba1a07957fc04c5696066163598611f6218d6`
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
# Tue, 17 Jan 2017 20:20:36 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:23:19 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:23:19 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:23:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:23:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:23:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:23:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:23:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:23:22 GMT
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
	-	`sha256:34eac5f02ceb24e61fa77cc442e6bdbf1883075d9d66007f1146e1fa9eae6cd4`  
		Last Modified: Wed, 18 Jan 2017 07:30:08 GMT  
		Size: 35.3 MB (35274008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9234580e64f912b03c1fca8ac2d5e7f3cf085a9f8200a9b377d4a31584f33146`  
		Last Modified: Wed, 18 Jan 2017 07:29:55 GMT  
		Size: 612.9 KB (612889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a162ce60d8a0c259c0876993c3632b98ff3ea6c7cfb0766428ddfdde8e4059f5`  
		Last Modified: Wed, 18 Jan 2017 07:29:55 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-slim`

```console
$ docker pull ruby@sha256:9e37ae1dc7de90fd9e45938d0b1a873ba7882d98019cb7999376bdc79b5369f5
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.2 MB (97242713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a63c1bda2ed49e69e64c90732abba1a07957fc04c5696066163598611f6218d6`
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
# Tue, 17 Jan 2017 20:20:36 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:23:19 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:23:19 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:23:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:23:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:23:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:23:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:23:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:23:22 GMT
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
	-	`sha256:34eac5f02ceb24e61fa77cc442e6bdbf1883075d9d66007f1146e1fa9eae6cd4`  
		Last Modified: Wed, 18 Jan 2017 07:30:08 GMT  
		Size: 35.3 MB (35274008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9234580e64f912b03c1fca8ac2d5e7f3cf085a9f8200a9b377d4a31584f33146`  
		Last Modified: Wed, 18 Jan 2017 07:29:55 GMT  
		Size: 612.9 KB (612889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a162ce60d8a0c259c0876993c3632b98ff3ea6c7cfb0766428ddfdde8e4059f5`  
		Last Modified: Wed, 18 Jan 2017 07:29:55 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3-alpine`

```console
$ docker pull ruby@sha256:aebdd4ca90894342a515ec52604df27bd1a3ab84d0370e5e18ee5f81a33d6541
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42860875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6acc528e1b67df9eb0e4c3082add21c7e879c1078fb918c48e66f0a7a3ab5756`
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
# Fri, 06 Jan 2017 00:17:52 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 06 Jan 2017 00:20:39 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 06 Jan 2017 00:20:39 GMT
ENV BUNDLER_VERSION=1.13.7
# Fri, 06 Jan 2017 00:20:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 06 Jan 2017 00:20:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 06 Jan 2017 00:20:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 06 Jan 2017 00:21:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jan 2017 00:21:06 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 06 Jan 2017 00:21:07 GMT
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
	-	`sha256:01eb741042507fd6450bf2b4a89149a31d320aaf4827824f4b2bc4dcf74b7acc`  
		Last Modified: Fri, 06 Jan 2017 00:31:19 GMT  
		Size: 39.9 MB (39934571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5a22494b540154382bfe1fe596fd239ba57fe8f58d62cbc02f46c408168bc8`  
		Last Modified: Fri, 06 Jan 2017 00:31:07 GMT  
		Size: 612.9 KB (612863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17448377e89c33982dbb69853a87fbf0fece8b1e9c689afd6e02e080cb0efb53`  
		Last Modified: Fri, 06 Jan 2017 00:31:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-alpine`

```console
$ docker pull ruby@sha256:aebdd4ca90894342a515ec52604df27bd1a3ab84d0370e5e18ee5f81a33d6541
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42860875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6acc528e1b67df9eb0e4c3082add21c7e879c1078fb918c48e66f0a7a3ab5756`
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
# Fri, 06 Jan 2017 00:17:52 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 06 Jan 2017 00:20:39 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 06 Jan 2017 00:20:39 GMT
ENV BUNDLER_VERSION=1.13.7
# Fri, 06 Jan 2017 00:20:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 06 Jan 2017 00:20:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 06 Jan 2017 00:20:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 06 Jan 2017 00:21:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jan 2017 00:21:06 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 06 Jan 2017 00:21:07 GMT
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
	-	`sha256:01eb741042507fd6450bf2b4a89149a31d320aaf4827824f4b2bc4dcf74b7acc`  
		Last Modified: Fri, 06 Jan 2017 00:31:19 GMT  
		Size: 39.9 MB (39934571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5a22494b540154382bfe1fe596fd239ba57fe8f58d62cbc02f46c408168bc8`  
		Last Modified: Fri, 06 Jan 2017 00:31:07 GMT  
		Size: 612.9 KB (612863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17448377e89c33982dbb69853a87fbf0fece8b1e9c689afd6e02e080cb0efb53`  
		Last Modified: Fri, 06 Jan 2017 00:31:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3-onbuild`

```console
$ docker pull ruby@sha256:d05ea56c9a6601847dffb13abad8a02f3d309a122737feccdd2cc2acda073e91
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277952690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cbd505b288bfc0d5cf4ae52a34d2ebe61a7304c601b8cd755466b4b4e127259`
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
# Wed, 18 Jan 2017 03:29:35 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 18 Jan 2017 03:32:26 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 18 Jan 2017 03:32:27 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 18 Jan 2017 03:32:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 18 Jan 2017 03:32:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 18 Jan 2017 03:32:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 18 Jan 2017 03:32:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 03:32:31 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 18 Jan 2017 03:32:31 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:32:45 GMT
RUN bundle config --global frozen 1
# Wed, 18 Jan 2017 03:32:46 GMT
RUN mkdir -p /usr/src/app
# Wed, 18 Jan 2017 03:32:58 GMT
WORKDIR /usr/src/app
# Wed, 18 Jan 2017 03:32:59 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 18 Jan 2017 03:32:59 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 18 Jan 2017 03:33:00 GMT
ONBUILD RUN bundle install
# Wed, 18 Jan 2017 03:33:00 GMT
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
	-	`sha256:cd54288693c1dcf6ec31caec4f3c829ad27d510da2a727b1649de6f05a938ece`  
		Last Modified: Wed, 18 Jan 2017 07:28:45 GMT  
		Size: 35.1 MB (35116958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7eab361ca1986e7d4e3838c783848362b6a43e914998ef1dc8f03df791f5d8`  
		Last Modified: Wed, 18 Jan 2017 07:28:31 GMT  
		Size: 612.9 KB (612884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4d7067b03db2a04185638e0c7294187c183a2edc68e719b40eefb8fccd9b1d`  
		Last Modified: Wed, 18 Jan 2017 07:28:32 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c29e7c7f0f3a5cf8d50310b85476afd6154e42818416371765b46a099bdef3a`  
		Last Modified: Wed, 18 Jan 2017 07:29:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8aa34f1d017c7c6e1f637d1512ea42eacf87f1b669f5d0f00a642a49d5b254`  
		Last Modified: Wed, 18 Jan 2017 07:29:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-onbuild`

```console
$ docker pull ruby@sha256:d05ea56c9a6601847dffb13abad8a02f3d309a122737feccdd2cc2acda073e91
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277952690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cbd505b288bfc0d5cf4ae52a34d2ebe61a7304c601b8cd755466b4b4e127259`
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
# Wed, 18 Jan 2017 03:29:35 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 18 Jan 2017 03:32:26 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 18 Jan 2017 03:32:27 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 18 Jan 2017 03:32:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 18 Jan 2017 03:32:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 18 Jan 2017 03:32:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 18 Jan 2017 03:32:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 03:32:31 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 18 Jan 2017 03:32:31 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:32:45 GMT
RUN bundle config --global frozen 1
# Wed, 18 Jan 2017 03:32:46 GMT
RUN mkdir -p /usr/src/app
# Wed, 18 Jan 2017 03:32:58 GMT
WORKDIR /usr/src/app
# Wed, 18 Jan 2017 03:32:59 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 18 Jan 2017 03:32:59 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 18 Jan 2017 03:33:00 GMT
ONBUILD RUN bundle install
# Wed, 18 Jan 2017 03:33:00 GMT
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
	-	`sha256:cd54288693c1dcf6ec31caec4f3c829ad27d510da2a727b1649de6f05a938ece`  
		Last Modified: Wed, 18 Jan 2017 07:28:45 GMT  
		Size: 35.1 MB (35116958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7eab361ca1986e7d4e3838c783848362b6a43e914998ef1dc8f03df791f5d8`  
		Last Modified: Wed, 18 Jan 2017 07:28:31 GMT  
		Size: 612.9 KB (612884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4d7067b03db2a04185638e0c7294187c183a2edc68e719b40eefb8fccd9b1d`  
		Last Modified: Wed, 18 Jan 2017 07:28:32 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c29e7c7f0f3a5cf8d50310b85476afd6154e42818416371765b46a099bdef3a`  
		Last Modified: Wed, 18 Jan 2017 07:29:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8aa34f1d017c7c6e1f637d1512ea42eacf87f1b669f5d0f00a642a49d5b254`  
		Last Modified: Wed, 18 Jan 2017 07:29:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.0`

```console
$ docker pull ruby@sha256:6fce3ee90439d2d052495c2bb09b0a6303c608951b49dc2c6762a1b35c082bf6
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263649955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b80506f9634a3e7ab19a63dd16ed0768ad5c25285cfad9024a9ae3644dbe68e`
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
# Wed, 18 Jan 2017 03:19:34 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 18 Jan 2017 03:22:49 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 18 Jan 2017 03:22:53 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 18 Jan 2017 03:22:54 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 18 Jan 2017 03:22:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 18 Jan 2017 03:22:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 18 Jan 2017 03:22:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 03:22:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 18 Jan 2017 03:23:09 GMT
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
	-	`sha256:22e8610e35d4255cf94496be58d290a5b86db6c26dcb2b15046d05e6b27d6e01`  
		Last Modified: Wed, 18 Jan 2017 07:30:52 GMT  
		Size: 20.8 MB (20814525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca303d9f8c811d26c185e953e2d0bdd2fb6c00dad9137318d37b81affa7b2d7`  
		Last Modified: Wed, 18 Jan 2017 07:30:44 GMT  
		Size: 612.9 KB (612893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ebbdd43885c528249c8b51abea74cbb1c5f7724475dbd7fe4b0019cbbd2c96`  
		Last Modified: Wed, 18 Jan 2017 07:30:43 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4`

```console
$ docker pull ruby@sha256:6fce3ee90439d2d052495c2bb09b0a6303c608951b49dc2c6762a1b35c082bf6
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263649955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b80506f9634a3e7ab19a63dd16ed0768ad5c25285cfad9024a9ae3644dbe68e`
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
# Wed, 18 Jan 2017 03:19:34 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 18 Jan 2017 03:22:49 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 18 Jan 2017 03:22:53 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 18 Jan 2017 03:22:54 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 18 Jan 2017 03:22:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 18 Jan 2017 03:22:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 18 Jan 2017 03:22:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 03:22:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 18 Jan 2017 03:23:09 GMT
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
	-	`sha256:22e8610e35d4255cf94496be58d290a5b86db6c26dcb2b15046d05e6b27d6e01`  
		Last Modified: Wed, 18 Jan 2017 07:30:52 GMT  
		Size: 20.8 MB (20814525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca303d9f8c811d26c185e953e2d0bdd2fb6c00dad9137318d37b81affa7b2d7`  
		Last Modified: Wed, 18 Jan 2017 07:30:44 GMT  
		Size: 612.9 KB (612893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ebbdd43885c528249c8b51abea74cbb1c5f7724475dbd7fe4b0019cbbd2c96`  
		Last Modified: Wed, 18 Jan 2017 07:30:43 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2`

```console
$ docker pull ruby@sha256:6fce3ee90439d2d052495c2bb09b0a6303c608951b49dc2c6762a1b35c082bf6
```

-	Platforms:
	-	linux; amd64

### `ruby:2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263649955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b80506f9634a3e7ab19a63dd16ed0768ad5c25285cfad9024a9ae3644dbe68e`
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
# Wed, 18 Jan 2017 03:19:34 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 18 Jan 2017 03:22:49 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 18 Jan 2017 03:22:53 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 18 Jan 2017 03:22:54 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 18 Jan 2017 03:22:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 18 Jan 2017 03:22:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 18 Jan 2017 03:22:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 03:22:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 18 Jan 2017 03:23:09 GMT
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
	-	`sha256:22e8610e35d4255cf94496be58d290a5b86db6c26dcb2b15046d05e6b27d6e01`  
		Last Modified: Wed, 18 Jan 2017 07:30:52 GMT  
		Size: 20.8 MB (20814525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca303d9f8c811d26c185e953e2d0bdd2fb6c00dad9137318d37b81affa7b2d7`  
		Last Modified: Wed, 18 Jan 2017 07:30:44 GMT  
		Size: 612.9 KB (612893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ebbdd43885c528249c8b51abea74cbb1c5f7724475dbd7fe4b0019cbbd2c96`  
		Last Modified: Wed, 18 Jan 2017 07:30:43 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:latest`

```console
$ docker pull ruby@sha256:6fce3ee90439d2d052495c2bb09b0a6303c608951b49dc2c6762a1b35c082bf6
```

-	Platforms:
	-	linux; amd64

### `ruby:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263649955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b80506f9634a3e7ab19a63dd16ed0768ad5c25285cfad9024a9ae3644dbe68e`
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
# Wed, 18 Jan 2017 03:19:34 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 18 Jan 2017 03:22:49 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 18 Jan 2017 03:22:53 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 18 Jan 2017 03:22:54 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 18 Jan 2017 03:22:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 18 Jan 2017 03:22:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 18 Jan 2017 03:22:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 03:22:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 18 Jan 2017 03:23:09 GMT
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
	-	`sha256:22e8610e35d4255cf94496be58d290a5b86db6c26dcb2b15046d05e6b27d6e01`  
		Last Modified: Wed, 18 Jan 2017 07:30:52 GMT  
		Size: 20.8 MB (20814525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca303d9f8c811d26c185e953e2d0bdd2fb6c00dad9137318d37b81affa7b2d7`  
		Last Modified: Wed, 18 Jan 2017 07:30:44 GMT  
		Size: 612.9 KB (612893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ebbdd43885c528249c8b51abea74cbb1c5f7724475dbd7fe4b0019cbbd2c96`  
		Last Modified: Wed, 18 Jan 2017 07:30:43 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.0-slim`

```console
$ docker pull ruby@sha256:b05f82a8240b5d478e47edc957bb065253dc384a74d059f2c9b6cb9d2a51f57f
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.0-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82939526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63926fbdb7c3be483ca37db7d0b82a6973047c3c37df33ff82b02d0dd62b037d`
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
# Tue, 17 Jan 2017 20:12:22 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:15:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:15:16 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:15:17 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:15:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:15:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:15:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:15:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:15:19 GMT
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
	-	`sha256:5c49c788745b14cb50f09b3c8abf1b8947adb3bcd93adc4c39e8a2b0f6b28898`  
		Last Modified: Wed, 18 Jan 2017 07:33:05 GMT  
		Size: 21.0 MB (20970826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0ae1e6a6c03e4bcb2548cdfc1ac1a986ccb3ccac43a0479c79fd0313cd0fed`  
		Last Modified: Wed, 18 Jan 2017 07:32:56 GMT  
		Size: 612.9 KB (612883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f02b9005048298b92eaceda3281af68b7147596e47c7ba4c98daee8102093f`  
		Last Modified: Wed, 18 Jan 2017 07:32:55 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-slim`

```console
$ docker pull ruby@sha256:b05f82a8240b5d478e47edc957bb065253dc384a74d059f2c9b6cb9d2a51f57f
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82939526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63926fbdb7c3be483ca37db7d0b82a6973047c3c37df33ff82b02d0dd62b037d`
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
# Tue, 17 Jan 2017 20:12:22 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:15:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:15:16 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:15:17 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:15:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:15:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:15:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:15:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:15:19 GMT
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
	-	`sha256:5c49c788745b14cb50f09b3c8abf1b8947adb3bcd93adc4c39e8a2b0f6b28898`  
		Last Modified: Wed, 18 Jan 2017 07:33:05 GMT  
		Size: 21.0 MB (20970826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0ae1e6a6c03e4bcb2548cdfc1ac1a986ccb3ccac43a0479c79fd0313cd0fed`  
		Last Modified: Wed, 18 Jan 2017 07:32:56 GMT  
		Size: 612.9 KB (612883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f02b9005048298b92eaceda3281af68b7147596e47c7ba4c98daee8102093f`  
		Last Modified: Wed, 18 Jan 2017 07:32:55 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-slim`

```console
$ docker pull ruby@sha256:b05f82a8240b5d478e47edc957bb065253dc384a74d059f2c9b6cb9d2a51f57f
```

-	Platforms:
	-	linux; amd64

### `ruby:2-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82939526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63926fbdb7c3be483ca37db7d0b82a6973047c3c37df33ff82b02d0dd62b037d`
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
# Tue, 17 Jan 2017 20:12:22 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:15:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:15:16 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:15:17 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:15:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:15:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:15:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:15:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:15:19 GMT
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
	-	`sha256:5c49c788745b14cb50f09b3c8abf1b8947adb3bcd93adc4c39e8a2b0f6b28898`  
		Last Modified: Wed, 18 Jan 2017 07:33:05 GMT  
		Size: 21.0 MB (20970826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0ae1e6a6c03e4bcb2548cdfc1ac1a986ccb3ccac43a0479c79fd0313cd0fed`  
		Last Modified: Wed, 18 Jan 2017 07:32:56 GMT  
		Size: 612.9 KB (612883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f02b9005048298b92eaceda3281af68b7147596e47c7ba4c98daee8102093f`  
		Last Modified: Wed, 18 Jan 2017 07:32:55 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:slim`

```console
$ docker pull ruby@sha256:b05f82a8240b5d478e47edc957bb065253dc384a74d059f2c9b6cb9d2a51f57f
```

-	Platforms:
	-	linux; amd64

### `ruby:slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82939526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63926fbdb7c3be483ca37db7d0b82a6973047c3c37df33ff82b02d0dd62b037d`
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
# Tue, 17 Jan 2017 20:12:22 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:15:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:15:16 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:15:17 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:15:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:15:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:15:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:15:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:15:19 GMT
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
	-	`sha256:5c49c788745b14cb50f09b3c8abf1b8947adb3bcd93adc4c39e8a2b0f6b28898`  
		Last Modified: Wed, 18 Jan 2017 07:33:05 GMT  
		Size: 21.0 MB (20970826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0ae1e6a6c03e4bcb2548cdfc1ac1a986ccb3ccac43a0479c79fd0313cd0fed`  
		Last Modified: Wed, 18 Jan 2017 07:32:56 GMT  
		Size: 612.9 KB (612883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f02b9005048298b92eaceda3281af68b7147596e47c7ba4c98daee8102093f`  
		Last Modified: Wed, 18 Jan 2017 07:32:55 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.0-alpine`

```console
$ docker pull ruby@sha256:9f4bfd2c610028ae52983fdcc2bcbdd0942284382cc61508ddda4039db241cf3
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.0-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.3 MB (25335083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11661999907ac401471a01c6a3e8acb6dcd83b89f11e1663970f1426c662c01a`
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
# Fri, 06 Jan 2017 00:21:19 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 06 Jan 2017 00:24:28 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 06 Jan 2017 00:24:29 GMT
ENV BUNDLER_VERSION=1.13.7
# Fri, 06 Jan 2017 00:24:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 06 Jan 2017 00:24:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 06 Jan 2017 00:24:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 06 Jan 2017 00:24:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jan 2017 00:24:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 06 Jan 2017 00:24:45 GMT
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
	-	`sha256:44071939e55289b3af116ca1ede3c88e505b46008a9b2cd1ef66e398da522b25`  
		Last Modified: Fri, 06 Jan 2017 00:34:15 GMT  
		Size: 22.4 MB (22408765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057846e44b5be9a4cf869f598c2957f64b50dbfbe5c6b660578f053fca4a359f`  
		Last Modified: Fri, 06 Jan 2017 00:34:09 GMT  
		Size: 612.9 KB (612878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4294c58c8087c3c947607d7cdf2624f549b94100ed49628b310dbffe82c138de`  
		Last Modified: Fri, 06 Jan 2017 00:34:09 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-alpine`

```console
$ docker pull ruby@sha256:9f4bfd2c610028ae52983fdcc2bcbdd0942284382cc61508ddda4039db241cf3
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.3 MB (25335083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11661999907ac401471a01c6a3e8acb6dcd83b89f11e1663970f1426c662c01a`
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
# Fri, 06 Jan 2017 00:21:19 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 06 Jan 2017 00:24:28 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 06 Jan 2017 00:24:29 GMT
ENV BUNDLER_VERSION=1.13.7
# Fri, 06 Jan 2017 00:24:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 06 Jan 2017 00:24:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 06 Jan 2017 00:24:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 06 Jan 2017 00:24:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jan 2017 00:24:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 06 Jan 2017 00:24:45 GMT
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
	-	`sha256:44071939e55289b3af116ca1ede3c88e505b46008a9b2cd1ef66e398da522b25`  
		Last Modified: Fri, 06 Jan 2017 00:34:15 GMT  
		Size: 22.4 MB (22408765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057846e44b5be9a4cf869f598c2957f64b50dbfbe5c6b660578f053fca4a359f`  
		Last Modified: Fri, 06 Jan 2017 00:34:09 GMT  
		Size: 612.9 KB (612878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4294c58c8087c3c947607d7cdf2624f549b94100ed49628b310dbffe82c138de`  
		Last Modified: Fri, 06 Jan 2017 00:34:09 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-alpine`

```console
$ docker pull ruby@sha256:9f4bfd2c610028ae52983fdcc2bcbdd0942284382cc61508ddda4039db241cf3
```

-	Platforms:
	-	linux; amd64

### `ruby:2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.3 MB (25335083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11661999907ac401471a01c6a3e8acb6dcd83b89f11e1663970f1426c662c01a`
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
# Fri, 06 Jan 2017 00:21:19 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 06 Jan 2017 00:24:28 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 06 Jan 2017 00:24:29 GMT
ENV BUNDLER_VERSION=1.13.7
# Fri, 06 Jan 2017 00:24:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 06 Jan 2017 00:24:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 06 Jan 2017 00:24:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 06 Jan 2017 00:24:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jan 2017 00:24:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 06 Jan 2017 00:24:45 GMT
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
	-	`sha256:44071939e55289b3af116ca1ede3c88e505b46008a9b2cd1ef66e398da522b25`  
		Last Modified: Fri, 06 Jan 2017 00:34:15 GMT  
		Size: 22.4 MB (22408765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057846e44b5be9a4cf869f598c2957f64b50dbfbe5c6b660578f053fca4a359f`  
		Last Modified: Fri, 06 Jan 2017 00:34:09 GMT  
		Size: 612.9 KB (612878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4294c58c8087c3c947607d7cdf2624f549b94100ed49628b310dbffe82c138de`  
		Last Modified: Fri, 06 Jan 2017 00:34:09 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:alpine`

```console
$ docker pull ruby@sha256:9f4bfd2c610028ae52983fdcc2bcbdd0942284382cc61508ddda4039db241cf3
```

-	Platforms:
	-	linux; amd64

### `ruby:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.3 MB (25335083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11661999907ac401471a01c6a3e8acb6dcd83b89f11e1663970f1426c662c01a`
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
# Fri, 06 Jan 2017 00:21:19 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 06 Jan 2017 00:24:28 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 06 Jan 2017 00:24:29 GMT
ENV BUNDLER_VERSION=1.13.7
# Fri, 06 Jan 2017 00:24:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 06 Jan 2017 00:24:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 06 Jan 2017 00:24:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 06 Jan 2017 00:24:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jan 2017 00:24:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 06 Jan 2017 00:24:45 GMT
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
	-	`sha256:44071939e55289b3af116ca1ede3c88e505b46008a9b2cd1ef66e398da522b25`  
		Last Modified: Fri, 06 Jan 2017 00:34:15 GMT  
		Size: 22.4 MB (22408765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057846e44b5be9a4cf869f598c2957f64b50dbfbe5c6b660578f053fca4a359f`  
		Last Modified: Fri, 06 Jan 2017 00:34:09 GMT  
		Size: 612.9 KB (612878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4294c58c8087c3c947607d7cdf2624f549b94100ed49628b310dbffe82c138de`  
		Last Modified: Fri, 06 Jan 2017 00:34:09 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.0-onbuild`

```console
$ docker pull ruby@sha256:3053878ea9018669d2302a4af279ff5fbfd5ec3452afcf34a788e4cea51f76a1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.0-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263650266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f17e02485a6c361be2cc450dbb5a63d447ac1d7451f6060321f0f267274c1a8`
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
# Wed, 18 Jan 2017 03:19:34 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 18 Jan 2017 03:22:49 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 18 Jan 2017 03:22:53 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 18 Jan 2017 03:22:54 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 18 Jan 2017 03:22:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 18 Jan 2017 03:22:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 18 Jan 2017 03:22:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 03:22:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 18 Jan 2017 03:23:09 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:23:10 GMT
RUN bundle config --global frozen 1
# Wed, 18 Jan 2017 03:23:11 GMT
RUN mkdir -p /usr/src/app
# Wed, 18 Jan 2017 03:23:12 GMT
WORKDIR /usr/src/app
# Wed, 18 Jan 2017 03:23:24 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 18 Jan 2017 03:23:25 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 18 Jan 2017 03:23:25 GMT
ONBUILD RUN bundle install
# Wed, 18 Jan 2017 03:23:25 GMT
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
	-	`sha256:22e8610e35d4255cf94496be58d290a5b86db6c26dcb2b15046d05e6b27d6e01`  
		Last Modified: Wed, 18 Jan 2017 07:30:52 GMT  
		Size: 20.8 MB (20814525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca303d9f8c811d26c185e953e2d0bdd2fb6c00dad9137318d37b81affa7b2d7`  
		Last Modified: Wed, 18 Jan 2017 07:30:44 GMT  
		Size: 612.9 KB (612893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ebbdd43885c528249c8b51abea74cbb1c5f7724475dbd7fe4b0019cbbd2c96`  
		Last Modified: Wed, 18 Jan 2017 07:30:43 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bcafe6165aced223a73f5379997c0c5ae516a039b4a44e595ab9eb70097dae0`  
		Last Modified: Wed, 18 Jan 2017 07:31:54 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9478c2bf406d463365c0bc69fbc849f0b218b25777b2836c40f9c4226a477b73`  
		Last Modified: Wed, 18 Jan 2017 07:31:54 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-onbuild`

```console
$ docker pull ruby@sha256:3053878ea9018669d2302a4af279ff5fbfd5ec3452afcf34a788e4cea51f76a1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263650266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f17e02485a6c361be2cc450dbb5a63d447ac1d7451f6060321f0f267274c1a8`
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
# Wed, 18 Jan 2017 03:19:34 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 18 Jan 2017 03:22:49 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 18 Jan 2017 03:22:53 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 18 Jan 2017 03:22:54 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 18 Jan 2017 03:22:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 18 Jan 2017 03:22:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 18 Jan 2017 03:22:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 03:22:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 18 Jan 2017 03:23:09 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:23:10 GMT
RUN bundle config --global frozen 1
# Wed, 18 Jan 2017 03:23:11 GMT
RUN mkdir -p /usr/src/app
# Wed, 18 Jan 2017 03:23:12 GMT
WORKDIR /usr/src/app
# Wed, 18 Jan 2017 03:23:24 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 18 Jan 2017 03:23:25 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 18 Jan 2017 03:23:25 GMT
ONBUILD RUN bundle install
# Wed, 18 Jan 2017 03:23:25 GMT
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
	-	`sha256:22e8610e35d4255cf94496be58d290a5b86db6c26dcb2b15046d05e6b27d6e01`  
		Last Modified: Wed, 18 Jan 2017 07:30:52 GMT  
		Size: 20.8 MB (20814525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca303d9f8c811d26c185e953e2d0bdd2fb6c00dad9137318d37b81affa7b2d7`  
		Last Modified: Wed, 18 Jan 2017 07:30:44 GMT  
		Size: 612.9 KB (612893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ebbdd43885c528249c8b51abea74cbb1c5f7724475dbd7fe4b0019cbbd2c96`  
		Last Modified: Wed, 18 Jan 2017 07:30:43 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bcafe6165aced223a73f5379997c0c5ae516a039b4a44e595ab9eb70097dae0`  
		Last Modified: Wed, 18 Jan 2017 07:31:54 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9478c2bf406d463365c0bc69fbc849f0b218b25777b2836c40f9c4226a477b73`  
		Last Modified: Wed, 18 Jan 2017 07:31:54 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-onbuild`

```console
$ docker pull ruby@sha256:3053878ea9018669d2302a4af279ff5fbfd5ec3452afcf34a788e4cea51f76a1
```

-	Platforms:
	-	linux; amd64

### `ruby:2-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263650266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f17e02485a6c361be2cc450dbb5a63d447ac1d7451f6060321f0f267274c1a8`
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
# Wed, 18 Jan 2017 03:19:34 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 18 Jan 2017 03:22:49 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 18 Jan 2017 03:22:53 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 18 Jan 2017 03:22:54 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 18 Jan 2017 03:22:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 18 Jan 2017 03:22:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 18 Jan 2017 03:22:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 03:22:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 18 Jan 2017 03:23:09 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:23:10 GMT
RUN bundle config --global frozen 1
# Wed, 18 Jan 2017 03:23:11 GMT
RUN mkdir -p /usr/src/app
# Wed, 18 Jan 2017 03:23:12 GMT
WORKDIR /usr/src/app
# Wed, 18 Jan 2017 03:23:24 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 18 Jan 2017 03:23:25 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 18 Jan 2017 03:23:25 GMT
ONBUILD RUN bundle install
# Wed, 18 Jan 2017 03:23:25 GMT
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
	-	`sha256:22e8610e35d4255cf94496be58d290a5b86db6c26dcb2b15046d05e6b27d6e01`  
		Last Modified: Wed, 18 Jan 2017 07:30:52 GMT  
		Size: 20.8 MB (20814525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca303d9f8c811d26c185e953e2d0bdd2fb6c00dad9137318d37b81affa7b2d7`  
		Last Modified: Wed, 18 Jan 2017 07:30:44 GMT  
		Size: 612.9 KB (612893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ebbdd43885c528249c8b51abea74cbb1c5f7724475dbd7fe4b0019cbbd2c96`  
		Last Modified: Wed, 18 Jan 2017 07:30:43 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bcafe6165aced223a73f5379997c0c5ae516a039b4a44e595ab9eb70097dae0`  
		Last Modified: Wed, 18 Jan 2017 07:31:54 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9478c2bf406d463365c0bc69fbc849f0b218b25777b2836c40f9c4226a477b73`  
		Last Modified: Wed, 18 Jan 2017 07:31:54 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:onbuild`

```console
$ docker pull ruby@sha256:3053878ea9018669d2302a4af279ff5fbfd5ec3452afcf34a788e4cea51f76a1
```

-	Platforms:
	-	linux; amd64

### `ruby:onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263650266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f17e02485a6c361be2cc450dbb5a63d447ac1d7451f6060321f0f267274c1a8`
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
# Wed, 18 Jan 2017 03:19:34 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 18 Jan 2017 03:22:49 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 18 Jan 2017 03:22:53 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 18 Jan 2017 03:22:54 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 18 Jan 2017 03:22:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 18 Jan 2017 03:22:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 18 Jan 2017 03:22:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 03:22:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 18 Jan 2017 03:23:09 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:23:10 GMT
RUN bundle config --global frozen 1
# Wed, 18 Jan 2017 03:23:11 GMT
RUN mkdir -p /usr/src/app
# Wed, 18 Jan 2017 03:23:12 GMT
WORKDIR /usr/src/app
# Wed, 18 Jan 2017 03:23:24 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 18 Jan 2017 03:23:25 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 18 Jan 2017 03:23:25 GMT
ONBUILD RUN bundle install
# Wed, 18 Jan 2017 03:23:25 GMT
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
	-	`sha256:22e8610e35d4255cf94496be58d290a5b86db6c26dcb2b15046d05e6b27d6e01`  
		Last Modified: Wed, 18 Jan 2017 07:30:52 GMT  
		Size: 20.8 MB (20814525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca303d9f8c811d26c185e953e2d0bdd2fb6c00dad9137318d37b81affa7b2d7`  
		Last Modified: Wed, 18 Jan 2017 07:30:44 GMT  
		Size: 612.9 KB (612893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ebbdd43885c528249c8b51abea74cbb1c5f7724475dbd7fe4b0019cbbd2c96`  
		Last Modified: Wed, 18 Jan 2017 07:30:43 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bcafe6165aced223a73f5379997c0c5ae516a039b4a44e595ab9eb70097dae0`  
		Last Modified: Wed, 18 Jan 2017 07:31:54 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9478c2bf406d463365c0bc69fbc849f0b218b25777b2836c40f9c4226a477b73`  
		Last Modified: Wed, 18 Jan 2017 07:31:54 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
