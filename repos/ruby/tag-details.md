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
$ docker pull ruby@sha256:0c309f4cc4bd71a4d7c9119d75822935e59c9fa683b551f2620983fcb9ee1ab9
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.5 MB (275486702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ddb39d8c515e982e10ebeab134dae4a46e7544a52c9641cb209b4f08314cfbe`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:12:32 GMT
ENV RUBY_MAJOR=2.1
# Tue, 28 Feb 2017 23:12:32 GMT
ENV RUBY_VERSION=2.1.10
# Tue, 28 Feb 2017 23:12:33 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Tue, 28 Feb 2017 23:12:33 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Tue, 28 Feb 2017 23:14:44 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:19:15 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:19:19 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:19:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:19:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:19:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168cf3f33330209b5d659614bc0f85b33bdec178d185d6a9e439e98e2d1a3a95`  
		Last Modified: Thu, 02 Mar 2017 04:03:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d32f96a57084e4f43f051d96a6d1100a290c228ec78287526853765408beac`  
		Last Modified: Thu, 02 Mar 2017 04:03:24 GMT  
		Size: 32.6 MB (32594723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed36c993e28121de13999c5c68e155cfa79fa0a1be1eecd495b848f65494e8c5`  
		Last Modified: Tue, 07 Mar 2017 01:21:32 GMT  
		Size: 638.1 KB (638118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06edba979c7e17ad90817e04e91a90498499928925fb3f17883d47a6fc72a03`  
		Last Modified: Tue, 07 Mar 2017 01:21:31 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1`

```console
$ docker pull ruby@sha256:0c309f4cc4bd71a4d7c9119d75822935e59c9fa683b551f2620983fcb9ee1ab9
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.5 MB (275486702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ddb39d8c515e982e10ebeab134dae4a46e7544a52c9641cb209b4f08314cfbe`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:12:32 GMT
ENV RUBY_MAJOR=2.1
# Tue, 28 Feb 2017 23:12:32 GMT
ENV RUBY_VERSION=2.1.10
# Tue, 28 Feb 2017 23:12:33 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Tue, 28 Feb 2017 23:12:33 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Tue, 28 Feb 2017 23:14:44 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:19:15 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:19:19 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:19:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:19:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:19:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168cf3f33330209b5d659614bc0f85b33bdec178d185d6a9e439e98e2d1a3a95`  
		Last Modified: Thu, 02 Mar 2017 04:03:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d32f96a57084e4f43f051d96a6d1100a290c228ec78287526853765408beac`  
		Last Modified: Thu, 02 Mar 2017 04:03:24 GMT  
		Size: 32.6 MB (32594723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed36c993e28121de13999c5c68e155cfa79fa0a1be1eecd495b848f65494e8c5`  
		Last Modified: Tue, 07 Mar 2017 01:21:32 GMT  
		Size: 638.1 KB (638118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06edba979c7e17ad90817e04e91a90498499928925fb3f17883d47a6fc72a03`  
		Last Modified: Tue, 07 Mar 2017 01:21:31 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-slim`

```console
$ docker pull ruby@sha256:8aaa633d599924a94b31aadeb0f55127deae8c9810d594a5ae6e90d49e001f9e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.8 MB (94750845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e7f5dc360acf4b8669ee7d72c44bf01bb6c82ba1fdead891b6b9500e20a83b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 23:09:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:09:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:14:53 GMT
ENV RUBY_MAJOR=2.1
# Tue, 28 Feb 2017 23:14:53 GMT
ENV RUBY_VERSION=2.1.10
# Tue, 28 Feb 2017 23:14:53 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Tue, 28 Feb 2017 23:14:54 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Tue, 28 Feb 2017 23:17:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:19:23 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:19:27 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:19:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:19:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:19:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55881edebdb6880f6747845ebd8adcadd073651f9f6805e1ce0c7ba81b909e59`  
		Last Modified: Thu, 02 Mar 2017 04:04:49 GMT  
		Size: 10.0 MB (9995180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8151a8527e142cb1a2efc8dff342a57def4131549650b52e65ae88a1d9abe7`  
		Last Modified: Thu, 02 Mar 2017 04:04:43 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ac9d1c062d1fd415019a55490b93b21711dd724413fc48fe6ec2c283a7b178`  
		Last Modified: Thu, 02 Mar 2017 04:04:58 GMT  
		Size: 32.8 MB (32753821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ca4c071d13968ed039dd88bb56152e29682d721c7c1dd1ff883a537f807b05`  
		Last Modified: Tue, 07 Mar 2017 01:22:13 GMT  
		Size: 638.1 KB (638105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2b13879c10655793e16b8ee207c120483e118d8aad443a390fbddc4462a1ec`  
		Last Modified: Tue, 07 Mar 2017 01:22:12 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-slim`

```console
$ docker pull ruby@sha256:8aaa633d599924a94b31aadeb0f55127deae8c9810d594a5ae6e90d49e001f9e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.8 MB (94750845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e7f5dc360acf4b8669ee7d72c44bf01bb6c82ba1fdead891b6b9500e20a83b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 23:09:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:09:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:14:53 GMT
ENV RUBY_MAJOR=2.1
# Tue, 28 Feb 2017 23:14:53 GMT
ENV RUBY_VERSION=2.1.10
# Tue, 28 Feb 2017 23:14:53 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Tue, 28 Feb 2017 23:14:54 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Tue, 28 Feb 2017 23:17:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:19:23 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:19:27 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:19:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:19:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:19:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55881edebdb6880f6747845ebd8adcadd073651f9f6805e1ce0c7ba81b909e59`  
		Last Modified: Thu, 02 Mar 2017 04:04:49 GMT  
		Size: 10.0 MB (9995180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8151a8527e142cb1a2efc8dff342a57def4131549650b52e65ae88a1d9abe7`  
		Last Modified: Thu, 02 Mar 2017 04:04:43 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ac9d1c062d1fd415019a55490b93b21711dd724413fc48fe6ec2c283a7b178`  
		Last Modified: Thu, 02 Mar 2017 04:04:58 GMT  
		Size: 32.8 MB (32753821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ca4c071d13968ed039dd88bb56152e29682d721c7c1dd1ff883a537f807b05`  
		Last Modified: Tue, 07 Mar 2017 01:22:13 GMT  
		Size: 638.1 KB (638105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2b13879c10655793e16b8ee207c120483e118d8aad443a390fbddc4462a1ec`  
		Last Modified: Tue, 07 Mar 2017 01:22:12 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-alpine`

```console
$ docker pull ruby@sha256:d3a13e12294406c1eb8c66214fe2b26ce1db20df87db4d7df8b88fd398faf27c
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35645390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8fb07050ae41a155141ee6ce2b7ffe79fa3fe487ca6028de1788c17b8ad2acd`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:33:58 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 03 Mar 2017 23:36:39 GMT
ENV RUBY_MAJOR=2.1
# Fri, 03 Mar 2017 23:36:39 GMT
ENV RUBY_VERSION=2.1.10
# Fri, 03 Mar 2017 23:36:39 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Fri, 03 Mar 2017 23:36:40 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 03 Mar 2017 23:38:41 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:19:31 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:19:34 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:19:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:19:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:19:38 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb3cefb04d0b40438da21681cf124e61adc2d5cf6c9cca6aba2806da7c7c599`  
		Last Modified: Sat, 04 Mar 2017 05:51:37 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060a9d4b4dcb765c5e3bfaec606abdabaef8eb1b447e7b3424ecba55e7637239`  
		Last Modified: Sat, 04 Mar 2017 05:52:32 GMT  
		Size: 32.7 MB (32693550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734bc634648512c9b45bc91810b572648dbcc33ce95e6dab023f51eff31ed127`  
		Last Modified: Tue, 07 Mar 2017 01:22:54 GMT  
		Size: 638.1 KB (638105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc47bc00d32f38f9ff9d48e77c8256569782c029128cd59600093281d0bfe9a`  
		Last Modified: Tue, 07 Mar 2017 01:22:53 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-alpine`

```console
$ docker pull ruby@sha256:d3a13e12294406c1eb8c66214fe2b26ce1db20df87db4d7df8b88fd398faf27c
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35645390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8fb07050ae41a155141ee6ce2b7ffe79fa3fe487ca6028de1788c17b8ad2acd`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:33:58 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 03 Mar 2017 23:36:39 GMT
ENV RUBY_MAJOR=2.1
# Fri, 03 Mar 2017 23:36:39 GMT
ENV RUBY_VERSION=2.1.10
# Fri, 03 Mar 2017 23:36:39 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Fri, 03 Mar 2017 23:36:40 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 03 Mar 2017 23:38:41 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:19:31 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:19:34 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:19:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:19:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:19:38 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb3cefb04d0b40438da21681cf124e61adc2d5cf6c9cca6aba2806da7c7c599`  
		Last Modified: Sat, 04 Mar 2017 05:51:37 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060a9d4b4dcb765c5e3bfaec606abdabaef8eb1b447e7b3424ecba55e7637239`  
		Last Modified: Sat, 04 Mar 2017 05:52:32 GMT  
		Size: 32.7 MB (32693550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734bc634648512c9b45bc91810b572648dbcc33ce95e6dab023f51eff31ed127`  
		Last Modified: Tue, 07 Mar 2017 01:22:54 GMT  
		Size: 638.1 KB (638105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc47bc00d32f38f9ff9d48e77c8256569782c029128cd59600093281d0bfe9a`  
		Last Modified: Tue, 07 Mar 2017 01:22:53 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-onbuild`

```console
$ docker pull ruby@sha256:956f1442f9d1abdd7fa383d5e4bec3e04699ac78d5366630b9c263e0ac473d7a
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.5 MB (275487015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92ede7a8144d8474dd7d6cab42e2fd631d95315fe14c927733f5520bd637a0a3`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:12:32 GMT
ENV RUBY_MAJOR=2.1
# Tue, 28 Feb 2017 23:12:32 GMT
ENV RUBY_VERSION=2.1.10
# Tue, 28 Feb 2017 23:12:33 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Tue, 28 Feb 2017 23:12:33 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Tue, 28 Feb 2017 23:14:44 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:19:15 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:19:19 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:19:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:19:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:19:22 GMT
CMD ["irb"]
# Tue, 07 Mar 2017 01:19:40 GMT
RUN bundle config --global frozen 1
# Tue, 07 Mar 2017 01:19:41 GMT
RUN mkdir -p /usr/src/app
# Tue, 07 Mar 2017 01:19:41 GMT
WORKDIR /usr/src/app
# Tue, 07 Mar 2017 01:19:42 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 07 Mar 2017 01:19:42 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 07 Mar 2017 01:19:43 GMT
ONBUILD RUN bundle install
# Tue, 07 Mar 2017 01:19:44 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168cf3f33330209b5d659614bc0f85b33bdec178d185d6a9e439e98e2d1a3a95`  
		Last Modified: Thu, 02 Mar 2017 04:03:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d32f96a57084e4f43f051d96a6d1100a290c228ec78287526853765408beac`  
		Last Modified: Thu, 02 Mar 2017 04:03:24 GMT  
		Size: 32.6 MB (32594723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed36c993e28121de13999c5c68e155cfa79fa0a1be1eecd495b848f65494e8c5`  
		Last Modified: Tue, 07 Mar 2017 01:21:32 GMT  
		Size: 638.1 KB (638118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06edba979c7e17ad90817e04e91a90498499928925fb3f17883d47a6fc72a03`  
		Last Modified: Tue, 07 Mar 2017 01:21:31 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe758bd937f58d647d59da0d8694f3e0897fe790f28c3070ca655722438a8d3`  
		Last Modified: Tue, 07 Mar 2017 01:23:33 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4fb2177abb8a82e58c7d02fde81d17f3b569f148519e47033e1ba014a8c039`  
		Last Modified: Tue, 07 Mar 2017 01:23:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-onbuild`

```console
$ docker pull ruby@sha256:956f1442f9d1abdd7fa383d5e4bec3e04699ac78d5366630b9c263e0ac473d7a
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.5 MB (275487015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92ede7a8144d8474dd7d6cab42e2fd631d95315fe14c927733f5520bd637a0a3`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:12:32 GMT
ENV RUBY_MAJOR=2.1
# Tue, 28 Feb 2017 23:12:32 GMT
ENV RUBY_VERSION=2.1.10
# Tue, 28 Feb 2017 23:12:33 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Tue, 28 Feb 2017 23:12:33 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Tue, 28 Feb 2017 23:14:44 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:19:15 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:19:19 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:19:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:19:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:19:22 GMT
CMD ["irb"]
# Tue, 07 Mar 2017 01:19:40 GMT
RUN bundle config --global frozen 1
# Tue, 07 Mar 2017 01:19:41 GMT
RUN mkdir -p /usr/src/app
# Tue, 07 Mar 2017 01:19:41 GMT
WORKDIR /usr/src/app
# Tue, 07 Mar 2017 01:19:42 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 07 Mar 2017 01:19:42 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 07 Mar 2017 01:19:43 GMT
ONBUILD RUN bundle install
# Tue, 07 Mar 2017 01:19:44 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168cf3f33330209b5d659614bc0f85b33bdec178d185d6a9e439e98e2d1a3a95`  
		Last Modified: Thu, 02 Mar 2017 04:03:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d32f96a57084e4f43f051d96a6d1100a290c228ec78287526853765408beac`  
		Last Modified: Thu, 02 Mar 2017 04:03:24 GMT  
		Size: 32.6 MB (32594723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed36c993e28121de13999c5c68e155cfa79fa0a1be1eecd495b848f65494e8c5`  
		Last Modified: Tue, 07 Mar 2017 01:21:32 GMT  
		Size: 638.1 KB (638118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06edba979c7e17ad90817e04e91a90498499928925fb3f17883d47a6fc72a03`  
		Last Modified: Tue, 07 Mar 2017 01:21:31 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe758bd937f58d647d59da0d8694f3e0897fe790f28c3070ca655722438a8d3`  
		Last Modified: Tue, 07 Mar 2017 01:23:33 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4fb2177abb8a82e58c7d02fde81d17f3b569f148519e47033e1ba014a8c039`  
		Last Modified: Tue, 07 Mar 2017 01:23:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6`

```console
$ docker pull ruby@sha256:21774548a57df9585ebc173fd2733c9e9c29b457bc6d787c67f4bae7a6572562
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.1 MB (276093745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cb10de60b6b69ac03e953dffd9c7f8110b2b3a4aed4eae873f264565f0f404a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:17:21 GMT
ENV RUBY_MAJOR=2.2
# Tue, 28 Feb 2017 23:17:21 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 28 Feb 2017 23:17:22 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 28 Feb 2017 23:17:22 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Tue, 28 Feb 2017 23:19:41 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:19:45 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:19:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:19:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:19:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:19:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168cf3f33330209b5d659614bc0f85b33bdec178d185d6a9e439e98e2d1a3a95`  
		Last Modified: Thu, 02 Mar 2017 04:03:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f33c16c283a43ebe0579792854ee0ca019c8e22df351f93c4b8aae7bef9ff5c`  
		Last Modified: Thu, 02 Mar 2017 04:05:53 GMT  
		Size: 33.2 MB (33201781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa70456d73ea3f7ba01157c1bd6f13eb56e5d80f9b98dd1553644e9ea8990f1`  
		Last Modified: Tue, 07 Mar 2017 01:24:14 GMT  
		Size: 638.1 KB (638103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4171e712a808afc73c1f1ca57ba6cd377fe0f6e57b5895b8c26fcce221eb63e3`  
		Last Modified: Tue, 07 Mar 2017 01:24:14 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2`

```console
$ docker pull ruby@sha256:21774548a57df9585ebc173fd2733c9e9c29b457bc6d787c67f4bae7a6572562
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.1 MB (276093745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cb10de60b6b69ac03e953dffd9c7f8110b2b3a4aed4eae873f264565f0f404a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:17:21 GMT
ENV RUBY_MAJOR=2.2
# Tue, 28 Feb 2017 23:17:21 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 28 Feb 2017 23:17:22 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 28 Feb 2017 23:17:22 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Tue, 28 Feb 2017 23:19:41 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:19:45 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:19:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:19:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:19:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:19:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168cf3f33330209b5d659614bc0f85b33bdec178d185d6a9e439e98e2d1a3a95`  
		Last Modified: Thu, 02 Mar 2017 04:03:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f33c16c283a43ebe0579792854ee0ca019c8e22df351f93c4b8aae7bef9ff5c`  
		Last Modified: Thu, 02 Mar 2017 04:05:53 GMT  
		Size: 33.2 MB (33201781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa70456d73ea3f7ba01157c1bd6f13eb56e5d80f9b98dd1553644e9ea8990f1`  
		Last Modified: Tue, 07 Mar 2017 01:24:14 GMT  
		Size: 638.1 KB (638103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4171e712a808afc73c1f1ca57ba6cd377fe0f6e57b5895b8c26fcce221eb63e3`  
		Last Modified: Tue, 07 Mar 2017 01:24:14 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6-slim`

```console
$ docker pull ruby@sha256:4da25931f773df5272ca4c3c092266810d9819d5f4149653cc4c954788e2bfd2
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.4 MB (95368421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6c531811b9f6b6e2cbc9c747baaf4abceb19733fe19aa78b5918a4625bf503d`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 23:09:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:09:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:19:49 GMT
ENV RUBY_MAJOR=2.2
# Tue, 28 Feb 2017 23:19:50 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 28 Feb 2017 23:19:50 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 28 Feb 2017 23:19:51 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:03:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:19:52 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:19:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:19:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:19:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:19:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55881edebdb6880f6747845ebd8adcadd073651f9f6805e1ce0c7ba81b909e59`  
		Last Modified: Thu, 02 Mar 2017 04:04:49 GMT  
		Size: 10.0 MB (9995180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8151a8527e142cb1a2efc8dff342a57def4131549650b52e65ae88a1d9abe7`  
		Last Modified: Thu, 02 Mar 2017 04:04:43 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d75ee894701cb9cc9a1be374d3f374415ece556401fbcc1fc4ec6fcdd02652`  
		Last Modified: Thu, 02 Mar 2017 04:07:27 GMT  
		Size: 33.4 MB (33371396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b068eeb6df998337e5c6d4b0d7f9ee04e378c776dd4bc09ce7ba622e97903c`  
		Last Modified: Tue, 07 Mar 2017 01:24:54 GMT  
		Size: 638.1 KB (638107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d17fc24fe2de0b7d9e626ef8d109cbac6a886db425a582ecaba57ffb78ef59a`  
		Last Modified: Tue, 07 Mar 2017 01:24:53 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-slim`

```console
$ docker pull ruby@sha256:4da25931f773df5272ca4c3c092266810d9819d5f4149653cc4c954788e2bfd2
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.4 MB (95368421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6c531811b9f6b6e2cbc9c747baaf4abceb19733fe19aa78b5918a4625bf503d`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 23:09:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:09:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:19:49 GMT
ENV RUBY_MAJOR=2.2
# Tue, 28 Feb 2017 23:19:50 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 28 Feb 2017 23:19:50 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 28 Feb 2017 23:19:51 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:03:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:19:52 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:19:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:19:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:19:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:19:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55881edebdb6880f6747845ebd8adcadd073651f9f6805e1ce0c7ba81b909e59`  
		Last Modified: Thu, 02 Mar 2017 04:04:49 GMT  
		Size: 10.0 MB (9995180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8151a8527e142cb1a2efc8dff342a57def4131549650b52e65ae88a1d9abe7`  
		Last Modified: Thu, 02 Mar 2017 04:04:43 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d75ee894701cb9cc9a1be374d3f374415ece556401fbcc1fc4ec6fcdd02652`  
		Last Modified: Thu, 02 Mar 2017 04:07:27 GMT  
		Size: 33.4 MB (33371396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b068eeb6df998337e5c6d4b0d7f9ee04e378c776dd4bc09ce7ba622e97903c`  
		Last Modified: Tue, 07 Mar 2017 01:24:54 GMT  
		Size: 638.1 KB (638107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d17fc24fe2de0b7d9e626ef8d109cbac6a886db425a582ecaba57ffb78ef59a`  
		Last Modified: Tue, 07 Mar 2017 01:24:53 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6-alpine`

```console
$ docker pull ruby@sha256:ad34c3c23628b9fa3ae450b7aa6c7c430bdc737ec8c31be2d2212f9e1605ebb9
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36032631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9848583d159bca670a443a0aedc239ef37a60af633c3c178287f04417c3c7423`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:33:58 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 03 Mar 2017 23:38:46 GMT
ENV RUBY_MAJOR=2.2
# Fri, 03 Mar 2017 23:38:46 GMT
ENV RUBY_VERSION=2.2.6
# Fri, 03 Mar 2017 23:38:46 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Fri, 03 Mar 2017 23:38:47 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 03 Mar 2017 23:40:49 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:19:59 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:02 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:20:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:03 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:20:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:20:05 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb3cefb04d0b40438da21681cf124e61adc2d5cf6c9cca6aba2806da7c7c599`  
		Last Modified: Sat, 04 Mar 2017 05:51:37 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94f9989e411f21f1539fbbedfe8dd96e8ce50742a8350b31e41cd77eb248bbf`  
		Last Modified: Sat, 04 Mar 2017 05:54:03 GMT  
		Size: 33.1 MB (33080818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12bdd5d5bb72aa781bc3cadab31803d79bf6b3c72c51edaa1a1d6c50391e8e94`  
		Last Modified: Tue, 07 Mar 2017 01:25:34 GMT  
		Size: 638.1 KB (638080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf4cc5528d346ca81aaca28805d42b232fb57581fb1c2aa2c57488ee40003c3`  
		Last Modified: Tue, 07 Mar 2017 01:25:33 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-alpine`

```console
$ docker pull ruby@sha256:ad34c3c23628b9fa3ae450b7aa6c7c430bdc737ec8c31be2d2212f9e1605ebb9
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36032631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9848583d159bca670a443a0aedc239ef37a60af633c3c178287f04417c3c7423`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:33:58 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 03 Mar 2017 23:38:46 GMT
ENV RUBY_MAJOR=2.2
# Fri, 03 Mar 2017 23:38:46 GMT
ENV RUBY_VERSION=2.2.6
# Fri, 03 Mar 2017 23:38:46 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Fri, 03 Mar 2017 23:38:47 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 03 Mar 2017 23:40:49 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:19:59 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:02 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:20:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:03 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:20:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:20:05 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb3cefb04d0b40438da21681cf124e61adc2d5cf6c9cca6aba2806da7c7c599`  
		Last Modified: Sat, 04 Mar 2017 05:51:37 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94f9989e411f21f1539fbbedfe8dd96e8ce50742a8350b31e41cd77eb248bbf`  
		Last Modified: Sat, 04 Mar 2017 05:54:03 GMT  
		Size: 33.1 MB (33080818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12bdd5d5bb72aa781bc3cadab31803d79bf6b3c72c51edaa1a1d6c50391e8e94`  
		Last Modified: Tue, 07 Mar 2017 01:25:34 GMT  
		Size: 638.1 KB (638080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf4cc5528d346ca81aaca28805d42b232fb57581fb1c2aa2c57488ee40003c3`  
		Last Modified: Tue, 07 Mar 2017 01:25:33 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6-onbuild`

```console
$ docker pull ruby@sha256:786d858917b6807bad73dfb01c57b26c03f52880385ba28aec5a72b247964292
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.1 MB (276094058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79f457db49006e200ef45488a972c5db316ec0d289098113a7dfb7edf3d0fc3b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:17:21 GMT
ENV RUBY_MAJOR=2.2
# Tue, 28 Feb 2017 23:17:21 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 28 Feb 2017 23:17:22 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 28 Feb 2017 23:17:22 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Tue, 28 Feb 2017 23:19:41 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:19:45 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:19:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:19:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:19:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:19:51 GMT
CMD ["irb"]
# Tue, 07 Mar 2017 01:20:07 GMT
RUN bundle config --global frozen 1
# Tue, 07 Mar 2017 01:20:08 GMT
RUN mkdir -p /usr/src/app
# Tue, 07 Mar 2017 01:20:08 GMT
WORKDIR /usr/src/app
# Tue, 07 Mar 2017 01:20:09 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 07 Mar 2017 01:20:10 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 07 Mar 2017 01:20:10 GMT
ONBUILD RUN bundle install
# Tue, 07 Mar 2017 01:20:11 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168cf3f33330209b5d659614bc0f85b33bdec178d185d6a9e439e98e2d1a3a95`  
		Last Modified: Thu, 02 Mar 2017 04:03:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f33c16c283a43ebe0579792854ee0ca019c8e22df351f93c4b8aae7bef9ff5c`  
		Last Modified: Thu, 02 Mar 2017 04:05:53 GMT  
		Size: 33.2 MB (33201781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa70456d73ea3f7ba01157c1bd6f13eb56e5d80f9b98dd1553644e9ea8990f1`  
		Last Modified: Tue, 07 Mar 2017 01:24:14 GMT  
		Size: 638.1 KB (638103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4171e712a808afc73c1f1ca57ba6cd377fe0f6e57b5895b8c26fcce221eb63e3`  
		Last Modified: Tue, 07 Mar 2017 01:24:14 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16d59abbab23de8c871978e9b2fde4575118645f5d285a714882216366b5dd1`  
		Last Modified: Tue, 07 Mar 2017 01:26:15 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf4ad9f37d3e702849cff3d1c51d493bfd74523d5be84962468c3c3d30f6fb4`  
		Last Modified: Tue, 07 Mar 2017 01:26:13 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-onbuild`

```console
$ docker pull ruby@sha256:786d858917b6807bad73dfb01c57b26c03f52880385ba28aec5a72b247964292
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.1 MB (276094058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79f457db49006e200ef45488a972c5db316ec0d289098113a7dfb7edf3d0fc3b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:17:21 GMT
ENV RUBY_MAJOR=2.2
# Tue, 28 Feb 2017 23:17:21 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 28 Feb 2017 23:17:22 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 28 Feb 2017 23:17:22 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Tue, 28 Feb 2017 23:19:41 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:19:45 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:19:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:19:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:19:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:19:51 GMT
CMD ["irb"]
# Tue, 07 Mar 2017 01:20:07 GMT
RUN bundle config --global frozen 1
# Tue, 07 Mar 2017 01:20:08 GMT
RUN mkdir -p /usr/src/app
# Tue, 07 Mar 2017 01:20:08 GMT
WORKDIR /usr/src/app
# Tue, 07 Mar 2017 01:20:09 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 07 Mar 2017 01:20:10 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 07 Mar 2017 01:20:10 GMT
ONBUILD RUN bundle install
# Tue, 07 Mar 2017 01:20:11 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168cf3f33330209b5d659614bc0f85b33bdec178d185d6a9e439e98e2d1a3a95`  
		Last Modified: Thu, 02 Mar 2017 04:03:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f33c16c283a43ebe0579792854ee0ca019c8e22df351f93c4b8aae7bef9ff5c`  
		Last Modified: Thu, 02 Mar 2017 04:05:53 GMT  
		Size: 33.2 MB (33201781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa70456d73ea3f7ba01157c1bd6f13eb56e5d80f9b98dd1553644e9ea8990f1`  
		Last Modified: Tue, 07 Mar 2017 01:24:14 GMT  
		Size: 638.1 KB (638103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4171e712a808afc73c1f1ca57ba6cd377fe0f6e57b5895b8c26fcce221eb63e3`  
		Last Modified: Tue, 07 Mar 2017 01:24:14 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16d59abbab23de8c871978e9b2fde4575118645f5d285a714882216366b5dd1`  
		Last Modified: Tue, 07 Mar 2017 01:26:15 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf4ad9f37d3e702849cff3d1c51d493bfd74523d5be84962468c3c3d30f6fb4`  
		Last Modified: Tue, 07 Mar 2017 01:26:13 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3`

```console
$ docker pull ruby@sha256:064de303d9db3b01518f3ae745f92d67a3f02ceeff2c3fd10946e32a23a7b5fe
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278076472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e61934e8d8713307c18b6af0e4ec250a5a760c59bce814bba28240ab4e2ffb9d`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 01 Mar 2017 00:03:27 GMT
ENV RUBY_MAJOR=2.3
# Wed, 01 Mar 2017 00:03:27 GMT
ENV RUBY_VERSION=2.3.3
# Wed, 01 Mar 2017 00:03:27 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Wed, 01 Mar 2017 00:03:28 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:49:14 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:12 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:20:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:20:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:20:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168cf3f33330209b5d659614bc0f85b33bdec178d185d6a9e439e98e2d1a3a95`  
		Last Modified: Thu, 02 Mar 2017 04:03:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2561b9c7077fed9268555ffa600d837e388d6e4e4e3fca77434525d0748b72`  
		Last Modified: Thu, 02 Mar 2017 04:08:23 GMT  
		Size: 35.2 MB (35184502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea880d938ee1e0ff3f50bfc241b5971783659eea483749ec2541e57be255578c`  
		Last Modified: Tue, 07 Mar 2017 01:26:55 GMT  
		Size: 638.1 KB (638108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17cd70c04f339c060c024828451b0850a862ed60f0b981128e7e0a65e5f6dcb`  
		Last Modified: Tue, 07 Mar 2017 01:26:54 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3`

```console
$ docker pull ruby@sha256:064de303d9db3b01518f3ae745f92d67a3f02ceeff2c3fd10946e32a23a7b5fe
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278076472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e61934e8d8713307c18b6af0e4ec250a5a760c59bce814bba28240ab4e2ffb9d`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 01 Mar 2017 00:03:27 GMT
ENV RUBY_MAJOR=2.3
# Wed, 01 Mar 2017 00:03:27 GMT
ENV RUBY_VERSION=2.3.3
# Wed, 01 Mar 2017 00:03:27 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Wed, 01 Mar 2017 00:03:28 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:49:14 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:12 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:20:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:20:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:20:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168cf3f33330209b5d659614bc0f85b33bdec178d185d6a9e439e98e2d1a3a95`  
		Last Modified: Thu, 02 Mar 2017 04:03:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2561b9c7077fed9268555ffa600d837e388d6e4e4e3fca77434525d0748b72`  
		Last Modified: Thu, 02 Mar 2017 04:08:23 GMT  
		Size: 35.2 MB (35184502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea880d938ee1e0ff3f50bfc241b5971783659eea483749ec2541e57be255578c`  
		Last Modified: Tue, 07 Mar 2017 01:26:55 GMT  
		Size: 638.1 KB (638108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17cd70c04f339c060c024828451b0850a862ed60f0b981128e7e0a65e5f6dcb`  
		Last Modified: Tue, 07 Mar 2017 01:26:54 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3-slim`

```console
$ docker pull ruby@sha256:d47cf9cbd309d9b0da731afc84826e9df0844e9330a1f303e39da9a4a23318ed
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97335265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8244f7bc643f6f0a1052d1a50aaf12f2f743326ea391d0ad9b483cb33aade7f`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 23:09:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:09:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 01 Mar 2017 00:49:51 GMT
ENV RUBY_MAJOR=2.3
# Wed, 01 Mar 2017 00:49:52 GMT
ENV RUBY_VERSION=2.3.3
# Wed, 01 Mar 2017 00:49:52 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Wed, 01 Mar 2017 00:49:53 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:53:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:19 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:23 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:20:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:20:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:20:26 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55881edebdb6880f6747845ebd8adcadd073651f9f6805e1ce0c7ba81b909e59`  
		Last Modified: Thu, 02 Mar 2017 04:04:49 GMT  
		Size: 10.0 MB (9995180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8151a8527e142cb1a2efc8dff342a57def4131549650b52e65ae88a1d9abe7`  
		Last Modified: Thu, 02 Mar 2017 04:04:43 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0e9901ef4b6dceac7b5639854eb85c0ad226b69125359e760f2a1c06a45f30`  
		Last Modified: Thu, 02 Mar 2017 04:09:58 GMT  
		Size: 35.3 MB (35338237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7645056dfd8541f5b45aa1307e3426fff47bcecdb29399721573b0c11b265cbf`  
		Last Modified: Tue, 07 Mar 2017 01:27:35 GMT  
		Size: 638.1 KB (638109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130866c260b505285b3627b1166b06f316036c57c8b7a5b73c37c13196fde37b`  
		Last Modified: Tue, 07 Mar 2017 01:27:34 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-slim`

```console
$ docker pull ruby@sha256:d47cf9cbd309d9b0da731afc84826e9df0844e9330a1f303e39da9a4a23318ed
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97335265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8244f7bc643f6f0a1052d1a50aaf12f2f743326ea391d0ad9b483cb33aade7f`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 23:09:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:09:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 01 Mar 2017 00:49:51 GMT
ENV RUBY_MAJOR=2.3
# Wed, 01 Mar 2017 00:49:52 GMT
ENV RUBY_VERSION=2.3.3
# Wed, 01 Mar 2017 00:49:52 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Wed, 01 Mar 2017 00:49:53 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:53:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:19 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:23 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:20:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:20:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:20:26 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55881edebdb6880f6747845ebd8adcadd073651f9f6805e1ce0c7ba81b909e59`  
		Last Modified: Thu, 02 Mar 2017 04:04:49 GMT  
		Size: 10.0 MB (9995180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8151a8527e142cb1a2efc8dff342a57def4131549650b52e65ae88a1d9abe7`  
		Last Modified: Thu, 02 Mar 2017 04:04:43 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0e9901ef4b6dceac7b5639854eb85c0ad226b69125359e760f2a1c06a45f30`  
		Last Modified: Thu, 02 Mar 2017 04:09:58 GMT  
		Size: 35.3 MB (35338237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7645056dfd8541f5b45aa1307e3426fff47bcecdb29399721573b0c11b265cbf`  
		Last Modified: Tue, 07 Mar 2017 01:27:35 GMT  
		Size: 638.1 KB (638109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130866c260b505285b3627b1166b06f316036c57c8b7a5b73c37c13196fde37b`  
		Last Modified: Tue, 07 Mar 2017 01:27:34 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3-alpine`

```console
$ docker pull ruby@sha256:aac3df0199b6ca5ce2870c56a87421643139244e26633fa050713fbbbee52a13
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42980796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af89cacd44cb823206264536c8da13f992c2c7ab5b0533d33a5e83935d4823b1`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:33:58 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 03 Mar 2017 23:40:53 GMT
ENV RUBY_MAJOR=2.3
# Fri, 03 Mar 2017 23:40:54 GMT
ENV RUBY_VERSION=2.3.3
# Fri, 03 Mar 2017 23:40:54 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Fri, 03 Mar 2017 23:40:54 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 03 Mar 2017 23:43:02 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:27 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:30 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:20:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:20:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:20:34 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb3cefb04d0b40438da21681cf124e61adc2d5cf6c9cca6aba2806da7c7c599`  
		Last Modified: Sat, 04 Mar 2017 05:51:37 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1cb7804963258ba3c2233ee76f13aada1d67bfcb37face05920cd68cc7036f1`  
		Last Modified: Sat, 04 Mar 2017 05:55:40 GMT  
		Size: 40.0 MB (40028967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767afe4d82f3a6e2d8aa5485272f040f66d5637f1a289cecaa98179fa4398503`  
		Last Modified: Tue, 07 Mar 2017 01:28:15 GMT  
		Size: 638.1 KB (638095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094c4371f371f9e9f6ab67a70a6b01f8f0d74a1abf672030a22781eab9e52169`  
		Last Modified: Tue, 07 Mar 2017 01:28:14 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-alpine`

```console
$ docker pull ruby@sha256:aac3df0199b6ca5ce2870c56a87421643139244e26633fa050713fbbbee52a13
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42980796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af89cacd44cb823206264536c8da13f992c2c7ab5b0533d33a5e83935d4823b1`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:33:58 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 03 Mar 2017 23:40:53 GMT
ENV RUBY_MAJOR=2.3
# Fri, 03 Mar 2017 23:40:54 GMT
ENV RUBY_VERSION=2.3.3
# Fri, 03 Mar 2017 23:40:54 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Fri, 03 Mar 2017 23:40:54 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 03 Mar 2017 23:43:02 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:27 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:30 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:20:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:20:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:20:34 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb3cefb04d0b40438da21681cf124e61adc2d5cf6c9cca6aba2806da7c7c599`  
		Last Modified: Sat, 04 Mar 2017 05:51:37 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1cb7804963258ba3c2233ee76f13aada1d67bfcb37face05920cd68cc7036f1`  
		Last Modified: Sat, 04 Mar 2017 05:55:40 GMT  
		Size: 40.0 MB (40028967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767afe4d82f3a6e2d8aa5485272f040f66d5637f1a289cecaa98179fa4398503`  
		Last Modified: Tue, 07 Mar 2017 01:28:15 GMT  
		Size: 638.1 KB (638095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094c4371f371f9e9f6ab67a70a6b01f8f0d74a1abf672030a22781eab9e52169`  
		Last Modified: Tue, 07 Mar 2017 01:28:14 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3-onbuild`

```console
$ docker pull ruby@sha256:9ec47c2a996a2a0811439bda18e4ca305ea6d91d0772441d53a19a8229755978
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278076786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb5f7a75ad89a01a59860643795fa25d8eef211025deda0720e0cb3b133d0bec`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 01 Mar 2017 00:03:27 GMT
ENV RUBY_MAJOR=2.3
# Wed, 01 Mar 2017 00:03:27 GMT
ENV RUBY_VERSION=2.3.3
# Wed, 01 Mar 2017 00:03:27 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Wed, 01 Mar 2017 00:03:28 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:49:14 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:12 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:20:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:20:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:20:18 GMT
CMD ["irb"]
# Tue, 07 Mar 2017 01:20:35 GMT
RUN bundle config --global frozen 1
# Tue, 07 Mar 2017 01:20:37 GMT
RUN mkdir -p /usr/src/app
# Tue, 07 Mar 2017 01:20:37 GMT
WORKDIR /usr/src/app
# Tue, 07 Mar 2017 01:20:38 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 07 Mar 2017 01:20:38 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 07 Mar 2017 01:20:39 GMT
ONBUILD RUN bundle install
# Tue, 07 Mar 2017 01:20:39 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168cf3f33330209b5d659614bc0f85b33bdec178d185d6a9e439e98e2d1a3a95`  
		Last Modified: Thu, 02 Mar 2017 04:03:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2561b9c7077fed9268555ffa600d837e388d6e4e4e3fca77434525d0748b72`  
		Last Modified: Thu, 02 Mar 2017 04:08:23 GMT  
		Size: 35.2 MB (35184502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea880d938ee1e0ff3f50bfc241b5971783659eea483749ec2541e57be255578c`  
		Last Modified: Tue, 07 Mar 2017 01:26:55 GMT  
		Size: 638.1 KB (638108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17cd70c04f339c060c024828451b0850a862ed60f0b981128e7e0a65e5f6dcb`  
		Last Modified: Tue, 07 Mar 2017 01:26:54 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b22e3271a60af0a598eacf6f06310302a97aecc07965c90d08b42e31526f60a7`  
		Last Modified: Tue, 07 Mar 2017 01:28:54 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8753b3ccd93976e759a80d2d89a198d8af2b94dbac70da06830ea823713ebf58`  
		Last Modified: Tue, 07 Mar 2017 01:28:54 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-onbuild`

```console
$ docker pull ruby@sha256:9ec47c2a996a2a0811439bda18e4ca305ea6d91d0772441d53a19a8229755978
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278076786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb5f7a75ad89a01a59860643795fa25d8eef211025deda0720e0cb3b133d0bec`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 01 Mar 2017 00:03:27 GMT
ENV RUBY_MAJOR=2.3
# Wed, 01 Mar 2017 00:03:27 GMT
ENV RUBY_VERSION=2.3.3
# Wed, 01 Mar 2017 00:03:27 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Wed, 01 Mar 2017 00:03:28 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:49:14 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:12 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:20:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:20:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:20:18 GMT
CMD ["irb"]
# Tue, 07 Mar 2017 01:20:35 GMT
RUN bundle config --global frozen 1
# Tue, 07 Mar 2017 01:20:37 GMT
RUN mkdir -p /usr/src/app
# Tue, 07 Mar 2017 01:20:37 GMT
WORKDIR /usr/src/app
# Tue, 07 Mar 2017 01:20:38 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 07 Mar 2017 01:20:38 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 07 Mar 2017 01:20:39 GMT
ONBUILD RUN bundle install
# Tue, 07 Mar 2017 01:20:39 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168cf3f33330209b5d659614bc0f85b33bdec178d185d6a9e439e98e2d1a3a95`  
		Last Modified: Thu, 02 Mar 2017 04:03:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2561b9c7077fed9268555ffa600d837e388d6e4e4e3fca77434525d0748b72`  
		Last Modified: Thu, 02 Mar 2017 04:08:23 GMT  
		Size: 35.2 MB (35184502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea880d938ee1e0ff3f50bfc241b5971783659eea483749ec2541e57be255578c`  
		Last Modified: Tue, 07 Mar 2017 01:26:55 GMT  
		Size: 638.1 KB (638108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17cd70c04f339c060c024828451b0850a862ed60f0b981128e7e0a65e5f6dcb`  
		Last Modified: Tue, 07 Mar 2017 01:26:54 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b22e3271a60af0a598eacf6f06310302a97aecc07965c90d08b42e31526f60a7`  
		Last Modified: Tue, 07 Mar 2017 01:28:54 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8753b3ccd93976e759a80d2d89a198d8af2b94dbac70da06830ea823713ebf58`  
		Last Modified: Tue, 07 Mar 2017 01:28:54 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.0`

```console
$ docker pull ruby@sha256:bcdb29a9ac84ea749d24140ab6ceef9a832acfd1845504944b00efbff964bb05
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265515571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9de00c83e1f1c52dcab680e5ba7c5fb39230ba61f413cdfe6c9217f925594679`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:06:09 GMT
ENV RUBY_MAJOR=2.4
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBY_VERSION=2.4.0
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Tue, 28 Feb 2017 23:09:00 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:40 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:43 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:20:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:20:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:20:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168cf3f33330209b5d659614bc0f85b33bdec178d185d6a9e439e98e2d1a3a95`  
		Last Modified: Thu, 02 Mar 2017 04:03:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021d84fef638ef285bbc2bdb4213a17e53bf75ef11a90b36ccb9c1f8603df2fc`  
		Last Modified: Thu, 02 Mar 2017 04:10:48 GMT  
		Size: 22.6 MB (22623600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dbc5125f409251423675010719d8f973b9560dfa147e8c20dff1303ae5669bd`  
		Last Modified: Tue, 07 Mar 2017 01:29:34 GMT  
		Size: 638.1 KB (638110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672b9d4e5b44be09f5703b99437d06eb757aea3e7a95c1888fecd7887d545b77`  
		Last Modified: Tue, 07 Mar 2017 01:29:34 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4`

```console
$ docker pull ruby@sha256:bcdb29a9ac84ea749d24140ab6ceef9a832acfd1845504944b00efbff964bb05
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265515571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9de00c83e1f1c52dcab680e5ba7c5fb39230ba61f413cdfe6c9217f925594679`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:06:09 GMT
ENV RUBY_MAJOR=2.4
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBY_VERSION=2.4.0
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Tue, 28 Feb 2017 23:09:00 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:40 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:43 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:20:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:20:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:20:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168cf3f33330209b5d659614bc0f85b33bdec178d185d6a9e439e98e2d1a3a95`  
		Last Modified: Thu, 02 Mar 2017 04:03:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021d84fef638ef285bbc2bdb4213a17e53bf75ef11a90b36ccb9c1f8603df2fc`  
		Last Modified: Thu, 02 Mar 2017 04:10:48 GMT  
		Size: 22.6 MB (22623600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dbc5125f409251423675010719d8f973b9560dfa147e8c20dff1303ae5669bd`  
		Last Modified: Tue, 07 Mar 2017 01:29:34 GMT  
		Size: 638.1 KB (638110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672b9d4e5b44be09f5703b99437d06eb757aea3e7a95c1888fecd7887d545b77`  
		Last Modified: Tue, 07 Mar 2017 01:29:34 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2`

```console
$ docker pull ruby@sha256:bcdb29a9ac84ea749d24140ab6ceef9a832acfd1845504944b00efbff964bb05
```

-	Platforms:
	-	linux; amd64

### `ruby:2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265515571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9de00c83e1f1c52dcab680e5ba7c5fb39230ba61f413cdfe6c9217f925594679`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:06:09 GMT
ENV RUBY_MAJOR=2.4
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBY_VERSION=2.4.0
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Tue, 28 Feb 2017 23:09:00 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:40 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:43 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:20:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:20:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:20:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168cf3f33330209b5d659614bc0f85b33bdec178d185d6a9e439e98e2d1a3a95`  
		Last Modified: Thu, 02 Mar 2017 04:03:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021d84fef638ef285bbc2bdb4213a17e53bf75ef11a90b36ccb9c1f8603df2fc`  
		Last Modified: Thu, 02 Mar 2017 04:10:48 GMT  
		Size: 22.6 MB (22623600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dbc5125f409251423675010719d8f973b9560dfa147e8c20dff1303ae5669bd`  
		Last Modified: Tue, 07 Mar 2017 01:29:34 GMT  
		Size: 638.1 KB (638110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672b9d4e5b44be09f5703b99437d06eb757aea3e7a95c1888fecd7887d545b77`  
		Last Modified: Tue, 07 Mar 2017 01:29:34 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:latest`

```console
$ docker pull ruby@sha256:bcdb29a9ac84ea749d24140ab6ceef9a832acfd1845504944b00efbff964bb05
```

-	Platforms:
	-	linux; amd64

### `ruby:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265515571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9de00c83e1f1c52dcab680e5ba7c5fb39230ba61f413cdfe6c9217f925594679`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:06:09 GMT
ENV RUBY_MAJOR=2.4
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBY_VERSION=2.4.0
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Tue, 28 Feb 2017 23:09:00 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:40 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:43 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:20:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:20:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:20:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168cf3f33330209b5d659614bc0f85b33bdec178d185d6a9e439e98e2d1a3a95`  
		Last Modified: Thu, 02 Mar 2017 04:03:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021d84fef638ef285bbc2bdb4213a17e53bf75ef11a90b36ccb9c1f8603df2fc`  
		Last Modified: Thu, 02 Mar 2017 04:10:48 GMT  
		Size: 22.6 MB (22623600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dbc5125f409251423675010719d8f973b9560dfa147e8c20dff1303ae5669bd`  
		Last Modified: Tue, 07 Mar 2017 01:29:34 GMT  
		Size: 638.1 KB (638110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672b9d4e5b44be09f5703b99437d06eb757aea3e7a95c1888fecd7887d545b77`  
		Last Modified: Tue, 07 Mar 2017 01:29:34 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.0-slim`

```console
$ docker pull ruby@sha256:1c8435953c42735d468da54f382a4d9e142cf084d7ca29fd29ccab66854428bf
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.0-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84780369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba8bf8348653bc3d02f844f467c531e87fe70c26a81739e0eb1626570d0b993`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 23:09:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:09:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:09:20 GMT
ENV RUBY_MAJOR=2.4
# Tue, 28 Feb 2017 23:09:20 GMT
ENV RUBY_VERSION=2.4.0
# Tue, 28 Feb 2017 23:09:21 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 28 Feb 2017 23:09:21 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Tue, 28 Feb 2017 23:12:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:48 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:20:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:20:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:20:55 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55881edebdb6880f6747845ebd8adcadd073651f9f6805e1ce0c7ba81b909e59`  
		Last Modified: Thu, 02 Mar 2017 04:04:49 GMT  
		Size: 10.0 MB (9995180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8151a8527e142cb1a2efc8dff342a57def4131549650b52e65ae88a1d9abe7`  
		Last Modified: Thu, 02 Mar 2017 04:04:43 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac47216400c67c1b3adf3bd4bef5fca08126d49f217cc293988784eb8ab859e`  
		Last Modified: Thu, 02 Mar 2017 04:13:26 GMT  
		Size: 22.8 MB (22783335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02fab7ee39338121353e396714ce51805866475c9a3a3b26b8da5101d182e4ef`  
		Last Modified: Tue, 07 Mar 2017 01:30:50 GMT  
		Size: 638.1 KB (638114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a04261c64a1b85ed13579808952d587ffb22a2279ca2486e831d2b98bdd4f7e3`  
		Last Modified: Tue, 07 Mar 2017 01:30:50 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-slim`

```console
$ docker pull ruby@sha256:1c8435953c42735d468da54f382a4d9e142cf084d7ca29fd29ccab66854428bf
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84780369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba8bf8348653bc3d02f844f467c531e87fe70c26a81739e0eb1626570d0b993`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 23:09:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:09:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:09:20 GMT
ENV RUBY_MAJOR=2.4
# Tue, 28 Feb 2017 23:09:20 GMT
ENV RUBY_VERSION=2.4.0
# Tue, 28 Feb 2017 23:09:21 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 28 Feb 2017 23:09:21 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Tue, 28 Feb 2017 23:12:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:48 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:20:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:20:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:20:55 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55881edebdb6880f6747845ebd8adcadd073651f9f6805e1ce0c7ba81b909e59`  
		Last Modified: Thu, 02 Mar 2017 04:04:49 GMT  
		Size: 10.0 MB (9995180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8151a8527e142cb1a2efc8dff342a57def4131549650b52e65ae88a1d9abe7`  
		Last Modified: Thu, 02 Mar 2017 04:04:43 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac47216400c67c1b3adf3bd4bef5fca08126d49f217cc293988784eb8ab859e`  
		Last Modified: Thu, 02 Mar 2017 04:13:26 GMT  
		Size: 22.8 MB (22783335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02fab7ee39338121353e396714ce51805866475c9a3a3b26b8da5101d182e4ef`  
		Last Modified: Tue, 07 Mar 2017 01:30:50 GMT  
		Size: 638.1 KB (638114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a04261c64a1b85ed13579808952d587ffb22a2279ca2486e831d2b98bdd4f7e3`  
		Last Modified: Tue, 07 Mar 2017 01:30:50 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-slim`

```console
$ docker pull ruby@sha256:1c8435953c42735d468da54f382a4d9e142cf084d7ca29fd29ccab66854428bf
```

-	Platforms:
	-	linux; amd64

### `ruby:2-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84780369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba8bf8348653bc3d02f844f467c531e87fe70c26a81739e0eb1626570d0b993`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 23:09:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:09:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:09:20 GMT
ENV RUBY_MAJOR=2.4
# Tue, 28 Feb 2017 23:09:20 GMT
ENV RUBY_VERSION=2.4.0
# Tue, 28 Feb 2017 23:09:21 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 28 Feb 2017 23:09:21 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Tue, 28 Feb 2017 23:12:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:48 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:20:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:20:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:20:55 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55881edebdb6880f6747845ebd8adcadd073651f9f6805e1ce0c7ba81b909e59`  
		Last Modified: Thu, 02 Mar 2017 04:04:49 GMT  
		Size: 10.0 MB (9995180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8151a8527e142cb1a2efc8dff342a57def4131549650b52e65ae88a1d9abe7`  
		Last Modified: Thu, 02 Mar 2017 04:04:43 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac47216400c67c1b3adf3bd4bef5fca08126d49f217cc293988784eb8ab859e`  
		Last Modified: Thu, 02 Mar 2017 04:13:26 GMT  
		Size: 22.8 MB (22783335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02fab7ee39338121353e396714ce51805866475c9a3a3b26b8da5101d182e4ef`  
		Last Modified: Tue, 07 Mar 2017 01:30:50 GMT  
		Size: 638.1 KB (638114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a04261c64a1b85ed13579808952d587ffb22a2279ca2486e831d2b98bdd4f7e3`  
		Last Modified: Tue, 07 Mar 2017 01:30:50 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:slim`

```console
$ docker pull ruby@sha256:1c8435953c42735d468da54f382a4d9e142cf084d7ca29fd29ccab66854428bf
```

-	Platforms:
	-	linux; amd64

### `ruby:slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84780369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba8bf8348653bc3d02f844f467c531e87fe70c26a81739e0eb1626570d0b993`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 23:09:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:09:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:09:20 GMT
ENV RUBY_MAJOR=2.4
# Tue, 28 Feb 2017 23:09:20 GMT
ENV RUBY_VERSION=2.4.0
# Tue, 28 Feb 2017 23:09:21 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 28 Feb 2017 23:09:21 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Tue, 28 Feb 2017 23:12:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:48 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:20:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:20:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:20:55 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55881edebdb6880f6747845ebd8adcadd073651f9f6805e1ce0c7ba81b909e59`  
		Last Modified: Thu, 02 Mar 2017 04:04:49 GMT  
		Size: 10.0 MB (9995180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8151a8527e142cb1a2efc8dff342a57def4131549650b52e65ae88a1d9abe7`  
		Last Modified: Thu, 02 Mar 2017 04:04:43 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac47216400c67c1b3adf3bd4bef5fca08126d49f217cc293988784eb8ab859e`  
		Last Modified: Thu, 02 Mar 2017 04:13:26 GMT  
		Size: 22.8 MB (22783335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02fab7ee39338121353e396714ce51805866475c9a3a3b26b8da5101d182e4ef`  
		Last Modified: Tue, 07 Mar 2017 01:30:50 GMT  
		Size: 638.1 KB (638114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a04261c64a1b85ed13579808952d587ffb22a2279ca2486e831d2b98bdd4f7e3`  
		Last Modified: Tue, 07 Mar 2017 01:30:50 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.0-alpine`

```console
$ docker pull ruby@sha256:4df11a11f73c879b348c3f5f925166a90d967ae605bb082275118de2aefc3c79
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.0-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27190697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d86a3f8dee7a019bbdb8077a8e1afb17b47425bf6e0fa5aa4b509e1a031f994c`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:33:58 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 03 Mar 2017 23:33:58 GMT
ENV RUBY_MAJOR=2.4
# Fri, 03 Mar 2017 23:33:58 GMT
ENV RUBY_VERSION=2.4.0
# Fri, 03 Mar 2017 23:33:59 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Fri, 03 Mar 2017 23:33:59 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 03 Mar 2017 23:36:34 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:21:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:21:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:21:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:21:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:21:03 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb3cefb04d0b40438da21681cf124e61adc2d5cf6c9cca6aba2806da7c7c599`  
		Last Modified: Sat, 04 Mar 2017 05:51:37 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633d6902a2b1eea9302b9db769a6716dd066e97c2b57425f6f6d0c962841afe5`  
		Last Modified: Sat, 04 Mar 2017 05:57:16 GMT  
		Size: 24.2 MB (24238850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c9f208bb98ab5280f064e38b1d710c6e5a81542a29b48cf9403391e0b0cab8`  
		Last Modified: Tue, 07 Mar 2017 01:32:05 GMT  
		Size: 638.1 KB (638113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42319904048567e5f45ca93bd7bb16a5b11954c7bbbcc6b4030fec57669a97de`  
		Last Modified: Tue, 07 Mar 2017 01:32:05 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-alpine`

```console
$ docker pull ruby@sha256:4df11a11f73c879b348c3f5f925166a90d967ae605bb082275118de2aefc3c79
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27190697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d86a3f8dee7a019bbdb8077a8e1afb17b47425bf6e0fa5aa4b509e1a031f994c`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:33:58 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 03 Mar 2017 23:33:58 GMT
ENV RUBY_MAJOR=2.4
# Fri, 03 Mar 2017 23:33:58 GMT
ENV RUBY_VERSION=2.4.0
# Fri, 03 Mar 2017 23:33:59 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Fri, 03 Mar 2017 23:33:59 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 03 Mar 2017 23:36:34 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:21:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:21:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:21:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:21:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:21:03 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb3cefb04d0b40438da21681cf124e61adc2d5cf6c9cca6aba2806da7c7c599`  
		Last Modified: Sat, 04 Mar 2017 05:51:37 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633d6902a2b1eea9302b9db769a6716dd066e97c2b57425f6f6d0c962841afe5`  
		Last Modified: Sat, 04 Mar 2017 05:57:16 GMT  
		Size: 24.2 MB (24238850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c9f208bb98ab5280f064e38b1d710c6e5a81542a29b48cf9403391e0b0cab8`  
		Last Modified: Tue, 07 Mar 2017 01:32:05 GMT  
		Size: 638.1 KB (638113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42319904048567e5f45ca93bd7bb16a5b11954c7bbbcc6b4030fec57669a97de`  
		Last Modified: Tue, 07 Mar 2017 01:32:05 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-alpine`

```console
$ docker pull ruby@sha256:4df11a11f73c879b348c3f5f925166a90d967ae605bb082275118de2aefc3c79
```

-	Platforms:
	-	linux; amd64

### `ruby:2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27190697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d86a3f8dee7a019bbdb8077a8e1afb17b47425bf6e0fa5aa4b509e1a031f994c`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:33:58 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 03 Mar 2017 23:33:58 GMT
ENV RUBY_MAJOR=2.4
# Fri, 03 Mar 2017 23:33:58 GMT
ENV RUBY_VERSION=2.4.0
# Fri, 03 Mar 2017 23:33:59 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Fri, 03 Mar 2017 23:33:59 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 03 Mar 2017 23:36:34 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:21:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:21:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:21:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:21:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:21:03 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb3cefb04d0b40438da21681cf124e61adc2d5cf6c9cca6aba2806da7c7c599`  
		Last Modified: Sat, 04 Mar 2017 05:51:37 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633d6902a2b1eea9302b9db769a6716dd066e97c2b57425f6f6d0c962841afe5`  
		Last Modified: Sat, 04 Mar 2017 05:57:16 GMT  
		Size: 24.2 MB (24238850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c9f208bb98ab5280f064e38b1d710c6e5a81542a29b48cf9403391e0b0cab8`  
		Last Modified: Tue, 07 Mar 2017 01:32:05 GMT  
		Size: 638.1 KB (638113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42319904048567e5f45ca93bd7bb16a5b11954c7bbbcc6b4030fec57669a97de`  
		Last Modified: Tue, 07 Mar 2017 01:32:05 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:alpine`

```console
$ docker pull ruby@sha256:4df11a11f73c879b348c3f5f925166a90d967ae605bb082275118de2aefc3c79
```

-	Platforms:
	-	linux; amd64

### `ruby:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27190697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d86a3f8dee7a019bbdb8077a8e1afb17b47425bf6e0fa5aa4b509e1a031f994c`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:33:58 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 03 Mar 2017 23:33:58 GMT
ENV RUBY_MAJOR=2.4
# Fri, 03 Mar 2017 23:33:58 GMT
ENV RUBY_VERSION=2.4.0
# Fri, 03 Mar 2017 23:33:59 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Fri, 03 Mar 2017 23:33:59 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 03 Mar 2017 23:36:34 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:21:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:21:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:21:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:21:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:21:03 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb3cefb04d0b40438da21681cf124e61adc2d5cf6c9cca6aba2806da7c7c599`  
		Last Modified: Sat, 04 Mar 2017 05:51:37 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633d6902a2b1eea9302b9db769a6716dd066e97c2b57425f6f6d0c962841afe5`  
		Last Modified: Sat, 04 Mar 2017 05:57:16 GMT  
		Size: 24.2 MB (24238850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c9f208bb98ab5280f064e38b1d710c6e5a81542a29b48cf9403391e0b0cab8`  
		Last Modified: Tue, 07 Mar 2017 01:32:05 GMT  
		Size: 638.1 KB (638113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42319904048567e5f45ca93bd7bb16a5b11954c7bbbcc6b4030fec57669a97de`  
		Last Modified: Tue, 07 Mar 2017 01:32:05 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.0-onbuild`

```console
$ docker pull ruby@sha256:38552b23cfb28ee04a35a6e49cb13b9e6613a334a6c311357d711cf90c3517d1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.0-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265515880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d4d594b8a1997785d6192a955a53b8c6ed65959cb6c0e046251f872d3250a7c`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:06:09 GMT
ENV RUBY_MAJOR=2.4
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBY_VERSION=2.4.0
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Tue, 28 Feb 2017 23:09:00 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:40 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:43 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:20:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:20:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:20:47 GMT
CMD ["irb"]
# Tue, 07 Mar 2017 01:21:05 GMT
RUN bundle config --global frozen 1
# Tue, 07 Mar 2017 01:21:06 GMT
RUN mkdir -p /usr/src/app
# Tue, 07 Mar 2017 01:21:06 GMT
WORKDIR /usr/src/app
# Tue, 07 Mar 2017 01:21:07 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 07 Mar 2017 01:21:07 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 07 Mar 2017 01:21:08 GMT
ONBUILD RUN bundle install
# Tue, 07 Mar 2017 01:21:09 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168cf3f33330209b5d659614bc0f85b33bdec178d185d6a9e439e98e2d1a3a95`  
		Last Modified: Thu, 02 Mar 2017 04:03:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021d84fef638ef285bbc2bdb4213a17e53bf75ef11a90b36ccb9c1f8603df2fc`  
		Last Modified: Thu, 02 Mar 2017 04:10:48 GMT  
		Size: 22.6 MB (22623600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dbc5125f409251423675010719d8f973b9560dfa147e8c20dff1303ae5669bd`  
		Last Modified: Tue, 07 Mar 2017 01:29:34 GMT  
		Size: 638.1 KB (638110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672b9d4e5b44be09f5703b99437d06eb757aea3e7a95c1888fecd7887d545b77`  
		Last Modified: Tue, 07 Mar 2017 01:29:34 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef152d8029d92dea40f3824f192a9aa4e4c8d5508b03096c188e89fab3b9e1d3`  
		Last Modified: Tue, 07 Mar 2017 01:33:19 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e3cdc314afa24f453824df1a4c188ef1218a780a30a747b85a3ff1618030c5`  
		Last Modified: Tue, 07 Mar 2017 01:33:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-onbuild`

```console
$ docker pull ruby@sha256:38552b23cfb28ee04a35a6e49cb13b9e6613a334a6c311357d711cf90c3517d1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265515880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d4d594b8a1997785d6192a955a53b8c6ed65959cb6c0e046251f872d3250a7c`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:06:09 GMT
ENV RUBY_MAJOR=2.4
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBY_VERSION=2.4.0
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Tue, 28 Feb 2017 23:09:00 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:40 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:43 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:20:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:20:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:20:47 GMT
CMD ["irb"]
# Tue, 07 Mar 2017 01:21:05 GMT
RUN bundle config --global frozen 1
# Tue, 07 Mar 2017 01:21:06 GMT
RUN mkdir -p /usr/src/app
# Tue, 07 Mar 2017 01:21:06 GMT
WORKDIR /usr/src/app
# Tue, 07 Mar 2017 01:21:07 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 07 Mar 2017 01:21:07 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 07 Mar 2017 01:21:08 GMT
ONBUILD RUN bundle install
# Tue, 07 Mar 2017 01:21:09 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168cf3f33330209b5d659614bc0f85b33bdec178d185d6a9e439e98e2d1a3a95`  
		Last Modified: Thu, 02 Mar 2017 04:03:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021d84fef638ef285bbc2bdb4213a17e53bf75ef11a90b36ccb9c1f8603df2fc`  
		Last Modified: Thu, 02 Mar 2017 04:10:48 GMT  
		Size: 22.6 MB (22623600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dbc5125f409251423675010719d8f973b9560dfa147e8c20dff1303ae5669bd`  
		Last Modified: Tue, 07 Mar 2017 01:29:34 GMT  
		Size: 638.1 KB (638110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672b9d4e5b44be09f5703b99437d06eb757aea3e7a95c1888fecd7887d545b77`  
		Last Modified: Tue, 07 Mar 2017 01:29:34 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef152d8029d92dea40f3824f192a9aa4e4c8d5508b03096c188e89fab3b9e1d3`  
		Last Modified: Tue, 07 Mar 2017 01:33:19 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e3cdc314afa24f453824df1a4c188ef1218a780a30a747b85a3ff1618030c5`  
		Last Modified: Tue, 07 Mar 2017 01:33:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-onbuild`

```console
$ docker pull ruby@sha256:38552b23cfb28ee04a35a6e49cb13b9e6613a334a6c311357d711cf90c3517d1
```

-	Platforms:
	-	linux; amd64

### `ruby:2-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265515880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d4d594b8a1997785d6192a955a53b8c6ed65959cb6c0e046251f872d3250a7c`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:06:09 GMT
ENV RUBY_MAJOR=2.4
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBY_VERSION=2.4.0
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Tue, 28 Feb 2017 23:09:00 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:40 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:43 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:20:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:20:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:20:47 GMT
CMD ["irb"]
# Tue, 07 Mar 2017 01:21:05 GMT
RUN bundle config --global frozen 1
# Tue, 07 Mar 2017 01:21:06 GMT
RUN mkdir -p /usr/src/app
# Tue, 07 Mar 2017 01:21:06 GMT
WORKDIR /usr/src/app
# Tue, 07 Mar 2017 01:21:07 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 07 Mar 2017 01:21:07 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 07 Mar 2017 01:21:08 GMT
ONBUILD RUN bundle install
# Tue, 07 Mar 2017 01:21:09 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168cf3f33330209b5d659614bc0f85b33bdec178d185d6a9e439e98e2d1a3a95`  
		Last Modified: Thu, 02 Mar 2017 04:03:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021d84fef638ef285bbc2bdb4213a17e53bf75ef11a90b36ccb9c1f8603df2fc`  
		Last Modified: Thu, 02 Mar 2017 04:10:48 GMT  
		Size: 22.6 MB (22623600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dbc5125f409251423675010719d8f973b9560dfa147e8c20dff1303ae5669bd`  
		Last Modified: Tue, 07 Mar 2017 01:29:34 GMT  
		Size: 638.1 KB (638110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672b9d4e5b44be09f5703b99437d06eb757aea3e7a95c1888fecd7887d545b77`  
		Last Modified: Tue, 07 Mar 2017 01:29:34 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef152d8029d92dea40f3824f192a9aa4e4c8d5508b03096c188e89fab3b9e1d3`  
		Last Modified: Tue, 07 Mar 2017 01:33:19 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e3cdc314afa24f453824df1a4c188ef1218a780a30a747b85a3ff1618030c5`  
		Last Modified: Tue, 07 Mar 2017 01:33:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:onbuild`

```console
$ docker pull ruby@sha256:38552b23cfb28ee04a35a6e49cb13b9e6613a334a6c311357d711cf90c3517d1
```

-	Platforms:
	-	linux; amd64

### `ruby:onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265515880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d4d594b8a1997785d6192a955a53b8c6ed65959cb6c0e046251f872d3250a7c`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:06:09 GMT
ENV RUBY_MAJOR=2.4
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBY_VERSION=2.4.0
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Tue, 28 Feb 2017 23:09:00 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:20:40 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:20:43 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:20:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:20:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:20:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:20:47 GMT
CMD ["irb"]
# Tue, 07 Mar 2017 01:21:05 GMT
RUN bundle config --global frozen 1
# Tue, 07 Mar 2017 01:21:06 GMT
RUN mkdir -p /usr/src/app
# Tue, 07 Mar 2017 01:21:06 GMT
WORKDIR /usr/src/app
# Tue, 07 Mar 2017 01:21:07 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 07 Mar 2017 01:21:07 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 07 Mar 2017 01:21:08 GMT
ONBUILD RUN bundle install
# Tue, 07 Mar 2017 01:21:09 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168cf3f33330209b5d659614bc0f85b33bdec178d185d6a9e439e98e2d1a3a95`  
		Last Modified: Thu, 02 Mar 2017 04:03:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021d84fef638ef285bbc2bdb4213a17e53bf75ef11a90b36ccb9c1f8603df2fc`  
		Last Modified: Thu, 02 Mar 2017 04:10:48 GMT  
		Size: 22.6 MB (22623600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dbc5125f409251423675010719d8f973b9560dfa147e8c20dff1303ae5669bd`  
		Last Modified: Tue, 07 Mar 2017 01:29:34 GMT  
		Size: 638.1 KB (638110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672b9d4e5b44be09f5703b99437d06eb757aea3e7a95c1888fecd7887d545b77`  
		Last Modified: Tue, 07 Mar 2017 01:29:34 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef152d8029d92dea40f3824f192a9aa4e4c8d5508b03096c188e89fab3b9e1d3`  
		Last Modified: Tue, 07 Mar 2017 01:33:19 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e3cdc314afa24f453824df1a4c188ef1218a780a30a747b85a3ff1618030c5`  
		Last Modified: Tue, 07 Mar 2017 01:33:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
