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
$ docker pull ruby@sha256:7386f46557a946ac32271835105da03bcc031857156f18d5516ea3ef3492510d
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.7 MB (275712199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6be74fc3c3efaf764756cf08339fc3a0bdc33c3b5e2a37133e476ca28c5f2f33`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:48:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:23:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:23:06 GMT
ENV RUBY_MAJOR=2.1
# Tue, 20 Sep 2016 18:23:06 GMT
ENV RUBY_VERSION=2.1.10
# Tue, 20 Sep 2016 18:23:06 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Tue, 20 Sep 2016 18:23:07 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:35:15 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:35:16 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:35:17 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:35:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:35:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:35:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:35:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:35:19 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dff8d6297fa7aafd7d118ff8070d252c076e8fa52d79f36a98f1f4a39de0c61`  
		Last Modified: Mon, 19 Sep 2016 17:56:01 GMT  
		Size: 129.8 MB (129760900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495676767d68b79f30f651d055c93be9d4ab5df9f41da915e94605f5b2a3647`  
		Last Modified: Wed, 21 Sep 2016 21:02:57 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:419a1fc66dd42eb30747154f308ddc3ea722bb8052af6b312b8381e847aa7876`  
		Last Modified: Wed, 21 Sep 2016 23:55:06 GMT  
		Size: 33.0 MB (32962003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4d7f0228ab1a077a7f68f6f08913e495767054783b49f97d79e00469159689`  
		Last Modified: Wed, 21 Sep 2016 23:54:55 GMT  
		Size: 609.9 KB (609942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c5e3ea7b650b998b658926b621d1aa7d0eb091a74b018ede5e8facfd4a67b3`  
		Last Modified: Wed, 21 Sep 2016 23:54:54 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1`

```console
$ docker pull ruby@sha256:7386f46557a946ac32271835105da03bcc031857156f18d5516ea3ef3492510d
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.7 MB (275712199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6be74fc3c3efaf764756cf08339fc3a0bdc33c3b5e2a37133e476ca28c5f2f33`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:48:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:23:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:23:06 GMT
ENV RUBY_MAJOR=2.1
# Tue, 20 Sep 2016 18:23:06 GMT
ENV RUBY_VERSION=2.1.10
# Tue, 20 Sep 2016 18:23:06 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Tue, 20 Sep 2016 18:23:07 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:35:15 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:35:16 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:35:17 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:35:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:35:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:35:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:35:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:35:19 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dff8d6297fa7aafd7d118ff8070d252c076e8fa52d79f36a98f1f4a39de0c61`  
		Last Modified: Mon, 19 Sep 2016 17:56:01 GMT  
		Size: 129.8 MB (129760900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495676767d68b79f30f651d055c93be9d4ab5df9f41da915e94605f5b2a3647`  
		Last Modified: Wed, 21 Sep 2016 21:02:57 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:419a1fc66dd42eb30747154f308ddc3ea722bb8052af6b312b8381e847aa7876`  
		Last Modified: Wed, 21 Sep 2016 23:55:06 GMT  
		Size: 33.0 MB (32962003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4d7f0228ab1a077a7f68f6f08913e495767054783b49f97d79e00469159689`  
		Last Modified: Wed, 21 Sep 2016 23:54:55 GMT  
		Size: 609.9 KB (609942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c5e3ea7b650b998b658926b621d1aa7d0eb091a74b018ede5e8facfd4a67b3`  
		Last Modified: Wed, 21 Sep 2016 23:54:54 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-slim`

```console
$ docker pull ruby@sha256:d1829387034eba344b8b50c6b90e2fb34a85fbab40c7e3de38ce563a1709d384
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 MB (95073918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29fe0d5ddf0c5bb25c741d61ed44fa2dd31715a6bc1ab8839a29fc56c488927a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Wed, 21 Sep 2016 23:35:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Sep 2016 23:35:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 21 Sep 2016 23:35:32 GMT
ENV RUBY_MAJOR=2.1
# Wed, 21 Sep 2016 23:35:32 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 21 Sep 2016 23:35:32 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Wed, 21 Sep 2016 23:35:33 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:37:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:37:59 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:38:01 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:38:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:38:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:38:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:38:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:38:03 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9573f4293c35f6914de29d45f6ee745b24a7f9f4c0229244767ca001dfc61541`  
		Last Modified: Wed, 21 Sep 2016 23:55:35 GMT  
		Size: 10.0 MB (9979544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade7ef78c126092bb51e88c0bd0b575abff97b758391937adacfa4c2038b64ea`  
		Last Modified: Wed, 21 Sep 2016 23:55:30 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a000004d7917e7969c9f95c866c323aa918a8320e27dd680215f013abf365421`  
		Last Modified: Wed, 21 Sep 2016 23:55:41 GMT  
		Size: 33.1 MB (33129511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9766a95950e3e7704fe1be49002626414cdd2d707bf3d7fa2afa68693008a4ec`  
		Last Modified: Wed, 21 Sep 2016 23:55:30 GMT  
		Size: 609.9 KB (609930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346c722023e435547ac62939cfa08265a8012e84e61c177dd8b6ac91d05a8387`  
		Last Modified: Wed, 21 Sep 2016 23:55:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-slim`

```console
$ docker pull ruby@sha256:d1829387034eba344b8b50c6b90e2fb34a85fbab40c7e3de38ce563a1709d384
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 MB (95073918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29fe0d5ddf0c5bb25c741d61ed44fa2dd31715a6bc1ab8839a29fc56c488927a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Wed, 21 Sep 2016 23:35:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Sep 2016 23:35:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 21 Sep 2016 23:35:32 GMT
ENV RUBY_MAJOR=2.1
# Wed, 21 Sep 2016 23:35:32 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 21 Sep 2016 23:35:32 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Wed, 21 Sep 2016 23:35:33 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:37:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:37:59 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:38:01 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:38:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:38:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:38:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:38:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:38:03 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9573f4293c35f6914de29d45f6ee745b24a7f9f4c0229244767ca001dfc61541`  
		Last Modified: Wed, 21 Sep 2016 23:55:35 GMT  
		Size: 10.0 MB (9979544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade7ef78c126092bb51e88c0bd0b575abff97b758391937adacfa4c2038b64ea`  
		Last Modified: Wed, 21 Sep 2016 23:55:30 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a000004d7917e7969c9f95c866c323aa918a8320e27dd680215f013abf365421`  
		Last Modified: Wed, 21 Sep 2016 23:55:41 GMT  
		Size: 33.1 MB (33129511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9766a95950e3e7704fe1be49002626414cdd2d707bf3d7fa2afa68693008a4ec`  
		Last Modified: Wed, 21 Sep 2016 23:55:30 GMT  
		Size: 609.9 KB (609930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346c722023e435547ac62939cfa08265a8012e84e61c177dd8b6ac91d05a8387`  
		Last Modified: Wed, 21 Sep 2016 23:55:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-alpine`

```console
$ docker pull ruby@sha256:eba11397be2c7a1b538b9423e377c3ea0d3825ff9e28cb15805f0c5acadfc18c
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 MB (35829758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d0269aba7da9455bdbdc455dbf6e17a085f292fdf691de15540ae7f7ce1db5a`
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
# Wed, 21 Sep 2016 23:40:01 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:40:01 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:40:03 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:40:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:40:03 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:40:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:40:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:40:05 GMT
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
	-	`sha256:9d392f69579b8e2abe492201ac3c762f85556a93807411b50341b59d63d41808`  
		Last Modified: Wed, 21 Sep 2016 23:56:16 GMT  
		Size: 32.9 MB (32908444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d1ab2cffd74e40c518f01b40569140c26eff335c9b963d4348f5837be11b5f`  
		Last Modified: Wed, 21 Sep 2016 23:56:05 GMT  
		Size: 609.9 KB (609911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e807c35a4b92e4af2781c0fd2510ff5d4b623585f77492767e5f8b165854924a`  
		Last Modified: Wed, 21 Sep 2016 23:56:04 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-alpine`

```console
$ docker pull ruby@sha256:eba11397be2c7a1b538b9423e377c3ea0d3825ff9e28cb15805f0c5acadfc18c
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 MB (35829758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d0269aba7da9455bdbdc455dbf6e17a085f292fdf691de15540ae7f7ce1db5a`
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
# Wed, 21 Sep 2016 23:40:01 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:40:01 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:40:03 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:40:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:40:03 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:40:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:40:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:40:05 GMT
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
	-	`sha256:9d392f69579b8e2abe492201ac3c762f85556a93807411b50341b59d63d41808`  
		Last Modified: Wed, 21 Sep 2016 23:56:16 GMT  
		Size: 32.9 MB (32908444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d1ab2cffd74e40c518f01b40569140c26eff335c9b963d4348f5837be11b5f`  
		Last Modified: Wed, 21 Sep 2016 23:56:05 GMT  
		Size: 609.9 KB (609911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e807c35a4b92e4af2781c0fd2510ff5d4b623585f77492767e5f8b165854924a`  
		Last Modified: Wed, 21 Sep 2016 23:56:04 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-onbuild`

```console
$ docker pull ruby@sha256:a7b55337e36c91b1fe50e3660354c359e195be09c8d852ce2917ac6df1d5c08e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.7 MB (275712511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a2a7d8bc5218b2df8f164274582b7a86cbc6db0dc11b542919f73f86b91dcd`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:48:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:23:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:23:06 GMT
ENV RUBY_MAJOR=2.1
# Tue, 20 Sep 2016 18:23:06 GMT
ENV RUBY_VERSION=2.1.10
# Tue, 20 Sep 2016 18:23:06 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Tue, 20 Sep 2016 18:23:07 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:35:15 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:35:16 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:35:17 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:35:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:35:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:35:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:35:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:35:19 GMT
CMD ["irb"]
# Wed, 21 Sep 2016 23:40:06 GMT
RUN bundle config --global frozen 1
# Wed, 21 Sep 2016 23:40:07 GMT
RUN mkdir -p /usr/src/app
# Wed, 21 Sep 2016 23:40:07 GMT
WORKDIR /usr/src/app
# Wed, 21 Sep 2016 23:40:08 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 21 Sep 2016 23:40:08 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 21 Sep 2016 23:40:08 GMT
ONBUILD RUN bundle install
# Wed, 21 Sep 2016 23:40:09 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dff8d6297fa7aafd7d118ff8070d252c076e8fa52d79f36a98f1f4a39de0c61`  
		Last Modified: Mon, 19 Sep 2016 17:56:01 GMT  
		Size: 129.8 MB (129760900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495676767d68b79f30f651d055c93be9d4ab5df9f41da915e94605f5b2a3647`  
		Last Modified: Wed, 21 Sep 2016 21:02:57 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:419a1fc66dd42eb30747154f308ddc3ea722bb8052af6b312b8381e847aa7876`  
		Last Modified: Wed, 21 Sep 2016 23:55:06 GMT  
		Size: 33.0 MB (32962003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4d7f0228ab1a077a7f68f6f08913e495767054783b49f97d79e00469159689`  
		Last Modified: Wed, 21 Sep 2016 23:54:55 GMT  
		Size: 609.9 KB (609942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c5e3ea7b650b998b658926b621d1aa7d0eb091a74b018ede5e8facfd4a67b3`  
		Last Modified: Wed, 21 Sep 2016 23:54:54 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e43b9bf7f48560305dda44a1f8ca5a789dac5645c07fbb58141adc67478390d`  
		Last Modified: Wed, 21 Sep 2016 23:56:38 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e504e0c0e83db343010f732bfb2ea4bcebc089feb17ae48d0fe1d3f00a264a11`  
		Last Modified: Wed, 21 Sep 2016 23:56:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-onbuild`

```console
$ docker pull ruby@sha256:a7b55337e36c91b1fe50e3660354c359e195be09c8d852ce2917ac6df1d5c08e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.7 MB (275712511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a2a7d8bc5218b2df8f164274582b7a86cbc6db0dc11b542919f73f86b91dcd`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:48:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:23:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:23:06 GMT
ENV RUBY_MAJOR=2.1
# Tue, 20 Sep 2016 18:23:06 GMT
ENV RUBY_VERSION=2.1.10
# Tue, 20 Sep 2016 18:23:06 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Tue, 20 Sep 2016 18:23:07 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:35:15 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:35:16 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:35:17 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:35:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:35:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:35:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:35:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:35:19 GMT
CMD ["irb"]
# Wed, 21 Sep 2016 23:40:06 GMT
RUN bundle config --global frozen 1
# Wed, 21 Sep 2016 23:40:07 GMT
RUN mkdir -p /usr/src/app
# Wed, 21 Sep 2016 23:40:07 GMT
WORKDIR /usr/src/app
# Wed, 21 Sep 2016 23:40:08 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 21 Sep 2016 23:40:08 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 21 Sep 2016 23:40:08 GMT
ONBUILD RUN bundle install
# Wed, 21 Sep 2016 23:40:09 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dff8d6297fa7aafd7d118ff8070d252c076e8fa52d79f36a98f1f4a39de0c61`  
		Last Modified: Mon, 19 Sep 2016 17:56:01 GMT  
		Size: 129.8 MB (129760900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495676767d68b79f30f651d055c93be9d4ab5df9f41da915e94605f5b2a3647`  
		Last Modified: Wed, 21 Sep 2016 21:02:57 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:419a1fc66dd42eb30747154f308ddc3ea722bb8052af6b312b8381e847aa7876`  
		Last Modified: Wed, 21 Sep 2016 23:55:06 GMT  
		Size: 33.0 MB (32962003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4d7f0228ab1a077a7f68f6f08913e495767054783b49f97d79e00469159689`  
		Last Modified: Wed, 21 Sep 2016 23:54:55 GMT  
		Size: 609.9 KB (609942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c5e3ea7b650b998b658926b621d1aa7d0eb091a74b018ede5e8facfd4a67b3`  
		Last Modified: Wed, 21 Sep 2016 23:54:54 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e43b9bf7f48560305dda44a1f8ca5a789dac5645c07fbb58141adc67478390d`  
		Last Modified: Wed, 21 Sep 2016 23:56:38 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e504e0c0e83db343010f732bfb2ea4bcebc089feb17ae48d0fe1d3f00a264a11`  
		Last Modified: Wed, 21 Sep 2016 23:56:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.5`

```console
$ docker pull ruby@sha256:cd9519f8c4a48b6e588e13d6dd4a25589c0155bc3d0d1c4897b5e800daa20006
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.2 MB (276238119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaf13bfab58738cf9358586f2e7fe488e43721a7181edb0dcbc6cb883203ac01`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:48:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:23:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:28:09 GMT
ENV RUBY_MAJOR=2.2
# Tue, 20 Sep 2016 18:28:10 GMT
ENV RUBY_VERSION=2.2.5
# Tue, 20 Sep 2016 18:28:10 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 20 Sep 2016 18:28:10 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:42:38 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:42:38 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:42:39 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:42:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:42:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:42:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:42:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:42:42 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dff8d6297fa7aafd7d118ff8070d252c076e8fa52d79f36a98f1f4a39de0c61`  
		Last Modified: Mon, 19 Sep 2016 17:56:01 GMT  
		Size: 129.8 MB (129760900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495676767d68b79f30f651d055c93be9d4ab5df9f41da915e94605f5b2a3647`  
		Last Modified: Wed, 21 Sep 2016 21:02:57 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce5c3e0ee962e0bf133389d769eec32bd91056ffabd48ab2c1e7808c04b3e2f`  
		Last Modified: Wed, 21 Sep 2016 23:57:12 GMT  
		Size: 33.5 MB (33487922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c0cbfd0eeb5ed38a346824f343cd86fe0700934a7a4fcd32a86744970f71e8`  
		Last Modified: Wed, 21 Sep 2016 23:57:01 GMT  
		Size: 609.9 KB (609944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722198fca53d65970b0c881dbf4dbeda3839f97ccca2054b941b1269609e1a1b`  
		Last Modified: Wed, 21 Sep 2016 23:57:00 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2`

```console
$ docker pull ruby@sha256:cd9519f8c4a48b6e588e13d6dd4a25589c0155bc3d0d1c4897b5e800daa20006
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.2 MB (276238119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaf13bfab58738cf9358586f2e7fe488e43721a7181edb0dcbc6cb883203ac01`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:48:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:23:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:28:09 GMT
ENV RUBY_MAJOR=2.2
# Tue, 20 Sep 2016 18:28:10 GMT
ENV RUBY_VERSION=2.2.5
# Tue, 20 Sep 2016 18:28:10 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 20 Sep 2016 18:28:10 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:42:38 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:42:38 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:42:39 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:42:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:42:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:42:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:42:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:42:42 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dff8d6297fa7aafd7d118ff8070d252c076e8fa52d79f36a98f1f4a39de0c61`  
		Last Modified: Mon, 19 Sep 2016 17:56:01 GMT  
		Size: 129.8 MB (129760900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495676767d68b79f30f651d055c93be9d4ab5df9f41da915e94605f5b2a3647`  
		Last Modified: Wed, 21 Sep 2016 21:02:57 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce5c3e0ee962e0bf133389d769eec32bd91056ffabd48ab2c1e7808c04b3e2f`  
		Last Modified: Wed, 21 Sep 2016 23:57:12 GMT  
		Size: 33.5 MB (33487922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c0cbfd0eeb5ed38a346824f343cd86fe0700934a7a4fcd32a86744970f71e8`  
		Last Modified: Wed, 21 Sep 2016 23:57:01 GMT  
		Size: 609.9 KB (609944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722198fca53d65970b0c881dbf4dbeda3839f97ccca2054b941b1269609e1a1b`  
		Last Modified: Wed, 21 Sep 2016 23:57:00 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.5-slim`

```console
$ docker pull ruby@sha256:8d5b1359237624cdd84c5366511996c3ed71ef00226ac645a0c29db1e0f969c2
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.5-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.6 MB (95590250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:206d6d8f2574f9cbe2b14a50c6db34e2e80093f2abcdbe53947ff4f2b104bdcb`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Wed, 21 Sep 2016 23:35:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Sep 2016 23:35:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 21 Sep 2016 23:42:42 GMT
ENV RUBY_MAJOR=2.2
# Wed, 21 Sep 2016 23:42:42 GMT
ENV RUBY_VERSION=2.2.5
# Wed, 21 Sep 2016 23:42:43 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Wed, 21 Sep 2016 23:42:43 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:45:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:45:16 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:45:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:45:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:45:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:45:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:45:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:45:20 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9573f4293c35f6914de29d45f6ee745b24a7f9f4c0229244767ca001dfc61541`  
		Last Modified: Wed, 21 Sep 2016 23:55:35 GMT  
		Size: 10.0 MB (9979544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade7ef78c126092bb51e88c0bd0b575abff97b758391937adacfa4c2038b64ea`  
		Last Modified: Wed, 21 Sep 2016 23:55:30 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bb5b9eb0b6330178d7172ddc6a96288ab6213f48671748dd12d949534e3666`  
		Last Modified: Wed, 21 Sep 2016 23:57:46 GMT  
		Size: 33.6 MB (33645844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d07a50ffbaada0e358da566a6bbb680895b09a9e6f96b26276e66280f25f08b`  
		Last Modified: Wed, 21 Sep 2016 23:57:35 GMT  
		Size: 609.9 KB (609930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a94b6e6daece4199976fe396882d1653285df6cad318478ca6587440c207b0`  
		Last Modified: Wed, 21 Sep 2016 23:57:34 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-slim`

```console
$ docker pull ruby@sha256:8d5b1359237624cdd84c5366511996c3ed71ef00226ac645a0c29db1e0f969c2
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.6 MB (95590250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:206d6d8f2574f9cbe2b14a50c6db34e2e80093f2abcdbe53947ff4f2b104bdcb`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Wed, 21 Sep 2016 23:35:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Sep 2016 23:35:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 21 Sep 2016 23:42:42 GMT
ENV RUBY_MAJOR=2.2
# Wed, 21 Sep 2016 23:42:42 GMT
ENV RUBY_VERSION=2.2.5
# Wed, 21 Sep 2016 23:42:43 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Wed, 21 Sep 2016 23:42:43 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:45:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:45:16 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:45:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:45:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:45:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:45:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:45:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:45:20 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9573f4293c35f6914de29d45f6ee745b24a7f9f4c0229244767ca001dfc61541`  
		Last Modified: Wed, 21 Sep 2016 23:55:35 GMT  
		Size: 10.0 MB (9979544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade7ef78c126092bb51e88c0bd0b575abff97b758391937adacfa4c2038b64ea`  
		Last Modified: Wed, 21 Sep 2016 23:55:30 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bb5b9eb0b6330178d7172ddc6a96288ab6213f48671748dd12d949534e3666`  
		Last Modified: Wed, 21 Sep 2016 23:57:46 GMT  
		Size: 33.6 MB (33645844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d07a50ffbaada0e358da566a6bbb680895b09a9e6f96b26276e66280f25f08b`  
		Last Modified: Wed, 21 Sep 2016 23:57:35 GMT  
		Size: 609.9 KB (609930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a94b6e6daece4199976fe396882d1653285df6cad318478ca6587440c207b0`  
		Last Modified: Wed, 21 Sep 2016 23:57:34 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.5-alpine`

```console
$ docker pull ruby@sha256:e612a647d932a0e9212247640b597d0eeebb290f9c8e9092d9e0e1765e872c1f
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.5-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36218495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c31100b64d4815906244ab767b65f2ab6cf3c666f32373dd0f2dfa474cfd2813`
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
# Wed, 21 Sep 2016 23:47:17 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:47:17 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:47:19 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:47:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:47:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:47:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:47:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:47:21 GMT
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
	-	`sha256:e0742781921041774986431adc68c1dc9aefe8c5cf2be88fe19790dbc5323b92`  
		Last Modified: Wed, 21 Sep 2016 23:58:24 GMT  
		Size: 33.3 MB (33297172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c66e05f428d433f25359154bdb29b60c00a063a9ca8f9570c3d3f1c58068795d`  
		Last Modified: Wed, 21 Sep 2016 23:58:13 GMT  
		Size: 609.9 KB (609920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae6e7ca2defcaeaf5b501ebd38efa1909a912990ff0e670c40f38441925a51d`  
		Last Modified: Wed, 21 Sep 2016 23:58:14 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-alpine`

```console
$ docker pull ruby@sha256:e612a647d932a0e9212247640b597d0eeebb290f9c8e9092d9e0e1765e872c1f
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36218495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c31100b64d4815906244ab767b65f2ab6cf3c666f32373dd0f2dfa474cfd2813`
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
# Wed, 21 Sep 2016 23:47:17 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:47:17 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:47:19 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:47:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:47:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:47:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:47:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:47:21 GMT
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
	-	`sha256:e0742781921041774986431adc68c1dc9aefe8c5cf2be88fe19790dbc5323b92`  
		Last Modified: Wed, 21 Sep 2016 23:58:24 GMT  
		Size: 33.3 MB (33297172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c66e05f428d433f25359154bdb29b60c00a063a9ca8f9570c3d3f1c58068795d`  
		Last Modified: Wed, 21 Sep 2016 23:58:13 GMT  
		Size: 609.9 KB (609920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae6e7ca2defcaeaf5b501ebd38efa1909a912990ff0e670c40f38441925a51d`  
		Last Modified: Wed, 21 Sep 2016 23:58:14 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.5-onbuild`

```console
$ docker pull ruby@sha256:43f3fa4ab43130963320fdd041402f7a7df59ac4b52b1cec22543ad026710146
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.5-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.2 MB (276238432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f66b19234fa76da587e23e5e30b1ab4f9e7123fadd6e598bb8a7c74a37d6d0dc`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:48:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:23:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:28:09 GMT
ENV RUBY_MAJOR=2.2
# Tue, 20 Sep 2016 18:28:10 GMT
ENV RUBY_VERSION=2.2.5
# Tue, 20 Sep 2016 18:28:10 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 20 Sep 2016 18:28:10 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:42:38 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:42:38 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:42:39 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:42:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:42:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:42:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:42:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:42:42 GMT
CMD ["irb"]
# Wed, 21 Sep 2016 23:47:22 GMT
RUN bundle config --global frozen 1
# Wed, 21 Sep 2016 23:47:23 GMT
RUN mkdir -p /usr/src/app
# Wed, 21 Sep 2016 23:47:23 GMT
WORKDIR /usr/src/app
# Wed, 21 Sep 2016 23:47:23 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 21 Sep 2016 23:47:24 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 21 Sep 2016 23:47:24 GMT
ONBUILD RUN bundle install
# Wed, 21 Sep 2016 23:47:24 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dff8d6297fa7aafd7d118ff8070d252c076e8fa52d79f36a98f1f4a39de0c61`  
		Last Modified: Mon, 19 Sep 2016 17:56:01 GMT  
		Size: 129.8 MB (129760900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495676767d68b79f30f651d055c93be9d4ab5df9f41da915e94605f5b2a3647`  
		Last Modified: Wed, 21 Sep 2016 21:02:57 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce5c3e0ee962e0bf133389d769eec32bd91056ffabd48ab2c1e7808c04b3e2f`  
		Last Modified: Wed, 21 Sep 2016 23:57:12 GMT  
		Size: 33.5 MB (33487922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c0cbfd0eeb5ed38a346824f343cd86fe0700934a7a4fcd32a86744970f71e8`  
		Last Modified: Wed, 21 Sep 2016 23:57:01 GMT  
		Size: 609.9 KB (609944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722198fca53d65970b0c881dbf4dbeda3839f97ccca2054b941b1269609e1a1b`  
		Last Modified: Wed, 21 Sep 2016 23:57:00 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d66789cb0664bf3fcc5e1859a1c40db63a90380d7e89f8b4a82682338724`  
		Last Modified: Wed, 21 Sep 2016 23:58:46 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cbf9d6f5ae1a5b14678ba2378b7187f8e9980d65e5b2a9a0c6fb0c853142de8`  
		Last Modified: Wed, 21 Sep 2016 23:58:47 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-onbuild`

```console
$ docker pull ruby@sha256:43f3fa4ab43130963320fdd041402f7a7df59ac4b52b1cec22543ad026710146
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.2 MB (276238432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f66b19234fa76da587e23e5e30b1ab4f9e7123fadd6e598bb8a7c74a37d6d0dc`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:48:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:23:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:28:09 GMT
ENV RUBY_MAJOR=2.2
# Tue, 20 Sep 2016 18:28:10 GMT
ENV RUBY_VERSION=2.2.5
# Tue, 20 Sep 2016 18:28:10 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 20 Sep 2016 18:28:10 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:42:38 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:42:38 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:42:39 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:42:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:42:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:42:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:42:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:42:42 GMT
CMD ["irb"]
# Wed, 21 Sep 2016 23:47:22 GMT
RUN bundle config --global frozen 1
# Wed, 21 Sep 2016 23:47:23 GMT
RUN mkdir -p /usr/src/app
# Wed, 21 Sep 2016 23:47:23 GMT
WORKDIR /usr/src/app
# Wed, 21 Sep 2016 23:47:23 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 21 Sep 2016 23:47:24 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 21 Sep 2016 23:47:24 GMT
ONBUILD RUN bundle install
# Wed, 21 Sep 2016 23:47:24 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dff8d6297fa7aafd7d118ff8070d252c076e8fa52d79f36a98f1f4a39de0c61`  
		Last Modified: Mon, 19 Sep 2016 17:56:01 GMT  
		Size: 129.8 MB (129760900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495676767d68b79f30f651d055c93be9d4ab5df9f41da915e94605f5b2a3647`  
		Last Modified: Wed, 21 Sep 2016 21:02:57 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce5c3e0ee962e0bf133389d769eec32bd91056ffabd48ab2c1e7808c04b3e2f`  
		Last Modified: Wed, 21 Sep 2016 23:57:12 GMT  
		Size: 33.5 MB (33487922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c0cbfd0eeb5ed38a346824f343cd86fe0700934a7a4fcd32a86744970f71e8`  
		Last Modified: Wed, 21 Sep 2016 23:57:01 GMT  
		Size: 609.9 KB (609944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722198fca53d65970b0c881dbf4dbeda3839f97ccca2054b941b1269609e1a1b`  
		Last Modified: Wed, 21 Sep 2016 23:57:00 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d66789cb0664bf3fcc5e1859a1c40db63a90380d7e89f8b4a82682338724`  
		Last Modified: Wed, 21 Sep 2016 23:58:46 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cbf9d6f5ae1a5b14678ba2378b7187f8e9980d65e5b2a9a0c6fb0c853142de8`  
		Last Modified: Wed, 21 Sep 2016 23:58:47 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.1`

```console
$ docker pull ruby@sha256:469e4155b5f9f45b40d512844afdacb1bcbed5fd181a53752a88fe4e33ab08cf
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278037932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7522de43efa72e3ddecdd0786bbfbb99236ba36f41b91c4664f0d150360d957`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:48:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:23:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:33:06 GMT
ENV RUBY_MAJOR=2.3
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:49:46 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:49:47 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:49:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:49:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:49:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:49:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:49:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:49:50 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dff8d6297fa7aafd7d118ff8070d252c076e8fa52d79f36a98f1f4a39de0c61`  
		Last Modified: Mon, 19 Sep 2016 17:56:01 GMT  
		Size: 129.8 MB (129760900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495676767d68b79f30f651d055c93be9d4ab5df9f41da915e94605f5b2a3647`  
		Last Modified: Wed, 21 Sep 2016 21:02:57 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e27f1e7e6e3f90995a05f36dcdbcdc8276da967b0ee6fc6608b216959525009`  
		Last Modified: Wed, 21 Sep 2016 23:59:21 GMT  
		Size: 35.3 MB (35287744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7830ef3f6735db1554abab9ab621b5ca12ad99887963b2eb3dc4da4b308e0dac`  
		Last Modified: Wed, 21 Sep 2016 23:59:09 GMT  
		Size: 609.9 KB (609933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b12caf49256f0f8d12ed28eb1a30bb2eef4069966f2e69e4801ce4b44a6eb8`  
		Last Modified: Wed, 21 Sep 2016 23:59:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3`

```console
$ docker pull ruby@sha256:469e4155b5f9f45b40d512844afdacb1bcbed5fd181a53752a88fe4e33ab08cf
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278037932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7522de43efa72e3ddecdd0786bbfbb99236ba36f41b91c4664f0d150360d957`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:48:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:23:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:33:06 GMT
ENV RUBY_MAJOR=2.3
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:49:46 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:49:47 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:49:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:49:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:49:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:49:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:49:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:49:50 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dff8d6297fa7aafd7d118ff8070d252c076e8fa52d79f36a98f1f4a39de0c61`  
		Last Modified: Mon, 19 Sep 2016 17:56:01 GMT  
		Size: 129.8 MB (129760900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495676767d68b79f30f651d055c93be9d4ab5df9f41da915e94605f5b2a3647`  
		Last Modified: Wed, 21 Sep 2016 21:02:57 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e27f1e7e6e3f90995a05f36dcdbcdc8276da967b0ee6fc6608b216959525009`  
		Last Modified: Wed, 21 Sep 2016 23:59:21 GMT  
		Size: 35.3 MB (35287744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7830ef3f6735db1554abab9ab621b5ca12ad99887963b2eb3dc4da4b308e0dac`  
		Last Modified: Wed, 21 Sep 2016 23:59:09 GMT  
		Size: 609.9 KB (609933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b12caf49256f0f8d12ed28eb1a30bb2eef4069966f2e69e4801ce4b44a6eb8`  
		Last Modified: Wed, 21 Sep 2016 23:59:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2`

```console
$ docker pull ruby@sha256:469e4155b5f9f45b40d512844afdacb1bcbed5fd181a53752a88fe4e33ab08cf
```

-	Platforms:
	-	linux; amd64

### `ruby:2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278037932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7522de43efa72e3ddecdd0786bbfbb99236ba36f41b91c4664f0d150360d957`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:48:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:23:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:33:06 GMT
ENV RUBY_MAJOR=2.3
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:49:46 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:49:47 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:49:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:49:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:49:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:49:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:49:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:49:50 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dff8d6297fa7aafd7d118ff8070d252c076e8fa52d79f36a98f1f4a39de0c61`  
		Last Modified: Mon, 19 Sep 2016 17:56:01 GMT  
		Size: 129.8 MB (129760900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495676767d68b79f30f651d055c93be9d4ab5df9f41da915e94605f5b2a3647`  
		Last Modified: Wed, 21 Sep 2016 21:02:57 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e27f1e7e6e3f90995a05f36dcdbcdc8276da967b0ee6fc6608b216959525009`  
		Last Modified: Wed, 21 Sep 2016 23:59:21 GMT  
		Size: 35.3 MB (35287744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7830ef3f6735db1554abab9ab621b5ca12ad99887963b2eb3dc4da4b308e0dac`  
		Last Modified: Wed, 21 Sep 2016 23:59:09 GMT  
		Size: 609.9 KB (609933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b12caf49256f0f8d12ed28eb1a30bb2eef4069966f2e69e4801ce4b44a6eb8`  
		Last Modified: Wed, 21 Sep 2016 23:59:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:latest`

```console
$ docker pull ruby@sha256:469e4155b5f9f45b40d512844afdacb1bcbed5fd181a53752a88fe4e33ab08cf
```

-	Platforms:
	-	linux; amd64

### `ruby:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278037932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7522de43efa72e3ddecdd0786bbfbb99236ba36f41b91c4664f0d150360d957`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:48:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:23:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:33:06 GMT
ENV RUBY_MAJOR=2.3
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:49:46 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:49:47 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:49:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:49:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:49:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:49:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:49:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:49:50 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dff8d6297fa7aafd7d118ff8070d252c076e8fa52d79f36a98f1f4a39de0c61`  
		Last Modified: Mon, 19 Sep 2016 17:56:01 GMT  
		Size: 129.8 MB (129760900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495676767d68b79f30f651d055c93be9d4ab5df9f41da915e94605f5b2a3647`  
		Last Modified: Wed, 21 Sep 2016 21:02:57 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e27f1e7e6e3f90995a05f36dcdbcdc8276da967b0ee6fc6608b216959525009`  
		Last Modified: Wed, 21 Sep 2016 23:59:21 GMT  
		Size: 35.3 MB (35287744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7830ef3f6735db1554abab9ab621b5ca12ad99887963b2eb3dc4da4b308e0dac`  
		Last Modified: Wed, 21 Sep 2016 23:59:09 GMT  
		Size: 609.9 KB (609933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b12caf49256f0f8d12ed28eb1a30bb2eef4069966f2e69e4801ce4b44a6eb8`  
		Last Modified: Wed, 21 Sep 2016 23:59:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.1-slim`

```console
$ docker pull ruby@sha256:a5c5277b79a26e460892c0f9201918f73cf7ab5b15a79c89780514c377700c46
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.1-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97391073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525144c5807827b3772e39cd2f85c170bcc6713967f75742027a382e9c7fe099`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Wed, 21 Sep 2016 23:35:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Sep 2016 23:35:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 21 Sep 2016 23:49:51 GMT
ENV RUBY_MAJOR=2.3
# Wed, 21 Sep 2016 23:49:51 GMT
ENV RUBY_VERSION=2.3.1
# Wed, 21 Sep 2016 23:49:51 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 21 Sep 2016 23:49:51 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:52:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:52:33 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:52:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:52:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:52:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:52:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:52:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:52:37 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9573f4293c35f6914de29d45f6ee745b24a7f9f4c0229244767ca001dfc61541`  
		Last Modified: Wed, 21 Sep 2016 23:55:35 GMT  
		Size: 10.0 MB (9979544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade7ef78c126092bb51e88c0bd0b575abff97b758391937adacfa4c2038b64ea`  
		Last Modified: Wed, 21 Sep 2016 23:55:30 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afc4e4929715f7dde526fb4d935a69b0e13c314765bbc49aa6816acabf02c0b`  
		Last Modified: Thu, 22 Sep 2016 00:00:13 GMT  
		Size: 35.4 MB (35446648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe4b581945f1956c5e37df0bb11e83f22810209a1cd639bf39b202334dae2ed`  
		Last Modified: Thu, 22 Sep 2016 00:00:01 GMT  
		Size: 610.0 KB (609950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073f7f32542c4d02955f1133fd36614d803ae8abfc8ff67284f240ea48dc988e`  
		Last Modified: Thu, 22 Sep 2016 00:00:00 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-slim`

```console
$ docker pull ruby@sha256:a5c5277b79a26e460892c0f9201918f73cf7ab5b15a79c89780514c377700c46
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97391073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525144c5807827b3772e39cd2f85c170bcc6713967f75742027a382e9c7fe099`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Wed, 21 Sep 2016 23:35:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Sep 2016 23:35:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 21 Sep 2016 23:49:51 GMT
ENV RUBY_MAJOR=2.3
# Wed, 21 Sep 2016 23:49:51 GMT
ENV RUBY_VERSION=2.3.1
# Wed, 21 Sep 2016 23:49:51 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 21 Sep 2016 23:49:51 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:52:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:52:33 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:52:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:52:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:52:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:52:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:52:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:52:37 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9573f4293c35f6914de29d45f6ee745b24a7f9f4c0229244767ca001dfc61541`  
		Last Modified: Wed, 21 Sep 2016 23:55:35 GMT  
		Size: 10.0 MB (9979544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade7ef78c126092bb51e88c0bd0b575abff97b758391937adacfa4c2038b64ea`  
		Last Modified: Wed, 21 Sep 2016 23:55:30 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afc4e4929715f7dde526fb4d935a69b0e13c314765bbc49aa6816acabf02c0b`  
		Last Modified: Thu, 22 Sep 2016 00:00:13 GMT  
		Size: 35.4 MB (35446648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe4b581945f1956c5e37df0bb11e83f22810209a1cd639bf39b202334dae2ed`  
		Last Modified: Thu, 22 Sep 2016 00:00:01 GMT  
		Size: 610.0 KB (609950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073f7f32542c4d02955f1133fd36614d803ae8abfc8ff67284f240ea48dc988e`  
		Last Modified: Thu, 22 Sep 2016 00:00:00 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-slim`

```console
$ docker pull ruby@sha256:a5c5277b79a26e460892c0f9201918f73cf7ab5b15a79c89780514c377700c46
```

-	Platforms:
	-	linux; amd64

### `ruby:2-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97391073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525144c5807827b3772e39cd2f85c170bcc6713967f75742027a382e9c7fe099`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Wed, 21 Sep 2016 23:35:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Sep 2016 23:35:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 21 Sep 2016 23:49:51 GMT
ENV RUBY_MAJOR=2.3
# Wed, 21 Sep 2016 23:49:51 GMT
ENV RUBY_VERSION=2.3.1
# Wed, 21 Sep 2016 23:49:51 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 21 Sep 2016 23:49:51 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:52:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:52:33 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:52:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:52:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:52:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:52:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:52:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:52:37 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9573f4293c35f6914de29d45f6ee745b24a7f9f4c0229244767ca001dfc61541`  
		Last Modified: Wed, 21 Sep 2016 23:55:35 GMT  
		Size: 10.0 MB (9979544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade7ef78c126092bb51e88c0bd0b575abff97b758391937adacfa4c2038b64ea`  
		Last Modified: Wed, 21 Sep 2016 23:55:30 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afc4e4929715f7dde526fb4d935a69b0e13c314765bbc49aa6816acabf02c0b`  
		Last Modified: Thu, 22 Sep 2016 00:00:13 GMT  
		Size: 35.4 MB (35446648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe4b581945f1956c5e37df0bb11e83f22810209a1cd639bf39b202334dae2ed`  
		Last Modified: Thu, 22 Sep 2016 00:00:01 GMT  
		Size: 610.0 KB (609950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073f7f32542c4d02955f1133fd36614d803ae8abfc8ff67284f240ea48dc988e`  
		Last Modified: Thu, 22 Sep 2016 00:00:00 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:slim`

```console
$ docker pull ruby@sha256:a5c5277b79a26e460892c0f9201918f73cf7ab5b15a79c89780514c377700c46
```

-	Platforms:
	-	linux; amd64

### `ruby:slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97391073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525144c5807827b3772e39cd2f85c170bcc6713967f75742027a382e9c7fe099`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Wed, 21 Sep 2016 23:35:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Sep 2016 23:35:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 21 Sep 2016 23:49:51 GMT
ENV RUBY_MAJOR=2.3
# Wed, 21 Sep 2016 23:49:51 GMT
ENV RUBY_VERSION=2.3.1
# Wed, 21 Sep 2016 23:49:51 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 21 Sep 2016 23:49:51 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:52:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:52:33 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:52:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:52:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:52:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:52:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:52:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:52:37 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9573f4293c35f6914de29d45f6ee745b24a7f9f4c0229244767ca001dfc61541`  
		Last Modified: Wed, 21 Sep 2016 23:55:35 GMT  
		Size: 10.0 MB (9979544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade7ef78c126092bb51e88c0bd0b575abff97b758391937adacfa4c2038b64ea`  
		Last Modified: Wed, 21 Sep 2016 23:55:30 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afc4e4929715f7dde526fb4d935a69b0e13c314765bbc49aa6816acabf02c0b`  
		Last Modified: Thu, 22 Sep 2016 00:00:13 GMT  
		Size: 35.4 MB (35446648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe4b581945f1956c5e37df0bb11e83f22810209a1cd639bf39b202334dae2ed`  
		Last Modified: Thu, 22 Sep 2016 00:00:01 GMT  
		Size: 610.0 KB (609950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073f7f32542c4d02955f1133fd36614d803ae8abfc8ff67284f240ea48dc988e`  
		Last Modified: Thu, 22 Sep 2016 00:00:00 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.1-alpine`

```console
$ docker pull ruby@sha256:4224be27d840c81bf2ba974163fdea99daeea40a30f3a7de5a891e8689100ce9
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.1-alpine` - linux; amd64

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

## `ruby:2.3-alpine`

```console
$ docker pull ruby@sha256:4224be27d840c81bf2ba974163fdea99daeea40a30f3a7de5a891e8689100ce9
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-alpine` - linux; amd64

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

## `ruby:2-alpine`

```console
$ docker pull ruby@sha256:4224be27d840c81bf2ba974163fdea99daeea40a30f3a7de5a891e8689100ce9
```

-	Platforms:
	-	linux; amd64

### `ruby:2-alpine` - linux; amd64

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

## `ruby:2.3.1-onbuild`

```console
$ docker pull ruby@sha256:8ac288f4a6d367c6be22570a6d58d8b6bfa783ec6f25a0bde695d8d4ebe771b3
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278038245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fd60a6e36961fbb672ff6e5ad69e2fa6d7c017d8c50bb87cf3ed7357a5a6d27`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:48:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:23:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:33:06 GMT
ENV RUBY_MAJOR=2.3
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:49:46 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:49:47 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:49:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:49:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:49:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:49:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:49:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:49:50 GMT
CMD ["irb"]
# Wed, 21 Sep 2016 23:54:44 GMT
RUN bundle config --global frozen 1
# Wed, 21 Sep 2016 23:54:45 GMT
RUN mkdir -p /usr/src/app
# Wed, 21 Sep 2016 23:54:45 GMT
WORKDIR /usr/src/app
# Wed, 21 Sep 2016 23:54:46 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 21 Sep 2016 23:54:46 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 21 Sep 2016 23:54:46 GMT
ONBUILD RUN bundle install
# Wed, 21 Sep 2016 23:54:46 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dff8d6297fa7aafd7d118ff8070d252c076e8fa52d79f36a98f1f4a39de0c61`  
		Last Modified: Mon, 19 Sep 2016 17:56:01 GMT  
		Size: 129.8 MB (129760900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495676767d68b79f30f651d055c93be9d4ab5df9f41da915e94605f5b2a3647`  
		Last Modified: Wed, 21 Sep 2016 21:02:57 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e27f1e7e6e3f90995a05f36dcdbcdc8276da967b0ee6fc6608b216959525009`  
		Last Modified: Wed, 21 Sep 2016 23:59:21 GMT  
		Size: 35.3 MB (35287744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7830ef3f6735db1554abab9ab621b5ca12ad99887963b2eb3dc4da4b308e0dac`  
		Last Modified: Wed, 21 Sep 2016 23:59:09 GMT  
		Size: 609.9 KB (609933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b12caf49256f0f8d12ed28eb1a30bb2eef4069966f2e69e4801ce4b44a6eb8`  
		Last Modified: Wed, 21 Sep 2016 23:59:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d996b0769eabf1b7ed960c9225e1b9b5636ec3f7b32b5d5c6660c4b5b06c53`  
		Last Modified: Thu, 22 Sep 2016 00:01:48 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a903cd7ea561bfedf5dbeb4706bd18cc74395376d844eae32b5b02e84644643c`  
		Last Modified: Thu, 22 Sep 2016 00:01:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-onbuild`

```console
$ docker pull ruby@sha256:8ac288f4a6d367c6be22570a6d58d8b6bfa783ec6f25a0bde695d8d4ebe771b3
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278038245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fd60a6e36961fbb672ff6e5ad69e2fa6d7c017d8c50bb87cf3ed7357a5a6d27`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:48:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:23:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:33:06 GMT
ENV RUBY_MAJOR=2.3
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:49:46 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:49:47 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:49:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:49:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:49:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:49:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:49:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:49:50 GMT
CMD ["irb"]
# Wed, 21 Sep 2016 23:54:44 GMT
RUN bundle config --global frozen 1
# Wed, 21 Sep 2016 23:54:45 GMT
RUN mkdir -p /usr/src/app
# Wed, 21 Sep 2016 23:54:45 GMT
WORKDIR /usr/src/app
# Wed, 21 Sep 2016 23:54:46 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 21 Sep 2016 23:54:46 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 21 Sep 2016 23:54:46 GMT
ONBUILD RUN bundle install
# Wed, 21 Sep 2016 23:54:46 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dff8d6297fa7aafd7d118ff8070d252c076e8fa52d79f36a98f1f4a39de0c61`  
		Last Modified: Mon, 19 Sep 2016 17:56:01 GMT  
		Size: 129.8 MB (129760900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495676767d68b79f30f651d055c93be9d4ab5df9f41da915e94605f5b2a3647`  
		Last Modified: Wed, 21 Sep 2016 21:02:57 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e27f1e7e6e3f90995a05f36dcdbcdc8276da967b0ee6fc6608b216959525009`  
		Last Modified: Wed, 21 Sep 2016 23:59:21 GMT  
		Size: 35.3 MB (35287744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7830ef3f6735db1554abab9ab621b5ca12ad99887963b2eb3dc4da4b308e0dac`  
		Last Modified: Wed, 21 Sep 2016 23:59:09 GMT  
		Size: 609.9 KB (609933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b12caf49256f0f8d12ed28eb1a30bb2eef4069966f2e69e4801ce4b44a6eb8`  
		Last Modified: Wed, 21 Sep 2016 23:59:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d996b0769eabf1b7ed960c9225e1b9b5636ec3f7b32b5d5c6660c4b5b06c53`  
		Last Modified: Thu, 22 Sep 2016 00:01:48 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a903cd7ea561bfedf5dbeb4706bd18cc74395376d844eae32b5b02e84644643c`  
		Last Modified: Thu, 22 Sep 2016 00:01:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-onbuild`

```console
$ docker pull ruby@sha256:8ac288f4a6d367c6be22570a6d58d8b6bfa783ec6f25a0bde695d8d4ebe771b3
```

-	Platforms:
	-	linux; amd64

### `ruby:2-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278038245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fd60a6e36961fbb672ff6e5ad69e2fa6d7c017d8c50bb87cf3ed7357a5a6d27`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:48:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:23:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:33:06 GMT
ENV RUBY_MAJOR=2.3
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:49:46 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:49:47 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:49:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:49:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:49:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:49:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:49:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:49:50 GMT
CMD ["irb"]
# Wed, 21 Sep 2016 23:54:44 GMT
RUN bundle config --global frozen 1
# Wed, 21 Sep 2016 23:54:45 GMT
RUN mkdir -p /usr/src/app
# Wed, 21 Sep 2016 23:54:45 GMT
WORKDIR /usr/src/app
# Wed, 21 Sep 2016 23:54:46 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 21 Sep 2016 23:54:46 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 21 Sep 2016 23:54:46 GMT
ONBUILD RUN bundle install
# Wed, 21 Sep 2016 23:54:46 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dff8d6297fa7aafd7d118ff8070d252c076e8fa52d79f36a98f1f4a39de0c61`  
		Last Modified: Mon, 19 Sep 2016 17:56:01 GMT  
		Size: 129.8 MB (129760900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495676767d68b79f30f651d055c93be9d4ab5df9f41da915e94605f5b2a3647`  
		Last Modified: Wed, 21 Sep 2016 21:02:57 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e27f1e7e6e3f90995a05f36dcdbcdc8276da967b0ee6fc6608b216959525009`  
		Last Modified: Wed, 21 Sep 2016 23:59:21 GMT  
		Size: 35.3 MB (35287744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7830ef3f6735db1554abab9ab621b5ca12ad99887963b2eb3dc4da4b308e0dac`  
		Last Modified: Wed, 21 Sep 2016 23:59:09 GMT  
		Size: 609.9 KB (609933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b12caf49256f0f8d12ed28eb1a30bb2eef4069966f2e69e4801ce4b44a6eb8`  
		Last Modified: Wed, 21 Sep 2016 23:59:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d996b0769eabf1b7ed960c9225e1b9b5636ec3f7b32b5d5c6660c4b5b06c53`  
		Last Modified: Thu, 22 Sep 2016 00:01:48 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a903cd7ea561bfedf5dbeb4706bd18cc74395376d844eae32b5b02e84644643c`  
		Last Modified: Thu, 22 Sep 2016 00:01:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:onbuild`

```console
$ docker pull ruby@sha256:8ac288f4a6d367c6be22570a6d58d8b6bfa783ec6f25a0bde695d8d4ebe771b3
```

-	Platforms:
	-	linux; amd64

### `ruby:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278038245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fd60a6e36961fbb672ff6e5ad69e2fa6d7c017d8c50bb87cf3ed7357a5a6d27`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:48:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:23:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:33:06 GMT
ENV RUBY_MAJOR=2.3
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:49:46 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:49:47 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:49:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:49:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:49:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:49:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:49:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:49:50 GMT
CMD ["irb"]
# Wed, 21 Sep 2016 23:54:44 GMT
RUN bundle config --global frozen 1
# Wed, 21 Sep 2016 23:54:45 GMT
RUN mkdir -p /usr/src/app
# Wed, 21 Sep 2016 23:54:45 GMT
WORKDIR /usr/src/app
# Wed, 21 Sep 2016 23:54:46 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 21 Sep 2016 23:54:46 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 21 Sep 2016 23:54:46 GMT
ONBUILD RUN bundle install
# Wed, 21 Sep 2016 23:54:46 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dff8d6297fa7aafd7d118ff8070d252c076e8fa52d79f36a98f1f4a39de0c61`  
		Last Modified: Mon, 19 Sep 2016 17:56:01 GMT  
		Size: 129.8 MB (129760900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495676767d68b79f30f651d055c93be9d4ab5df9f41da915e94605f5b2a3647`  
		Last Modified: Wed, 21 Sep 2016 21:02:57 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e27f1e7e6e3f90995a05f36dcdbcdc8276da967b0ee6fc6608b216959525009`  
		Last Modified: Wed, 21 Sep 2016 23:59:21 GMT  
		Size: 35.3 MB (35287744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7830ef3f6735db1554abab9ab621b5ca12ad99887963b2eb3dc4da4b308e0dac`  
		Last Modified: Wed, 21 Sep 2016 23:59:09 GMT  
		Size: 609.9 KB (609933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b12caf49256f0f8d12ed28eb1a30bb2eef4069966f2e69e4801ce4b44a6eb8`  
		Last Modified: Wed, 21 Sep 2016 23:59:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d996b0769eabf1b7ed960c9225e1b9b5636ec3f7b32b5d5c6660c4b5b06c53`  
		Last Modified: Thu, 22 Sep 2016 00:01:48 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a903cd7ea561bfedf5dbeb4706bd18cc74395376d844eae32b5b02e84644643c`  
		Last Modified: Thu, 22 Sep 2016 00:01:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
