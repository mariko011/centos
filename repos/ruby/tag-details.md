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
$ docker pull ruby@sha256:cc4ba2f8f575c6874b850d84ef48bca05fe5e3d182d7365a8c117ea90668855f
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.9 MB (275884067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d61c1ab4c8e29ac5a07c3ba00b635e9cbeaf9d2b20ee112932d924f6eaef8ca1`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:44:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 Nov 2016 00:44:44 GMT
ENV RUBY_MAJOR=2.1
# Tue, 01 Nov 2016 00:44:45 GMT
ENV RUBY_VERSION=2.1.10
# Tue, 01 Nov 2016 00:44:45 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Tue, 01 Nov 2016 18:02:54 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:05:14 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:05:14 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:05:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:05:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:05:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:05:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:05:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:05:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da50f5b595a04061bace5651fcd54282e0fbce34fa7d82d7a4f27d80458475f`  
		Last Modified: Tue, 01 Nov 2016 00:52:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff3dfece345b867b16ee8be2b37de72eee3e91d4b8909b5e106af55b9f91b9c`  
		Last Modified: Tue, 01 Nov 2016 18:25:06 GMT  
		Size: 33.1 MB (33069445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8e581336d337df366fa059155a724b3d8e637685a187b3091f4941ebf3428d`  
		Last Modified: Tue, 01 Nov 2016 18:24:55 GMT  
		Size: 612.6 KB (612571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cdf271339625f830f0323fbdd25df191c5c8ced80dc430648c8c79448949432`  
		Last Modified: Tue, 01 Nov 2016 18:24:55 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1`

```console
$ docker pull ruby@sha256:cc4ba2f8f575c6874b850d84ef48bca05fe5e3d182d7365a8c117ea90668855f
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.9 MB (275884067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d61c1ab4c8e29ac5a07c3ba00b635e9cbeaf9d2b20ee112932d924f6eaef8ca1`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:44:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 Nov 2016 00:44:44 GMT
ENV RUBY_MAJOR=2.1
# Tue, 01 Nov 2016 00:44:45 GMT
ENV RUBY_VERSION=2.1.10
# Tue, 01 Nov 2016 00:44:45 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Tue, 01 Nov 2016 18:02:54 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:05:14 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:05:14 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:05:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:05:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:05:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:05:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:05:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:05:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da50f5b595a04061bace5651fcd54282e0fbce34fa7d82d7a4f27d80458475f`  
		Last Modified: Tue, 01 Nov 2016 00:52:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff3dfece345b867b16ee8be2b37de72eee3e91d4b8909b5e106af55b9f91b9c`  
		Last Modified: Tue, 01 Nov 2016 18:25:06 GMT  
		Size: 33.1 MB (33069445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8e581336d337df366fa059155a724b3d8e637685a187b3091f4941ebf3428d`  
		Last Modified: Tue, 01 Nov 2016 18:24:55 GMT  
		Size: 612.6 KB (612571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cdf271339625f830f0323fbdd25df191c5c8ced80dc430648c8c79448949432`  
		Last Modified: Tue, 01 Nov 2016 18:24:55 GMT  
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
$ docker pull ruby@sha256:d7dcd4757671831289946ddb0a27e838cec8e413150adaa8766f34b7da77f85f
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-onbuild` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.9 MB (275884378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf4639ea3d7509c7e9d43f02632acb822599f423ab1dfc0c6b7cfbb43f83dd1e`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:44:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 Nov 2016 00:44:44 GMT
ENV RUBY_MAJOR=2.1
# Tue, 01 Nov 2016 00:44:45 GMT
ENV RUBY_VERSION=2.1.10
# Tue, 01 Nov 2016 00:44:45 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Tue, 01 Nov 2016 18:02:54 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:05:14 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:05:14 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:05:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:05:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:05:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:05:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:05:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:05:18 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 18:10:02 GMT
RUN bundle config --global frozen 1
# Tue, 01 Nov 2016 18:10:03 GMT
RUN mkdir -p /usr/src/app
# Tue, 01 Nov 2016 18:10:03 GMT
WORKDIR /usr/src/app
# Tue, 01 Nov 2016 18:10:03 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 01 Nov 2016 18:10:04 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 01 Nov 2016 18:10:04 GMT
ONBUILD RUN bundle install
# Tue, 01 Nov 2016 18:10:05 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da50f5b595a04061bace5651fcd54282e0fbce34fa7d82d7a4f27d80458475f`  
		Last Modified: Tue, 01 Nov 2016 00:52:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff3dfece345b867b16ee8be2b37de72eee3e91d4b8909b5e106af55b9f91b9c`  
		Last Modified: Tue, 01 Nov 2016 18:25:06 GMT  
		Size: 33.1 MB (33069445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8e581336d337df366fa059155a724b3d8e637685a187b3091f4941ebf3428d`  
		Last Modified: Tue, 01 Nov 2016 18:24:55 GMT  
		Size: 612.6 KB (612571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cdf271339625f830f0323fbdd25df191c5c8ced80dc430648c8c79448949432`  
		Last Modified: Tue, 01 Nov 2016 18:24:55 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2326a6c1096978ceaa11824222f95d3126a50d5d47c8c75a9ac85e1d790d586d`  
		Last Modified: Tue, 01 Nov 2016 18:27:52 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5145fbefcb1a54e31589a2af340b3ff99710fcd627ae3fe8451db675b4b5a048`  
		Last Modified: Tue, 01 Nov 2016 18:27:52 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-onbuild`

```console
$ docker pull ruby@sha256:d7dcd4757671831289946ddb0a27e838cec8e413150adaa8766f34b7da77f85f
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-onbuild` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.9 MB (275884378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf4639ea3d7509c7e9d43f02632acb822599f423ab1dfc0c6b7cfbb43f83dd1e`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:44:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 Nov 2016 00:44:44 GMT
ENV RUBY_MAJOR=2.1
# Tue, 01 Nov 2016 00:44:45 GMT
ENV RUBY_VERSION=2.1.10
# Tue, 01 Nov 2016 00:44:45 GMT
ENV RUBY_DOWNLOAD_SHA256=fb2e454d7a5e5a39eb54db0ec666f53eeb6edc593d1d2b970ae4d150b831dd20
# Tue, 01 Nov 2016 18:02:54 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:05:14 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:05:14 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:05:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:05:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:05:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:05:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:05:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:05:18 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 18:10:02 GMT
RUN bundle config --global frozen 1
# Tue, 01 Nov 2016 18:10:03 GMT
RUN mkdir -p /usr/src/app
# Tue, 01 Nov 2016 18:10:03 GMT
WORKDIR /usr/src/app
# Tue, 01 Nov 2016 18:10:03 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 01 Nov 2016 18:10:04 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 01 Nov 2016 18:10:04 GMT
ONBUILD RUN bundle install
# Tue, 01 Nov 2016 18:10:05 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da50f5b595a04061bace5651fcd54282e0fbce34fa7d82d7a4f27d80458475f`  
		Last Modified: Tue, 01 Nov 2016 00:52:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff3dfece345b867b16ee8be2b37de72eee3e91d4b8909b5e106af55b9f91b9c`  
		Last Modified: Tue, 01 Nov 2016 18:25:06 GMT  
		Size: 33.1 MB (33069445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8e581336d337df366fa059155a724b3d8e637685a187b3091f4941ebf3428d`  
		Last Modified: Tue, 01 Nov 2016 18:24:55 GMT  
		Size: 612.6 KB (612571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cdf271339625f830f0323fbdd25df191c5c8ced80dc430648c8c79448949432`  
		Last Modified: Tue, 01 Nov 2016 18:24:55 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2326a6c1096978ceaa11824222f95d3126a50d5d47c8c75a9ac85e1d790d586d`  
		Last Modified: Tue, 01 Nov 2016 18:27:52 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5145fbefcb1a54e31589a2af340b3ff99710fcd627ae3fe8451db675b4b5a048`  
		Last Modified: Tue, 01 Nov 2016 18:27:52 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.5`

```console
$ docker pull ruby@sha256:6fea836efd261bf4a43936b45980fc8adcab582701484d3a600b5992c38c9192
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.5` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.4 MB (276398806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914ea3564f437d48586e6a22eb3e65bf49c396f1619a107991df718036873798`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:44:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 Nov 2016 00:47:22 GMT
ENV RUBY_MAJOR=2.2
# Tue, 01 Nov 2016 00:47:22 GMT
ENV RUBY_VERSION=2.2.5
# Tue, 01 Nov 2016 00:47:23 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 01 Nov 2016 18:10:05 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:12:23 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:12:24 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:12:25 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:12:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:12:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:12:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:12:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:12:27 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da50f5b595a04061bace5651fcd54282e0fbce34fa7d82d7a4f27d80458475f`  
		Last Modified: Tue, 01 Nov 2016 00:52:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10adff43f41488da5a9a84b4419cacc2857eb5f6147ef1e5fbaa7b5b2481b3e0`  
		Last Modified: Tue, 01 Nov 2016 18:28:32 GMT  
		Size: 33.6 MB (33584189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2de992139534bafd89f2acafa88211893957c011be4a41861d977979abca8a`  
		Last Modified: Tue, 01 Nov 2016 18:28:22 GMT  
		Size: 612.6 KB (612566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b4aa7e34e3d262ab4cbe7420752cfb39fcb1d07ab4caf53f8ab358b616f27a`  
		Last Modified: Tue, 01 Nov 2016 18:28:20 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2`

```console
$ docker pull ruby@sha256:6fea836efd261bf4a43936b45980fc8adcab582701484d3a600b5992c38c9192
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.4 MB (276398806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914ea3564f437d48586e6a22eb3e65bf49c396f1619a107991df718036873798`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:44:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 Nov 2016 00:47:22 GMT
ENV RUBY_MAJOR=2.2
# Tue, 01 Nov 2016 00:47:22 GMT
ENV RUBY_VERSION=2.2.5
# Tue, 01 Nov 2016 00:47:23 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 01 Nov 2016 18:10:05 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:12:23 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:12:24 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:12:25 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:12:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:12:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:12:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:12:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:12:27 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da50f5b595a04061bace5651fcd54282e0fbce34fa7d82d7a4f27d80458475f`  
		Last Modified: Tue, 01 Nov 2016 00:52:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10adff43f41488da5a9a84b4419cacc2857eb5f6147ef1e5fbaa7b5b2481b3e0`  
		Last Modified: Tue, 01 Nov 2016 18:28:32 GMT  
		Size: 33.6 MB (33584189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2de992139534bafd89f2acafa88211893957c011be4a41861d977979abca8a`  
		Last Modified: Tue, 01 Nov 2016 18:28:22 GMT  
		Size: 612.6 KB (612566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b4aa7e34e3d262ab4cbe7420752cfb39fcb1d07ab4caf53f8ab358b616f27a`  
		Last Modified: Tue, 01 Nov 2016 18:28:20 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.5-slim`

```console
$ docker pull ruby@sha256:7c494fe64184c00cee8f2fbb765301760ba06b82c29994cc1f7ff9f71133ae7a
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.5-slim` - linux; amd64

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

## `ruby:2.2.5-alpine`

```console
$ docker pull ruby@sha256:31bc9513a9774829c9278b7b0dbde737b75e946e9fa46ce4a696a7c9e86f5f57
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.5-alpine` - linux; amd64

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

## `ruby:2.2.5-onbuild`

```console
$ docker pull ruby@sha256:3b928bfc70c4433eb1a0c6d605b2c401fdb0d3738ab9a5cebaaca52d441c809a
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.5-onbuild` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.4 MB (276399116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e728a5b083d4c1b2e5165fb614801314efad40c30e204295545e44acf7dfd1b6`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:44:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 Nov 2016 00:47:22 GMT
ENV RUBY_MAJOR=2.2
# Tue, 01 Nov 2016 00:47:22 GMT
ENV RUBY_VERSION=2.2.5
# Tue, 01 Nov 2016 00:47:23 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 01 Nov 2016 18:10:05 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:12:23 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:12:24 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:12:25 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:12:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:12:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:12:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:12:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:12:27 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 18:17:09 GMT
RUN bundle config --global frozen 1
# Tue, 01 Nov 2016 18:17:10 GMT
RUN mkdir -p /usr/src/app
# Tue, 01 Nov 2016 18:17:10 GMT
WORKDIR /usr/src/app
# Tue, 01 Nov 2016 18:17:10 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 01 Nov 2016 18:17:11 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 01 Nov 2016 18:17:11 GMT
ONBUILD RUN bundle install
# Tue, 01 Nov 2016 18:17:11 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da50f5b595a04061bace5651fcd54282e0fbce34fa7d82d7a4f27d80458475f`  
		Last Modified: Tue, 01 Nov 2016 00:52:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10adff43f41488da5a9a84b4419cacc2857eb5f6147ef1e5fbaa7b5b2481b3e0`  
		Last Modified: Tue, 01 Nov 2016 18:28:32 GMT  
		Size: 33.6 MB (33584189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2de992139534bafd89f2acafa88211893957c011be4a41861d977979abca8a`  
		Last Modified: Tue, 01 Nov 2016 18:28:22 GMT  
		Size: 612.6 KB (612566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b4aa7e34e3d262ab4cbe7420752cfb39fcb1d07ab4caf53f8ab358b616f27a`  
		Last Modified: Tue, 01 Nov 2016 18:28:20 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55149c83c780a469d0f8645ca5f721273c931788058499730e91742ec3476f41`  
		Last Modified: Tue, 01 Nov 2016 18:30:32 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154e563e588109cb54452bedddde246265372ed02cacef3cc60aec149d3b3287`  
		Last Modified: Tue, 01 Nov 2016 18:30:31 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-onbuild`

```console
$ docker pull ruby@sha256:3b928bfc70c4433eb1a0c6d605b2c401fdb0d3738ab9a5cebaaca52d441c809a
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-onbuild` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.4 MB (276399116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e728a5b083d4c1b2e5165fb614801314efad40c30e204295545e44acf7dfd1b6`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:44:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 Nov 2016 00:47:22 GMT
ENV RUBY_MAJOR=2.2
# Tue, 01 Nov 2016 00:47:22 GMT
ENV RUBY_VERSION=2.2.5
# Tue, 01 Nov 2016 00:47:23 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 01 Nov 2016 18:10:05 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:12:23 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:12:24 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:12:25 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:12:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:12:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:12:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:12:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:12:27 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 18:17:09 GMT
RUN bundle config --global frozen 1
# Tue, 01 Nov 2016 18:17:10 GMT
RUN mkdir -p /usr/src/app
# Tue, 01 Nov 2016 18:17:10 GMT
WORKDIR /usr/src/app
# Tue, 01 Nov 2016 18:17:10 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 01 Nov 2016 18:17:11 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 01 Nov 2016 18:17:11 GMT
ONBUILD RUN bundle install
# Tue, 01 Nov 2016 18:17:11 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da50f5b595a04061bace5651fcd54282e0fbce34fa7d82d7a4f27d80458475f`  
		Last Modified: Tue, 01 Nov 2016 00:52:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10adff43f41488da5a9a84b4419cacc2857eb5f6147ef1e5fbaa7b5b2481b3e0`  
		Last Modified: Tue, 01 Nov 2016 18:28:32 GMT  
		Size: 33.6 MB (33584189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2de992139534bafd89f2acafa88211893957c011be4a41861d977979abca8a`  
		Last Modified: Tue, 01 Nov 2016 18:28:22 GMT  
		Size: 612.6 KB (612566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b4aa7e34e3d262ab4cbe7420752cfb39fcb1d07ab4caf53f8ab358b616f27a`  
		Last Modified: Tue, 01 Nov 2016 18:28:20 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55149c83c780a469d0f8645ca5f721273c931788058499730e91742ec3476f41`  
		Last Modified: Tue, 01 Nov 2016 18:30:32 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154e563e588109cb54452bedddde246265372ed02cacef3cc60aec149d3b3287`  
		Last Modified: Tue, 01 Nov 2016 18:30:31 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.1`

```console
$ docker pull ruby@sha256:04377bb2f84a56c431d58b9c18964bd897eb4c564744af124f9aaf8e194f01f1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.1` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278198711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f865c7d10eb4848e64a8d2298348f86fcb0f3ec1283a91df6964288bb8bad5dc`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:44:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_MAJOR=2.3
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 01 Nov 2016 00:50:02 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 01 Nov 2016 18:17:12 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:19:38 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:19:38 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:19:39 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:19:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:19:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:19:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:19:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:19:41 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da50f5b595a04061bace5651fcd54282e0fbce34fa7d82d7a4f27d80458475f`  
		Last Modified: Tue, 01 Nov 2016 00:52:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b09906dc96233cb1b2a3fd715ce6922c3f18ccab460002e33b6cd93c34a518`  
		Last Modified: Tue, 01 Nov 2016 18:31:15 GMT  
		Size: 35.4 MB (35384070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e393cc0204dc1c2d5987b89f196c87f15f3bc35a4d2328690ccc64eb693cc0`  
		Last Modified: Tue, 01 Nov 2016 18:31:02 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad1179936bb898addf94f3555ffba238919583b350e429a540f0f105a6ac31e`  
		Last Modified: Tue, 01 Nov 2016 18:31:02 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3`

```console
$ docker pull ruby@sha256:04377bb2f84a56c431d58b9c18964bd897eb4c564744af124f9aaf8e194f01f1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278198711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f865c7d10eb4848e64a8d2298348f86fcb0f3ec1283a91df6964288bb8bad5dc`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:44:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_MAJOR=2.3
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 01 Nov 2016 00:50:02 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 01 Nov 2016 18:17:12 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:19:38 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:19:38 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:19:39 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:19:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:19:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:19:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:19:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:19:41 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da50f5b595a04061bace5651fcd54282e0fbce34fa7d82d7a4f27d80458475f`  
		Last Modified: Tue, 01 Nov 2016 00:52:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b09906dc96233cb1b2a3fd715ce6922c3f18ccab460002e33b6cd93c34a518`  
		Last Modified: Tue, 01 Nov 2016 18:31:15 GMT  
		Size: 35.4 MB (35384070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e393cc0204dc1c2d5987b89f196c87f15f3bc35a4d2328690ccc64eb693cc0`  
		Last Modified: Tue, 01 Nov 2016 18:31:02 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad1179936bb898addf94f3555ffba238919583b350e429a540f0f105a6ac31e`  
		Last Modified: Tue, 01 Nov 2016 18:31:02 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2`

```console
$ docker pull ruby@sha256:04377bb2f84a56c431d58b9c18964bd897eb4c564744af124f9aaf8e194f01f1
```

-	Platforms:
	-	linux; amd64

### `ruby:2` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278198711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f865c7d10eb4848e64a8d2298348f86fcb0f3ec1283a91df6964288bb8bad5dc`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:44:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_MAJOR=2.3
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 01 Nov 2016 00:50:02 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 01 Nov 2016 18:17:12 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:19:38 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:19:38 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:19:39 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:19:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:19:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:19:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:19:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:19:41 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da50f5b595a04061bace5651fcd54282e0fbce34fa7d82d7a4f27d80458475f`  
		Last Modified: Tue, 01 Nov 2016 00:52:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b09906dc96233cb1b2a3fd715ce6922c3f18ccab460002e33b6cd93c34a518`  
		Last Modified: Tue, 01 Nov 2016 18:31:15 GMT  
		Size: 35.4 MB (35384070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e393cc0204dc1c2d5987b89f196c87f15f3bc35a4d2328690ccc64eb693cc0`  
		Last Modified: Tue, 01 Nov 2016 18:31:02 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad1179936bb898addf94f3555ffba238919583b350e429a540f0f105a6ac31e`  
		Last Modified: Tue, 01 Nov 2016 18:31:02 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:latest`

```console
$ docker pull ruby@sha256:04377bb2f84a56c431d58b9c18964bd897eb4c564744af124f9aaf8e194f01f1
```

-	Platforms:
	-	linux; amd64

### `ruby:latest` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278198711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f865c7d10eb4848e64a8d2298348f86fcb0f3ec1283a91df6964288bb8bad5dc`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:44:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_MAJOR=2.3
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 01 Nov 2016 00:50:02 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 01 Nov 2016 18:17:12 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:19:38 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:19:38 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:19:39 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:19:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:19:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:19:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:19:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:19:41 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da50f5b595a04061bace5651fcd54282e0fbce34fa7d82d7a4f27d80458475f`  
		Last Modified: Tue, 01 Nov 2016 00:52:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b09906dc96233cb1b2a3fd715ce6922c3f18ccab460002e33b6cd93c34a518`  
		Last Modified: Tue, 01 Nov 2016 18:31:15 GMT  
		Size: 35.4 MB (35384070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e393cc0204dc1c2d5987b89f196c87f15f3bc35a4d2328690ccc64eb693cc0`  
		Last Modified: Tue, 01 Nov 2016 18:31:02 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad1179936bb898addf94f3555ffba238919583b350e429a540f0f105a6ac31e`  
		Last Modified: Tue, 01 Nov 2016 18:31:02 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.1-slim`

```console
$ docker pull ruby@sha256:c3456a8e45ff926656b4b6bfc90434ebd8135169fb1d32e153d2c3c10a4b8807
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.1-slim` - linux; amd64

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

## `ruby:2.3-slim`

```console
$ docker pull ruby@sha256:c3456a8e45ff926656b4b6bfc90434ebd8135169fb1d32e153d2c3c10a4b8807
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-slim` - linux; amd64

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

## `ruby:2.3.1-alpine`

```console
$ docker pull ruby@sha256:8d5ca285f1a24ed333aad70cfa54157f77ff130f810c91d5664e98a093d751bc
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.1-alpine` - linux; amd64

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

## `ruby:2.3-alpine`

```console
$ docker pull ruby@sha256:8d5ca285f1a24ed333aad70cfa54157f77ff130f810c91d5664e98a093d751bc
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-alpine` - linux; amd64

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

## `ruby:2.3.1-onbuild`

```console
$ docker pull ruby@sha256:df3ce8e9644be30696f03ab92a65c1d4f6a17dd8b36a8652ee6cb765eb60ba67
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.1-onbuild` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278199021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaf052c69b31c03fb567d8eb946b56befbef40db2366ad219b5fd141a63cbc48`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:44:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_MAJOR=2.3
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 01 Nov 2016 00:50:02 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 01 Nov 2016 18:17:12 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:19:38 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:19:38 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:19:39 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:19:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:19:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:19:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:19:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:19:41 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 18:24:40 GMT
RUN bundle config --global frozen 1
# Tue, 01 Nov 2016 18:24:41 GMT
RUN mkdir -p /usr/src/app
# Tue, 01 Nov 2016 18:24:42 GMT
WORKDIR /usr/src/app
# Tue, 01 Nov 2016 18:24:42 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 01 Nov 2016 18:24:42 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 01 Nov 2016 18:24:43 GMT
ONBUILD RUN bundle install
# Tue, 01 Nov 2016 18:24:43 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da50f5b595a04061bace5651fcd54282e0fbce34fa7d82d7a4f27d80458475f`  
		Last Modified: Tue, 01 Nov 2016 00:52:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b09906dc96233cb1b2a3fd715ce6922c3f18ccab460002e33b6cd93c34a518`  
		Last Modified: Tue, 01 Nov 2016 18:31:15 GMT  
		Size: 35.4 MB (35384070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e393cc0204dc1c2d5987b89f196c87f15f3bc35a4d2328690ccc64eb693cc0`  
		Last Modified: Tue, 01 Nov 2016 18:31:02 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad1179936bb898addf94f3555ffba238919583b350e429a540f0f105a6ac31e`  
		Last Modified: Tue, 01 Nov 2016 18:31:02 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f972f048c56d7473219b34a71943e1fdcc543357210b4a61de5c52f38e8840b`  
		Last Modified: Tue, 01 Nov 2016 18:34:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0ba7d24274959a3861769e4d4089b361f19c0c74fd610cff53cc2455dce47e`  
		Last Modified: Tue, 01 Nov 2016 18:34:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-onbuild`

```console
$ docker pull ruby@sha256:df3ce8e9644be30696f03ab92a65c1d4f6a17dd8b36a8652ee6cb765eb60ba67
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-onbuild` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278199021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaf052c69b31c03fb567d8eb946b56befbef40db2366ad219b5fd141a63cbc48`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:44:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_MAJOR=2.3
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 01 Nov 2016 00:50:02 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 01 Nov 2016 18:17:12 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:19:38 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:19:38 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:19:39 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:19:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:19:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:19:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:19:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:19:41 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 18:24:40 GMT
RUN bundle config --global frozen 1
# Tue, 01 Nov 2016 18:24:41 GMT
RUN mkdir -p /usr/src/app
# Tue, 01 Nov 2016 18:24:42 GMT
WORKDIR /usr/src/app
# Tue, 01 Nov 2016 18:24:42 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 01 Nov 2016 18:24:42 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 01 Nov 2016 18:24:43 GMT
ONBUILD RUN bundle install
# Tue, 01 Nov 2016 18:24:43 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da50f5b595a04061bace5651fcd54282e0fbce34fa7d82d7a4f27d80458475f`  
		Last Modified: Tue, 01 Nov 2016 00:52:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b09906dc96233cb1b2a3fd715ce6922c3f18ccab460002e33b6cd93c34a518`  
		Last Modified: Tue, 01 Nov 2016 18:31:15 GMT  
		Size: 35.4 MB (35384070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e393cc0204dc1c2d5987b89f196c87f15f3bc35a4d2328690ccc64eb693cc0`  
		Last Modified: Tue, 01 Nov 2016 18:31:02 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad1179936bb898addf94f3555ffba238919583b350e429a540f0f105a6ac31e`  
		Last Modified: Tue, 01 Nov 2016 18:31:02 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f972f048c56d7473219b34a71943e1fdcc543357210b4a61de5c52f38e8840b`  
		Last Modified: Tue, 01 Nov 2016 18:34:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0ba7d24274959a3861769e4d4089b361f19c0c74fd610cff53cc2455dce47e`  
		Last Modified: Tue, 01 Nov 2016 18:34:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-onbuild`

```console
$ docker pull ruby@sha256:df3ce8e9644be30696f03ab92a65c1d4f6a17dd8b36a8652ee6cb765eb60ba67
```

-	Platforms:
	-	linux; amd64

### `ruby:2-onbuild` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278199021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaf052c69b31c03fb567d8eb946b56befbef40db2366ad219b5fd141a63cbc48`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:44:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_MAJOR=2.3
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 01 Nov 2016 00:50:02 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 01 Nov 2016 18:17:12 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:19:38 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:19:38 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:19:39 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:19:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:19:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:19:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:19:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:19:41 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 18:24:40 GMT
RUN bundle config --global frozen 1
# Tue, 01 Nov 2016 18:24:41 GMT
RUN mkdir -p /usr/src/app
# Tue, 01 Nov 2016 18:24:42 GMT
WORKDIR /usr/src/app
# Tue, 01 Nov 2016 18:24:42 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 01 Nov 2016 18:24:42 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 01 Nov 2016 18:24:43 GMT
ONBUILD RUN bundle install
# Tue, 01 Nov 2016 18:24:43 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da50f5b595a04061bace5651fcd54282e0fbce34fa7d82d7a4f27d80458475f`  
		Last Modified: Tue, 01 Nov 2016 00:52:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b09906dc96233cb1b2a3fd715ce6922c3f18ccab460002e33b6cd93c34a518`  
		Last Modified: Tue, 01 Nov 2016 18:31:15 GMT  
		Size: 35.4 MB (35384070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e393cc0204dc1c2d5987b89f196c87f15f3bc35a4d2328690ccc64eb693cc0`  
		Last Modified: Tue, 01 Nov 2016 18:31:02 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad1179936bb898addf94f3555ffba238919583b350e429a540f0f105a6ac31e`  
		Last Modified: Tue, 01 Nov 2016 18:31:02 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f972f048c56d7473219b34a71943e1fdcc543357210b4a61de5c52f38e8840b`  
		Last Modified: Tue, 01 Nov 2016 18:34:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0ba7d24274959a3861769e4d4089b361f19c0c74fd610cff53cc2455dce47e`  
		Last Modified: Tue, 01 Nov 2016 18:34:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:onbuild`

```console
$ docker pull ruby@sha256:df3ce8e9644be30696f03ab92a65c1d4f6a17dd8b36a8652ee6cb765eb60ba67
```

-	Platforms:
	-	linux; amd64

### `ruby:onbuild` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278199021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaf052c69b31c03fb567d8eb946b56befbef40db2366ad219b5fd141a63cbc48`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:44:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_MAJOR=2.3
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 01 Nov 2016 00:50:02 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 01 Nov 2016 18:17:12 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:19:38 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:19:38 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:19:39 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:19:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:19:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:19:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:19:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:19:41 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 18:24:40 GMT
RUN bundle config --global frozen 1
# Tue, 01 Nov 2016 18:24:41 GMT
RUN mkdir -p /usr/src/app
# Tue, 01 Nov 2016 18:24:42 GMT
WORKDIR /usr/src/app
# Tue, 01 Nov 2016 18:24:42 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 01 Nov 2016 18:24:42 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 01 Nov 2016 18:24:43 GMT
ONBUILD RUN bundle install
# Tue, 01 Nov 2016 18:24:43 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da50f5b595a04061bace5651fcd54282e0fbce34fa7d82d7a4f27d80458475f`  
		Last Modified: Tue, 01 Nov 2016 00:52:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b09906dc96233cb1b2a3fd715ce6922c3f18ccab460002e33b6cd93c34a518`  
		Last Modified: Tue, 01 Nov 2016 18:31:15 GMT  
		Size: 35.4 MB (35384070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e393cc0204dc1c2d5987b89f196c87f15f3bc35a4d2328690ccc64eb693cc0`  
		Last Modified: Tue, 01 Nov 2016 18:31:02 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad1179936bb898addf94f3555ffba238919583b350e429a540f0f105a6ac31e`  
		Last Modified: Tue, 01 Nov 2016 18:31:02 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f972f048c56d7473219b34a71943e1fdcc543357210b4a61de5c52f38e8840b`  
		Last Modified: Tue, 01 Nov 2016 18:34:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0ba7d24274959a3861769e4d4089b361f19c0c74fd610cff53cc2455dce47e`  
		Last Modified: Tue, 01 Nov 2016 18:34:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
