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
$ docker pull ruby@sha256:d17b89d33928d79d112147ce7ec53a95447f5f009020af10db48ddb1e5579f4e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.7 MB (275716691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62e34d9f36b50aa9cdd8eb4b87ea8e2297a2d60acb598cab99762c61bf655fa8`
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
# Tue, 20 Sep 2016 18:25:20 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:25:20 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:25:22 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:25:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:25:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:25:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:25:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:25:24 GMT
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
	-	`sha256:e971553996fc750a1f5ed1a90e9ea13b111a97e7c4677794ebd95baa1e084dd3`  
		Last Modified: Wed, 21 Sep 2016 21:03:12 GMT  
		Size: 33.0 MB (32966493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db787db04b5c2ddac269aba766f4d7e44196010211514bf40a0c4631b4ce22a2`  
		Last Modified: Wed, 21 Sep 2016 21:02:59 GMT  
		Size: 609.9 KB (609943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215471bbddae6dfc02b37dec9bcf1fc8f3233f0de3096b267f06b53657210065`  
		Last Modified: Wed, 21 Sep 2016 21:02:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1`

```console
$ docker pull ruby@sha256:d17b89d33928d79d112147ce7ec53a95447f5f009020af10db48ddb1e5579f4e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.7 MB (275716691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62e34d9f36b50aa9cdd8eb4b87ea8e2297a2d60acb598cab99762c61bf655fa8`
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
# Tue, 20 Sep 2016 18:25:20 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:25:20 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:25:22 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:25:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:25:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:25:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:25:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:25:24 GMT
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
	-	`sha256:e971553996fc750a1f5ed1a90e9ea13b111a97e7c4677794ebd95baa1e084dd3`  
		Last Modified: Wed, 21 Sep 2016 21:03:12 GMT  
		Size: 33.0 MB (32966493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db787db04b5c2ddac269aba766f4d7e44196010211514bf40a0c4631b4ce22a2`  
		Last Modified: Wed, 21 Sep 2016 21:02:59 GMT  
		Size: 609.9 KB (609943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215471bbddae6dfc02b37dec9bcf1fc8f3233f0de3096b267f06b53657210065`  
		Last Modified: Wed, 21 Sep 2016 21:02:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-slim`

```console
$ docker pull ruby@sha256:436e7d6b769ff2d8c500324f07d3b907dacfc420469ec23241ecabb2931d2575
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98764248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e305dc2b54ff6c52cfb3d43d0c1e8140bf1c08edb48fbc0c68e2256d159f490`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Tue, 20 Sep 2016 18:25:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		curl 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:25:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:25:40 GMT
ENV RUBY_MAJOR=2.1
# Tue, 20 Sep 2016 18:25:40 GMT
ENV RUBY_VERSION=2.1.10
# Tue, 20 Sep 2016 18:25:40 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Tue, 20 Sep 2016 18:25:41 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Tue, 20 Sep 2016 18:28:02 GMT
RUN set -ex 	&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:28:03 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:28:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:28:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:28:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:28:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:28:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:28:06 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf776f630245dcdf49723a68b814a9523e21f8aae3574be083a82da30b138fd`  
		Last Modified: Wed, 21 Sep 2016 21:03:40 GMT  
		Size: 13.7 MB (13663318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb040abe2ad8f58d14f5edac69ca26a4da5128c999100ecb7016c17827790da6`  
		Last Modified: Wed, 21 Sep 2016 21:03:35 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0c82b57f8cf9c6bc434d6c10bb947fd718d7659f2d470e72184abb52070ca4`  
		Last Modified: Wed, 21 Sep 2016 21:03:49 GMT  
		Size: 33.1 MB (33136044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa33de31007ed9a5543b784b31aefdf1982f2519962b248704bbb09c176e24f`  
		Last Modified: Wed, 21 Sep 2016 21:03:36 GMT  
		Size: 610.0 KB (609955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003fe19d34709f36a9fe8d63d447425b306c476bcea0f6bdcae66adaedcb0c1b`  
		Last Modified: Wed, 21 Sep 2016 21:03:37 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-slim`

```console
$ docker pull ruby@sha256:436e7d6b769ff2d8c500324f07d3b907dacfc420469ec23241ecabb2931d2575
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98764248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e305dc2b54ff6c52cfb3d43d0c1e8140bf1c08edb48fbc0c68e2256d159f490`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Tue, 20 Sep 2016 18:25:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		curl 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:25:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:25:40 GMT
ENV RUBY_MAJOR=2.1
# Tue, 20 Sep 2016 18:25:40 GMT
ENV RUBY_VERSION=2.1.10
# Tue, 20 Sep 2016 18:25:40 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Tue, 20 Sep 2016 18:25:41 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Tue, 20 Sep 2016 18:28:02 GMT
RUN set -ex 	&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:28:03 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:28:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:28:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:28:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:28:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:28:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:28:06 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf776f630245dcdf49723a68b814a9523e21f8aae3574be083a82da30b138fd`  
		Last Modified: Wed, 21 Sep 2016 21:03:40 GMT  
		Size: 13.7 MB (13663318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb040abe2ad8f58d14f5edac69ca26a4da5128c999100ecb7016c17827790da6`  
		Last Modified: Wed, 21 Sep 2016 21:03:35 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0c82b57f8cf9c6bc434d6c10bb947fd718d7659f2d470e72184abb52070ca4`  
		Last Modified: Wed, 21 Sep 2016 21:03:49 GMT  
		Size: 33.1 MB (33136044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa33de31007ed9a5543b784b31aefdf1982f2519962b248704bbb09c176e24f`  
		Last Modified: Wed, 21 Sep 2016 21:03:36 GMT  
		Size: 610.0 KB (609955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003fe19d34709f36a9fe8d63d447425b306c476bcea0f6bdcae66adaedcb0c1b`  
		Last Modified: Wed, 21 Sep 2016 21:03:37 GMT  
		Size: 161.0 B  
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
$ docker pull ruby@sha256:44e8386e7cafab80cf4b55f906cbb3d1305d9be6fc8fddf33f7529201c8f506f
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.7 MB (275716999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f37f9a97fe0b5428f115a96c4e9b9eff1692e92746c27766f82163c04ce77ca`
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
# Tue, 20 Sep 2016 18:25:20 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:25:20 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:25:22 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:25:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:25:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:25:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:25:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:25:24 GMT
CMD ["irb"]
# Tue, 20 Sep 2016 18:28:07 GMT
RUN bundle config --global frozen 1
# Tue, 20 Sep 2016 18:28:07 GMT
RUN mkdir -p /usr/src/app
# Tue, 20 Sep 2016 18:28:08 GMT
WORKDIR /usr/src/app
# Tue, 20 Sep 2016 18:28:08 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 20 Sep 2016 18:28:08 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 20 Sep 2016 18:28:09 GMT
ONBUILD RUN bundle install
# Tue, 20 Sep 2016 18:28:09 GMT
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
	-	`sha256:e971553996fc750a1f5ed1a90e9ea13b111a97e7c4677794ebd95baa1e084dd3`  
		Last Modified: Wed, 21 Sep 2016 21:03:12 GMT  
		Size: 33.0 MB (32966493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db787db04b5c2ddac269aba766f4d7e44196010211514bf40a0c4631b4ce22a2`  
		Last Modified: Wed, 21 Sep 2016 21:02:59 GMT  
		Size: 609.9 KB (609943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215471bbddae6dfc02b37dec9bcf1fc8f3233f0de3096b267f06b53657210065`  
		Last Modified: Wed, 21 Sep 2016 21:02:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b588de957fdea32690cb77f8f6e62def9dd49638bad9ec7e65deea84133f6f83`  
		Last Modified: Wed, 21 Sep 2016 21:04:29 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5939baf87fbb6d2a574f4eba435d9eccd5bf6656fb2802baf0bb1414ade075f3`  
		Last Modified: Wed, 21 Sep 2016 21:04:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-onbuild`

```console
$ docker pull ruby@sha256:44e8386e7cafab80cf4b55f906cbb3d1305d9be6fc8fddf33f7529201c8f506f
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.7 MB (275716999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f37f9a97fe0b5428f115a96c4e9b9eff1692e92746c27766f82163c04ce77ca`
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
# Tue, 20 Sep 2016 18:25:20 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:25:20 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:25:22 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:25:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:25:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:25:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:25:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:25:24 GMT
CMD ["irb"]
# Tue, 20 Sep 2016 18:28:07 GMT
RUN bundle config --global frozen 1
# Tue, 20 Sep 2016 18:28:07 GMT
RUN mkdir -p /usr/src/app
# Tue, 20 Sep 2016 18:28:08 GMT
WORKDIR /usr/src/app
# Tue, 20 Sep 2016 18:28:08 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 20 Sep 2016 18:28:08 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 20 Sep 2016 18:28:09 GMT
ONBUILD RUN bundle install
# Tue, 20 Sep 2016 18:28:09 GMT
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
	-	`sha256:e971553996fc750a1f5ed1a90e9ea13b111a97e7c4677794ebd95baa1e084dd3`  
		Last Modified: Wed, 21 Sep 2016 21:03:12 GMT  
		Size: 33.0 MB (32966493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db787db04b5c2ddac269aba766f4d7e44196010211514bf40a0c4631b4ce22a2`  
		Last Modified: Wed, 21 Sep 2016 21:02:59 GMT  
		Size: 609.9 KB (609943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215471bbddae6dfc02b37dec9bcf1fc8f3233f0de3096b267f06b53657210065`  
		Last Modified: Wed, 21 Sep 2016 21:02:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b588de957fdea32690cb77f8f6e62def9dd49638bad9ec7e65deea84133f6f83`  
		Last Modified: Wed, 21 Sep 2016 21:04:29 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5939baf87fbb6d2a574f4eba435d9eccd5bf6656fb2802baf0bb1414ade075f3`  
		Last Modified: Wed, 21 Sep 2016 21:04:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.5`

```console
$ docker pull ruby@sha256:fc1ebe3d8e1bbe033871026e4b61b070db03c68d9756f7fc53ee39c0ca305763
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.2 MB (276232916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc7dde428a2bd97e5dca762e930393c1c069430670dbd4381ec5a194e26f5623`
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
# Tue, 20 Sep 2016 18:30:25 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:30:25 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:30:27 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:30:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:30:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:30:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:30:28 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:30:29 GMT
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
	-	`sha256:a7daaada87203f31707d1793bba936d4441ec2ea2c99768c89acc596973c6e0b`  
		Last Modified: Wed, 21 Sep 2016 21:05:07 GMT  
		Size: 33.5 MB (33482734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08742a5fe43669110fcfe719e4a1bcf6052d781055060c595392e1805523588b`  
		Last Modified: Wed, 21 Sep 2016 21:04:51 GMT  
		Size: 609.9 KB (609928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab73c6ba1a93d040b26c73dfdc6128a99e524773a0f78ffa7f96efb0f48e763e`  
		Last Modified: Wed, 21 Sep 2016 21:04:52 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2`

```console
$ docker pull ruby@sha256:fc1ebe3d8e1bbe033871026e4b61b070db03c68d9756f7fc53ee39c0ca305763
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.2 MB (276232916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc7dde428a2bd97e5dca762e930393c1c069430670dbd4381ec5a194e26f5623`
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
# Tue, 20 Sep 2016 18:30:25 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:30:25 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:30:27 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:30:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:30:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:30:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:30:28 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:30:29 GMT
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
	-	`sha256:a7daaada87203f31707d1793bba936d4441ec2ea2c99768c89acc596973c6e0b`  
		Last Modified: Wed, 21 Sep 2016 21:05:07 GMT  
		Size: 33.5 MB (33482734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08742a5fe43669110fcfe719e4a1bcf6052d781055060c595392e1805523588b`  
		Last Modified: Wed, 21 Sep 2016 21:04:51 GMT  
		Size: 609.9 KB (609928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab73c6ba1a93d040b26c73dfdc6128a99e524773a0f78ffa7f96efb0f48e763e`  
		Last Modified: Wed, 21 Sep 2016 21:04:52 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.5-slim`

```console
$ docker pull ruby@sha256:ed11795d32d164d3d8df235481ea50c458c9c525cc70ca27b7934caeb19f3bf1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.5-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99278518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acef5ca7789cbe25e2085693182d9d43c3cdbb10c6c5efdfede50f7eea594d10`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Tue, 20 Sep 2016 18:25:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		curl 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:25:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:30:29 GMT
ENV RUBY_MAJOR=2.2
# Tue, 20 Sep 2016 18:30:29 GMT
ENV RUBY_VERSION=2.2.5
# Tue, 20 Sep 2016 18:30:29 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 20 Sep 2016 18:30:30 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Tue, 20 Sep 2016 18:32:59 GMT
RUN set -ex 	&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:32:59 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:33:01 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:33:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:33:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:33:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:33:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:33:03 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf776f630245dcdf49723a68b814a9523e21f8aae3574be083a82da30b138fd`  
		Last Modified: Wed, 21 Sep 2016 21:03:40 GMT  
		Size: 13.7 MB (13663318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb040abe2ad8f58d14f5edac69ca26a4da5128c999100ecb7016c17827790da6`  
		Last Modified: Wed, 21 Sep 2016 21:03:35 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015898a42395d2450a303a7d9af79e09ed38eb3dfcbb9fef6bbaa8ae78143311`  
		Last Modified: Wed, 21 Sep 2016 21:05:43 GMT  
		Size: 33.7 MB (33650332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef777cdee6c3a852e8ac5d0bfd738b217dcff69f5ad6c0a2dd38ee51c3aec9d`  
		Last Modified: Wed, 21 Sep 2016 21:05:30 GMT  
		Size: 609.9 KB (609937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e201f71980910f091beaf95677d06beb300113827dd82a6cbac5357a2ac2b0`  
		Last Modified: Wed, 21 Sep 2016 21:05:30 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-slim`

```console
$ docker pull ruby@sha256:ed11795d32d164d3d8df235481ea50c458c9c525cc70ca27b7934caeb19f3bf1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99278518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acef5ca7789cbe25e2085693182d9d43c3cdbb10c6c5efdfede50f7eea594d10`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Tue, 20 Sep 2016 18:25:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		curl 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:25:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:30:29 GMT
ENV RUBY_MAJOR=2.2
# Tue, 20 Sep 2016 18:30:29 GMT
ENV RUBY_VERSION=2.2.5
# Tue, 20 Sep 2016 18:30:29 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 20 Sep 2016 18:30:30 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Tue, 20 Sep 2016 18:32:59 GMT
RUN set -ex 	&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:32:59 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:33:01 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:33:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:33:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:33:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:33:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:33:03 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf776f630245dcdf49723a68b814a9523e21f8aae3574be083a82da30b138fd`  
		Last Modified: Wed, 21 Sep 2016 21:03:40 GMT  
		Size: 13.7 MB (13663318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb040abe2ad8f58d14f5edac69ca26a4da5128c999100ecb7016c17827790da6`  
		Last Modified: Wed, 21 Sep 2016 21:03:35 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015898a42395d2450a303a7d9af79e09ed38eb3dfcbb9fef6bbaa8ae78143311`  
		Last Modified: Wed, 21 Sep 2016 21:05:43 GMT  
		Size: 33.7 MB (33650332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef777cdee6c3a852e8ac5d0bfd738b217dcff69f5ad6c0a2dd38ee51c3aec9d`  
		Last Modified: Wed, 21 Sep 2016 21:05:30 GMT  
		Size: 609.9 KB (609937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e201f71980910f091beaf95677d06beb300113827dd82a6cbac5357a2ac2b0`  
		Last Modified: Wed, 21 Sep 2016 21:05:30 GMT  
		Size: 161.0 B  
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
$ docker pull ruby@sha256:1410faa7fda5950edc07971c5fa5c09f189a49f5e4fa44ba2426c2bdf6cbaa8b
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.5-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.2 MB (276233228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0480cb01ab8b561297e305ac519876ec75f4ce3a914b4f944ef3766d58889ec0`
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
# Tue, 20 Sep 2016 18:30:25 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:30:25 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:30:27 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:30:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:30:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:30:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:30:28 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:30:29 GMT
CMD ["irb"]
# Tue, 20 Sep 2016 18:33:04 GMT
RUN bundle config --global frozen 1
# Tue, 20 Sep 2016 18:33:05 GMT
RUN mkdir -p /usr/src/app
# Tue, 20 Sep 2016 18:33:05 GMT
WORKDIR /usr/src/app
# Tue, 20 Sep 2016 18:33:05 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 20 Sep 2016 18:33:05 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 20 Sep 2016 18:33:06 GMT
ONBUILD RUN bundle install
# Tue, 20 Sep 2016 18:33:06 GMT
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
	-	`sha256:a7daaada87203f31707d1793bba936d4441ec2ea2c99768c89acc596973c6e0b`  
		Last Modified: Wed, 21 Sep 2016 21:05:07 GMT  
		Size: 33.5 MB (33482734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08742a5fe43669110fcfe719e4a1bcf6052d781055060c595392e1805523588b`  
		Last Modified: Wed, 21 Sep 2016 21:04:51 GMT  
		Size: 609.9 KB (609928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab73c6ba1a93d040b26c73dfdc6128a99e524773a0f78ffa7f96efb0f48e763e`  
		Last Modified: Wed, 21 Sep 2016 21:04:52 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cace11a6a35de2508e17fbcd08098a2e2be65a27c2c333cefab9f511985b47cc`  
		Last Modified: Wed, 21 Sep 2016 21:06:23 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96395386dc41e431fc42789737321a7f2f1dd5f541c66b3081d13119641f3d17`  
		Last Modified: Wed, 21 Sep 2016 21:06:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-onbuild`

```console
$ docker pull ruby@sha256:1410faa7fda5950edc07971c5fa5c09f189a49f5e4fa44ba2426c2bdf6cbaa8b
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.2 MB (276233228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0480cb01ab8b561297e305ac519876ec75f4ce3a914b4f944ef3766d58889ec0`
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
# Tue, 20 Sep 2016 18:30:25 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:30:25 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:30:27 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:30:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:30:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:30:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:30:28 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:30:29 GMT
CMD ["irb"]
# Tue, 20 Sep 2016 18:33:04 GMT
RUN bundle config --global frozen 1
# Tue, 20 Sep 2016 18:33:05 GMT
RUN mkdir -p /usr/src/app
# Tue, 20 Sep 2016 18:33:05 GMT
WORKDIR /usr/src/app
# Tue, 20 Sep 2016 18:33:05 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 20 Sep 2016 18:33:05 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 20 Sep 2016 18:33:06 GMT
ONBUILD RUN bundle install
# Tue, 20 Sep 2016 18:33:06 GMT
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
	-	`sha256:a7daaada87203f31707d1793bba936d4441ec2ea2c99768c89acc596973c6e0b`  
		Last Modified: Wed, 21 Sep 2016 21:05:07 GMT  
		Size: 33.5 MB (33482734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08742a5fe43669110fcfe719e4a1bcf6052d781055060c595392e1805523588b`  
		Last Modified: Wed, 21 Sep 2016 21:04:51 GMT  
		Size: 609.9 KB (609928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab73c6ba1a93d040b26c73dfdc6128a99e524773a0f78ffa7f96efb0f48e763e`  
		Last Modified: Wed, 21 Sep 2016 21:04:52 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cace11a6a35de2508e17fbcd08098a2e2be65a27c2c333cefab9f511985b47cc`  
		Last Modified: Wed, 21 Sep 2016 21:06:23 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96395386dc41e431fc42789737321a7f2f1dd5f541c66b3081d13119641f3d17`  
		Last Modified: Wed, 21 Sep 2016 21:06:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.1`

```console
$ docker pull ruby@sha256:2aab254f020269f4c277ccdf6df53d8ec37dadcaef7856a138012fbebd71fe38
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278034432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:755ce8b9019786ea12a2a3e0bf959e904f9f257662b8f8baa5179b0ef465a2eb`
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
# Tue, 20 Sep 2016 18:35:29 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:35:29 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:35:30 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:35:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:35:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:35:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:35:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:35:32 GMT
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
	-	`sha256:30557040ed3160859ae0ed6e8f33581be4c82ddf05c07800f3e295687d5acc05`  
		Last Modified: Wed, 21 Sep 2016 21:07:01 GMT  
		Size: 35.3 MB (35284240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:160486c2fa889a8de1f92cecf4e383225247436e84c81215bae0df837dd7fd96`  
		Last Modified: Wed, 21 Sep 2016 21:06:46 GMT  
		Size: 609.9 KB (609938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f7eac844bdb05be217f7ab41e81d47c2b8c74e2ab3b1afc57d9760b2418d9f`  
		Last Modified: Wed, 21 Sep 2016 21:06:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3`

```console
$ docker pull ruby@sha256:2aab254f020269f4c277ccdf6df53d8ec37dadcaef7856a138012fbebd71fe38
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278034432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:755ce8b9019786ea12a2a3e0bf959e904f9f257662b8f8baa5179b0ef465a2eb`
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
# Tue, 20 Sep 2016 18:35:29 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:35:29 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:35:30 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:35:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:35:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:35:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:35:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:35:32 GMT
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
	-	`sha256:30557040ed3160859ae0ed6e8f33581be4c82ddf05c07800f3e295687d5acc05`  
		Last Modified: Wed, 21 Sep 2016 21:07:01 GMT  
		Size: 35.3 MB (35284240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:160486c2fa889a8de1f92cecf4e383225247436e84c81215bae0df837dd7fd96`  
		Last Modified: Wed, 21 Sep 2016 21:06:46 GMT  
		Size: 609.9 KB (609938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f7eac844bdb05be217f7ab41e81d47c2b8c74e2ab3b1afc57d9760b2418d9f`  
		Last Modified: Wed, 21 Sep 2016 21:06:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2`

```console
$ docker pull ruby@sha256:2aab254f020269f4c277ccdf6df53d8ec37dadcaef7856a138012fbebd71fe38
```

-	Platforms:
	-	linux; amd64

### `ruby:2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278034432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:755ce8b9019786ea12a2a3e0bf959e904f9f257662b8f8baa5179b0ef465a2eb`
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
# Tue, 20 Sep 2016 18:35:29 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:35:29 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:35:30 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:35:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:35:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:35:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:35:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:35:32 GMT
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
	-	`sha256:30557040ed3160859ae0ed6e8f33581be4c82ddf05c07800f3e295687d5acc05`  
		Last Modified: Wed, 21 Sep 2016 21:07:01 GMT  
		Size: 35.3 MB (35284240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:160486c2fa889a8de1f92cecf4e383225247436e84c81215bae0df837dd7fd96`  
		Last Modified: Wed, 21 Sep 2016 21:06:46 GMT  
		Size: 609.9 KB (609938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f7eac844bdb05be217f7ab41e81d47c2b8c74e2ab3b1afc57d9760b2418d9f`  
		Last Modified: Wed, 21 Sep 2016 21:06:46 GMT  
		Size: 161.0 B  
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
$ docker pull ruby@sha256:4dcb46d0ac1fdccb9d8a1b70a018e39eddba5fe1ae0c5a61ac4e204c1750ff00
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.1-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101078872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca01f7e103565ee565202098d337c0c9a71064ed0f782401a53688ccc679140`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Tue, 20 Sep 2016 18:25:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		curl 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:25:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:35:33 GMT
ENV RUBY_MAJOR=2.3
# Tue, 20 Sep 2016 18:35:33 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 20 Sep 2016 18:35:33 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 20 Sep 2016 18:35:34 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Tue, 20 Sep 2016 18:38:19 GMT
RUN set -ex 	&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:38:20 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:38:21 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:38:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:38:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:38:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:38:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:38:23 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf776f630245dcdf49723a68b814a9523e21f8aae3574be083a82da30b138fd`  
		Last Modified: Wed, 21 Sep 2016 21:03:40 GMT  
		Size: 13.7 MB (13663318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb040abe2ad8f58d14f5edac69ca26a4da5128c999100ecb7016c17827790da6`  
		Last Modified: Wed, 21 Sep 2016 21:03:35 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3895b03fb74bd8ac6335f34cab7ea9cf30c16effbc4e6ae88fce5065c9774c`  
		Last Modified: Wed, 21 Sep 2016 21:07:56 GMT  
		Size: 35.5 MB (35450690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4af2c4bf3ac765982d1b7d7be6396938b9a8dc5561a922899c21fc34e916b68`  
		Last Modified: Wed, 21 Sep 2016 21:07:42 GMT  
		Size: 609.9 KB (609933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37393d536f4a05ec605c3844b3d5e0304f29a621ade0b1e5064b41f2d014727b`  
		Last Modified: Wed, 21 Sep 2016 21:07:41 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-slim`

```console
$ docker pull ruby@sha256:4dcb46d0ac1fdccb9d8a1b70a018e39eddba5fe1ae0c5a61ac4e204c1750ff00
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101078872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca01f7e103565ee565202098d337c0c9a71064ed0f782401a53688ccc679140`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Tue, 20 Sep 2016 18:25:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		curl 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:25:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:35:33 GMT
ENV RUBY_MAJOR=2.3
# Tue, 20 Sep 2016 18:35:33 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 20 Sep 2016 18:35:33 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 20 Sep 2016 18:35:34 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Tue, 20 Sep 2016 18:38:19 GMT
RUN set -ex 	&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:38:20 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:38:21 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:38:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:38:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:38:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:38:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:38:23 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf776f630245dcdf49723a68b814a9523e21f8aae3574be083a82da30b138fd`  
		Last Modified: Wed, 21 Sep 2016 21:03:40 GMT  
		Size: 13.7 MB (13663318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb040abe2ad8f58d14f5edac69ca26a4da5128c999100ecb7016c17827790da6`  
		Last Modified: Wed, 21 Sep 2016 21:03:35 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3895b03fb74bd8ac6335f34cab7ea9cf30c16effbc4e6ae88fce5065c9774c`  
		Last Modified: Wed, 21 Sep 2016 21:07:56 GMT  
		Size: 35.5 MB (35450690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4af2c4bf3ac765982d1b7d7be6396938b9a8dc5561a922899c21fc34e916b68`  
		Last Modified: Wed, 21 Sep 2016 21:07:42 GMT  
		Size: 609.9 KB (609933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37393d536f4a05ec605c3844b3d5e0304f29a621ade0b1e5064b41f2d014727b`  
		Last Modified: Wed, 21 Sep 2016 21:07:41 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-slim`

```console
$ docker pull ruby@sha256:4dcb46d0ac1fdccb9d8a1b70a018e39eddba5fe1ae0c5a61ac4e204c1750ff00
```

-	Platforms:
	-	linux; amd64

### `ruby:2-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101078872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca01f7e103565ee565202098d337c0c9a71064ed0f782401a53688ccc679140`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Tue, 20 Sep 2016 18:25:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		curl 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:25:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:35:33 GMT
ENV RUBY_MAJOR=2.3
# Tue, 20 Sep 2016 18:35:33 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 20 Sep 2016 18:35:33 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 20 Sep 2016 18:35:34 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Tue, 20 Sep 2016 18:38:19 GMT
RUN set -ex 	&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:38:20 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:38:21 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:38:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:38:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:38:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:38:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:38:23 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf776f630245dcdf49723a68b814a9523e21f8aae3574be083a82da30b138fd`  
		Last Modified: Wed, 21 Sep 2016 21:03:40 GMT  
		Size: 13.7 MB (13663318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb040abe2ad8f58d14f5edac69ca26a4da5128c999100ecb7016c17827790da6`  
		Last Modified: Wed, 21 Sep 2016 21:03:35 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3895b03fb74bd8ac6335f34cab7ea9cf30c16effbc4e6ae88fce5065c9774c`  
		Last Modified: Wed, 21 Sep 2016 21:07:56 GMT  
		Size: 35.5 MB (35450690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4af2c4bf3ac765982d1b7d7be6396938b9a8dc5561a922899c21fc34e916b68`  
		Last Modified: Wed, 21 Sep 2016 21:07:42 GMT  
		Size: 609.9 KB (609933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37393d536f4a05ec605c3844b3d5e0304f29a621ade0b1e5064b41f2d014727b`  
		Last Modified: Wed, 21 Sep 2016 21:07:41 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:slim`

```console
$ docker pull ruby@sha256:4dcb46d0ac1fdccb9d8a1b70a018e39eddba5fe1ae0c5a61ac4e204c1750ff00
```

-	Platforms:
	-	linux; amd64

### `ruby:slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101078872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca01f7e103565ee565202098d337c0c9a71064ed0f782401a53688ccc679140`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Tue, 20 Sep 2016 18:25:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		curl 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:25:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:35:33 GMT
ENV RUBY_MAJOR=2.3
# Tue, 20 Sep 2016 18:35:33 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 20 Sep 2016 18:35:33 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 20 Sep 2016 18:35:34 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Tue, 20 Sep 2016 18:38:19 GMT
RUN set -ex 	&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:38:20 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:38:21 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:38:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:38:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:38:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:38:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:38:23 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf776f630245dcdf49723a68b814a9523e21f8aae3574be083a82da30b138fd`  
		Last Modified: Wed, 21 Sep 2016 21:03:40 GMT  
		Size: 13.7 MB (13663318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb040abe2ad8f58d14f5edac69ca26a4da5128c999100ecb7016c17827790da6`  
		Last Modified: Wed, 21 Sep 2016 21:03:35 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3895b03fb74bd8ac6335f34cab7ea9cf30c16effbc4e6ae88fce5065c9774c`  
		Last Modified: Wed, 21 Sep 2016 21:07:56 GMT  
		Size: 35.5 MB (35450690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4af2c4bf3ac765982d1b7d7be6396938b9a8dc5561a922899c21fc34e916b68`  
		Last Modified: Wed, 21 Sep 2016 21:07:42 GMT  
		Size: 609.9 KB (609933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37393d536f4a05ec605c3844b3d5e0304f29a621ade0b1e5064b41f2d014727b`  
		Last Modified: Wed, 21 Sep 2016 21:07:41 GMT  
		Size: 161.0 B  
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
$ docker pull ruby@sha256:19f5eff6bb209fee63b7b5854a008d638501c3bc49fe5cf0f03b3c3a3b6b73f9
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278034743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7592a46e05d946766e2bad20d98719a0471034c703749e124ccff2d03f33ce4`
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
# Tue, 20 Sep 2016 18:35:29 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:35:29 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:35:30 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:35:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:35:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:35:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:35:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:35:32 GMT
CMD ["irb"]
# Wed, 21 Sep 2016 21:02:45 GMT
RUN bundle config --global frozen 1
# Wed, 21 Sep 2016 21:02:46 GMT
RUN mkdir -p /usr/src/app
# Wed, 21 Sep 2016 21:02:46 GMT
WORKDIR /usr/src/app
# Wed, 21 Sep 2016 21:02:46 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 21 Sep 2016 21:02:46 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 21 Sep 2016 21:02:47 GMT
ONBUILD RUN bundle install
# Wed, 21 Sep 2016 21:02:47 GMT
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
	-	`sha256:30557040ed3160859ae0ed6e8f33581be4c82ddf05c07800f3e295687d5acc05`  
		Last Modified: Wed, 21 Sep 2016 21:07:01 GMT  
		Size: 35.3 MB (35284240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:160486c2fa889a8de1f92cecf4e383225247436e84c81215bae0df837dd7fd96`  
		Last Modified: Wed, 21 Sep 2016 21:06:46 GMT  
		Size: 609.9 KB (609938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f7eac844bdb05be217f7ab41e81d47c2b8c74e2ab3b1afc57d9760b2418d9f`  
		Last Modified: Wed, 21 Sep 2016 21:06:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb75123aa574d4c3400fbee8b8142fd267270a2dc73f7a38b564d67da0b453f`  
		Last Modified: Wed, 21 Sep 2016 21:09:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1bfb79c01b26d4c48b5ed82cdd030cdf40616c47aff9083d269ffd28cb426c`  
		Last Modified: Wed, 21 Sep 2016 21:09:10 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-onbuild`

```console
$ docker pull ruby@sha256:19f5eff6bb209fee63b7b5854a008d638501c3bc49fe5cf0f03b3c3a3b6b73f9
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278034743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7592a46e05d946766e2bad20d98719a0471034c703749e124ccff2d03f33ce4`
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
# Tue, 20 Sep 2016 18:35:29 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:35:29 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:35:30 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:35:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:35:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:35:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:35:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:35:32 GMT
CMD ["irb"]
# Wed, 21 Sep 2016 21:02:45 GMT
RUN bundle config --global frozen 1
# Wed, 21 Sep 2016 21:02:46 GMT
RUN mkdir -p /usr/src/app
# Wed, 21 Sep 2016 21:02:46 GMT
WORKDIR /usr/src/app
# Wed, 21 Sep 2016 21:02:46 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 21 Sep 2016 21:02:46 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 21 Sep 2016 21:02:47 GMT
ONBUILD RUN bundle install
# Wed, 21 Sep 2016 21:02:47 GMT
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
	-	`sha256:30557040ed3160859ae0ed6e8f33581be4c82ddf05c07800f3e295687d5acc05`  
		Last Modified: Wed, 21 Sep 2016 21:07:01 GMT  
		Size: 35.3 MB (35284240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:160486c2fa889a8de1f92cecf4e383225247436e84c81215bae0df837dd7fd96`  
		Last Modified: Wed, 21 Sep 2016 21:06:46 GMT  
		Size: 609.9 KB (609938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f7eac844bdb05be217f7ab41e81d47c2b8c74e2ab3b1afc57d9760b2418d9f`  
		Last Modified: Wed, 21 Sep 2016 21:06:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb75123aa574d4c3400fbee8b8142fd267270a2dc73f7a38b564d67da0b453f`  
		Last Modified: Wed, 21 Sep 2016 21:09:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1bfb79c01b26d4c48b5ed82cdd030cdf40616c47aff9083d269ffd28cb426c`  
		Last Modified: Wed, 21 Sep 2016 21:09:10 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-onbuild`

```console
$ docker pull ruby@sha256:19f5eff6bb209fee63b7b5854a008d638501c3bc49fe5cf0f03b3c3a3b6b73f9
```

-	Platforms:
	-	linux; amd64

### `ruby:2-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278034743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7592a46e05d946766e2bad20d98719a0471034c703749e124ccff2d03f33ce4`
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
# Tue, 20 Sep 2016 18:35:29 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:35:29 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:35:30 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:35:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:35:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:35:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:35:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:35:32 GMT
CMD ["irb"]
# Wed, 21 Sep 2016 21:02:45 GMT
RUN bundle config --global frozen 1
# Wed, 21 Sep 2016 21:02:46 GMT
RUN mkdir -p /usr/src/app
# Wed, 21 Sep 2016 21:02:46 GMT
WORKDIR /usr/src/app
# Wed, 21 Sep 2016 21:02:46 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 21 Sep 2016 21:02:46 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 21 Sep 2016 21:02:47 GMT
ONBUILD RUN bundle install
# Wed, 21 Sep 2016 21:02:47 GMT
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
	-	`sha256:30557040ed3160859ae0ed6e8f33581be4c82ddf05c07800f3e295687d5acc05`  
		Last Modified: Wed, 21 Sep 2016 21:07:01 GMT  
		Size: 35.3 MB (35284240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:160486c2fa889a8de1f92cecf4e383225247436e84c81215bae0df837dd7fd96`  
		Last Modified: Wed, 21 Sep 2016 21:06:46 GMT  
		Size: 609.9 KB (609938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f7eac844bdb05be217f7ab41e81d47c2b8c74e2ab3b1afc57d9760b2418d9f`  
		Last Modified: Wed, 21 Sep 2016 21:06:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb75123aa574d4c3400fbee8b8142fd267270a2dc73f7a38b564d67da0b453f`  
		Last Modified: Wed, 21 Sep 2016 21:09:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1bfb79c01b26d4c48b5ed82cdd030cdf40616c47aff9083d269ffd28cb426c`  
		Last Modified: Wed, 21 Sep 2016 21:09:10 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:onbuild`

```console
$ docker pull ruby@sha256:19f5eff6bb209fee63b7b5854a008d638501c3bc49fe5cf0f03b3c3a3b6b73f9
```

-	Platforms:
	-	linux; amd64

### `ruby:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278034743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7592a46e05d946766e2bad20d98719a0471034c703749e124ccff2d03f33ce4`
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
# Tue, 20 Sep 2016 18:35:29 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:35:29 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:35:30 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:35:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:35:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:35:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:35:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:35:32 GMT
CMD ["irb"]
# Wed, 21 Sep 2016 21:02:45 GMT
RUN bundle config --global frozen 1
# Wed, 21 Sep 2016 21:02:46 GMT
RUN mkdir -p /usr/src/app
# Wed, 21 Sep 2016 21:02:46 GMT
WORKDIR /usr/src/app
# Wed, 21 Sep 2016 21:02:46 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 21 Sep 2016 21:02:46 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 21 Sep 2016 21:02:47 GMT
ONBUILD RUN bundle install
# Wed, 21 Sep 2016 21:02:47 GMT
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
	-	`sha256:30557040ed3160859ae0ed6e8f33581be4c82ddf05c07800f3e295687d5acc05`  
		Last Modified: Wed, 21 Sep 2016 21:07:01 GMT  
		Size: 35.3 MB (35284240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:160486c2fa889a8de1f92cecf4e383225247436e84c81215bae0df837dd7fd96`  
		Last Modified: Wed, 21 Sep 2016 21:06:46 GMT  
		Size: 609.9 KB (609938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f7eac844bdb05be217f7ab41e81d47c2b8c74e2ab3b1afc57d9760b2418d9f`  
		Last Modified: Wed, 21 Sep 2016 21:06:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb75123aa574d4c3400fbee8b8142fd267270a2dc73f7a38b564d67da0b453f`  
		Last Modified: Wed, 21 Sep 2016 21:09:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1bfb79c01b26d4c48b5ed82cdd030cdf40616c47aff9083d269ffd28cb426c`  
		Last Modified: Wed, 21 Sep 2016 21:09:10 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
