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
$ docker pull ruby@sha256:ed28ae19ab20bb34bc0ad66f575d0f8b20afc554c148f86b4fedd62bc060f38c
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (277016513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c64360f4b9b8bb4d14b08cac26f2e3d08ee97efcd3b4f9c7c340a77a554bd53`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:42:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 24 Sep 2016 05:46:42 GMT
ENV RUBY_MAJOR=2.1
# Sat, 24 Sep 2016 05:46:42 GMT
ENV RUBY_VERSION=2.1.10
# Sat, 24 Sep 2016 05:46:43 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Wed, 28 Sep 2016 20:55:31 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 20:58:07 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 20:58:12 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 20:58:13 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 20:58:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 20:58:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 20:58:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:58:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 20:58:15 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf982eec5d9ac4dd13bee06cb88efb42a3e0b8235fdb6e0b13dee65a731c81c`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be03ffa5a03dbb3e3f85a89deffb76efa697a1dc0ba8cff6ce696f08d5f1857`  
		Last Modified: Wed, 28 Sep 2016 21:17:46 GMT  
		Size: 33.0 MB (32983822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e21b713f7d20f699d6f1746eb55262a21d5e7511d04dc904267442dfb75041`  
		Last Modified: Wed, 28 Sep 2016 21:17:35 GMT  
		Size: 609.9 KB (609934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2111eac15feb7c2c29eaeaaceca092c408d2a5b76cd5979d58d28cf5ce5fcda3`  
		Last Modified: Wed, 28 Sep 2016 21:17:34 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1`

```console
$ docker pull ruby@sha256:5e3c526b19f8ae4025daae607643556bb2a7292d6fefcecc38e667eae4771305
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (276998407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42747101585ec4cfb763ab7a2c1a70f7038a4e462a2a5ecf4279e4833255d7aa`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:42:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 24 Sep 2016 05:46:42 GMT
ENV RUBY_MAJOR=2.1
# Sat, 24 Sep 2016 05:46:42 GMT
ENV RUBY_VERSION=2.1.10
# Sat, 24 Sep 2016 05:46:43 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Sat, 24 Sep 2016 05:46:43 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Sat, 24 Sep 2016 05:48:55 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Sat, 24 Sep 2016 05:48:56 GMT
ENV BUNDLER_VERSION=1.13.1
# Sat, 24 Sep 2016 05:48:57 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Sat, 24 Sep 2016 05:48:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 24 Sep 2016 05:48:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 24 Sep 2016 05:48:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 05:48:59 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 24 Sep 2016 05:49:00 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf982eec5d9ac4dd13bee06cb88efb42a3e0b8235fdb6e0b13dee65a731c81c`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b3ce03ce930a80351b045ba62b56206ff16cc5460c2bd23ee1d08d60a92a572`  
		Last Modified: Sat, 24 Sep 2016 05:49:18 GMT  
		Size: 33.0 MB (32965719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190e1815038607fb4eb73f7d8a0237265e17631b1f64aa8d6f867c796a8802d4`  
		Last Modified: Sat, 24 Sep 2016 05:49:08 GMT  
		Size: 609.9 KB (609932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ba696363800042299c257ef5f64e4ad2910315a1482113268634b66bbedd98`  
		Last Modified: Sat, 24 Sep 2016 05:49:08 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-slim`

```console
$ docker pull ruby@sha256:870e684063b011c1c2ddfe9c79ca4638b272e9a60ddaf69dd45947d96da91246
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 MB (95089688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac31020f550bf5e5e516f4fe4ca41e11d9ff12e75f643b35729314c83570e483`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:18:55 GMT
ENV RUBY_MAJOR=2.1
# Fri, 23 Sep 2016 23:18:55 GMT
ENV RUBY_VERSION=2.1.10
# Fri, 23 Sep 2016 23:18:56 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Wed, 28 Sep 2016 20:58:16 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:00:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:00:55 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:00:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:00:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:00:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:00:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:00:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:00:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d08cd5705869f8f475013129d2bb0aed6dd6622b141ab13b39a41c348d293ed6`  
		Last Modified: Wed, 28 Sep 2016 21:18:25 GMT  
		Size: 33.1 MB (33144720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3d45a986eceb43606245d597faebe0bf583a5b3920ff429d8867bf40143095`  
		Last Modified: Wed, 28 Sep 2016 21:18:15 GMT  
		Size: 609.9 KB (609929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b9a8fd52ddf6a6d1e9a6cb307059d483b4f6c3c3b02688291b5be54dd79d64`  
		Last Modified: Wed, 28 Sep 2016 21:18:14 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-slim`

```console
$ docker pull ruby@sha256:de63902bfd2f9cfe4eb8d0e4799ee436933a118b3702725237bba61eac353716
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 MB (95089688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac31020f550bf5e5e516f4fe4ca41e11d9ff12e75f643b35729314c83570e483`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:18:55 GMT
ENV RUBY_MAJOR=2.1
# Fri, 23 Sep 2016 23:18:55 GMT
ENV RUBY_VERSION=2.1.10
# Fri, 23 Sep 2016 23:18:56 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Wed, 28 Sep 2016 20:58:16 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:00:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:00:55 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:00:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:00:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:00:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:00:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:00:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:00:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d08cd5705869f8f475013129d2bb0aed6dd6622b141ab13b39a41c348d293ed6`  
		Last Modified: Wed, 28 Sep 2016 21:18:25 GMT  
		Size: 33.1 MB (33144720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3d45a986eceb43606245d597faebe0bf583a5b3920ff429d8867bf40143095`  
		Last Modified: Wed, 28 Sep 2016 21:18:15 GMT  
		Size: 609.9 KB (609929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b9a8fd52ddf6a6d1e9a6cb307059d483b4f6c3c3b02688291b5be54dd79d64`  
		Last Modified: Wed, 28 Sep 2016 21:18:14 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-alpine`

```console
$ docker pull ruby@sha256:995acd0d1a3f9b2b7286ad3122339b11a2c62e744bcf307c022742e5391a4c08
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37094863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d380483143658d5a72d3932813490a27d60caab2f764aeadf51094020a00bc76`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:16:26 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 18:19:52 GMT
ENV RUBY_MAJOR=2.1
# Fri, 23 Sep 2016 18:19:53 GMT
ENV RUBY_VERSION=2.1.10
# Fri, 23 Sep 2016 18:19:53 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Wed, 28 Sep 2016 21:00:59 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:02:54 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:02:54 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:02:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:02:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:02:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:02:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:02:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:02:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd465d7a14827a004df1c03908761bdcd30a38bebd3c08221c002dda9651c51c`  
		Last Modified: Fri, 23 Sep 2016 18:19:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0775d77b7a71d68a5990cde11dc46f9ad9ec98a51f2fee421f7dddc00c47e80d`  
		Last Modified: Wed, 28 Sep 2016 21:19:02 GMT  
		Size: 34.2 MB (34171659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06878f78d3ce12c2f11c2125d289fabd7cd53650ff0330460a32913408efb8e4`  
		Last Modified: Wed, 28 Sep 2016 21:18:51 GMT  
		Size: 609.9 KB (609927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584f2729fdf45add51d50083b43c8569329261b3601df5f1cdaadb9fde61cbbe`  
		Last Modified: Wed, 28 Sep 2016 21:18:50 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-alpine`

```console
$ docker pull ruby@sha256:5df14e10861e4b43b95cd3f530a3f4eb048c0edecf83f8033dfb7647a6cd5d49
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 MB (35839852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2495f3b89f62cb819e756b7d8fba3c66ef6a68fe11d90b90e9ad52dc0b7d6361`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:16:26 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 18:19:52 GMT
ENV RUBY_MAJOR=2.1
# Fri, 23 Sep 2016 18:19:53 GMT
ENV RUBY_VERSION=2.1.10
# Fri, 23 Sep 2016 18:19:53 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Fri, 23 Sep 2016 18:19:53 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 23 Sep 2016 18:22:30 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 23 Sep 2016 18:22:30 GMT
ENV BUNDLER_VERSION=1.13.1
# Fri, 23 Sep 2016 18:22:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Sep 2016 18:22:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 18:22:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 18:22:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 18:22:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 18:22:34 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd465d7a14827a004df1c03908761bdcd30a38bebd3c08221c002dda9651c51c`  
		Last Modified: Fri, 23 Sep 2016 18:19:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dbad64382ab850c8bcd8f06192c1c9bc4edfd9fc8c17aee2512dfc59591f35f`  
		Last Modified: Fri, 23 Sep 2016 18:22:56 GMT  
		Size: 32.9 MB (32916658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7d51040acc5335c4d163f33cef4304a43512446192202c90ae84659ec7444b`  
		Last Modified: Fri, 23 Sep 2016 18:22:41 GMT  
		Size: 609.9 KB (609916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711d1611d4f78ac33e42e8fc27b4087a97d79504f70c32dde0fb1d03e3664961`  
		Last Modified: Fri, 23 Sep 2016 18:22:41 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-onbuild`

```console
$ docker pull ruby@sha256:ec3b6ed176446dd1d38da33d88c2534f438b86abdba5bcd7133048a0a7fb23b0
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (277016824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad336225bd612d01d4425f33fe6783f336c5569f6af734e113e37df9b5b92c37`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:42:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 24 Sep 2016 05:46:42 GMT
ENV RUBY_MAJOR=2.1
# Sat, 24 Sep 2016 05:46:42 GMT
ENV RUBY_VERSION=2.1.10
# Sat, 24 Sep 2016 05:46:43 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Wed, 28 Sep 2016 20:55:31 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 20:58:07 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 20:58:12 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 20:58:13 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 20:58:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 20:58:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 20:58:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:58:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 20:58:15 GMT
CMD ["irb"]
# Wed, 28 Sep 2016 21:02:59 GMT
RUN bundle config --global frozen 1
# Wed, 28 Sep 2016 21:03:00 GMT
RUN mkdir -p /usr/src/app
# Wed, 28 Sep 2016 21:03:00 GMT
WORKDIR /usr/src/app
# Wed, 28 Sep 2016 21:03:01 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 28 Sep 2016 21:03:01 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 28 Sep 2016 21:03:02 GMT
ONBUILD RUN bundle install
# Wed, 28 Sep 2016 21:03:02 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf982eec5d9ac4dd13bee06cb88efb42a3e0b8235fdb6e0b13dee65a731c81c`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be03ffa5a03dbb3e3f85a89deffb76efa697a1dc0ba8cff6ce696f08d5f1857`  
		Last Modified: Wed, 28 Sep 2016 21:17:46 GMT  
		Size: 33.0 MB (32983822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e21b713f7d20f699d6f1746eb55262a21d5e7511d04dc904267442dfb75041`  
		Last Modified: Wed, 28 Sep 2016 21:17:35 GMT  
		Size: 609.9 KB (609934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2111eac15feb7c2c29eaeaaceca092c408d2a5b76cd5979d58d28cf5ce5fcda3`  
		Last Modified: Wed, 28 Sep 2016 21:17:34 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384e17fbf611a92c04f008b07c72cc8214254389322ecbd980d5733fccfc7927`  
		Last Modified: Wed, 28 Sep 2016 21:19:27 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c39e673c00e66fc784bfe2f3830126d9c9e13a188c9862852781a4586ea751`  
		Last Modified: Wed, 28 Sep 2016 21:19:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-onbuild`

```console
$ docker pull ruby@sha256:ec3b6ed176446dd1d38da33d88c2534f438b86abdba5bcd7133048a0a7fb23b0
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (277016824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad336225bd612d01d4425f33fe6783f336c5569f6af734e113e37df9b5b92c37`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:42:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 24 Sep 2016 05:46:42 GMT
ENV RUBY_MAJOR=2.1
# Sat, 24 Sep 2016 05:46:42 GMT
ENV RUBY_VERSION=2.1.10
# Sat, 24 Sep 2016 05:46:43 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Wed, 28 Sep 2016 20:55:31 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 20:58:07 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 20:58:12 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 20:58:13 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 20:58:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 20:58:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 20:58:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:58:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 20:58:15 GMT
CMD ["irb"]
# Wed, 28 Sep 2016 21:02:59 GMT
RUN bundle config --global frozen 1
# Wed, 28 Sep 2016 21:03:00 GMT
RUN mkdir -p /usr/src/app
# Wed, 28 Sep 2016 21:03:00 GMT
WORKDIR /usr/src/app
# Wed, 28 Sep 2016 21:03:01 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 28 Sep 2016 21:03:01 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 28 Sep 2016 21:03:02 GMT
ONBUILD RUN bundle install
# Wed, 28 Sep 2016 21:03:02 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf982eec5d9ac4dd13bee06cb88efb42a3e0b8235fdb6e0b13dee65a731c81c`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be03ffa5a03dbb3e3f85a89deffb76efa697a1dc0ba8cff6ce696f08d5f1857`  
		Last Modified: Wed, 28 Sep 2016 21:17:46 GMT  
		Size: 33.0 MB (32983822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e21b713f7d20f699d6f1746eb55262a21d5e7511d04dc904267442dfb75041`  
		Last Modified: Wed, 28 Sep 2016 21:17:35 GMT  
		Size: 609.9 KB (609934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2111eac15feb7c2c29eaeaaceca092c408d2a5b76cd5979d58d28cf5ce5fcda3`  
		Last Modified: Wed, 28 Sep 2016 21:17:34 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384e17fbf611a92c04f008b07c72cc8214254389322ecbd980d5733fccfc7927`  
		Last Modified: Wed, 28 Sep 2016 21:19:27 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c39e673c00e66fc784bfe2f3830126d9c9e13a188c9862852781a4586ea751`  
		Last Modified: Wed, 28 Sep 2016 21:19:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.5`

```console
$ docker pull ruby@sha256:2e6f3db05aec6f08c2248c5a66d2a8ca5ac76db0a8cc9092e9abceedfc3bf486
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.5 MB (277530537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c5374233d6962fcb3ec3e36771fff24be6a37e68e75105866b32999cfab27df`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:42:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 24 Sep 2016 05:50:06 GMT
ENV RUBY_MAJOR=2.2
# Sat, 24 Sep 2016 05:50:06 GMT
ENV RUBY_VERSION=2.2.5
# Sat, 24 Sep 2016 05:50:06 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Wed, 28 Sep 2016 21:03:02 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:05:18 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:05:18 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:05:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:05:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:05:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:05:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:05:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:05:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf982eec5d9ac4dd13bee06cb88efb42a3e0b8235fdb6e0b13dee65a731c81c`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e1444bca1ed88f2ec21e748f84592cc8871f59da420d07753b40c895c64354`  
		Last Modified: Wed, 28 Sep 2016 21:20:03 GMT  
		Size: 33.5 MB (33497839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb23908f8eaee18373ae6a742e2c057bb0648efd85114b9d987a0d8d83cfa58`  
		Last Modified: Wed, 28 Sep 2016 21:19:53 GMT  
		Size: 609.9 KB (609941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d431c244c80913bb30c46a5e80e82d3df4f64894c9a0ccc41b7541f2d734a14a`  
		Last Modified: Wed, 28 Sep 2016 21:19:52 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2`

```console
$ docker pull ruby@sha256:2e6f3db05aec6f08c2248c5a66d2a8ca5ac76db0a8cc9092e9abceedfc3bf486
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.5 MB (277530537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c5374233d6962fcb3ec3e36771fff24be6a37e68e75105866b32999cfab27df`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:42:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 24 Sep 2016 05:50:06 GMT
ENV RUBY_MAJOR=2.2
# Sat, 24 Sep 2016 05:50:06 GMT
ENV RUBY_VERSION=2.2.5
# Sat, 24 Sep 2016 05:50:06 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Wed, 28 Sep 2016 21:03:02 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:05:18 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:05:18 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:05:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:05:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:05:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:05:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:05:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:05:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf982eec5d9ac4dd13bee06cb88efb42a3e0b8235fdb6e0b13dee65a731c81c`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e1444bca1ed88f2ec21e748f84592cc8871f59da420d07753b40c895c64354`  
		Last Modified: Wed, 28 Sep 2016 21:20:03 GMT  
		Size: 33.5 MB (33497839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb23908f8eaee18373ae6a742e2c057bb0648efd85114b9d987a0d8d83cfa58`  
		Last Modified: Wed, 28 Sep 2016 21:19:53 GMT  
		Size: 609.9 KB (609941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d431c244c80913bb30c46a5e80e82d3df4f64894c9a0ccc41b7541f2d734a14a`  
		Last Modified: Wed, 28 Sep 2016 21:19:52 GMT  
		Size: 161.0 B  
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
$ docker pull ruby@sha256:a0dc391460588906b1cf6891e18348edf41ed2c4ce303ede2b7c1b3ab7a1190c
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.6 MB (95603068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a77227119cc150df72dbdc45a68428b28ba914f6f54cbf8c286de70826415ec`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:22:54 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Sep 2016 23:22:58 GMT
ENV RUBY_VERSION=2.2.5
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Wed, 28 Sep 2016 21:05:23 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:07:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:07:57 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:07:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:07:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:07:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:07:59 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:08:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:08:00 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578f85a35f3d77f4fea435c76fe5d5316f9ec3bc84f65ed5619330b43b521f27`  
		Last Modified: Wed, 28 Sep 2016 21:20:41 GMT  
		Size: 33.7 MB (33658062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf97434d753fb2b358f215fd4ee359334221b4ff35f831e3acacb6dbfaef4884`  
		Last Modified: Wed, 28 Sep 2016 21:20:30 GMT  
		Size: 610.0 KB (609967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151cebef6c785d233dd8cc39e6970835af8bbf79a8e350468170596a381d55f0`  
		Last Modified: Wed, 28 Sep 2016 21:20:28 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.5-alpine`

```console
$ docker pull ruby@sha256:490331e0bb16cce96e13a46be85e7c91f92cc1759a0425570c4138fcbaf3a7f3
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.5-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 MB (37480749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0faa247439be376350fc5ddb8044ab5f3628bdba6a09505f5cd3b01742b2009a`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:16:26 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 18:23:12 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Sep 2016 18:23:12 GMT
ENV RUBY_VERSION=2.2.5
# Fri, 23 Sep 2016 18:23:12 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Wed, 28 Sep 2016 21:08:00 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:09:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:09:57 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:09:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:09:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:09:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:10:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:10:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:10:01 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd465d7a14827a004df1c03908761bdcd30a38bebd3c08221c002dda9651c51c`  
		Last Modified: Fri, 23 Sep 2016 18:19:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389c37868b3d48a4a027ad86c373f0a7cf65b1456e5978430313708482eae89e`  
		Last Modified: Wed, 28 Sep 2016 21:21:19 GMT  
		Size: 34.6 MB (34557548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd69e1c7a72da577518fa8ab0d1bbdca1e99bbfad4e7406d38bd4a369a69d8c3`  
		Last Modified: Wed, 28 Sep 2016 21:21:06 GMT  
		Size: 609.9 KB (609921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead2ff38966f6ae862fe101c30843092727e75e379a8e2f315d2e6fa567066c0`  
		Last Modified: Wed, 28 Sep 2016 21:21:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-alpine`

```console
$ docker pull ruby@sha256:80ea1303e08d26c1b1d85bc21f2dc75ec9060c194105f181f44a77a6943bc680
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 MB (37480749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0faa247439be376350fc5ddb8044ab5f3628bdba6a09505f5cd3b01742b2009a`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:16:26 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 18:23:12 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Sep 2016 18:23:12 GMT
ENV RUBY_VERSION=2.2.5
# Fri, 23 Sep 2016 18:23:12 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Wed, 28 Sep 2016 21:08:00 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:09:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:09:57 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:09:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:09:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:09:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:10:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:10:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:10:01 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd465d7a14827a004df1c03908761bdcd30a38bebd3c08221c002dda9651c51c`  
		Last Modified: Fri, 23 Sep 2016 18:19:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389c37868b3d48a4a027ad86c373f0a7cf65b1456e5978430313708482eae89e`  
		Last Modified: Wed, 28 Sep 2016 21:21:19 GMT  
		Size: 34.6 MB (34557548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd69e1c7a72da577518fa8ab0d1bbdca1e99bbfad4e7406d38bd4a369a69d8c3`  
		Last Modified: Wed, 28 Sep 2016 21:21:06 GMT  
		Size: 609.9 KB (609921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead2ff38966f6ae862fe101c30843092727e75e379a8e2f315d2e6fa567066c0`  
		Last Modified: Wed, 28 Sep 2016 21:21:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.5-onbuild`

```console
$ docker pull ruby@sha256:41de88f34f14271ac328ed25bff62c4049958cd9f419ceeb0832e5380f4dd8b0
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.5-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.5 MB (277530851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ec00c4b0c23929a0da395dd2d57ffd1895ef619b81dd15f6fbe58c890644f18`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:42:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 24 Sep 2016 05:50:06 GMT
ENV RUBY_MAJOR=2.2
# Sat, 24 Sep 2016 05:50:06 GMT
ENV RUBY_VERSION=2.2.5
# Sat, 24 Sep 2016 05:50:06 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Wed, 28 Sep 2016 21:03:02 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:05:18 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:05:18 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:05:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:05:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:05:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:05:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:05:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:05:22 GMT
CMD ["irb"]
# Wed, 28 Sep 2016 21:10:02 GMT
RUN bundle config --global frozen 1
# Wed, 28 Sep 2016 21:10:03 GMT
RUN mkdir -p /usr/src/app
# Wed, 28 Sep 2016 21:10:03 GMT
WORKDIR /usr/src/app
# Wed, 28 Sep 2016 21:10:04 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 28 Sep 2016 21:10:04 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 28 Sep 2016 21:10:04 GMT
ONBUILD RUN bundle install
# Wed, 28 Sep 2016 21:10:05 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf982eec5d9ac4dd13bee06cb88efb42a3e0b8235fdb6e0b13dee65a731c81c`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e1444bca1ed88f2ec21e748f84592cc8871f59da420d07753b40c895c64354`  
		Last Modified: Wed, 28 Sep 2016 21:20:03 GMT  
		Size: 33.5 MB (33497839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb23908f8eaee18373ae6a742e2c057bb0648efd85114b9d987a0d8d83cfa58`  
		Last Modified: Wed, 28 Sep 2016 21:19:53 GMT  
		Size: 609.9 KB (609941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d431c244c80913bb30c46a5e80e82d3df4f64894c9a0ccc41b7541f2d734a14a`  
		Last Modified: Wed, 28 Sep 2016 21:19:52 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78d6ace30f8dc2e73e3ed1caaa535a2bba4a5a174811ff8c5c2352842ca4dbb`  
		Last Modified: Wed, 28 Sep 2016 21:21:45 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ba571136a88e4caa0cdbed84db9cc8fbb28507fd13a2e3955e6d4998e7ee5f`  
		Last Modified: Wed, 28 Sep 2016 21:21:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-onbuild`

```console
$ docker pull ruby@sha256:f30a4761c803c735c4a2976695befe6310f46134da3fe2c76a88042f03077b5d
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.5 MB (277530851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ec00c4b0c23929a0da395dd2d57ffd1895ef619b81dd15f6fbe58c890644f18`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:42:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 24 Sep 2016 05:50:06 GMT
ENV RUBY_MAJOR=2.2
# Sat, 24 Sep 2016 05:50:06 GMT
ENV RUBY_VERSION=2.2.5
# Sat, 24 Sep 2016 05:50:06 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Wed, 28 Sep 2016 21:03:02 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:05:18 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:05:18 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:05:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:05:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:05:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:05:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:05:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:05:22 GMT
CMD ["irb"]
# Wed, 28 Sep 2016 21:10:02 GMT
RUN bundle config --global frozen 1
# Wed, 28 Sep 2016 21:10:03 GMT
RUN mkdir -p /usr/src/app
# Wed, 28 Sep 2016 21:10:03 GMT
WORKDIR /usr/src/app
# Wed, 28 Sep 2016 21:10:04 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 28 Sep 2016 21:10:04 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 28 Sep 2016 21:10:04 GMT
ONBUILD RUN bundle install
# Wed, 28 Sep 2016 21:10:05 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf982eec5d9ac4dd13bee06cb88efb42a3e0b8235fdb6e0b13dee65a731c81c`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e1444bca1ed88f2ec21e748f84592cc8871f59da420d07753b40c895c64354`  
		Last Modified: Wed, 28 Sep 2016 21:20:03 GMT  
		Size: 33.5 MB (33497839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb23908f8eaee18373ae6a742e2c057bb0648efd85114b9d987a0d8d83cfa58`  
		Last Modified: Wed, 28 Sep 2016 21:19:53 GMT  
		Size: 609.9 KB (609941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d431c244c80913bb30c46a5e80e82d3df4f64894c9a0ccc41b7541f2d734a14a`  
		Last Modified: Wed, 28 Sep 2016 21:19:52 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78d6ace30f8dc2e73e3ed1caaa535a2bba4a5a174811ff8c5c2352842ca4dbb`  
		Last Modified: Wed, 28 Sep 2016 21:21:45 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ba571136a88e4caa0cdbed84db9cc8fbb28507fd13a2e3955e6d4998e7ee5f`  
		Last Modified: Wed, 28 Sep 2016 21:21:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.1`

```console
$ docker pull ruby@sha256:f6385705df05be02ddf7d0ab71cf08c5e78e8bf58440836371c70f4c57151859
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279325131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd676338b1032738f4f8b3f965e229314ce4dccaed1372bc0305ca75b7f94772`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:42:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 24 Sep 2016 05:42:22 GMT
ENV RUBY_MAJOR=2.3
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_VERSION=2.3.1
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Sat, 24 Sep 2016 05:44:46 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Sat, 24 Sep 2016 05:44:46 GMT
ENV BUNDLER_VERSION=1.13.1
# Sat, 24 Sep 2016 05:44:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Sat, 24 Sep 2016 05:44:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 24 Sep 2016 05:44:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 24 Sep 2016 05:44:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 05:44:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 24 Sep 2016 05:44:50 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf982eec5d9ac4dd13bee06cb88efb42a3e0b8235fdb6e0b13dee65a731c81c`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9626c13fb27a18a346dc329fcc60277345647f9e1bb554ad567f98ab1f547bff`  
		Last Modified: Sat, 24 Sep 2016 05:45:14 GMT  
		Size: 35.3 MB (35292440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cca82b34cd39a33e10296f920a86dd5eff71d3f7f8aed0302af2d9aa763081`  
		Last Modified: Sat, 24 Sep 2016 05:45:00 GMT  
		Size: 609.9 KB (609934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b1afc1156add3b5c843e8cedff5a847d1dd372670bb4a124c3ec7657b87ce5`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3`

```console
$ docker pull ruby@sha256:b24382e118d9f6fb84ebc8d244cf2e8106de9930901ae827efee371d26c67cb4
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279321925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e657e07714162c948f3af9cbeee65c6c04b5ceb4655e3f337f053d3a5958c22b`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:42:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 24 Sep 2016 05:42:22 GMT
ENV RUBY_MAJOR=2.3
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_VERSION=2.3.1
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 28 Sep 2016 21:10:05 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:12:26 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:12:26 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:12:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:12:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:12:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:12:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:12:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:12:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf982eec5d9ac4dd13bee06cb88efb42a3e0b8235fdb6e0b13dee65a731c81c`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7587c67cc39abede471241226dee3063ac292034c2b73d878884e1d042df631`  
		Last Modified: Wed, 28 Sep 2016 21:22:24 GMT  
		Size: 35.3 MB (35289236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a2fd7d1a6bcc5ecfb7b0eea3f3d10db73cfe44ebb6c551c9965ffb765913b3`  
		Last Modified: Wed, 28 Sep 2016 21:22:13 GMT  
		Size: 609.9 KB (609932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d545703443d8ea078113ce724826bfd6786bdde37e69c06bc480e2697d7caef`  
		Last Modified: Wed, 28 Sep 2016 21:22:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2`

```console
$ docker pull ruby@sha256:5dfcfb28894819fa66682c9c41827264ecb639960449b38ac342b54ef512517a
```

-	Platforms:
	-	linux; amd64

### `ruby:2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279321925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e657e07714162c948f3af9cbeee65c6c04b5ceb4655e3f337f053d3a5958c22b`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:42:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 24 Sep 2016 05:42:22 GMT
ENV RUBY_MAJOR=2.3
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_VERSION=2.3.1
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 28 Sep 2016 21:10:05 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:12:26 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:12:26 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:12:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:12:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:12:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:12:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:12:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:12:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf982eec5d9ac4dd13bee06cb88efb42a3e0b8235fdb6e0b13dee65a731c81c`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7587c67cc39abede471241226dee3063ac292034c2b73d878884e1d042df631`  
		Last Modified: Wed, 28 Sep 2016 21:22:24 GMT  
		Size: 35.3 MB (35289236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a2fd7d1a6bcc5ecfb7b0eea3f3d10db73cfe44ebb6c551c9965ffb765913b3`  
		Last Modified: Wed, 28 Sep 2016 21:22:13 GMT  
		Size: 609.9 KB (609932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d545703443d8ea078113ce724826bfd6786bdde37e69c06bc480e2697d7caef`  
		Last Modified: Wed, 28 Sep 2016 21:22:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:latest`

```console
$ docker pull ruby@sha256:5dfcfb28894819fa66682c9c41827264ecb639960449b38ac342b54ef512517a
```

-	Platforms:
	-	linux; amd64

### `ruby:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279321925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e657e07714162c948f3af9cbeee65c6c04b5ceb4655e3f337f053d3a5958c22b`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:42:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 24 Sep 2016 05:42:22 GMT
ENV RUBY_MAJOR=2.3
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_VERSION=2.3.1
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 28 Sep 2016 21:10:05 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:12:26 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:12:26 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:12:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:12:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:12:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:12:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:12:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:12:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf982eec5d9ac4dd13bee06cb88efb42a3e0b8235fdb6e0b13dee65a731c81c`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7587c67cc39abede471241226dee3063ac292034c2b73d878884e1d042df631`  
		Last Modified: Wed, 28 Sep 2016 21:22:24 GMT  
		Size: 35.3 MB (35289236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a2fd7d1a6bcc5ecfb7b0eea3f3d10db73cfe44ebb6c551c9965ffb765913b3`  
		Last Modified: Wed, 28 Sep 2016 21:22:13 GMT  
		Size: 609.9 KB (609932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d545703443d8ea078113ce724826bfd6786bdde37e69c06bc480e2697d7caef`  
		Last Modified: Wed, 28 Sep 2016 21:22:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.1-slim`

```console
$ docker pull ruby@sha256:16c82b34d896beb4289b8a4cdc24472627a037144fdf4410918b93f1fdcde500
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.1-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97401608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b2f8988d82f8e3a5258c8cbf72fd8e43279bd96a397b66faa83bcc365d5c13c`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:14:55 GMT
ENV RUBY_MAJOR=2.3
# Fri, 23 Sep 2016 23:14:55 GMT
ENV RUBY_VERSION=2.3.1
# Fri, 23 Sep 2016 23:14:55 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 28 Sep 2016 21:12:30 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:15:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:15:12 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:15:13 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:15:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:15:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:15:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:15:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:15:15 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6936e35c97a1b3e0cdf06b9c975c4bb9171ae8928f48d80f48efb6e4545c99`  
		Last Modified: Wed, 28 Sep 2016 21:23:25 GMT  
		Size: 35.5 MB (35456645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd90c5369814a764424ec87fc3a4881505511d11df625556da6d6b783d862026`  
		Last Modified: Wed, 28 Sep 2016 21:23:13 GMT  
		Size: 609.9 KB (609924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68726eb9e08458b2b6a3c00776bf6efa24ce8393cc736ca2ab298815b183440a`  
		Last Modified: Wed, 28 Sep 2016 21:23:12 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-slim`

```console
$ docker pull ruby@sha256:0082e54bcaf6df66ed60e5228dc68d2c0a2657cbb2792ce0ae7c90a6be0d2209
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97401608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b2f8988d82f8e3a5258c8cbf72fd8e43279bd96a397b66faa83bcc365d5c13c`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:14:55 GMT
ENV RUBY_MAJOR=2.3
# Fri, 23 Sep 2016 23:14:55 GMT
ENV RUBY_VERSION=2.3.1
# Fri, 23 Sep 2016 23:14:55 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 28 Sep 2016 21:12:30 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:15:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:15:12 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:15:13 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:15:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:15:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:15:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:15:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:15:15 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6936e35c97a1b3e0cdf06b9c975c4bb9171ae8928f48d80f48efb6e4545c99`  
		Last Modified: Wed, 28 Sep 2016 21:23:25 GMT  
		Size: 35.5 MB (35456645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd90c5369814a764424ec87fc3a4881505511d11df625556da6d6b783d862026`  
		Last Modified: Wed, 28 Sep 2016 21:23:13 GMT  
		Size: 609.9 KB (609924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68726eb9e08458b2b6a3c00776bf6efa24ce8393cc736ca2ab298815b183440a`  
		Last Modified: Wed, 28 Sep 2016 21:23:12 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-slim`

```console
$ docker pull ruby@sha256:16c82b34d896beb4289b8a4cdc24472627a037144fdf4410918b93f1fdcde500
```

-	Platforms:
	-	linux; amd64

### `ruby:2-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97401608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b2f8988d82f8e3a5258c8cbf72fd8e43279bd96a397b66faa83bcc365d5c13c`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:14:55 GMT
ENV RUBY_MAJOR=2.3
# Fri, 23 Sep 2016 23:14:55 GMT
ENV RUBY_VERSION=2.3.1
# Fri, 23 Sep 2016 23:14:55 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 28 Sep 2016 21:12:30 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:15:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:15:12 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:15:13 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:15:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:15:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:15:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:15:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:15:15 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6936e35c97a1b3e0cdf06b9c975c4bb9171ae8928f48d80f48efb6e4545c99`  
		Last Modified: Wed, 28 Sep 2016 21:23:25 GMT  
		Size: 35.5 MB (35456645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd90c5369814a764424ec87fc3a4881505511d11df625556da6d6b783d862026`  
		Last Modified: Wed, 28 Sep 2016 21:23:13 GMT  
		Size: 609.9 KB (609924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68726eb9e08458b2b6a3c00776bf6efa24ce8393cc736ca2ab298815b183440a`  
		Last Modified: Wed, 28 Sep 2016 21:23:12 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:slim`

```console
$ docker pull ruby@sha256:16c82b34d896beb4289b8a4cdc24472627a037144fdf4410918b93f1fdcde500
```

-	Platforms:
	-	linux; amd64

### `ruby:slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97401608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b2f8988d82f8e3a5258c8cbf72fd8e43279bd96a397b66faa83bcc365d5c13c`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:14:55 GMT
ENV RUBY_MAJOR=2.3
# Fri, 23 Sep 2016 23:14:55 GMT
ENV RUBY_VERSION=2.3.1
# Fri, 23 Sep 2016 23:14:55 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 28 Sep 2016 21:12:30 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:15:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:15:12 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:15:13 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:15:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:15:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:15:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:15:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:15:15 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6936e35c97a1b3e0cdf06b9c975c4bb9171ae8928f48d80f48efb6e4545c99`  
		Last Modified: Wed, 28 Sep 2016 21:23:25 GMT  
		Size: 35.5 MB (35456645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd90c5369814a764424ec87fc3a4881505511d11df625556da6d6b783d862026`  
		Last Modified: Wed, 28 Sep 2016 21:23:13 GMT  
		Size: 609.9 KB (609924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68726eb9e08458b2b6a3c00776bf6efa24ce8393cc736ca2ab298815b183440a`  
		Last Modified: Wed, 28 Sep 2016 21:23:12 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.1-alpine`

```console
$ docker pull ruby@sha256:ee9019dffd753b2d43206c8908cc9fdc369b7b0185c5cca0ee07a12e06e73a7a
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39443028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e3b0044066e4019ad48a3a390a03694fae226185d90bff12d7fbbdbf718b202`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:16:26 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 18:16:26 GMT
ENV RUBY_MAJOR=2.3
# Fri, 23 Sep 2016 18:16:26 GMT
ENV RUBY_VERSION=2.3.1
# Fri, 23 Sep 2016 18:16:26 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 28 Sep 2016 21:15:16 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:17:18 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:17:19 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:17:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:17:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:17:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:17:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:17:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:17:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd465d7a14827a004df1c03908761bdcd30a38bebd3c08221c002dda9651c51c`  
		Last Modified: Fri, 23 Sep 2016 18:19:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab718ce8eb91a71a2b6843ec8437f1f90844cfd254155d48ac26a5cb2d9051a9`  
		Last Modified: Wed, 28 Sep 2016 21:24:21 GMT  
		Size: 36.5 MB (36519834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a91b6806b6a5e2200b6432f701fe8f277e93c8b11b57860d8b443c294712d4`  
		Last Modified: Wed, 28 Sep 2016 21:24:10 GMT  
		Size: 609.9 KB (609915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dafb08026d909f554ffec7871e1c250bb5417881495f23e4bfba8d19279dcfb`  
		Last Modified: Wed, 28 Sep 2016 21:24:09 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-alpine`

```console
$ docker pull ruby@sha256:ee9019dffd753b2d43206c8908cc9fdc369b7b0185c5cca0ee07a12e06e73a7a
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39443028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e3b0044066e4019ad48a3a390a03694fae226185d90bff12d7fbbdbf718b202`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:16:26 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 18:16:26 GMT
ENV RUBY_MAJOR=2.3
# Fri, 23 Sep 2016 18:16:26 GMT
ENV RUBY_VERSION=2.3.1
# Fri, 23 Sep 2016 18:16:26 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 28 Sep 2016 21:15:16 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:17:18 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:17:19 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:17:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:17:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:17:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:17:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:17:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:17:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd465d7a14827a004df1c03908761bdcd30a38bebd3c08221c002dda9651c51c`  
		Last Modified: Fri, 23 Sep 2016 18:19:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab718ce8eb91a71a2b6843ec8437f1f90844cfd254155d48ac26a5cb2d9051a9`  
		Last Modified: Wed, 28 Sep 2016 21:24:21 GMT  
		Size: 36.5 MB (36519834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a91b6806b6a5e2200b6432f701fe8f277e93c8b11b57860d8b443c294712d4`  
		Last Modified: Wed, 28 Sep 2016 21:24:10 GMT  
		Size: 609.9 KB (609915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dafb08026d909f554ffec7871e1c250bb5417881495f23e4bfba8d19279dcfb`  
		Last Modified: Wed, 28 Sep 2016 21:24:09 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-alpine`

```console
$ docker pull ruby@sha256:ee9019dffd753b2d43206c8908cc9fdc369b7b0185c5cca0ee07a12e06e73a7a
```

-	Platforms:
	-	linux; amd64

### `ruby:2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39443028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e3b0044066e4019ad48a3a390a03694fae226185d90bff12d7fbbdbf718b202`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:16:26 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 18:16:26 GMT
ENV RUBY_MAJOR=2.3
# Fri, 23 Sep 2016 18:16:26 GMT
ENV RUBY_VERSION=2.3.1
# Fri, 23 Sep 2016 18:16:26 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 28 Sep 2016 21:15:16 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:17:18 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:17:19 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:17:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:17:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:17:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:17:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:17:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:17:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd465d7a14827a004df1c03908761bdcd30a38bebd3c08221c002dda9651c51c`  
		Last Modified: Fri, 23 Sep 2016 18:19:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab718ce8eb91a71a2b6843ec8437f1f90844cfd254155d48ac26a5cb2d9051a9`  
		Last Modified: Wed, 28 Sep 2016 21:24:21 GMT  
		Size: 36.5 MB (36519834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a91b6806b6a5e2200b6432f701fe8f277e93c8b11b57860d8b443c294712d4`  
		Last Modified: Wed, 28 Sep 2016 21:24:10 GMT  
		Size: 609.9 KB (609915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dafb08026d909f554ffec7871e1c250bb5417881495f23e4bfba8d19279dcfb`  
		Last Modified: Wed, 28 Sep 2016 21:24:09 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:alpine`

```console
$ docker pull ruby@sha256:676a9fe74ce3b1a6f96fefc3990543dc99f6e838ad542ac7ce959e3f77954cb4
```

-	Platforms:
	-	linux; amd64

### `ruby:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 MB (38192829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2467a614f30b496c2651edd22eef74de43c65c9058f6acc95509804842e4737c`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:16:26 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 18:16:26 GMT
ENV RUBY_MAJOR=2.3
# Fri, 23 Sep 2016 18:16:26 GMT
ENV RUBY_VERSION=2.3.1
# Fri, 23 Sep 2016 18:16:26 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Fri, 23 Sep 2016 18:16:27 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 23 Sep 2016 18:18:50 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 23 Sep 2016 18:18:51 GMT
ENV BUNDLER_VERSION=1.13.1
# Fri, 23 Sep 2016 18:18:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Sep 2016 18:18:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 18:18:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 18:18:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 18:18:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 18:18:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd465d7a14827a004df1c03908761bdcd30a38bebd3c08221c002dda9651c51c`  
		Last Modified: Fri, 23 Sep 2016 18:19:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59029f92d652d9395eadcca31c2308b0137d6d0eadcf93faab5dd1671f198e59`  
		Last Modified: Fri, 23 Sep 2016 18:19:15 GMT  
		Size: 35.3 MB (35269632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203c625831ed3bfbf00ecd7dd5b543cde5d9abab4962333fcbfe9a944229a0e0`  
		Last Modified: Fri, 23 Sep 2016 18:19:02 GMT  
		Size: 609.9 KB (609919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2f5ffc4d4dd9536aff9f93dde5bc149641cf57ceff0700444404be50740a27`  
		Last Modified: Fri, 23 Sep 2016 18:19:02 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.1-onbuild`

```console
$ docker pull ruby@sha256:2a17654a150db0c79d22f6963a87656fd556f5401d86d1d90609b8d5d43ea65f
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279322236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa032c7f7408eeae1a4d4b4d965e4c28867ef5e333e2e386f89647a16caff08`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:42:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 24 Sep 2016 05:42:22 GMT
ENV RUBY_MAJOR=2.3
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_VERSION=2.3.1
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 28 Sep 2016 21:10:05 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:12:26 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:12:26 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:12:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:12:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:12:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:12:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:12:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:12:30 GMT
CMD ["irb"]
# Wed, 28 Sep 2016 21:17:23 GMT
RUN bundle config --global frozen 1
# Wed, 28 Sep 2016 21:17:24 GMT
RUN mkdir -p /usr/src/app
# Wed, 28 Sep 2016 21:17:24 GMT
WORKDIR /usr/src/app
# Wed, 28 Sep 2016 21:17:25 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 28 Sep 2016 21:17:25 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 28 Sep 2016 21:17:25 GMT
ONBUILD RUN bundle install
# Wed, 28 Sep 2016 21:17:26 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf982eec5d9ac4dd13bee06cb88efb42a3e0b8235fdb6e0b13dee65a731c81c`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7587c67cc39abede471241226dee3063ac292034c2b73d878884e1d042df631`  
		Last Modified: Wed, 28 Sep 2016 21:22:24 GMT  
		Size: 35.3 MB (35289236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a2fd7d1a6bcc5ecfb7b0eea3f3d10db73cfe44ebb6c551c9965ffb765913b3`  
		Last Modified: Wed, 28 Sep 2016 21:22:13 GMT  
		Size: 609.9 KB (609932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d545703443d8ea078113ce724826bfd6786bdde37e69c06bc480e2697d7caef`  
		Last Modified: Wed, 28 Sep 2016 21:22:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbab24f258fe7294d32278d8148f0da8c74557822e1c59e32a2c210d22d88072`  
		Last Modified: Wed, 28 Sep 2016 21:25:05 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0173b76bf858f217f4966a9e3bf2c01403c9ed9506bd9f1909c97471382617b`  
		Last Modified: Wed, 28 Sep 2016 21:25:05 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-onbuild`

```console
$ docker pull ruby@sha256:edcf82ec82a51f9d58c7ddf3a9ba09b6c51a02374aad222a34d69e41a6f71ed6
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279322236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa032c7f7408eeae1a4d4b4d965e4c28867ef5e333e2e386f89647a16caff08`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:42:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 24 Sep 2016 05:42:22 GMT
ENV RUBY_MAJOR=2.3
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_VERSION=2.3.1
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 28 Sep 2016 21:10:05 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:12:26 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:12:26 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:12:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:12:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:12:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:12:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:12:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:12:30 GMT
CMD ["irb"]
# Wed, 28 Sep 2016 21:17:23 GMT
RUN bundle config --global frozen 1
# Wed, 28 Sep 2016 21:17:24 GMT
RUN mkdir -p /usr/src/app
# Wed, 28 Sep 2016 21:17:24 GMT
WORKDIR /usr/src/app
# Wed, 28 Sep 2016 21:17:25 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 28 Sep 2016 21:17:25 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 28 Sep 2016 21:17:25 GMT
ONBUILD RUN bundle install
# Wed, 28 Sep 2016 21:17:26 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf982eec5d9ac4dd13bee06cb88efb42a3e0b8235fdb6e0b13dee65a731c81c`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7587c67cc39abede471241226dee3063ac292034c2b73d878884e1d042df631`  
		Last Modified: Wed, 28 Sep 2016 21:22:24 GMT  
		Size: 35.3 MB (35289236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a2fd7d1a6bcc5ecfb7b0eea3f3d10db73cfe44ebb6c551c9965ffb765913b3`  
		Last Modified: Wed, 28 Sep 2016 21:22:13 GMT  
		Size: 609.9 KB (609932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d545703443d8ea078113ce724826bfd6786bdde37e69c06bc480e2697d7caef`  
		Last Modified: Wed, 28 Sep 2016 21:22:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbab24f258fe7294d32278d8148f0da8c74557822e1c59e32a2c210d22d88072`  
		Last Modified: Wed, 28 Sep 2016 21:25:05 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0173b76bf858f217f4966a9e3bf2c01403c9ed9506bd9f1909c97471382617b`  
		Last Modified: Wed, 28 Sep 2016 21:25:05 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-onbuild`

```console
$ docker pull ruby@sha256:edcf82ec82a51f9d58c7ddf3a9ba09b6c51a02374aad222a34d69e41a6f71ed6
```

-	Platforms:
	-	linux; amd64

### `ruby:2-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279322236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa032c7f7408eeae1a4d4b4d965e4c28867ef5e333e2e386f89647a16caff08`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:42:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 24 Sep 2016 05:42:22 GMT
ENV RUBY_MAJOR=2.3
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_VERSION=2.3.1
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 28 Sep 2016 21:10:05 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:12:26 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:12:26 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:12:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:12:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:12:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:12:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:12:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:12:30 GMT
CMD ["irb"]
# Wed, 28 Sep 2016 21:17:23 GMT
RUN bundle config --global frozen 1
# Wed, 28 Sep 2016 21:17:24 GMT
RUN mkdir -p /usr/src/app
# Wed, 28 Sep 2016 21:17:24 GMT
WORKDIR /usr/src/app
# Wed, 28 Sep 2016 21:17:25 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 28 Sep 2016 21:17:25 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 28 Sep 2016 21:17:25 GMT
ONBUILD RUN bundle install
# Wed, 28 Sep 2016 21:17:26 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf982eec5d9ac4dd13bee06cb88efb42a3e0b8235fdb6e0b13dee65a731c81c`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7587c67cc39abede471241226dee3063ac292034c2b73d878884e1d042df631`  
		Last Modified: Wed, 28 Sep 2016 21:22:24 GMT  
		Size: 35.3 MB (35289236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a2fd7d1a6bcc5ecfb7b0eea3f3d10db73cfe44ebb6c551c9965ffb765913b3`  
		Last Modified: Wed, 28 Sep 2016 21:22:13 GMT  
		Size: 609.9 KB (609932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d545703443d8ea078113ce724826bfd6786bdde37e69c06bc480e2697d7caef`  
		Last Modified: Wed, 28 Sep 2016 21:22:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbab24f258fe7294d32278d8148f0da8c74557822e1c59e32a2c210d22d88072`  
		Last Modified: Wed, 28 Sep 2016 21:25:05 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0173b76bf858f217f4966a9e3bf2c01403c9ed9506bd9f1909c97471382617b`  
		Last Modified: Wed, 28 Sep 2016 21:25:05 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:onbuild`

```console
$ docker pull ruby@sha256:edcf82ec82a51f9d58c7ddf3a9ba09b6c51a02374aad222a34d69e41a6f71ed6
```

-	Platforms:
	-	linux; amd64

### `ruby:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279322236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa032c7f7408eeae1a4d4b4d965e4c28867ef5e333e2e386f89647a16caff08`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:42:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 24 Sep 2016 05:42:22 GMT
ENV RUBY_MAJOR=2.3
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_VERSION=2.3.1
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 28 Sep 2016 21:10:05 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:12:26 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:12:26 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:12:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:12:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:12:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:12:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:12:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:12:30 GMT
CMD ["irb"]
# Wed, 28 Sep 2016 21:17:23 GMT
RUN bundle config --global frozen 1
# Wed, 28 Sep 2016 21:17:24 GMT
RUN mkdir -p /usr/src/app
# Wed, 28 Sep 2016 21:17:24 GMT
WORKDIR /usr/src/app
# Wed, 28 Sep 2016 21:17:25 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 28 Sep 2016 21:17:25 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 28 Sep 2016 21:17:25 GMT
ONBUILD RUN bundle install
# Wed, 28 Sep 2016 21:17:26 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf982eec5d9ac4dd13bee06cb88efb42a3e0b8235fdb6e0b13dee65a731c81c`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7587c67cc39abede471241226dee3063ac292034c2b73d878884e1d042df631`  
		Last Modified: Wed, 28 Sep 2016 21:22:24 GMT  
		Size: 35.3 MB (35289236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a2fd7d1a6bcc5ecfb7b0eea3f3d10db73cfe44ebb6c551c9965ffb765913b3`  
		Last Modified: Wed, 28 Sep 2016 21:22:13 GMT  
		Size: 609.9 KB (609932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d545703443d8ea078113ce724826bfd6786bdde37e69c06bc480e2697d7caef`  
		Last Modified: Wed, 28 Sep 2016 21:22:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbab24f258fe7294d32278d8148f0da8c74557822e1c59e32a2c210d22d88072`  
		Last Modified: Wed, 28 Sep 2016 21:25:05 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0173b76bf858f217f4966a9e3bf2c01403c9ed9506bd9f1909c97471382617b`  
		Last Modified: Wed, 28 Sep 2016 21:25:05 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
