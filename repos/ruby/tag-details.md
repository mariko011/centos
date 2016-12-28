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
-	[`ruby:2`](#ruby2)
-	[`ruby:latest`](#rubylatest)
-	[`ruby:2.3.3-slim`](#ruby233-slim)
-	[`ruby:2.3-slim`](#ruby23-slim)
-	[`ruby:2-slim`](#ruby2-slim)
-	[`ruby:slim`](#rubyslim)
-	[`ruby:2.3.3-alpine`](#ruby233-alpine)
-	[`ruby:2.3-alpine`](#ruby23-alpine)
-	[`ruby:2-alpine`](#ruby2-alpine)
-	[`ruby:alpine`](#rubyalpine)
-	[`ruby:2.3.3-onbuild`](#ruby233-onbuild)
-	[`ruby:2.3-onbuild`](#ruby23-onbuild)
-	[`ruby:2-onbuild`](#ruby2-onbuild)
-	[`ruby:onbuild`](#rubyonbuild)
-	[`ruby:2.4.0`](#ruby240)
-	[`ruby:2.4`](#ruby24)
-	[`ruby:2.4.0-slim`](#ruby240-slim)
-	[`ruby:2.4-slim`](#ruby24-slim)
-	[`ruby:2.4.0-alpine`](#ruby240-alpine)
-	[`ruby:2.4-alpine`](#ruby24-alpine)
-	[`ruby:2.4.0-onbuild`](#ruby240-onbuild)
-	[`ruby:2.4-onbuild`](#ruby24-onbuild)

## `ruby:2.1.10`

```console
$ docker pull ruby@sha256:1938427ecb1d30c830be223efb85b0162e9636071230206330979d9d5f8530ec
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275337021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2903b59d264e3af3c9dc918aba76b8c242018b9cf5a522014dd8408edff594f8`
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
# Fri, 16 Dec 2016 03:33:18 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Fri, 16 Dec 2016 03:33:18 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 16 Dec 2016 03:35:28 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:18:50 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:18:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:18:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:18:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:18:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:18:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:18:55 GMT
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
	-	`sha256:d94ccdc360926eccf8a2cc51837714f27467f873fe5e9eb576ffb5b53960ee54`  
		Last Modified: Wed, 21 Dec 2016 20:00:08 GMT  
		Size: 32.5 MB (32505047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392b520521c5f206dd205cfb8db89014f9b6cfc315f9894b1d23a79753ec79a3`  
		Last Modified: Wed, 28 Dec 2016 22:28:52 GMT  
		Size: 612.9 KB (612881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c637dc99ff0d2cfd56ddd6ed742fc011b4462c376f8044510922d28aac5512`  
		Last Modified: Wed, 28 Dec 2016 22:28:51 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1`

```console
$ docker pull ruby@sha256:1938427ecb1d30c830be223efb85b0162e9636071230206330979d9d5f8530ec
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275337021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2903b59d264e3af3c9dc918aba76b8c242018b9cf5a522014dd8408edff594f8`
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
# Fri, 16 Dec 2016 03:33:18 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Fri, 16 Dec 2016 03:33:18 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 16 Dec 2016 03:35:28 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:18:50 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:18:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:18:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:18:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:18:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:18:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:18:55 GMT
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
	-	`sha256:d94ccdc360926eccf8a2cc51837714f27467f873fe5e9eb576ffb5b53960ee54`  
		Last Modified: Wed, 21 Dec 2016 20:00:08 GMT  
		Size: 32.5 MB (32505047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392b520521c5f206dd205cfb8db89014f9b6cfc315f9894b1d23a79753ec79a3`  
		Last Modified: Wed, 28 Dec 2016 22:28:52 GMT  
		Size: 612.9 KB (612881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c637dc99ff0d2cfd56ddd6ed742fc011b4462c376f8044510922d28aac5512`  
		Last Modified: Wed, 28 Dec 2016 22:28:51 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-slim`

```console
$ docker pull ruby@sha256:6fdf28446fb29ccae822d68af11e170bfdbf70a5b7b4f34576c5764eb4a5ebaf
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94620884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cffa934efab6e7e607b45772f01387a83ccd6a88d02e93885cb6b4b7b215e5d`
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
# Wed, 14 Dec 2016 19:32:27 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Wed, 14 Dec 2016 19:32:27 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:34:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:18:56 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:18:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:18:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:01 GMT
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
	-	`sha256:50891c0191f75894079f10fb90c10a7c52bf0846b87e0695676a583746b52402`  
		Last Modified: Wed, 21 Dec 2016 20:01:50 GMT  
		Size: 32.7 MB (32663452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354fe899c8eb8f36c0b8471226591136c866bf4992138f63aea9ace48030aea9`  
		Last Modified: Wed, 28 Dec 2016 22:29:25 GMT  
		Size: 612.9 KB (612881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490bb0022ff7e51f434da9439fbc4fd6663b7564cf17fdc5cbae5f8a7a1cc952`  
		Last Modified: Wed, 28 Dec 2016 22:29:25 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-slim`

```console
$ docker pull ruby@sha256:6fdf28446fb29ccae822d68af11e170bfdbf70a5b7b4f34576c5764eb4a5ebaf
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94620884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cffa934efab6e7e607b45772f01387a83ccd6a88d02e93885cb6b4b7b215e5d`
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
# Wed, 14 Dec 2016 19:32:27 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Wed, 14 Dec 2016 19:32:27 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:34:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:18:56 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:18:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:18:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:01 GMT
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
	-	`sha256:50891c0191f75894079f10fb90c10a7c52bf0846b87e0695676a583746b52402`  
		Last Modified: Wed, 21 Dec 2016 20:01:50 GMT  
		Size: 32.7 MB (32663452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354fe899c8eb8f36c0b8471226591136c866bf4992138f63aea9ace48030aea9`  
		Last Modified: Wed, 28 Dec 2016 22:29:25 GMT  
		Size: 612.9 KB (612881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490bb0022ff7e51f434da9439fbc4fd6663b7564cf17fdc5cbae5f8a7a1cc952`  
		Last Modified: Wed, 28 Dec 2016 22:29:25 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-alpine`

```console
$ docker pull ruby@sha256:39816a736ccd151791bfa3baa0e4961a5799b9d2da2bba4d40bbdfd7d1be76d1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35530539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cd0566842bbfb8f9c07123d97027c4fceb7c1dc8b5dbaaaf4dedec32eb6e8bf`
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
# Tue, 27 Dec 2016 21:39:57 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Tue, 27 Dec 2016 21:39:58 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 27 Dec 2016 21:43:06 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:02 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:03 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:05 GMT
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
	-	`sha256:38555cf5433d38e192b22dae14971e604fcd882e031fccebdeeffce118da2aa6`  
		Last Modified: Tue, 27 Dec 2016 21:51:17 GMT  
		Size: 32.6 MB (32604250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f7064c9626d058d767089c41fb002a6bfd5330776e90f9a917d5c39991172c`  
		Last Modified: Wed, 28 Dec 2016 22:29:59 GMT  
		Size: 612.8 KB (612849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd5a567e891c2391c46c69bf34b7808cfb3a01c1c590f53291dc64499ec225c`  
		Last Modified: Wed, 28 Dec 2016 22:29:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-alpine`

```console
$ docker pull ruby@sha256:39816a736ccd151791bfa3baa0e4961a5799b9d2da2bba4d40bbdfd7d1be76d1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35530539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cd0566842bbfb8f9c07123d97027c4fceb7c1dc8b5dbaaaf4dedec32eb6e8bf`
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
# Tue, 27 Dec 2016 21:39:57 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Tue, 27 Dec 2016 21:39:58 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 27 Dec 2016 21:43:06 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:02 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:03 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:05 GMT
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
	-	`sha256:38555cf5433d38e192b22dae14971e604fcd882e031fccebdeeffce118da2aa6`  
		Last Modified: Tue, 27 Dec 2016 21:51:17 GMT  
		Size: 32.6 MB (32604250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f7064c9626d058d767089c41fb002a6bfd5330776e90f9a917d5c39991172c`  
		Last Modified: Wed, 28 Dec 2016 22:29:59 GMT  
		Size: 612.8 KB (612849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd5a567e891c2391c46c69bf34b7808cfb3a01c1c590f53291dc64499ec225c`  
		Last Modified: Wed, 28 Dec 2016 22:29:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-onbuild`

```console
$ docker pull ruby@sha256:2b4c6defef7f0fcba184b640fcf75290da5d0290a6849363f89a4ddc0ea41d2c
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275337332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e66829a49a8eddc5941f6276236abf2c30355f2e6d782dc4bae0536068d64119`
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
# Fri, 16 Dec 2016 03:33:18 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Fri, 16 Dec 2016 03:33:18 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 16 Dec 2016 03:35:28 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:18:50 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:18:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:18:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:18:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:18:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:18:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:18:55 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 22:19:07 GMT
RUN bundle config --global frozen 1
# Wed, 28 Dec 2016 22:19:08 GMT
RUN mkdir -p /usr/src/app
# Wed, 28 Dec 2016 22:19:08 GMT
WORKDIR /usr/src/app
# Wed, 28 Dec 2016 22:19:08 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 28 Dec 2016 22:19:09 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 28 Dec 2016 22:19:09 GMT
ONBUILD RUN bundle install
# Wed, 28 Dec 2016 22:19:09 GMT
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
	-	`sha256:d94ccdc360926eccf8a2cc51837714f27467f873fe5e9eb576ffb5b53960ee54`  
		Last Modified: Wed, 21 Dec 2016 20:00:08 GMT  
		Size: 32.5 MB (32505047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392b520521c5f206dd205cfb8db89014f9b6cfc315f9894b1d23a79753ec79a3`  
		Last Modified: Wed, 28 Dec 2016 22:28:52 GMT  
		Size: 612.9 KB (612881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c637dc99ff0d2cfd56ddd6ed742fc011b4462c376f8044510922d28aac5512`  
		Last Modified: Wed, 28 Dec 2016 22:28:51 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3db80c2a18d9911dc2d7160a78631a50b033d1c638efb4ab097ac4e886d40bd`  
		Last Modified: Wed, 28 Dec 2016 22:30:32 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf9de405a6f79278b7a6689ae8d10004a5ea04c430b73b3459763dbb03fd182`  
		Last Modified: Wed, 28 Dec 2016 22:30:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-onbuild`

```console
$ docker pull ruby@sha256:2b4c6defef7f0fcba184b640fcf75290da5d0290a6849363f89a4ddc0ea41d2c
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275337332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e66829a49a8eddc5941f6276236abf2c30355f2e6d782dc4bae0536068d64119`
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
# Fri, 16 Dec 2016 03:33:18 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Fri, 16 Dec 2016 03:33:18 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 16 Dec 2016 03:35:28 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:18:50 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:18:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:18:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:18:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:18:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:18:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:18:55 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 22:19:07 GMT
RUN bundle config --global frozen 1
# Wed, 28 Dec 2016 22:19:08 GMT
RUN mkdir -p /usr/src/app
# Wed, 28 Dec 2016 22:19:08 GMT
WORKDIR /usr/src/app
# Wed, 28 Dec 2016 22:19:08 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 28 Dec 2016 22:19:09 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 28 Dec 2016 22:19:09 GMT
ONBUILD RUN bundle install
# Wed, 28 Dec 2016 22:19:09 GMT
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
	-	`sha256:d94ccdc360926eccf8a2cc51837714f27467f873fe5e9eb576ffb5b53960ee54`  
		Last Modified: Wed, 21 Dec 2016 20:00:08 GMT  
		Size: 32.5 MB (32505047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392b520521c5f206dd205cfb8db89014f9b6cfc315f9894b1d23a79753ec79a3`  
		Last Modified: Wed, 28 Dec 2016 22:28:52 GMT  
		Size: 612.9 KB (612881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c637dc99ff0d2cfd56ddd6ed742fc011b4462c376f8044510922d28aac5512`  
		Last Modified: Wed, 28 Dec 2016 22:28:51 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3db80c2a18d9911dc2d7160a78631a50b033d1c638efb4ab097ac4e886d40bd`  
		Last Modified: Wed, 28 Dec 2016 22:30:32 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf9de405a6f79278b7a6689ae8d10004a5ea04c430b73b3459763dbb03fd182`  
		Last Modified: Wed, 28 Dec 2016 22:30:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6`

```console
$ docker pull ruby@sha256:a852e83f90887274f4655c09ddded47ca0031f94c4749e313b3d1d8015ac43a1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.9 MB (275934779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e19f103e7e65f192bf941651540be211cdaad5acc15d7a5a88c36deb86b625f5`
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
# Fri, 16 Dec 2016 03:35:35 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Fri, 16 Dec 2016 03:35:36 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 16 Dec 2016 03:37:50 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:10 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:14 GMT
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
	-	`sha256:c5a8ca544d0ca9740d1ecb9da00c0ae770717e68ae162bd675254c28f9e1e1f0`  
		Last Modified: Wed, 21 Dec 2016 20:02:42 GMT  
		Size: 33.1 MB (33102811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701701bb869c05c6f6ced113ebafabcdaedc0c6f24ce665c0054658534cb6577`  
		Last Modified: Wed, 28 Dec 2016 22:31:04 GMT  
		Size: 612.9 KB (612875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca6849c8f268ca58b1875a166e122602960058d4838eadc869584f3d6d76c51`  
		Last Modified: Wed, 28 Dec 2016 22:31:04 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2`

```console
$ docker pull ruby@sha256:a852e83f90887274f4655c09ddded47ca0031f94c4749e313b3d1d8015ac43a1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.9 MB (275934779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e19f103e7e65f192bf941651540be211cdaad5acc15d7a5a88c36deb86b625f5`
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
# Fri, 16 Dec 2016 03:35:35 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Fri, 16 Dec 2016 03:35:36 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 16 Dec 2016 03:37:50 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:10 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:14 GMT
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
	-	`sha256:c5a8ca544d0ca9740d1ecb9da00c0ae770717e68ae162bd675254c28f9e1e1f0`  
		Last Modified: Wed, 21 Dec 2016 20:02:42 GMT  
		Size: 33.1 MB (33102811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701701bb869c05c6f6ced113ebafabcdaedc0c6f24ce665c0054658534cb6577`  
		Last Modified: Wed, 28 Dec 2016 22:31:04 GMT  
		Size: 612.9 KB (612875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca6849c8f268ca58b1875a166e122602960058d4838eadc869584f3d6d76c51`  
		Last Modified: Wed, 28 Dec 2016 22:31:04 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6-slim`

```console
$ docker pull ruby@sha256:8d2c8617bc591164f8ea03d48fd8db0e01967d10e152a1bd5c1196f3eedba205
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95236298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a5753d08ac39c66a0c1925ad4756d127fd1a954c228d068ecc8a67f19eac223`
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
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:37:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:15 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:20 GMT
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
	-	`sha256:b50db5958fd3a21284388f26fab47d0cb1250f0809d78ccac437364e4d542a9b`  
		Last Modified: Mon, 19 Dec 2016 23:23:36 GMT  
		Size: 33.3 MB (33278876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e5273b5ba6911049594ca997c9d52de1102237decd02bcdd79f6a5b14f1a49`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 612.9 KB (612870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e725b13d10237cc1e599fd094c46f1192f902c84d53f2b1490f989a1e2c921`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-slim`

```console
$ docker pull ruby@sha256:8d2c8617bc591164f8ea03d48fd8db0e01967d10e152a1bd5c1196f3eedba205
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95236298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a5753d08ac39c66a0c1925ad4756d127fd1a954c228d068ecc8a67f19eac223`
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
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:37:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:15 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:20 GMT
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
	-	`sha256:b50db5958fd3a21284388f26fab47d0cb1250f0809d78ccac437364e4d542a9b`  
		Last Modified: Mon, 19 Dec 2016 23:23:36 GMT  
		Size: 33.3 MB (33278876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e5273b5ba6911049594ca997c9d52de1102237decd02bcdd79f6a5b14f1a49`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 612.9 KB (612870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e725b13d10237cc1e599fd094c46f1192f902c84d53f2b1490f989a1e2c921`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6-alpine`

```console
$ docker pull ruby@sha256:3cae408d8560de9c9b6be8b44c277c1d3a8dbe85b4410cc7a39f4af38bed1fce
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35918481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdfcf09c0fe0825a1866e2ff8e68c1e70e5293d88873792938d9ebadc9608915`
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
# Tue, 27 Dec 2016 21:43:16 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Tue, 27 Dec 2016 21:43:16 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 27 Dec 2016 21:48:15 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:20 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:22 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:24 GMT
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
	-	`sha256:674430e5584e0b8bdb4f14abd3d3c24140f0dc35ba3265c06ade07cadb6b1c70`  
		Last Modified: Tue, 27 Dec 2016 21:52:24 GMT  
		Size: 33.0 MB (32992170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319a4c5edd2ef04b8e385c42bed098c216be6bd3503e082a52d1df73fb1ad42a`  
		Last Modified: Wed, 28 Dec 2016 22:32:08 GMT  
		Size: 612.9 KB (612872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54d7800a225bc100a439612026ed7feb29e6b72c7747127fc02611156f8d412`  
		Last Modified: Wed, 28 Dec 2016 22:32:07 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-alpine`

```console
$ docker pull ruby@sha256:3cae408d8560de9c9b6be8b44c277c1d3a8dbe85b4410cc7a39f4af38bed1fce
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35918481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdfcf09c0fe0825a1866e2ff8e68c1e70e5293d88873792938d9ebadc9608915`
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
# Tue, 27 Dec 2016 21:43:16 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Tue, 27 Dec 2016 21:43:16 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 27 Dec 2016 21:48:15 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:20 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:22 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:24 GMT
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
	-	`sha256:674430e5584e0b8bdb4f14abd3d3c24140f0dc35ba3265c06ade07cadb6b1c70`  
		Last Modified: Tue, 27 Dec 2016 21:52:24 GMT  
		Size: 33.0 MB (32992170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319a4c5edd2ef04b8e385c42bed098c216be6bd3503e082a52d1df73fb1ad42a`  
		Last Modified: Wed, 28 Dec 2016 22:32:08 GMT  
		Size: 612.9 KB (612872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54d7800a225bc100a439612026ed7feb29e6b72c7747127fc02611156f8d412`  
		Last Modified: Wed, 28 Dec 2016 22:32:07 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6-onbuild`

```console
$ docker pull ruby@sha256:304a2a6a640070adb98eeeddaf3afe28dab0996c0708511025d55fe238473546
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.9 MB (275935090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5667feeefb38872478298c25f7ef365d811d5d0c91fc9ecc34f1e7c5191867bc`
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
# Fri, 16 Dec 2016 03:35:35 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Fri, 16 Dec 2016 03:35:36 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 16 Dec 2016 03:37:50 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:10 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:14 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 22:19:26 GMT
RUN bundle config --global frozen 1
# Wed, 28 Dec 2016 22:19:27 GMT
RUN mkdir -p /usr/src/app
# Wed, 28 Dec 2016 22:19:27 GMT
WORKDIR /usr/src/app
# Wed, 28 Dec 2016 22:19:27 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 28 Dec 2016 22:19:28 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 28 Dec 2016 22:19:28 GMT
ONBUILD RUN bundle install
# Wed, 28 Dec 2016 22:19:28 GMT
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
	-	`sha256:c5a8ca544d0ca9740d1ecb9da00c0ae770717e68ae162bd675254c28f9e1e1f0`  
		Last Modified: Wed, 21 Dec 2016 20:02:42 GMT  
		Size: 33.1 MB (33102811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701701bb869c05c6f6ced113ebafabcdaedc0c6f24ce665c0054658534cb6577`  
		Last Modified: Wed, 28 Dec 2016 22:31:04 GMT  
		Size: 612.9 KB (612875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca6849c8f268ca58b1875a166e122602960058d4838eadc869584f3d6d76c51`  
		Last Modified: Wed, 28 Dec 2016 22:31:04 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d625e27bb4b6e5822f6802e4b1f9a427569d302e5cfebf67cee36696443c13`  
		Last Modified: Wed, 28 Dec 2016 22:32:39 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c50fd19ffe6cdcd612c3badc1aa6f062345df0ab5f66ffc7c804c7e2298524`  
		Last Modified: Wed, 28 Dec 2016 22:32:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-onbuild`

```console
$ docker pull ruby@sha256:304a2a6a640070adb98eeeddaf3afe28dab0996c0708511025d55fe238473546
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.9 MB (275935090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5667feeefb38872478298c25f7ef365d811d5d0c91fc9ecc34f1e7c5191867bc`
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
# Fri, 16 Dec 2016 03:35:35 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Fri, 16 Dec 2016 03:35:36 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 16 Dec 2016 03:37:50 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:10 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:14 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 22:19:26 GMT
RUN bundle config --global frozen 1
# Wed, 28 Dec 2016 22:19:27 GMT
RUN mkdir -p /usr/src/app
# Wed, 28 Dec 2016 22:19:27 GMT
WORKDIR /usr/src/app
# Wed, 28 Dec 2016 22:19:27 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 28 Dec 2016 22:19:28 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 28 Dec 2016 22:19:28 GMT
ONBUILD RUN bundle install
# Wed, 28 Dec 2016 22:19:28 GMT
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
	-	`sha256:c5a8ca544d0ca9740d1ecb9da00c0ae770717e68ae162bd675254c28f9e1e1f0`  
		Last Modified: Wed, 21 Dec 2016 20:02:42 GMT  
		Size: 33.1 MB (33102811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701701bb869c05c6f6ced113ebafabcdaedc0c6f24ce665c0054658534cb6577`  
		Last Modified: Wed, 28 Dec 2016 22:31:04 GMT  
		Size: 612.9 KB (612875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca6849c8f268ca58b1875a166e122602960058d4838eadc869584f3d6d76c51`  
		Last Modified: Wed, 28 Dec 2016 22:31:04 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d625e27bb4b6e5822f6802e4b1f9a427569d302e5cfebf67cee36696443c13`  
		Last Modified: Wed, 28 Dec 2016 22:32:39 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c50fd19ffe6cdcd612c3badc1aa6f062345df0ab5f66ffc7c804c7e2298524`  
		Last Modified: Wed, 28 Dec 2016 22:32:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3`

```console
$ docker pull ruby@sha256:da20fa71e2ab38bbbd86cb3debc445eb4db71b530caefafbc7d300142a2dfea1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277921505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48f592019f7fd235488bf0c5c836664485eead8c667a02dddcd01d7ca4f32b09`
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
# Fri, 16 Dec 2016 03:30:44 GMT
ENV RUBY_DOWNLOAD_SHA256=241408c8c555b258846368830a06146e4849a1d58dcaf6b14a3b6a73058115b7
# Fri, 16 Dec 2016 03:30:45 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 16 Dec 2016 03:33:09 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:29 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:33 GMT
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
	-	`sha256:0d97dae2054f5a7215729f5dd68109b8e1b80475b4cc994ac2fe4266bd496fde`  
		Last Modified: Wed, 21 Dec 2016 20:04:46 GMT  
		Size: 35.1 MB (35089524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7edb79993836ea890a4b206f72d7d46f783abf89b8a5b90eab00d530108f5f3`  
		Last Modified: Wed, 28 Dec 2016 22:33:11 GMT  
		Size: 612.9 KB (612886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d17d3e79eeabaafeee1fa7d10ab2a8d16678bb2770d7c3460a0fcbbe9318277`  
		Last Modified: Wed, 28 Dec 2016 22:33:10 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3`

```console
$ docker pull ruby@sha256:da20fa71e2ab38bbbd86cb3debc445eb4db71b530caefafbc7d300142a2dfea1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277921505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48f592019f7fd235488bf0c5c836664485eead8c667a02dddcd01d7ca4f32b09`
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
# Fri, 16 Dec 2016 03:30:44 GMT
ENV RUBY_DOWNLOAD_SHA256=241408c8c555b258846368830a06146e4849a1d58dcaf6b14a3b6a73058115b7
# Fri, 16 Dec 2016 03:30:45 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 16 Dec 2016 03:33:09 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:29 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:33 GMT
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
	-	`sha256:0d97dae2054f5a7215729f5dd68109b8e1b80475b4cc994ac2fe4266bd496fde`  
		Last Modified: Wed, 21 Dec 2016 20:04:46 GMT  
		Size: 35.1 MB (35089524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7edb79993836ea890a4b206f72d7d46f783abf89b8a5b90eab00d530108f5f3`  
		Last Modified: Wed, 28 Dec 2016 22:33:11 GMT  
		Size: 612.9 KB (612886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d17d3e79eeabaafeee1fa7d10ab2a8d16678bb2770d7c3460a0fcbbe9318277`  
		Last Modified: Wed, 28 Dec 2016 22:33:10 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2`

```console
$ docker pull ruby@sha256:da20fa71e2ab38bbbd86cb3debc445eb4db71b530caefafbc7d300142a2dfea1
```

-	Platforms:
	-	linux; amd64

### `ruby:2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277921505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48f592019f7fd235488bf0c5c836664485eead8c667a02dddcd01d7ca4f32b09`
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
# Fri, 16 Dec 2016 03:30:44 GMT
ENV RUBY_DOWNLOAD_SHA256=241408c8c555b258846368830a06146e4849a1d58dcaf6b14a3b6a73058115b7
# Fri, 16 Dec 2016 03:30:45 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 16 Dec 2016 03:33:09 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:29 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:33 GMT
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
	-	`sha256:0d97dae2054f5a7215729f5dd68109b8e1b80475b4cc994ac2fe4266bd496fde`  
		Last Modified: Wed, 21 Dec 2016 20:04:46 GMT  
		Size: 35.1 MB (35089524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7edb79993836ea890a4b206f72d7d46f783abf89b8a5b90eab00d530108f5f3`  
		Last Modified: Wed, 28 Dec 2016 22:33:11 GMT  
		Size: 612.9 KB (612886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d17d3e79eeabaafeee1fa7d10ab2a8d16678bb2770d7c3460a0fcbbe9318277`  
		Last Modified: Wed, 28 Dec 2016 22:33:10 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:latest`

```console
$ docker pull ruby@sha256:99883714663439ef02c41a53fa6dac486e3e81722dc963d59deb555609d4ffcd
```

-	Platforms:
	-	linux; amd64

### `ruby:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277921218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ee0d1b764a58c06aea934c9d8440870e06674ddb8583bf2bafad16170ed589a`
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
# Fri, 16 Dec 2016 03:30:44 GMT
ENV RUBY_DOWNLOAD_SHA256=241408c8c555b258846368830a06146e4849a1d58dcaf6b14a3b6a73058115b7
# Fri, 16 Dec 2016 03:30:45 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 16 Dec 2016 03:33:09 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 16 Dec 2016 03:33:10 GMT
ENV BUNDLER_VERSION=1.13.6
# Fri, 16 Dec 2016 03:33:11 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 16 Dec 2016 03:33:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 16 Dec 2016 03:33:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 16 Dec 2016 03:33:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Dec 2016 03:33:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 16 Dec 2016 03:33:13 GMT
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
	-	`sha256:0d97dae2054f5a7215729f5dd68109b8e1b80475b4cc994ac2fe4266bd496fde`  
		Last Modified: Wed, 21 Dec 2016 20:04:46 GMT  
		Size: 35.1 MB (35089524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cf204ae25eefef4b878db4e839a6fbe86b6195fc6823b23e9bdea3eac2e100`  
		Last Modified: Wed, 21 Dec 2016 20:04:32 GMT  
		Size: 612.6 KB (612600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c097f43e0fe9b8162ad07459fee5c1227ab2741cfe8445c3cce8f6c62a6a8b`  
		Last Modified: Wed, 21 Dec 2016 20:04:32 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3-slim`

```console
$ docker pull ruby@sha256:06f90a497f54df31515a2bb576fafab802f64a67ab3e58fd94f68213cdf605c6
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.2 MB (97200824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63954332b1265b159c0ed7e5d9811e68eaf40f47569fd2dc677b4f62ff615db6`
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
# Wed, 14 Dec 2016 19:29:36 GMT
ENV RUBY_DOWNLOAD_SHA256=241408c8c555b258846368830a06146e4849a1d58dcaf6b14a3b6a73058115b7
# Wed, 14 Dec 2016 19:29:36 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:32:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:34 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:38 GMT
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
	-	`sha256:8c43a96d93cc45cb516481732e4631d6d59bc70e1ed5d2506a5df9951134fbdc`  
		Last Modified: Wed, 21 Dec 2016 20:07:16 GMT  
		Size: 35.2 MB (35243388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ff6cad157e3d620bf17b14efe027bbd5a32d67716e552ffd01f3a7ec7f42d1`  
		Last Modified: Wed, 28 Dec 2016 22:34:13 GMT  
		Size: 612.9 KB (612883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb6dfdca9ccc21a028eed95050f60d6dabed20ab2c6d42aaefd627b5c094bb1`  
		Last Modified: Wed, 28 Dec 2016 22:34:13 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-slim`

```console
$ docker pull ruby@sha256:06f90a497f54df31515a2bb576fafab802f64a67ab3e58fd94f68213cdf605c6
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.2 MB (97200824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63954332b1265b159c0ed7e5d9811e68eaf40f47569fd2dc677b4f62ff615db6`
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
# Wed, 14 Dec 2016 19:29:36 GMT
ENV RUBY_DOWNLOAD_SHA256=241408c8c555b258846368830a06146e4849a1d58dcaf6b14a3b6a73058115b7
# Wed, 14 Dec 2016 19:29:36 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:32:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:34 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:38 GMT
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
	-	`sha256:8c43a96d93cc45cb516481732e4631d6d59bc70e1ed5d2506a5df9951134fbdc`  
		Last Modified: Wed, 21 Dec 2016 20:07:16 GMT  
		Size: 35.2 MB (35243388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ff6cad157e3d620bf17b14efe027bbd5a32d67716e552ffd01f3a7ec7f42d1`  
		Last Modified: Wed, 28 Dec 2016 22:34:13 GMT  
		Size: 612.9 KB (612883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb6dfdca9ccc21a028eed95050f60d6dabed20ab2c6d42aaefd627b5c094bb1`  
		Last Modified: Wed, 28 Dec 2016 22:34:13 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-slim`

```console
$ docker pull ruby@sha256:06f90a497f54df31515a2bb576fafab802f64a67ab3e58fd94f68213cdf605c6
```

-	Platforms:
	-	linux; amd64

### `ruby:2-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.2 MB (97200824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63954332b1265b159c0ed7e5d9811e68eaf40f47569fd2dc677b4f62ff615db6`
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
# Wed, 14 Dec 2016 19:29:36 GMT
ENV RUBY_DOWNLOAD_SHA256=241408c8c555b258846368830a06146e4849a1d58dcaf6b14a3b6a73058115b7
# Wed, 14 Dec 2016 19:29:36 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:32:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:34 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:38 GMT
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
	-	`sha256:8c43a96d93cc45cb516481732e4631d6d59bc70e1ed5d2506a5df9951134fbdc`  
		Last Modified: Wed, 21 Dec 2016 20:07:16 GMT  
		Size: 35.2 MB (35243388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ff6cad157e3d620bf17b14efe027bbd5a32d67716e552ffd01f3a7ec7f42d1`  
		Last Modified: Wed, 28 Dec 2016 22:34:13 GMT  
		Size: 612.9 KB (612883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb6dfdca9ccc21a028eed95050f60d6dabed20ab2c6d42aaefd627b5c094bb1`  
		Last Modified: Wed, 28 Dec 2016 22:34:13 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:slim`

```console
$ docker pull ruby@sha256:06f90a497f54df31515a2bb576fafab802f64a67ab3e58fd94f68213cdf605c6
```

-	Platforms:
	-	linux; amd64

### `ruby:slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.2 MB (97200824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63954332b1265b159c0ed7e5d9811e68eaf40f47569fd2dc677b4f62ff615db6`
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
# Wed, 14 Dec 2016 19:29:36 GMT
ENV RUBY_DOWNLOAD_SHA256=241408c8c555b258846368830a06146e4849a1d58dcaf6b14a3b6a73058115b7
# Wed, 14 Dec 2016 19:29:36 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:32:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:34 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:38 GMT
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
	-	`sha256:8c43a96d93cc45cb516481732e4631d6d59bc70e1ed5d2506a5df9951134fbdc`  
		Last Modified: Wed, 21 Dec 2016 20:07:16 GMT  
		Size: 35.2 MB (35243388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ff6cad157e3d620bf17b14efe027bbd5a32d67716e552ffd01f3a7ec7f42d1`  
		Last Modified: Wed, 28 Dec 2016 22:34:13 GMT  
		Size: 612.9 KB (612883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb6dfdca9ccc21a028eed95050f60d6dabed20ab2c6d42aaefd627b5c094bb1`  
		Last Modified: Wed, 28 Dec 2016 22:34:13 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3-alpine`

```console
$ docker pull ruby@sha256:f370856dd6952bb2e8760a117cf682606885996a35b3469cdad0e756462aec54
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42865295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17164879a5ec0c0fd98c380edcae1612b7cbadae46cb550679900ada8b9f94ed`
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
# Tue, 27 Dec 2016 21:41:57 GMT
ENV RUBY_DOWNLOAD_SHA256=241408c8c555b258846368830a06146e4849a1d58dcaf6b14a3b6a73058115b7
# Tue, 27 Dec 2016 21:41:58 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 27 Dec 2016 21:45:11 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:39 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:41 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:43 GMT
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
	-	`sha256:aa95133b5c791a112961c516d5dfea0102eb40174fd942ded5e5d1b181c3391b`  
		Last Modified: Tue, 27 Dec 2016 21:53:26 GMT  
		Size: 39.9 MB (39938993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4568db71113f80bee6d99c9d46be522b5a45c18499d30b0a169c1a3ae8260368`  
		Last Modified: Wed, 28 Dec 2016 22:35:10 GMT  
		Size: 612.9 KB (612862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46152aeae448cced0e10ff2853f56de08212e56e3e8a6d4590e43b8ea4c5cc5c`  
		Last Modified: Wed, 28 Dec 2016 22:35:10 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-alpine`

```console
$ docker pull ruby@sha256:f370856dd6952bb2e8760a117cf682606885996a35b3469cdad0e756462aec54
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42865295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17164879a5ec0c0fd98c380edcae1612b7cbadae46cb550679900ada8b9f94ed`
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
# Tue, 27 Dec 2016 21:41:57 GMT
ENV RUBY_DOWNLOAD_SHA256=241408c8c555b258846368830a06146e4849a1d58dcaf6b14a3b6a73058115b7
# Tue, 27 Dec 2016 21:41:58 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 27 Dec 2016 21:45:11 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:39 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:41 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:43 GMT
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
	-	`sha256:aa95133b5c791a112961c516d5dfea0102eb40174fd942ded5e5d1b181c3391b`  
		Last Modified: Tue, 27 Dec 2016 21:53:26 GMT  
		Size: 39.9 MB (39938993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4568db71113f80bee6d99c9d46be522b5a45c18499d30b0a169c1a3ae8260368`  
		Last Modified: Wed, 28 Dec 2016 22:35:10 GMT  
		Size: 612.9 KB (612862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46152aeae448cced0e10ff2853f56de08212e56e3e8a6d4590e43b8ea4c5cc5c`  
		Last Modified: Wed, 28 Dec 2016 22:35:10 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-alpine`

```console
$ docker pull ruby@sha256:f370856dd6952bb2e8760a117cf682606885996a35b3469cdad0e756462aec54
```

-	Platforms:
	-	linux; amd64

### `ruby:2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42865295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17164879a5ec0c0fd98c380edcae1612b7cbadae46cb550679900ada8b9f94ed`
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
# Tue, 27 Dec 2016 21:41:57 GMT
ENV RUBY_DOWNLOAD_SHA256=241408c8c555b258846368830a06146e4849a1d58dcaf6b14a3b6a73058115b7
# Tue, 27 Dec 2016 21:41:58 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 27 Dec 2016 21:45:11 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:39 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:41 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:43 GMT
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
	-	`sha256:aa95133b5c791a112961c516d5dfea0102eb40174fd942ded5e5d1b181c3391b`  
		Last Modified: Tue, 27 Dec 2016 21:53:26 GMT  
		Size: 39.9 MB (39938993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4568db71113f80bee6d99c9d46be522b5a45c18499d30b0a169c1a3ae8260368`  
		Last Modified: Wed, 28 Dec 2016 22:35:10 GMT  
		Size: 612.9 KB (612862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46152aeae448cced0e10ff2853f56de08212e56e3e8a6d4590e43b8ea4c5cc5c`  
		Last Modified: Wed, 28 Dec 2016 22:35:10 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:alpine`

```console
$ docker pull ruby@sha256:f370856dd6952bb2e8760a117cf682606885996a35b3469cdad0e756462aec54
```

-	Platforms:
	-	linux; amd64

### `ruby:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42865295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17164879a5ec0c0fd98c380edcae1612b7cbadae46cb550679900ada8b9f94ed`
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
# Tue, 27 Dec 2016 21:41:57 GMT
ENV RUBY_DOWNLOAD_SHA256=241408c8c555b258846368830a06146e4849a1d58dcaf6b14a3b6a73058115b7
# Tue, 27 Dec 2016 21:41:58 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 27 Dec 2016 21:45:11 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:39 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:41 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:43 GMT
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
	-	`sha256:aa95133b5c791a112961c516d5dfea0102eb40174fd942ded5e5d1b181c3391b`  
		Last Modified: Tue, 27 Dec 2016 21:53:26 GMT  
		Size: 39.9 MB (39938993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4568db71113f80bee6d99c9d46be522b5a45c18499d30b0a169c1a3ae8260368`  
		Last Modified: Wed, 28 Dec 2016 22:35:10 GMT  
		Size: 612.9 KB (612862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46152aeae448cced0e10ff2853f56de08212e56e3e8a6d4590e43b8ea4c5cc5c`  
		Last Modified: Wed, 28 Dec 2016 22:35:10 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3-onbuild`

```console
$ docker pull ruby@sha256:c3e9c3ca96c4eae421513a684b37f5746d7d8015aa881aeb36ba527b0e60a15e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277921815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6691b155504082b4f7b152577b37232698d531198fc98b032e91299fb2126a`
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
# Fri, 16 Dec 2016 03:30:44 GMT
ENV RUBY_DOWNLOAD_SHA256=241408c8c555b258846368830a06146e4849a1d58dcaf6b14a3b6a73058115b7
# Fri, 16 Dec 2016 03:30:45 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 16 Dec 2016 03:33:09 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:29 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:33 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 22:19:45 GMT
RUN bundle config --global frozen 1
# Wed, 28 Dec 2016 22:19:46 GMT
RUN mkdir -p /usr/src/app
# Wed, 28 Dec 2016 22:19:46 GMT
WORKDIR /usr/src/app
# Wed, 28 Dec 2016 22:19:46 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 28 Dec 2016 22:19:47 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 28 Dec 2016 22:19:47 GMT
ONBUILD RUN bundle install
# Wed, 28 Dec 2016 22:19:47 GMT
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
	-	`sha256:0d97dae2054f5a7215729f5dd68109b8e1b80475b4cc994ac2fe4266bd496fde`  
		Last Modified: Wed, 21 Dec 2016 20:04:46 GMT  
		Size: 35.1 MB (35089524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7edb79993836ea890a4b206f72d7d46f783abf89b8a5b90eab00d530108f5f3`  
		Last Modified: Wed, 28 Dec 2016 22:33:11 GMT  
		Size: 612.9 KB (612886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d17d3e79eeabaafeee1fa7d10ab2a8d16678bb2770d7c3460a0fcbbe9318277`  
		Last Modified: Wed, 28 Dec 2016 22:33:10 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be758d7badbac7ca9c70283fd86e4ac3b57abb8637670b6142204258df7511e5`  
		Last Modified: Wed, 28 Dec 2016 22:36:09 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c335427138a32a36db25990ba6378f5145db885520a5e158749f5084751d13`  
		Last Modified: Wed, 28 Dec 2016 22:36:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-onbuild`

```console
$ docker pull ruby@sha256:c3e9c3ca96c4eae421513a684b37f5746d7d8015aa881aeb36ba527b0e60a15e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277921815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6691b155504082b4f7b152577b37232698d531198fc98b032e91299fb2126a`
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
# Fri, 16 Dec 2016 03:30:44 GMT
ENV RUBY_DOWNLOAD_SHA256=241408c8c555b258846368830a06146e4849a1d58dcaf6b14a3b6a73058115b7
# Fri, 16 Dec 2016 03:30:45 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 16 Dec 2016 03:33:09 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:29 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:33 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 22:19:45 GMT
RUN bundle config --global frozen 1
# Wed, 28 Dec 2016 22:19:46 GMT
RUN mkdir -p /usr/src/app
# Wed, 28 Dec 2016 22:19:46 GMT
WORKDIR /usr/src/app
# Wed, 28 Dec 2016 22:19:46 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 28 Dec 2016 22:19:47 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 28 Dec 2016 22:19:47 GMT
ONBUILD RUN bundle install
# Wed, 28 Dec 2016 22:19:47 GMT
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
	-	`sha256:0d97dae2054f5a7215729f5dd68109b8e1b80475b4cc994ac2fe4266bd496fde`  
		Last Modified: Wed, 21 Dec 2016 20:04:46 GMT  
		Size: 35.1 MB (35089524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7edb79993836ea890a4b206f72d7d46f783abf89b8a5b90eab00d530108f5f3`  
		Last Modified: Wed, 28 Dec 2016 22:33:11 GMT  
		Size: 612.9 KB (612886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d17d3e79eeabaafeee1fa7d10ab2a8d16678bb2770d7c3460a0fcbbe9318277`  
		Last Modified: Wed, 28 Dec 2016 22:33:10 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be758d7badbac7ca9c70283fd86e4ac3b57abb8637670b6142204258df7511e5`  
		Last Modified: Wed, 28 Dec 2016 22:36:09 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c335427138a32a36db25990ba6378f5145db885520a5e158749f5084751d13`  
		Last Modified: Wed, 28 Dec 2016 22:36:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-onbuild`

```console
$ docker pull ruby@sha256:c3e9c3ca96c4eae421513a684b37f5746d7d8015aa881aeb36ba527b0e60a15e
```

-	Platforms:
	-	linux; amd64

### `ruby:2-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277921815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6691b155504082b4f7b152577b37232698d531198fc98b032e91299fb2126a`
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
# Fri, 16 Dec 2016 03:30:44 GMT
ENV RUBY_DOWNLOAD_SHA256=241408c8c555b258846368830a06146e4849a1d58dcaf6b14a3b6a73058115b7
# Fri, 16 Dec 2016 03:30:45 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 16 Dec 2016 03:33:09 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:29 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:33 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 22:19:45 GMT
RUN bundle config --global frozen 1
# Wed, 28 Dec 2016 22:19:46 GMT
RUN mkdir -p /usr/src/app
# Wed, 28 Dec 2016 22:19:46 GMT
WORKDIR /usr/src/app
# Wed, 28 Dec 2016 22:19:46 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 28 Dec 2016 22:19:47 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 28 Dec 2016 22:19:47 GMT
ONBUILD RUN bundle install
# Wed, 28 Dec 2016 22:19:47 GMT
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
	-	`sha256:0d97dae2054f5a7215729f5dd68109b8e1b80475b4cc994ac2fe4266bd496fde`  
		Last Modified: Wed, 21 Dec 2016 20:04:46 GMT  
		Size: 35.1 MB (35089524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7edb79993836ea890a4b206f72d7d46f783abf89b8a5b90eab00d530108f5f3`  
		Last Modified: Wed, 28 Dec 2016 22:33:11 GMT  
		Size: 612.9 KB (612886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d17d3e79eeabaafeee1fa7d10ab2a8d16678bb2770d7c3460a0fcbbe9318277`  
		Last Modified: Wed, 28 Dec 2016 22:33:10 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be758d7badbac7ca9c70283fd86e4ac3b57abb8637670b6142204258df7511e5`  
		Last Modified: Wed, 28 Dec 2016 22:36:09 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c335427138a32a36db25990ba6378f5145db885520a5e158749f5084751d13`  
		Last Modified: Wed, 28 Dec 2016 22:36:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:onbuild`

```console
$ docker pull ruby@sha256:c3e9c3ca96c4eae421513a684b37f5746d7d8015aa881aeb36ba527b0e60a15e
```

-	Platforms:
	-	linux; amd64

### `ruby:onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277921815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6691b155504082b4f7b152577b37232698d531198fc98b032e91299fb2126a`
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
# Fri, 16 Dec 2016 03:30:44 GMT
ENV RUBY_DOWNLOAD_SHA256=241408c8c555b258846368830a06146e4849a1d58dcaf6b14a3b6a73058115b7
# Fri, 16 Dec 2016 03:30:45 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Fri, 16 Dec 2016 03:33:09 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:29 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:33 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 22:19:45 GMT
RUN bundle config --global frozen 1
# Wed, 28 Dec 2016 22:19:46 GMT
RUN mkdir -p /usr/src/app
# Wed, 28 Dec 2016 22:19:46 GMT
WORKDIR /usr/src/app
# Wed, 28 Dec 2016 22:19:46 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 28 Dec 2016 22:19:47 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 28 Dec 2016 22:19:47 GMT
ONBUILD RUN bundle install
# Wed, 28 Dec 2016 22:19:47 GMT
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
	-	`sha256:0d97dae2054f5a7215729f5dd68109b8e1b80475b4cc994ac2fe4266bd496fde`  
		Last Modified: Wed, 21 Dec 2016 20:04:46 GMT  
		Size: 35.1 MB (35089524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7edb79993836ea890a4b206f72d7d46f783abf89b8a5b90eab00d530108f5f3`  
		Last Modified: Wed, 28 Dec 2016 22:33:11 GMT  
		Size: 612.9 KB (612886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d17d3e79eeabaafeee1fa7d10ab2a8d16678bb2770d7c3460a0fcbbe9318277`  
		Last Modified: Wed, 28 Dec 2016 22:33:10 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be758d7badbac7ca9c70283fd86e4ac3b57abb8637670b6142204258df7511e5`  
		Last Modified: Wed, 28 Dec 2016 22:36:09 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c335427138a32a36db25990ba6378f5145db885520a5e158749f5084751d13`  
		Last Modified: Wed, 28 Dec 2016 22:36:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.0`

```console
$ docker pull ruby@sha256:07bfd1914e5a42bc3cd546f5b933057e85789e1059b7eee9b05b2c145e9ceb4d
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263632424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629f9f14389b8be8abd2787122d03e5d983e66066f6ef7184292469ad4e278db`
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
# Wed, 28 Dec 2016 22:19:48 GMT
ENV RUBY_DOWNLOAD_SHA256=152fd0bd15a90b4a18213448f485d4b53e9f7662e1508190aa5b702446b29e3d
# Wed, 28 Dec 2016 22:19:49 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 28 Dec 2016 22:22:39 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:22:39 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:22:40 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:22:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:22:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:22:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:22:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:22:42 GMT
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
	-	`sha256:541fba5ec52787b1f43d978f77f3f4f86b9d280464ef538ad53bc8002f3d78a2`  
		Last Modified: Wed, 28 Dec 2016 22:37:18 GMT  
		Size: 20.8 MB (20800445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ef8b5d5703ca09497e7767454f2272912e11a393ee76eee88b45272ebb49bc`  
		Last Modified: Wed, 28 Dec 2016 22:37:12 GMT  
		Size: 612.9 KB (612884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9ed8d456dbe6989b2e3bbee72ba0013ebcba514fe395a56e69c868ea6dc4d7`  
		Last Modified: Wed, 28 Dec 2016 22:37:11 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4`

```console
$ docker pull ruby@sha256:07bfd1914e5a42bc3cd546f5b933057e85789e1059b7eee9b05b2c145e9ceb4d
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263632424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629f9f14389b8be8abd2787122d03e5d983e66066f6ef7184292469ad4e278db`
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
# Wed, 28 Dec 2016 22:19:48 GMT
ENV RUBY_DOWNLOAD_SHA256=152fd0bd15a90b4a18213448f485d4b53e9f7662e1508190aa5b702446b29e3d
# Wed, 28 Dec 2016 22:19:49 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 28 Dec 2016 22:22:39 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:22:39 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:22:40 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:22:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:22:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:22:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:22:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:22:42 GMT
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
	-	`sha256:541fba5ec52787b1f43d978f77f3f4f86b9d280464ef538ad53bc8002f3d78a2`  
		Last Modified: Wed, 28 Dec 2016 22:37:18 GMT  
		Size: 20.8 MB (20800445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ef8b5d5703ca09497e7767454f2272912e11a393ee76eee88b45272ebb49bc`  
		Last Modified: Wed, 28 Dec 2016 22:37:12 GMT  
		Size: 612.9 KB (612884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9ed8d456dbe6989b2e3bbee72ba0013ebcba514fe395a56e69c868ea6dc4d7`  
		Last Modified: Wed, 28 Dec 2016 22:37:11 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.0-slim`

```console
$ docker pull ruby@sha256:8f95b35e14c9c4e0a8c95220c57bc345a5e96aea9a190cb244f1d641384d5566
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.0-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82916255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d9950046cb86515f16ded874d3a386c45304e5e52090a58ea4c8807ecf283e`
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
# Wed, 28 Dec 2016 22:22:44 GMT
ENV RUBY_DOWNLOAD_SHA256=152fd0bd15a90b4a18213448f485d4b53e9f7662e1508190aa5b702446b29e3d
# Wed, 28 Dec 2016 22:22:44 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 28 Dec 2016 22:25:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:25:47 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:25:49 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:25:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:25:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:25:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:25:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:25:51 GMT
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
	-	`sha256:0c81e2d852a1c2cecbb3f3b8258d273484b3e276d36bb6ca9c01d890d4ec7199`  
		Last Modified: Wed, 28 Dec 2016 22:37:57 GMT  
		Size: 21.0 MB (20958809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a558e5a5cf8c83b2801e10a7e677e1dcdd090fc88f8bdb4d0c15c93c55b36c9`  
		Last Modified: Wed, 28 Dec 2016 22:37:50 GMT  
		Size: 612.9 KB (612895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1e9f492803b80ea30a0b06956e0022d49236efdb446c57fc518b135ac7246c`  
		Last Modified: Wed, 28 Dec 2016 22:37:49 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-slim`

```console
$ docker pull ruby@sha256:8f95b35e14c9c4e0a8c95220c57bc345a5e96aea9a190cb244f1d641384d5566
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82916255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d9950046cb86515f16ded874d3a386c45304e5e52090a58ea4c8807ecf283e`
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
# Wed, 28 Dec 2016 22:22:44 GMT
ENV RUBY_DOWNLOAD_SHA256=152fd0bd15a90b4a18213448f485d4b53e9f7662e1508190aa5b702446b29e3d
# Wed, 28 Dec 2016 22:22:44 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 28 Dec 2016 22:25:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:25:47 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:25:49 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:25:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:25:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:25:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:25:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:25:51 GMT
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
	-	`sha256:0c81e2d852a1c2cecbb3f3b8258d273484b3e276d36bb6ca9c01d890d4ec7199`  
		Last Modified: Wed, 28 Dec 2016 22:37:57 GMT  
		Size: 21.0 MB (20958809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a558e5a5cf8c83b2801e10a7e677e1dcdd090fc88f8bdb4d0c15c93c55b36c9`  
		Last Modified: Wed, 28 Dec 2016 22:37:50 GMT  
		Size: 612.9 KB (612895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1e9f492803b80ea30a0b06956e0022d49236efdb446c57fc518b135ac7246c`  
		Last Modified: Wed, 28 Dec 2016 22:37:49 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.0-alpine`

**does not exist** (yet?)

## `ruby:2.4-alpine`

**does not exist** (yet?)

## `ruby:2.4.0-onbuild`

**does not exist** (yet?)

## `ruby:2.4-onbuild`

**does not exist** (yet?)
