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
-	[`ruby:2.3.2`](#ruby232)
-	[`ruby:2.3`](#ruby23)
-	[`ruby:2`](#ruby2)
-	[`ruby:latest`](#rubylatest)
-	[`ruby:2.3.2-slim`](#ruby232-slim)
-	[`ruby:2.3-slim`](#ruby23-slim)
-	[`ruby:2-slim`](#ruby2-slim)
-	[`ruby:slim`](#rubyslim)
-	[`ruby:2.3.2-alpine`](#ruby232-alpine)
-	[`ruby:2.3-alpine`](#ruby23-alpine)
-	[`ruby:2-alpine`](#ruby2-alpine)
-	[`ruby:alpine`](#rubyalpine)
-	[`ruby:2.3.2-onbuild`](#ruby232-onbuild)
-	[`ruby:2.3-onbuild`](#ruby23-onbuild)
-	[`ruby:2-onbuild`](#ruby2-onbuild)
-	[`ruby:onbuild`](#rubyonbuild)

## `ruby:2.1.10`

```console
$ docker pull ruby@sha256:f2ae1de1ac646ff889568eea79ed91007ac63410a1970243992df3adc3023b84
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.9 MB (275876497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1cbbd0d41ec11c29a9c4f001750ba9fd2c7f28adb36c193cb143da27d2eac9d`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:28:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 08:56:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 10 Nov 2016 09:01:42 GMT
ENV RUBY_MAJOR=2.1
# Thu, 10 Nov 2016 09:01:42 GMT
ENV RUBY_VERSION=2.1.10
# Thu, 10 Nov 2016 09:01:43 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Thu, 10 Nov 2016 09:01:43 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 10 Nov 2016 09:04:02 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 10 Nov 2016 09:04:02 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 10 Nov 2016 09:04:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 10 Nov 2016 09:04:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 10 Nov 2016 09:04:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 10 Nov 2016 09:04:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Nov 2016 09:04:06 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 10 Nov 2016 09:04:06 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ee139a57774dc3728a4bf9675bc379458093585e42f384852e644b1b272ac`  
		Last Modified: Mon, 07 Nov 2016 22:59:05 GMT  
		Size: 129.8 MB (129808774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741de17843a5a3121190bd9e414fea1ca05c79ee4c390b7ceef1fb6af6b2e9ec`  
		Last Modified: Thu, 10 Nov 2016 08:59:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341958d9948f0faf354eb4e9565b6214d5983dd4c69015b107e7a74ced9f0fd0`  
		Last Modified: Thu, 10 Nov 2016 09:04:29 GMT  
		Size: 33.1 MB (33071059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d09850fce95097d40f409e9a2b1dcac8bc96a03320cd421e6ac6c08c3764cf9`  
		Last Modified: Thu, 10 Nov 2016 09:04:18 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21955742ac03839a8ee257684118c9fc358ac3b992831a8540ca93d2df1a50a`  
		Last Modified: Thu, 10 Nov 2016 09:04:18 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1`

```console
$ docker pull ruby@sha256:f2ae1de1ac646ff889568eea79ed91007ac63410a1970243992df3adc3023b84
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.9 MB (275876497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1cbbd0d41ec11c29a9c4f001750ba9fd2c7f28adb36c193cb143da27d2eac9d`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:28:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 08:56:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 10 Nov 2016 09:01:42 GMT
ENV RUBY_MAJOR=2.1
# Thu, 10 Nov 2016 09:01:42 GMT
ENV RUBY_VERSION=2.1.10
# Thu, 10 Nov 2016 09:01:43 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Thu, 10 Nov 2016 09:01:43 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 10 Nov 2016 09:04:02 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 10 Nov 2016 09:04:02 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 10 Nov 2016 09:04:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 10 Nov 2016 09:04:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 10 Nov 2016 09:04:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 10 Nov 2016 09:04:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Nov 2016 09:04:06 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 10 Nov 2016 09:04:06 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ee139a57774dc3728a4bf9675bc379458093585e42f384852e644b1b272ac`  
		Last Modified: Mon, 07 Nov 2016 22:59:05 GMT  
		Size: 129.8 MB (129808774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741de17843a5a3121190bd9e414fea1ca05c79ee4c390b7ceef1fb6af6b2e9ec`  
		Last Modified: Thu, 10 Nov 2016 08:59:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341958d9948f0faf354eb4e9565b6214d5983dd4c69015b107e7a74ced9f0fd0`  
		Last Modified: Thu, 10 Nov 2016 09:04:29 GMT  
		Size: 33.1 MB (33071059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d09850fce95097d40f409e9a2b1dcac8bc96a03320cd421e6ac6c08c3764cf9`  
		Last Modified: Thu, 10 Nov 2016 09:04:18 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21955742ac03839a8ee257684118c9fc358ac3b992831a8540ca93d2df1a50a`  
		Last Modified: Thu, 10 Nov 2016 09:04:18 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-slim`

```console
$ docker pull ruby@sha256:22f31f84da1a9072281de54db998554dc4ec832496c07f417cda09b26958ec04
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95183986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e12146bcce4c0e99e1edbbebd37b0b4f512e6fc7d45a8ca0a924c4de3bf7f84`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:15:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:15:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 09 Nov 2016 01:19:28 GMT
ENV RUBY_MAJOR=2.1
# Wed, 09 Nov 2016 01:19:29 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 09 Nov 2016 01:19:29 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Wed, 09 Nov 2016 01:19:29 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 09 Nov 2016 01:21:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 09 Nov 2016 01:21:58 GMT
ENV BUNDLER_VERSION=1.13.6
# Wed, 09 Nov 2016 01:22:00 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 09 Nov 2016 01:22:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 09 Nov 2016 01:22:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 09 Nov 2016 01:22:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 01:22:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 09 Nov 2016 01:22:02 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2a19adcb601ac582ae2b2cec63a8fead8b8eff63c7c73ec8e1c34084b0b971`  
		Last Modified: Wed, 09 Nov 2016 01:18:32 GMT  
		Size: 10.0 MB (9980683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37dcb8e3fe13596bfd392dd2619f6dc9b79fd00aad288ee04f23a2f5a14ffee`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079dc069735776b09ed50f4e7076bb8d0b22480d77b685ed24030828290fdc92`  
		Last Modified: Wed, 09 Nov 2016 01:22:27 GMT  
		Size: 33.2 MB (33233362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b34543a7326f49d038372d6d49d75d299f97b55cafb3d07235f842f1601d0c`  
		Last Modified: Wed, 09 Nov 2016 01:22:16 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e2244e72c9a0655dc5394d941ef8feab6e6e05fea3c329324c145ba53ec3b5`  
		Last Modified: Wed, 09 Nov 2016 01:22:16 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-slim`

```console
$ docker pull ruby@sha256:22f31f84da1a9072281de54db998554dc4ec832496c07f417cda09b26958ec04
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95183986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e12146bcce4c0e99e1edbbebd37b0b4f512e6fc7d45a8ca0a924c4de3bf7f84`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:15:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:15:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 09 Nov 2016 01:19:28 GMT
ENV RUBY_MAJOR=2.1
# Wed, 09 Nov 2016 01:19:29 GMT
ENV RUBY_VERSION=2.1.10
# Wed, 09 Nov 2016 01:19:29 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Wed, 09 Nov 2016 01:19:29 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 09 Nov 2016 01:21:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 09 Nov 2016 01:21:58 GMT
ENV BUNDLER_VERSION=1.13.6
# Wed, 09 Nov 2016 01:22:00 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 09 Nov 2016 01:22:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 09 Nov 2016 01:22:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 09 Nov 2016 01:22:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 01:22:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 09 Nov 2016 01:22:02 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2a19adcb601ac582ae2b2cec63a8fead8b8eff63c7c73ec8e1c34084b0b971`  
		Last Modified: Wed, 09 Nov 2016 01:18:32 GMT  
		Size: 10.0 MB (9980683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37dcb8e3fe13596bfd392dd2619f6dc9b79fd00aad288ee04f23a2f5a14ffee`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079dc069735776b09ed50f4e7076bb8d0b22480d77b685ed24030828290fdc92`  
		Last Modified: Wed, 09 Nov 2016 01:22:27 GMT  
		Size: 33.2 MB (33233362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b34543a7326f49d038372d6d49d75d299f97b55cafb3d07235f842f1601d0c`  
		Last Modified: Wed, 09 Nov 2016 01:22:16 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e2244e72c9a0655dc5394d941ef8feab6e6e05fea3c329324c145ba53ec3b5`  
		Last Modified: Wed, 09 Nov 2016 01:22:16 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-alpine`

```console
$ docker pull ruby@sha256:f0a325cb34551ac28fda9a6e479fa6d6b6f34f89273f94f8482b14325c4e7335
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-alpine` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36311436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24bb1c4dabdfcc1e2091f07bd561f826e0d41c63feb05263e1a473e902f2e276`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 22:54:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 18 Oct 2016 22:54:01 GMT
ENV RUBY_MAJOR=2.1
# Tue, 18 Oct 2016 22:54:01 GMT
ENV RUBY_VERSION=2.1.10
# Tue, 18 Oct 2016 22:54:02 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Tue, 01 Nov 2016 18:07:54 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:09:56 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:09:56 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:09:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:09:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:09:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:09:59 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:10:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:10:00 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6353f0aa4196a8fc633cf2d380738d61dcbf87fd305e5a546ec603b490aa33f0`  
		Last Modified: Tue, 18 Oct 2016 23:02:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eba583be12456b6ccfc0f97602725cfd3ea12852dcf115005f92d6d8a775a7`  
		Last Modified: Tue, 01 Nov 2016 18:27:20 GMT  
		Size: 33.4 MB (33385583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318fce3d7ef99cc173b2d8773f8e220d8382b8d20e372f3de2fc7841446d684e`  
		Last Modified: Tue, 01 Nov 2016 18:26:21 GMT  
		Size: 612.5 KB (612548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e05c1b8978659330f0bcdc20ba6af45b64c9ddf34a13a01db6d9551330ebf6`  
		Last Modified: Tue, 01 Nov 2016 18:26:21 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-alpine`

```console
$ docker pull ruby@sha256:f0a325cb34551ac28fda9a6e479fa6d6b6f34f89273f94f8482b14325c4e7335
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-alpine` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36311436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24bb1c4dabdfcc1e2091f07bd561f826e0d41c63feb05263e1a473e902f2e276`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 22:54:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 18 Oct 2016 22:54:01 GMT
ENV RUBY_MAJOR=2.1
# Tue, 18 Oct 2016 22:54:01 GMT
ENV RUBY_VERSION=2.1.10
# Tue, 18 Oct 2016 22:54:02 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Tue, 01 Nov 2016 18:07:54 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:09:56 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:09:56 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:09:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:09:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:09:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:09:59 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:10:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:10:00 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6353f0aa4196a8fc633cf2d380738d61dcbf87fd305e5a546ec603b490aa33f0`  
		Last Modified: Tue, 18 Oct 2016 23:02:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eba583be12456b6ccfc0f97602725cfd3ea12852dcf115005f92d6d8a775a7`  
		Last Modified: Tue, 01 Nov 2016 18:27:20 GMT  
		Size: 33.4 MB (33385583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318fce3d7ef99cc173b2d8773f8e220d8382b8d20e372f3de2fc7841446d684e`  
		Last Modified: Tue, 01 Nov 2016 18:26:21 GMT  
		Size: 612.5 KB (612548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e05c1b8978659330f0bcdc20ba6af45b64c9ddf34a13a01db6d9551330ebf6`  
		Last Modified: Tue, 01 Nov 2016 18:26:21 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-onbuild`

```console
$ docker pull ruby@sha256:ce284a0a021bd2da73d3774a85a352225a8aca87f8da4dbab08c18cac9ed8d66
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.9 MB (275876809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f5765d67d2bb6e5c64802a2ce8f8a900dcbbfc328fcc85f87595fab990ddb56`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:28:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 08:56:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 10 Nov 2016 09:01:42 GMT
ENV RUBY_MAJOR=2.1
# Thu, 10 Nov 2016 09:01:42 GMT
ENV RUBY_VERSION=2.1.10
# Thu, 10 Nov 2016 09:01:43 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Thu, 10 Nov 2016 09:01:43 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 10 Nov 2016 09:04:02 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 10 Nov 2016 09:04:02 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 10 Nov 2016 09:04:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 10 Nov 2016 09:04:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 10 Nov 2016 09:04:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 10 Nov 2016 09:04:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Nov 2016 09:04:06 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 10 Nov 2016 09:04:06 GMT
CMD ["irb"]
# Thu, 10 Nov 2016 09:04:51 GMT
RUN bundle config --global frozen 1
# Thu, 10 Nov 2016 09:04:52 GMT
RUN mkdir -p /usr/src/app
# Thu, 10 Nov 2016 09:04:53 GMT
WORKDIR /usr/src/app
# Thu, 10 Nov 2016 09:04:53 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Thu, 10 Nov 2016 09:04:53 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Thu, 10 Nov 2016 09:04:54 GMT
ONBUILD RUN bundle install
# Thu, 10 Nov 2016 09:04:54 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ee139a57774dc3728a4bf9675bc379458093585e42f384852e644b1b272ac`  
		Last Modified: Mon, 07 Nov 2016 22:59:05 GMT  
		Size: 129.8 MB (129808774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741de17843a5a3121190bd9e414fea1ca05c79ee4c390b7ceef1fb6af6b2e9ec`  
		Last Modified: Thu, 10 Nov 2016 08:59:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341958d9948f0faf354eb4e9565b6214d5983dd4c69015b107e7a74ced9f0fd0`  
		Last Modified: Thu, 10 Nov 2016 09:04:29 GMT  
		Size: 33.1 MB (33071059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d09850fce95097d40f409e9a2b1dcac8bc96a03320cd421e6ac6c08c3764cf9`  
		Last Modified: Thu, 10 Nov 2016 09:04:18 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21955742ac03839a8ee257684118c9fc358ac3b992831a8540ca93d2df1a50a`  
		Last Modified: Thu, 10 Nov 2016 09:04:18 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc9db2852df1986a8e33aa784b87116fd69194d1cfd055e00b0b623db378aad`  
		Last Modified: Thu, 10 Nov 2016 09:05:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c09ae98019dba914c2dcee97233e5fa0eec1f7cc42e1fe5ee1c2944bd53672`  
		Last Modified: Thu, 10 Nov 2016 09:05:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-onbuild`

```console
$ docker pull ruby@sha256:ce284a0a021bd2da73d3774a85a352225a8aca87f8da4dbab08c18cac9ed8d66
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.9 MB (275876809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f5765d67d2bb6e5c64802a2ce8f8a900dcbbfc328fcc85f87595fab990ddb56`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:28:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 08:56:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 10 Nov 2016 09:01:42 GMT
ENV RUBY_MAJOR=2.1
# Thu, 10 Nov 2016 09:01:42 GMT
ENV RUBY_VERSION=2.1.10
# Thu, 10 Nov 2016 09:01:43 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Thu, 10 Nov 2016 09:01:43 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 10 Nov 2016 09:04:02 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 10 Nov 2016 09:04:02 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 10 Nov 2016 09:04:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 10 Nov 2016 09:04:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 10 Nov 2016 09:04:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 10 Nov 2016 09:04:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Nov 2016 09:04:06 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 10 Nov 2016 09:04:06 GMT
CMD ["irb"]
# Thu, 10 Nov 2016 09:04:51 GMT
RUN bundle config --global frozen 1
# Thu, 10 Nov 2016 09:04:52 GMT
RUN mkdir -p /usr/src/app
# Thu, 10 Nov 2016 09:04:53 GMT
WORKDIR /usr/src/app
# Thu, 10 Nov 2016 09:04:53 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Thu, 10 Nov 2016 09:04:53 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Thu, 10 Nov 2016 09:04:54 GMT
ONBUILD RUN bundle install
# Thu, 10 Nov 2016 09:04:54 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ee139a57774dc3728a4bf9675bc379458093585e42f384852e644b1b272ac`  
		Last Modified: Mon, 07 Nov 2016 22:59:05 GMT  
		Size: 129.8 MB (129808774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741de17843a5a3121190bd9e414fea1ca05c79ee4c390b7ceef1fb6af6b2e9ec`  
		Last Modified: Thu, 10 Nov 2016 08:59:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341958d9948f0faf354eb4e9565b6214d5983dd4c69015b107e7a74ced9f0fd0`  
		Last Modified: Thu, 10 Nov 2016 09:04:29 GMT  
		Size: 33.1 MB (33071059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d09850fce95097d40f409e9a2b1dcac8bc96a03320cd421e6ac6c08c3764cf9`  
		Last Modified: Thu, 10 Nov 2016 09:04:18 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21955742ac03839a8ee257684118c9fc358ac3b992831a8540ca93d2df1a50a`  
		Last Modified: Thu, 10 Nov 2016 09:04:18 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc9db2852df1986a8e33aa784b87116fd69194d1cfd055e00b0b623db378aad`  
		Last Modified: Thu, 10 Nov 2016 09:05:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c09ae98019dba914c2dcee97233e5fa0eec1f7cc42e1fe5ee1c2944bd53672`  
		Last Modified: Thu, 10 Nov 2016 09:05:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6`

```console
$ docker pull ruby@sha256:fba5481d66d58d91a182dd18321518a971f33b78edd3a6310c41197fbec2f9ab
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.5 MB (276451911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b068a763181dd0913be97aee06b21cfd4809b996cdf806b0c0f71a707a5ff53d`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:28:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 08:56:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 10 Nov 2016 09:05:28 GMT
ENV RUBY_MAJOR=2.2
# Thu, 17 Nov 2016 23:11:58 GMT
ENV RUBY_VERSION=2.2.6
# Thu, 17 Nov 2016 23:11:59 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Thu, 17 Nov 2016 23:11:59 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:14:21 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:14:22 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:14:23 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:14:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:14:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:14:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:14:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:14:26 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ee139a57774dc3728a4bf9675bc379458093585e42f384852e644b1b272ac`  
		Last Modified: Mon, 07 Nov 2016 22:59:05 GMT  
		Size: 129.8 MB (129808774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741de17843a5a3121190bd9e414fea1ca05c79ee4c390b7ceef1fb6af6b2e9ec`  
		Last Modified: Thu, 10 Nov 2016 08:59:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f783770ee3121cd923a0f0dec81c8dfe1e1e8aa85d1282eb6c24308b32ad2`  
		Last Modified: Thu, 17 Nov 2016 23:29:13 GMT  
		Size: 33.6 MB (33646475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f66b23e880bbdd5458a3c3d497dcf4f95b47799845f3d483bac0d9460dd148`  
		Last Modified: Thu, 17 Nov 2016 23:29:03 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9c1b160466680a063fa9f219679db860996b67889b6a17e851481ea1b8c3fe`  
		Last Modified: Thu, 17 Nov 2016 23:29:02 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2`

```console
$ docker pull ruby@sha256:423389d30ece5e2f74849eb5915ed866d8db17afbc7064fcaffc29d990277518
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.4 MB (276391815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a32740d637d892c055a3b79f24e0f468d304703e30d8d7dc083168c394f881`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:28:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 08:56:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 10 Nov 2016 09:05:28 GMT
ENV RUBY_MAJOR=2.2
# Thu, 10 Nov 2016 09:05:28 GMT
ENV RUBY_VERSION=2.2.5
# Thu, 10 Nov 2016 09:05:28 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Thu, 10 Nov 2016 09:05:29 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 10 Nov 2016 09:07:47 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 10 Nov 2016 09:07:48 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 10 Nov 2016 09:07:49 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 10 Nov 2016 09:07:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 10 Nov 2016 09:07:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 10 Nov 2016 09:07:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Nov 2016 09:07:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 10 Nov 2016 09:07:52 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ee139a57774dc3728a4bf9675bc379458093585e42f384852e644b1b272ac`  
		Last Modified: Mon, 07 Nov 2016 22:59:05 GMT  
		Size: 129.8 MB (129808774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741de17843a5a3121190bd9e414fea1ca05c79ee4c390b7ceef1fb6af6b2e9ec`  
		Last Modified: Thu, 10 Nov 2016 08:59:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7696c3be34df830b61559b85a4b44a0d3350e905ad38d7fa5c14cc130d6e1e9`  
		Last Modified: Thu, 10 Nov 2016 09:08:15 GMT  
		Size: 33.6 MB (33586375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3a2b674ceffbc9b38f8aa2dbce28b11396b3030ed83ce973f2723c67a6dcbb`  
		Last Modified: Thu, 10 Nov 2016 09:08:04 GMT  
		Size: 612.6 KB (612591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1680518a5b89b15d8cf0acf11ad55aa031b73715a3895a7ee767468cb94c6607`  
		Last Modified: Thu, 10 Nov 2016 09:08:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6-slim`

**does not exist** (yet?)

## `ruby:2.2-slim`

```console
$ docker pull ruby@sha256:7c494fe64184c00cee8f2fbb765301760ba06b82c29994cc1f7ff9f71133ae7a
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95703118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ddf5f283a225b2d14c8de94eb6df92567daaa00408b8f4b98ca1758d2c455bf`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:15:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:15:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 09 Nov 2016 01:22:47 GMT
ENV RUBY_MAJOR=2.2
# Wed, 09 Nov 2016 01:22:48 GMT
ENV RUBY_VERSION=2.2.5
# Wed, 09 Nov 2016 01:22:48 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Wed, 09 Nov 2016 01:22:48 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 09 Nov 2016 01:25:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 09 Nov 2016 01:25:22 GMT
ENV BUNDLER_VERSION=1.13.6
# Wed, 09 Nov 2016 01:25:23 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 09 Nov 2016 01:25:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 09 Nov 2016 01:25:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 09 Nov 2016 01:25:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 01:25:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 09 Nov 2016 01:25:26 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2a19adcb601ac582ae2b2cec63a8fead8b8eff63c7c73ec8e1c34084b0b971`  
		Last Modified: Wed, 09 Nov 2016 01:18:32 GMT  
		Size: 10.0 MB (9980683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37dcb8e3fe13596bfd392dd2619f6dc9b79fd00aad288ee04f23a2f5a14ffee`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78d2c489f98a4792f8526515245ce3baae884835b0cdb426351e29c5bdc8195`  
		Last Modified: Wed, 09 Nov 2016 01:25:49 GMT  
		Size: 33.8 MB (33752496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e5ee871f8a9fe89f054a0867503610aa88822e16377d2d276ef55f8ea99a62`  
		Last Modified: Wed, 09 Nov 2016 01:25:38 GMT  
		Size: 612.6 KB (612586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88029c071710de9784b601fdcf6181a5f28ea37426aace930f73c77b88c0f4f`  
		Last Modified: Wed, 09 Nov 2016 01:25:37 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6-alpine`

```console
$ docker pull ruby@sha256:e63277db123e9e990fbf986b6b4c0690cea2933d91ad988c4f4f7d9323485e0a
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36718679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7208f91b9c0425e664bed377ddf1b3ea159470975521b99f7cdc34eeeddd0d`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 22:54:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 18 Oct 2016 22:56:21 GMT
ENV RUBY_MAJOR=2.2
# Thu, 17 Nov 2016 23:17:08 GMT
ENV RUBY_VERSION=2.2.6
# Thu, 17 Nov 2016 23:17:09 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Thu, 17 Nov 2016 23:17:09 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:19:13 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:19:14 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:19:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:19:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:19:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:19:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:19:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:19:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6353f0aa4196a8fc633cf2d380738d61dcbf87fd305e5a546ec603b490aa33f0`  
		Last Modified: Tue, 18 Oct 2016 23:02:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f5e7d0cf835fbae54c9b8a34640f58eee8cfc3816b83e0307e7ad4e8c87466`  
		Last Modified: Thu, 17 Nov 2016 23:30:57 GMT  
		Size: 33.8 MB (33792809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b4013bcc56e899725cd041112e61f28e9e46f1930e08a31e6aa3fe3d794d59`  
		Last Modified: Thu, 17 Nov 2016 23:30:46 GMT  
		Size: 612.6 KB (612563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbe695a690038f45b6d0b11fb0cc7bb10080f6767ded0c0a68a3d3527ec98c2`  
		Last Modified: Thu, 17 Nov 2016 23:30:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-alpine`

```console
$ docker pull ruby@sha256:31bc9513a9774829c9278b7b0dbde737b75e946e9fa46ce4a696a7c9e86f5f57
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-alpine` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36692089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9670e994b7bda88a4be1fdd7bd70fcc0372c25750e5bb9156e37f25945088e61`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 22:54:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 18 Oct 2016 22:56:21 GMT
ENV RUBY_MAJOR=2.2
# Tue, 18 Oct 2016 22:56:22 GMT
ENV RUBY_VERSION=2.2.5
# Tue, 18 Oct 2016 22:56:22 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 01 Nov 2016 18:15:02 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:17:04 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:17:04 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:17:06 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:17:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:17:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:17:07 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:17:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:17:08 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6353f0aa4196a8fc633cf2d380738d61dcbf87fd305e5a546ec603b490aa33f0`  
		Last Modified: Tue, 18 Oct 2016 23:02:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cea0b89b810aae7ae0c9ba4f03e8b9e495a20afc66d4d99b08a71b6100ff38`  
		Last Modified: Tue, 01 Nov 2016 18:29:58 GMT  
		Size: 33.8 MB (33766224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe1fa3442ae5cc1c270153c5dfe09824fd61fd0c055633a70fb3f8abac137e6`  
		Last Modified: Tue, 01 Nov 2016 18:29:48 GMT  
		Size: 612.6 KB (612559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07dedcb22ec1cf9f8b3d1cff0ffdca8ee2815efb3b3170ea2a700997edf07ff`  
		Last Modified: Tue, 01 Nov 2016 18:29:46 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6-onbuild`

```console
$ docker pull ruby@sha256:d0cfa4bf1a5ef9b3c66171c3a3abdb8275676fab4fd016da16d7d9fac849d134
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.5 MB (276452225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:850b97f9b8158176599ec041dfd71f60c08979b6e5a80b830c2ea25134e6aac7`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:28:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 08:56:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 10 Nov 2016 09:05:28 GMT
ENV RUBY_MAJOR=2.2
# Thu, 17 Nov 2016 23:11:58 GMT
ENV RUBY_VERSION=2.2.6
# Thu, 17 Nov 2016 23:11:59 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Thu, 17 Nov 2016 23:11:59 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:14:21 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:14:22 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:14:23 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:14:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:14:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:14:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:14:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:14:26 GMT
CMD ["irb"]
# Thu, 17 Nov 2016 23:19:19 GMT
RUN bundle config --global frozen 1
# Thu, 17 Nov 2016 23:19:20 GMT
RUN mkdir -p /usr/src/app
# Thu, 17 Nov 2016 23:19:20 GMT
WORKDIR /usr/src/app
# Thu, 17 Nov 2016 23:19:21 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Thu, 17 Nov 2016 23:19:21 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Thu, 17 Nov 2016 23:19:21 GMT
ONBUILD RUN bundle install
# Thu, 17 Nov 2016 23:19:22 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ee139a57774dc3728a4bf9675bc379458093585e42f384852e644b1b272ac`  
		Last Modified: Mon, 07 Nov 2016 22:59:05 GMT  
		Size: 129.8 MB (129808774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741de17843a5a3121190bd9e414fea1ca05c79ee4c390b7ceef1fb6af6b2e9ec`  
		Last Modified: Thu, 10 Nov 2016 08:59:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f783770ee3121cd923a0f0dec81c8dfe1e1e8aa85d1282eb6c24308b32ad2`  
		Last Modified: Thu, 17 Nov 2016 23:29:13 GMT  
		Size: 33.6 MB (33646475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f66b23e880bbdd5458a3c3d497dcf4f95b47799845f3d483bac0d9460dd148`  
		Last Modified: Thu, 17 Nov 2016 23:29:03 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9c1b160466680a063fa9f219679db860996b67889b6a17e851481ea1b8c3fe`  
		Last Modified: Thu, 17 Nov 2016 23:29:02 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8333a734cd921fde43938aae5e3a7114825c4d32df07f1d05405425fe0c63ee7`  
		Last Modified: Thu, 17 Nov 2016 23:31:33 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf3c5ef4b89209664492e69a9f71c219a2da0930b05970b93fa1b57ffb8856f`  
		Last Modified: Thu, 17 Nov 2016 23:31:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-onbuild`

```console
$ docker pull ruby@sha256:d0cfa4bf1a5ef9b3c66171c3a3abdb8275676fab4fd016da16d7d9fac849d134
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.5 MB (276452225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:850b97f9b8158176599ec041dfd71f60c08979b6e5a80b830c2ea25134e6aac7`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:28:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 08:56:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 10 Nov 2016 09:05:28 GMT
ENV RUBY_MAJOR=2.2
# Thu, 17 Nov 2016 23:11:58 GMT
ENV RUBY_VERSION=2.2.6
# Thu, 17 Nov 2016 23:11:59 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Thu, 17 Nov 2016 23:11:59 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:14:21 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:14:22 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:14:23 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:14:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:14:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:14:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:14:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:14:26 GMT
CMD ["irb"]
# Thu, 17 Nov 2016 23:19:19 GMT
RUN bundle config --global frozen 1
# Thu, 17 Nov 2016 23:19:20 GMT
RUN mkdir -p /usr/src/app
# Thu, 17 Nov 2016 23:19:20 GMT
WORKDIR /usr/src/app
# Thu, 17 Nov 2016 23:19:21 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Thu, 17 Nov 2016 23:19:21 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Thu, 17 Nov 2016 23:19:21 GMT
ONBUILD RUN bundle install
# Thu, 17 Nov 2016 23:19:22 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ee139a57774dc3728a4bf9675bc379458093585e42f384852e644b1b272ac`  
		Last Modified: Mon, 07 Nov 2016 22:59:05 GMT  
		Size: 129.8 MB (129808774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741de17843a5a3121190bd9e414fea1ca05c79ee4c390b7ceef1fb6af6b2e9ec`  
		Last Modified: Thu, 10 Nov 2016 08:59:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f783770ee3121cd923a0f0dec81c8dfe1e1e8aa85d1282eb6c24308b32ad2`  
		Last Modified: Thu, 17 Nov 2016 23:29:13 GMT  
		Size: 33.6 MB (33646475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f66b23e880bbdd5458a3c3d497dcf4f95b47799845f3d483bac0d9460dd148`  
		Last Modified: Thu, 17 Nov 2016 23:29:03 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9c1b160466680a063fa9f219679db860996b67889b6a17e851481ea1b8c3fe`  
		Last Modified: Thu, 17 Nov 2016 23:29:02 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8333a734cd921fde43938aae5e3a7114825c4d32df07f1d05405425fe0c63ee7`  
		Last Modified: Thu, 17 Nov 2016 23:31:33 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf3c5ef4b89209664492e69a9f71c219a2da0930b05970b93fa1b57ffb8856f`  
		Last Modified: Thu, 17 Nov 2016 23:31:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.2`

**does not exist** (yet?)

## `ruby:2.3`

```console
$ docker pull ruby@sha256:a5ebd3bc0bf3881258975f8afa1c6d24429dfd4d7dd53a299559a3e927b77fd7
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278198649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffe8239a147c666621476db01004e6d525b9a3b0db2deace8861afba2aef3001`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:28:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 08:56:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 10 Nov 2016 08:56:56 GMT
ENV RUBY_MAJOR=2.3
# Thu, 10 Nov 2016 08:56:56 GMT
ENV RUBY_VERSION=2.3.1
# Thu, 10 Nov 2016 08:56:56 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Thu, 10 Nov 2016 08:56:57 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 10 Nov 2016 08:59:22 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 10 Nov 2016 08:59:22 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 10 Nov 2016 08:59:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 10 Nov 2016 08:59:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 10 Nov 2016 08:59:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 10 Nov 2016 08:59:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Nov 2016 08:59:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 10 Nov 2016 08:59:26 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ee139a57774dc3728a4bf9675bc379458093585e42f384852e644b1b272ac`  
		Last Modified: Mon, 07 Nov 2016 22:59:05 GMT  
		Size: 129.8 MB (129808774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741de17843a5a3121190bd9e414fea1ca05c79ee4c390b7ceef1fb6af6b2e9ec`  
		Last Modified: Thu, 10 Nov 2016 08:59:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b91d9bcfd6e990de47ad1735b97845e2f20df3058bfaf13b01ec2d822af49b4`  
		Last Modified: Thu, 10 Nov 2016 08:59:51 GMT  
		Size: 35.4 MB (35393202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4906808c869eaf9a86223e220a2a2680ecdf3e639b330deabb6aaf7f739eed8`  
		Last Modified: Thu, 10 Nov 2016 08:59:40 GMT  
		Size: 612.6 KB (612599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9976164e43fac829993149ea4093681aeaa44f041188ade30dca2b3cf8ebdec`  
		Last Modified: Thu, 10 Nov 2016 08:59:41 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2`

```console
$ docker pull ruby@sha256:a5ebd3bc0bf3881258975f8afa1c6d24429dfd4d7dd53a299559a3e927b77fd7
```

-	Platforms:
	-	linux; amd64

### `ruby:2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278198649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffe8239a147c666621476db01004e6d525b9a3b0db2deace8861afba2aef3001`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:28:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 08:56:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 10 Nov 2016 08:56:56 GMT
ENV RUBY_MAJOR=2.3
# Thu, 10 Nov 2016 08:56:56 GMT
ENV RUBY_VERSION=2.3.1
# Thu, 10 Nov 2016 08:56:56 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Thu, 10 Nov 2016 08:56:57 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 10 Nov 2016 08:59:22 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 10 Nov 2016 08:59:22 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 10 Nov 2016 08:59:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 10 Nov 2016 08:59:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 10 Nov 2016 08:59:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 10 Nov 2016 08:59:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Nov 2016 08:59:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 10 Nov 2016 08:59:26 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ee139a57774dc3728a4bf9675bc379458093585e42f384852e644b1b272ac`  
		Last Modified: Mon, 07 Nov 2016 22:59:05 GMT  
		Size: 129.8 MB (129808774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741de17843a5a3121190bd9e414fea1ca05c79ee4c390b7ceef1fb6af6b2e9ec`  
		Last Modified: Thu, 10 Nov 2016 08:59:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b91d9bcfd6e990de47ad1735b97845e2f20df3058bfaf13b01ec2d822af49b4`  
		Last Modified: Thu, 10 Nov 2016 08:59:51 GMT  
		Size: 35.4 MB (35393202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4906808c869eaf9a86223e220a2a2680ecdf3e639b330deabb6aaf7f739eed8`  
		Last Modified: Thu, 10 Nov 2016 08:59:40 GMT  
		Size: 612.6 KB (612599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9976164e43fac829993149ea4093681aeaa44f041188ade30dca2b3cf8ebdec`  
		Last Modified: Thu, 10 Nov 2016 08:59:41 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:latest`

```console
$ docker pull ruby@sha256:a5ebd3bc0bf3881258975f8afa1c6d24429dfd4d7dd53a299559a3e927b77fd7
```

-	Platforms:
	-	linux; amd64

### `ruby:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278198649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffe8239a147c666621476db01004e6d525b9a3b0db2deace8861afba2aef3001`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:28:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 08:56:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 10 Nov 2016 08:56:56 GMT
ENV RUBY_MAJOR=2.3
# Thu, 10 Nov 2016 08:56:56 GMT
ENV RUBY_VERSION=2.3.1
# Thu, 10 Nov 2016 08:56:56 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Thu, 10 Nov 2016 08:56:57 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 10 Nov 2016 08:59:22 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 10 Nov 2016 08:59:22 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 10 Nov 2016 08:59:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 10 Nov 2016 08:59:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 10 Nov 2016 08:59:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 10 Nov 2016 08:59:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Nov 2016 08:59:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 10 Nov 2016 08:59:26 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ee139a57774dc3728a4bf9675bc379458093585e42f384852e644b1b272ac`  
		Last Modified: Mon, 07 Nov 2016 22:59:05 GMT  
		Size: 129.8 MB (129808774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741de17843a5a3121190bd9e414fea1ca05c79ee4c390b7ceef1fb6af6b2e9ec`  
		Last Modified: Thu, 10 Nov 2016 08:59:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b91d9bcfd6e990de47ad1735b97845e2f20df3058bfaf13b01ec2d822af49b4`  
		Last Modified: Thu, 10 Nov 2016 08:59:51 GMT  
		Size: 35.4 MB (35393202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4906808c869eaf9a86223e220a2a2680ecdf3e639b330deabb6aaf7f739eed8`  
		Last Modified: Thu, 10 Nov 2016 08:59:40 GMT  
		Size: 612.6 KB (612599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9976164e43fac829993149ea4093681aeaa44f041188ade30dca2b3cf8ebdec`  
		Last Modified: Thu, 10 Nov 2016 08:59:41 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.2-slim`

```console
$ docker pull ruby@sha256:f52a173394c709d29a8c8fd7cb26ad96db28705772b907295158d51bb6048636
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.2-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97567814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e109fd4329ef53bddd123ff63c9432708e04d9015e8b2595c6951ceb79224b0`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:15:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:15:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 09 Nov 2016 01:15:28 GMT
ENV RUBY_MAJOR=2.3
# Thu, 17 Nov 2016 23:21:56 GMT
ENV RUBY_VERSION=2.3.2
# Thu, 17 Nov 2016 23:21:56 GMT
ENV RUBY_DOWNLOAD_SHA256=8d7f6ca0f16d77e3d242b24da38985b7539f58dc0da177ec633a83d0c8f5b197
# Thu, 17 Nov 2016 23:21:56 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:24:37 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:24:38 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:24:39 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:24:39 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:24:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:24:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:24:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:24:41 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2a19adcb601ac582ae2b2cec63a8fead8b8eff63c7c73ec8e1c34084b0b971`  
		Last Modified: Wed, 09 Nov 2016 01:18:32 GMT  
		Size: 10.0 MB (9980683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37dcb8e3fe13596bfd392dd2619f6dc9b79fd00aad288ee04f23a2f5a14ffee`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c91b50475b25600ed0f2441da9e18c1db2f99ea36b4292a0129a53a93f93e04`  
		Last Modified: Thu, 17 Nov 2016 23:33:42 GMT  
		Size: 35.6 MB (35617189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af06373e6656a2a8a1f5b37a5322082f3df7bea20c862fe47d12c24a1a53dd15`  
		Last Modified: Thu, 17 Nov 2016 23:33:22 GMT  
		Size: 612.6 KB (612589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0274df3142581e0924b2819e619a50bd26a10ffaa1b6b56326bc2d04fd7b69`  
		Last Modified: Thu, 17 Nov 2016 23:33:21 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-slim`

```console
$ docker pull ruby@sha256:f52a173394c709d29a8c8fd7cb26ad96db28705772b907295158d51bb6048636
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97567814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e109fd4329ef53bddd123ff63c9432708e04d9015e8b2595c6951ceb79224b0`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:15:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:15:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 09 Nov 2016 01:15:28 GMT
ENV RUBY_MAJOR=2.3
# Thu, 17 Nov 2016 23:21:56 GMT
ENV RUBY_VERSION=2.3.2
# Thu, 17 Nov 2016 23:21:56 GMT
ENV RUBY_DOWNLOAD_SHA256=8d7f6ca0f16d77e3d242b24da38985b7539f58dc0da177ec633a83d0c8f5b197
# Thu, 17 Nov 2016 23:21:56 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:24:37 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:24:38 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:24:39 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:24:39 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:24:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:24:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:24:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:24:41 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2a19adcb601ac582ae2b2cec63a8fead8b8eff63c7c73ec8e1c34084b0b971`  
		Last Modified: Wed, 09 Nov 2016 01:18:32 GMT  
		Size: 10.0 MB (9980683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37dcb8e3fe13596bfd392dd2619f6dc9b79fd00aad288ee04f23a2f5a14ffee`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c91b50475b25600ed0f2441da9e18c1db2f99ea36b4292a0129a53a93f93e04`  
		Last Modified: Thu, 17 Nov 2016 23:33:42 GMT  
		Size: 35.6 MB (35617189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af06373e6656a2a8a1f5b37a5322082f3df7bea20c862fe47d12c24a1a53dd15`  
		Last Modified: Thu, 17 Nov 2016 23:33:22 GMT  
		Size: 612.6 KB (612589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0274df3142581e0924b2819e619a50bd26a10ffaa1b6b56326bc2d04fd7b69`  
		Last Modified: Thu, 17 Nov 2016 23:33:21 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-slim`

```console
$ docker pull ruby@sha256:c3456a8e45ff926656b4b6bfc90434ebd8135169fb1d32e153d2c3c10a4b8807
```

-	Platforms:
	-	linux; amd64

### `ruby:2-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97502218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e523958caea8cb2c3d2d4061ca3604916ce3222dc94fcead96db343962e4b8ca`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:15:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:15:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 09 Nov 2016 01:15:28 GMT
ENV RUBY_MAJOR=2.3
# Wed, 09 Nov 2016 01:15:28 GMT
ENV RUBY_VERSION=2.3.1
# Wed, 09 Nov 2016 01:15:29 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 09 Nov 2016 01:15:29 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 09 Nov 2016 01:18:13 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 09 Nov 2016 01:18:13 GMT
ENV BUNDLER_VERSION=1.13.6
# Wed, 09 Nov 2016 01:18:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 09 Nov 2016 01:18:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 09 Nov 2016 01:18:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 09 Nov 2016 01:18:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 01:18:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 09 Nov 2016 01:18:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2a19adcb601ac582ae2b2cec63a8fead8b8eff63c7c73ec8e1c34084b0b971`  
		Last Modified: Wed, 09 Nov 2016 01:18:32 GMT  
		Size: 10.0 MB (9980683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37dcb8e3fe13596bfd392dd2619f6dc9b79fd00aad288ee04f23a2f5a14ffee`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e635357d42cf2c232035218cc1b23d1b53629d18797e3ce09de06d8cd8c5f029`  
		Last Modified: Wed, 09 Nov 2016 01:18:41 GMT  
		Size: 35.6 MB (35551595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382aff325decc08460ec0840ee0ba0b881a1f4b2a99fdfc47dbed16506e98f6d`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 612.6 KB (612587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1fe764fd27438bd01327b892d274296309944b25f1710e35f6f641f1d7b5172`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:slim`

```console
$ docker pull ruby@sha256:c3456a8e45ff926656b4b6bfc90434ebd8135169fb1d32e153d2c3c10a4b8807
```

-	Platforms:
	-	linux; amd64

### `ruby:slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97502218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e523958caea8cb2c3d2d4061ca3604916ce3222dc94fcead96db343962e4b8ca`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:15:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:15:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 09 Nov 2016 01:15:28 GMT
ENV RUBY_MAJOR=2.3
# Wed, 09 Nov 2016 01:15:28 GMT
ENV RUBY_VERSION=2.3.1
# Wed, 09 Nov 2016 01:15:29 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 09 Nov 2016 01:15:29 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 09 Nov 2016 01:18:13 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 09 Nov 2016 01:18:13 GMT
ENV BUNDLER_VERSION=1.13.6
# Wed, 09 Nov 2016 01:18:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 09 Nov 2016 01:18:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 09 Nov 2016 01:18:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 09 Nov 2016 01:18:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 01:18:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 09 Nov 2016 01:18:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2a19adcb601ac582ae2b2cec63a8fead8b8eff63c7c73ec8e1c34084b0b971`  
		Last Modified: Wed, 09 Nov 2016 01:18:32 GMT  
		Size: 10.0 MB (9980683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37dcb8e3fe13596bfd392dd2619f6dc9b79fd00aad288ee04f23a2f5a14ffee`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e635357d42cf2c232035218cc1b23d1b53629d18797e3ce09de06d8cd8c5f029`  
		Last Modified: Wed, 09 Nov 2016 01:18:41 GMT  
		Size: 35.6 MB (35551595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382aff325decc08460ec0840ee0ba0b881a1f4b2a99fdfc47dbed16506e98f6d`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 612.6 KB (612587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1fe764fd27438bd01327b892d274296309944b25f1710e35f6f641f1d7b5172`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.2-alpine`

**does not exist** (yet?)

## `ruby:2.3-alpine`

```console
$ docker pull ruby@sha256:2b6124586ed4084109fab6ced46e48d120c43a5bfcc301c680773818a7192b41
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38701234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f67322bbee5acc76138fdda503a51bbfcdb579c368ae708ed3977b75157d383d`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 22:54:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 18 Oct 2016 22:58:43 GMT
ENV RUBY_MAJOR=2.3
# Thu, 17 Nov 2016 23:24:42 GMT
ENV RUBY_VERSION=2.3.2
# Thu, 17 Nov 2016 23:24:42 GMT
ENV RUBY_DOWNLOAD_SHA256=8d7f6ca0f16d77e3d242b24da38985b7539f58dc0da177ec633a83d0c8f5b197
# Thu, 17 Nov 2016 23:24:42 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:26:50 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:26:50 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:26:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:26:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:26:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:26:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:26:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:26:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6353f0aa4196a8fc633cf2d380738d61dcbf87fd305e5a546ec603b490aa33f0`  
		Last Modified: Tue, 18 Oct 2016 23:02:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55fcfce0e52b8789b94046df9b44e96ac75618effdf257baeceac6d814c6c788`  
		Last Modified: Thu, 17 Nov 2016 23:34:59 GMT  
		Size: 35.8 MB (35775363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a154e2706e0fdc140c36a99b6ed5367a6fdf2a4e438821c3b3b31f203c1373`  
		Last Modified: Thu, 17 Nov 2016 23:34:48 GMT  
		Size: 612.6 KB (612564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e46598291792438e9cdbe05ad0d943647313e539473f99e87bf0787d1aac977`  
		Last Modified: Thu, 17 Nov 2016 23:34:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-alpine`

```console
$ docker pull ruby@sha256:8d5ca285f1a24ed333aad70cfa54157f77ff130f810c91d5664e98a093d751bc
```

-	Platforms:
	-	linux; amd64

### `ruby:2-alpine` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38659103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35562b355c05471aa78ea01399a4a7a7d26d3a49906fe1ad624c8f3c2b1dfce4`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 22:54:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 18 Oct 2016 22:58:43 GMT
ENV RUBY_MAJOR=2.3
# Tue, 18 Oct 2016 22:58:43 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 18 Oct 2016 22:58:43 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 01 Nov 2016 18:22:27 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:24:35 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:24:35 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:24:37 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:24:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:24:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:24:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:24:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:24:39 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6353f0aa4196a8fc633cf2d380738d61dcbf87fd305e5a546ec603b490aa33f0`  
		Last Modified: Tue, 18 Oct 2016 23:02:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7726848fcc90c17fd139837a7e291782928ea857c0cd2d49ff67878703339b4f`  
		Last Modified: Tue, 01 Nov 2016 18:33:37 GMT  
		Size: 35.7 MB (35733243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9bc44c1fee4a6334447a65dc024f2ce15da376ddf1c5819d7f9d093e208fb2`  
		Last Modified: Tue, 01 Nov 2016 18:33:26 GMT  
		Size: 612.6 KB (612553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2565f7b9566cc59d5e8f16c2a8f2c908d9c3c43c5ca70473d985ec47a5330edd`  
		Last Modified: Tue, 01 Nov 2016 18:33:25 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:alpine`

```console
$ docker pull ruby@sha256:8d5ca285f1a24ed333aad70cfa54157f77ff130f810c91d5664e98a093d751bc
```

-	Platforms:
	-	linux; amd64

### `ruby:alpine` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38659103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35562b355c05471aa78ea01399a4a7a7d26d3a49906fe1ad624c8f3c2b1dfce4`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 22:54:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 18 Oct 2016 22:58:43 GMT
ENV RUBY_MAJOR=2.3
# Tue, 18 Oct 2016 22:58:43 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 18 Oct 2016 22:58:43 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 01 Nov 2016 18:22:27 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:24:35 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:24:35 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:24:37 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:24:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:24:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:24:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:24:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:24:39 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6353f0aa4196a8fc633cf2d380738d61dcbf87fd305e5a546ec603b490aa33f0`  
		Last Modified: Tue, 18 Oct 2016 23:02:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7726848fcc90c17fd139837a7e291782928ea857c0cd2d49ff67878703339b4f`  
		Last Modified: Tue, 01 Nov 2016 18:33:37 GMT  
		Size: 35.7 MB (35733243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9bc44c1fee4a6334447a65dc024f2ce15da376ddf1c5819d7f9d093e208fb2`  
		Last Modified: Tue, 01 Nov 2016 18:33:26 GMT  
		Size: 612.6 KB (612553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2565f7b9566cc59d5e8f16c2a8f2c908d9c3c43c5ca70473d985ec47a5330edd`  
		Last Modified: Tue, 01 Nov 2016 18:33:25 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.2-onbuild`

**does not exist** (yet?)

## `ruby:2.3-onbuild`

```console
$ docker pull ruby@sha256:ed95150834f22160bfe53383c0a40541a075a5cc39ac4e8ea539d1da69bf0979
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278198961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea4979ce53fad605f1ac150d4ee7a5c5ca38e4993b9e2558d5a8157bf85b7c4`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:28:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 08:56:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 10 Nov 2016 08:56:56 GMT
ENV RUBY_MAJOR=2.3
# Thu, 10 Nov 2016 08:56:56 GMT
ENV RUBY_VERSION=2.3.1
# Thu, 10 Nov 2016 08:56:56 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Thu, 10 Nov 2016 08:56:57 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 10 Nov 2016 08:59:22 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 10 Nov 2016 08:59:22 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 10 Nov 2016 08:59:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 10 Nov 2016 08:59:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 10 Nov 2016 08:59:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 10 Nov 2016 08:59:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Nov 2016 08:59:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 10 Nov 2016 08:59:26 GMT
CMD ["irb"]
# Thu, 10 Nov 2016 09:00:40 GMT
RUN bundle config --global frozen 1
# Thu, 10 Nov 2016 09:00:41 GMT
RUN mkdir -p /usr/src/app
# Thu, 10 Nov 2016 09:00:42 GMT
WORKDIR /usr/src/app
# Thu, 10 Nov 2016 09:00:42 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Thu, 10 Nov 2016 09:00:43 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Thu, 10 Nov 2016 09:00:43 GMT
ONBUILD RUN bundle install
# Thu, 10 Nov 2016 09:00:43 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ee139a57774dc3728a4bf9675bc379458093585e42f384852e644b1b272ac`  
		Last Modified: Mon, 07 Nov 2016 22:59:05 GMT  
		Size: 129.8 MB (129808774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741de17843a5a3121190bd9e414fea1ca05c79ee4c390b7ceef1fb6af6b2e9ec`  
		Last Modified: Thu, 10 Nov 2016 08:59:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b91d9bcfd6e990de47ad1735b97845e2f20df3058bfaf13b01ec2d822af49b4`  
		Last Modified: Thu, 10 Nov 2016 08:59:51 GMT  
		Size: 35.4 MB (35393202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4906808c869eaf9a86223e220a2a2680ecdf3e639b330deabb6aaf7f739eed8`  
		Last Modified: Thu, 10 Nov 2016 08:59:40 GMT  
		Size: 612.6 KB (612599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9976164e43fac829993149ea4093681aeaa44f041188ade30dca2b3cf8ebdec`  
		Last Modified: Thu, 10 Nov 2016 08:59:41 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed97717b24f9324b11bdd92e3e771b1f3baf287aa7e498fa51a72e89515655d`  
		Last Modified: Thu, 10 Nov 2016 09:00:55 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ca0266ae40ec1eef7968b0c6a300db2c6a4b0479fab73da2ed3559e34c1ad4`  
		Last Modified: Thu, 10 Nov 2016 09:00:56 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-onbuild`

```console
$ docker pull ruby@sha256:a072706fde67f4095222d316c513031c2890b68ef871e74b81dc9ceedd71d810
```

-	Platforms:
	-	linux; amd64

### `ruby:2-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.3 MB (278268155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2731415534344671668eae5037861d921525cf15d9e091574aeb18b8b10e599a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:28:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 08:56:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 10 Nov 2016 08:56:56 GMT
ENV RUBY_MAJOR=2.3
# Thu, 17 Nov 2016 23:19:22 GMT
ENV RUBY_VERSION=2.3.2
# Thu, 17 Nov 2016 23:19:23 GMT
ENV RUBY_DOWNLOAD_SHA256=8d7f6ca0f16d77e3d242b24da38985b7539f58dc0da177ec633a83d0c8f5b197
# Thu, 17 Nov 2016 23:19:23 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:21:51 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:21:52 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:21:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:21:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:21:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:21:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:21:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:21:55 GMT
CMD ["irb"]
# Thu, 17 Nov 2016 23:26:55 GMT
RUN bundle config --global frozen 1
# Thu, 17 Nov 2016 23:26:56 GMT
RUN mkdir -p /usr/src/app
# Thu, 17 Nov 2016 23:26:56 GMT
WORKDIR /usr/src/app
# Thu, 17 Nov 2016 23:26:56 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Thu, 17 Nov 2016 23:26:57 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Thu, 17 Nov 2016 23:26:57 GMT
ONBUILD RUN bundle install
# Thu, 17 Nov 2016 23:26:57 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ee139a57774dc3728a4bf9675bc379458093585e42f384852e644b1b272ac`  
		Last Modified: Mon, 07 Nov 2016 22:59:05 GMT  
		Size: 129.8 MB (129808774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741de17843a5a3121190bd9e414fea1ca05c79ee4c390b7ceef1fb6af6b2e9ec`  
		Last Modified: Thu, 10 Nov 2016 08:59:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fce7072b395bef32de4be044a08c08f066d4b843cd53c6649f2a3bd84b8be`  
		Last Modified: Thu, 17 Nov 2016 23:32:18 GMT  
		Size: 35.5 MB (35462412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb21e656d61c011b7e46b0b00f184f26f44a559ce03807f55fb529c86ef09a6`  
		Last Modified: Thu, 17 Nov 2016 23:32:05 GMT  
		Size: 612.6 KB (612583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38dbc0976e528739b4ddcba04d6e79c9a91c11fb727e1aa04b94021b04616732`  
		Last Modified: Thu, 17 Nov 2016 23:32:05 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f957c621a163704c4e91314940fd7ebbb44bb2f684d4a642af4786578c44ff2`  
		Last Modified: Thu, 17 Nov 2016 23:35:58 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89472a4f9d5ec720bcdc56493adcf4dc3dc508d48bc94100dd1ed3bb8fc7d997`  
		Last Modified: Thu, 17 Nov 2016 23:35:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:onbuild`

```console
$ docker pull ruby@sha256:a072706fde67f4095222d316c513031c2890b68ef871e74b81dc9ceedd71d810
```

-	Platforms:
	-	linux; amd64

### `ruby:onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.3 MB (278268155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2731415534344671668eae5037861d921525cf15d9e091574aeb18b8b10e599a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:28:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 08:56:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 10 Nov 2016 08:56:56 GMT
ENV RUBY_MAJOR=2.3
# Thu, 17 Nov 2016 23:19:22 GMT
ENV RUBY_VERSION=2.3.2
# Thu, 17 Nov 2016 23:19:23 GMT
ENV RUBY_DOWNLOAD_SHA256=8d7f6ca0f16d77e3d242b24da38985b7539f58dc0da177ec633a83d0c8f5b197
# Thu, 17 Nov 2016 23:19:23 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:21:51 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:21:52 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:21:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:21:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:21:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:21:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:21:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:21:55 GMT
CMD ["irb"]
# Thu, 17 Nov 2016 23:26:55 GMT
RUN bundle config --global frozen 1
# Thu, 17 Nov 2016 23:26:56 GMT
RUN mkdir -p /usr/src/app
# Thu, 17 Nov 2016 23:26:56 GMT
WORKDIR /usr/src/app
# Thu, 17 Nov 2016 23:26:56 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Thu, 17 Nov 2016 23:26:57 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Thu, 17 Nov 2016 23:26:57 GMT
ONBUILD RUN bundle install
# Thu, 17 Nov 2016 23:26:57 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ee139a57774dc3728a4bf9675bc379458093585e42f384852e644b1b272ac`  
		Last Modified: Mon, 07 Nov 2016 22:59:05 GMT  
		Size: 129.8 MB (129808774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741de17843a5a3121190bd9e414fea1ca05c79ee4c390b7ceef1fb6af6b2e9ec`  
		Last Modified: Thu, 10 Nov 2016 08:59:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fce7072b395bef32de4be044a08c08f066d4b843cd53c6649f2a3bd84b8be`  
		Last Modified: Thu, 17 Nov 2016 23:32:18 GMT  
		Size: 35.5 MB (35462412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb21e656d61c011b7e46b0b00f184f26f44a559ce03807f55fb529c86ef09a6`  
		Last Modified: Thu, 17 Nov 2016 23:32:05 GMT  
		Size: 612.6 KB (612583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38dbc0976e528739b4ddcba04d6e79c9a91c11fb727e1aa04b94021b04616732`  
		Last Modified: Thu, 17 Nov 2016 23:32:05 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f957c621a163704c4e91314940fd7ebbb44bb2f684d4a642af4786578c44ff2`  
		Last Modified: Thu, 17 Nov 2016 23:35:58 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89472a4f9d5ec720bcdc56493adcf4dc3dc508d48bc94100dd1ed3bb8fc7d997`  
		Last Modified: Thu, 17 Nov 2016 23:35:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
