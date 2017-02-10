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
$ docker pull ruby@sha256:4347a685ead3ced9bec7b01a036ade5304ca89e3ada8778fa063033c38d8fc9c
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.7 MB (276736316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cad56a531c696f4e19ebfeb1e5e10a34757c4a51d5c28cdd58d7d87d34be398`
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
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 02:10:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 10 Feb 2017 02:13:32 GMT
ENV RUBY_MAJOR=2.1
# Fri, 10 Feb 2017 02:13:32 GMT
ENV RUBY_VERSION=2.1.10
# Fri, 10 Feb 2017 02:13:32 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Fri, 10 Feb 2017 02:13:32 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 10 Feb 2017 02:15:46 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 10 Feb 2017 02:15:46 GMT
ENV BUNDLER_VERSION=1.14.3
# Fri, 10 Feb 2017 02:15:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 10 Feb 2017 02:15:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 10 Feb 2017 02:15:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 10 Feb 2017 02:15:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 02:15:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 10 Feb 2017 02:15:50 GMT
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
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05feece943abb0180905a4617fc84be90973964fb9df3016fc0d5ea0a199554e`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039a35421512ac290061cdcb39692a72694166ef0f3c698e4181bcd5748a6861`  
		Last Modified: Fri, 10 Feb 2017 17:58:43 GMT  
		Size: 32.6 MB (32577088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9a9ac725b9e9ea4dbbaf4e8e7926bdaa7dd92b2a667c55e34d5c3e9d3bfaa9`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 631.7 KB (631733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d492d95e3ce0d2bf47bb1330bccd0a942a5040f352538e3c7627c292040a80db`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1`

```console
$ docker pull ruby@sha256:4347a685ead3ced9bec7b01a036ade5304ca89e3ada8778fa063033c38d8fc9c
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.7 MB (276736316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cad56a531c696f4e19ebfeb1e5e10a34757c4a51d5c28cdd58d7d87d34be398`
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
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 02:10:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 10 Feb 2017 02:13:32 GMT
ENV RUBY_MAJOR=2.1
# Fri, 10 Feb 2017 02:13:32 GMT
ENV RUBY_VERSION=2.1.10
# Fri, 10 Feb 2017 02:13:32 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Fri, 10 Feb 2017 02:13:32 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 10 Feb 2017 02:15:46 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 10 Feb 2017 02:15:46 GMT
ENV BUNDLER_VERSION=1.14.3
# Fri, 10 Feb 2017 02:15:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 10 Feb 2017 02:15:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 10 Feb 2017 02:15:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 10 Feb 2017 02:15:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 02:15:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 10 Feb 2017 02:15:50 GMT
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
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05feece943abb0180905a4617fc84be90973964fb9df3016fc0d5ea0a199554e`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039a35421512ac290061cdcb39692a72694166ef0f3c698e4181bcd5748a6861`  
		Last Modified: Fri, 10 Feb 2017 17:58:43 GMT  
		Size: 32.6 MB (32577088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9a9ac725b9e9ea4dbbaf4e8e7926bdaa7dd92b2a667c55e34d5c3e9d3bfaa9`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 631.7 KB (631733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d492d95e3ce0d2bf47bb1330bccd0a942a5040f352538e3c7627c292040a80db`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-slim`

```console
$ docker pull ruby@sha256:f287c8978bd28732efea8a4c929c9c2a7a4df6df16b0e3b356678832318fde86
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 MB (94709752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3115f7e2451c2c6698279771624f91399a053c1c0fa1b28d84f5280acf24675`
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
# Wed, 25 Jan 2017 18:01:22 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 25 Jan 2017 18:03:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 25 Jan 2017 18:03:46 GMT
ENV BUNDLER_VERSION=1.14.3
# Wed, 25 Jan 2017 18:03:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 25 Jan 2017 18:03:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Jan 2017 18:03:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Jan 2017 18:03:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2017 18:03:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Jan 2017 18:03:49 GMT
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
	-	`sha256:4ae02dbe284e3182a9217b31bef49276987a9070f0cbe9c485caa61b297e80a6`  
		Last Modified: Wed, 25 Jan 2017 18:30:25 GMT  
		Size: 32.7 MB (32722176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4feafb489ea7fbc2e54083f095caa1f74124ddd34678301aeb93d83330838af`  
		Last Modified: Wed, 25 Jan 2017 18:30:16 GMT  
		Size: 631.8 KB (631758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734006746ca766a3b12fcc1abf25fbd50410dd1089fc7683ce8774ee94d050a0`  
		Last Modified: Wed, 25 Jan 2017 18:30:15 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-slim`

```console
$ docker pull ruby@sha256:f287c8978bd28732efea8a4c929c9c2a7a4df6df16b0e3b356678832318fde86
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 MB (94709752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3115f7e2451c2c6698279771624f91399a053c1c0fa1b28d84f5280acf24675`
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
# Wed, 25 Jan 2017 18:01:22 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 25 Jan 2017 18:03:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 25 Jan 2017 18:03:46 GMT
ENV BUNDLER_VERSION=1.14.3
# Wed, 25 Jan 2017 18:03:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 25 Jan 2017 18:03:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Jan 2017 18:03:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Jan 2017 18:03:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2017 18:03:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Jan 2017 18:03:49 GMT
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
	-	`sha256:4ae02dbe284e3182a9217b31bef49276987a9070f0cbe9c485caa61b297e80a6`  
		Last Modified: Wed, 25 Jan 2017 18:30:25 GMT  
		Size: 32.7 MB (32722176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4feafb489ea7fbc2e54083f095caa1f74124ddd34678301aeb93d83330838af`  
		Last Modified: Wed, 25 Jan 2017 18:30:16 GMT  
		Size: 631.8 KB (631758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734006746ca766a3b12fcc1abf25fbd50410dd1089fc7683ce8774ee94d050a0`  
		Last Modified: Wed, 25 Jan 2017 18:30:15 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-alpine`

```console
$ docker pull ruby@sha256:eb83bdab512376b093eb8e1ed22c86c25988a398f34a15bf229726dbf04ce3f7
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35597353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae46ee8014ab96f68bb86150675d9efba6aab633b916d01919c207bce6891a9`
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
# Wed, 25 Jan 2017 18:03:50 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 25 Jan 2017 18:05:50 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 25 Jan 2017 18:05:50 GMT
ENV BUNDLER_VERSION=1.14.3
# Wed, 25 Jan 2017 18:05:51 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 25 Jan 2017 18:05:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Jan 2017 18:05:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Jan 2017 18:05:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2017 18:05:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Jan 2017 18:05:54 GMT
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
	-	`sha256:26a7e746863893fcf7a45ec79c37afd923f0d754683e51edd89e5797512765f6`  
		Last Modified: Wed, 25 Jan 2017 18:31:10 GMT  
		Size: 32.7 MB (32652192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e622b4d4489d383b3f686750762585ed0663e887722965e7e9ef01fb5ae801`  
		Last Modified: Wed, 25 Jan 2017 18:31:01 GMT  
		Size: 631.7 KB (631721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a5fdb720e50635c8e1a8493d10fbc0d773868b6c4a17517d63b1a7ead1d82a2`  
		Last Modified: Wed, 25 Jan 2017 18:30:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-alpine`

```console
$ docker pull ruby@sha256:eb83bdab512376b093eb8e1ed22c86c25988a398f34a15bf229726dbf04ce3f7
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35597353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae46ee8014ab96f68bb86150675d9efba6aab633b916d01919c207bce6891a9`
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
# Wed, 25 Jan 2017 18:03:50 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 25 Jan 2017 18:05:50 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 25 Jan 2017 18:05:50 GMT
ENV BUNDLER_VERSION=1.14.3
# Wed, 25 Jan 2017 18:05:51 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 25 Jan 2017 18:05:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Jan 2017 18:05:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Jan 2017 18:05:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2017 18:05:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Jan 2017 18:05:54 GMT
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
	-	`sha256:26a7e746863893fcf7a45ec79c37afd923f0d754683e51edd89e5797512765f6`  
		Last Modified: Wed, 25 Jan 2017 18:31:10 GMT  
		Size: 32.7 MB (32652192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e622b4d4489d383b3f686750762585ed0663e887722965e7e9ef01fb5ae801`  
		Last Modified: Wed, 25 Jan 2017 18:31:01 GMT  
		Size: 631.7 KB (631721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a5fdb720e50635c8e1a8493d10fbc0d773868b6c4a17517d63b1a7ead1d82a2`  
		Last Modified: Wed, 25 Jan 2017 18:30:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1.10-onbuild`

```console
$ docker pull ruby@sha256:87d5caf6556cd3d817fb1975b0cb93bc221953ae10c1d919d333164ca6e025e9
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1.10-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.7 MB (276736629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25d7384b5d1e2b63e5232716a59c00f7332c2a1c915e700afe4b6cf81852b7b7`
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
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 02:10:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 10 Feb 2017 02:13:32 GMT
ENV RUBY_MAJOR=2.1
# Fri, 10 Feb 2017 02:13:32 GMT
ENV RUBY_VERSION=2.1.10
# Fri, 10 Feb 2017 02:13:32 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Fri, 10 Feb 2017 02:13:32 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 10 Feb 2017 02:15:46 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 10 Feb 2017 02:15:46 GMT
ENV BUNDLER_VERSION=1.14.3
# Fri, 10 Feb 2017 02:15:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 10 Feb 2017 02:15:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 10 Feb 2017 02:15:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 10 Feb 2017 02:15:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 02:15:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 10 Feb 2017 02:15:50 GMT
CMD ["irb"]
# Fri, 10 Feb 2017 02:15:51 GMT
RUN bundle config --global frozen 1
# Fri, 10 Feb 2017 02:15:52 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 02:15:52 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 02:15:52 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Fri, 10 Feb 2017 02:15:53 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Fri, 10 Feb 2017 02:15:53 GMT
ONBUILD RUN bundle install
# Fri, 10 Feb 2017 02:15:53 GMT
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
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05feece943abb0180905a4617fc84be90973964fb9df3016fc0d5ea0a199554e`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039a35421512ac290061cdcb39692a72694166ef0f3c698e4181bcd5748a6861`  
		Last Modified: Fri, 10 Feb 2017 17:58:43 GMT  
		Size: 32.6 MB (32577088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9a9ac725b9e9ea4dbbaf4e8e7926bdaa7dd92b2a667c55e34d5c3e9d3bfaa9`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 631.7 KB (631733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d492d95e3ce0d2bf47bb1330bccd0a942a5040f352538e3c7627c292040a80db`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ee39eee3cafb1086e574df400f45b479149c5f62882720c9e13f3e78562d68`  
		Last Modified: Fri, 10 Feb 2017 17:59:21 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1d1b2cc2ebccfaf644a666f2f08765c464c1c385ee579aa58bac02a9e04840`  
		Last Modified: Fri, 10 Feb 2017 17:59:21 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.1-onbuild`

```console
$ docker pull ruby@sha256:87d5caf6556cd3d817fb1975b0cb93bc221953ae10c1d919d333164ca6e025e9
```

-	Platforms:
	-	linux; amd64

### `ruby:2.1-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.7 MB (276736629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25d7384b5d1e2b63e5232716a59c00f7332c2a1c915e700afe4b6cf81852b7b7`
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
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 02:10:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 10 Feb 2017 02:13:32 GMT
ENV RUBY_MAJOR=2.1
# Fri, 10 Feb 2017 02:13:32 GMT
ENV RUBY_VERSION=2.1.10
# Fri, 10 Feb 2017 02:13:32 GMT
ENV RUBY_DOWNLOAD_SHA256=5be9f8d5d29d252cd7f969ab7550e31bbb001feb4a83532301c0dd3b5006e148
# Fri, 10 Feb 2017 02:13:32 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 10 Feb 2017 02:15:46 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 10 Feb 2017 02:15:46 GMT
ENV BUNDLER_VERSION=1.14.3
# Fri, 10 Feb 2017 02:15:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 10 Feb 2017 02:15:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 10 Feb 2017 02:15:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 10 Feb 2017 02:15:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 02:15:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 10 Feb 2017 02:15:50 GMT
CMD ["irb"]
# Fri, 10 Feb 2017 02:15:51 GMT
RUN bundle config --global frozen 1
# Fri, 10 Feb 2017 02:15:52 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 02:15:52 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 02:15:52 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Fri, 10 Feb 2017 02:15:53 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Fri, 10 Feb 2017 02:15:53 GMT
ONBUILD RUN bundle install
# Fri, 10 Feb 2017 02:15:53 GMT
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
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05feece943abb0180905a4617fc84be90973964fb9df3016fc0d5ea0a199554e`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039a35421512ac290061cdcb39692a72694166ef0f3c698e4181bcd5748a6861`  
		Last Modified: Fri, 10 Feb 2017 17:58:43 GMT  
		Size: 32.6 MB (32577088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9a9ac725b9e9ea4dbbaf4e8e7926bdaa7dd92b2a667c55e34d5c3e9d3bfaa9`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 631.7 KB (631733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d492d95e3ce0d2bf47bb1330bccd0a942a5040f352538e3c7627c292040a80db`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ee39eee3cafb1086e574df400f45b479149c5f62882720c9e13f3e78562d68`  
		Last Modified: Fri, 10 Feb 2017 17:59:21 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1d1b2cc2ebccfaf644a666f2f08765c464c1c385ee579aa58bac02a9e04840`  
		Last Modified: Fri, 10 Feb 2017 17:59:21 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6`

```console
$ docker pull ruby@sha256:7da997e5e9d9a3cd78dc0c3f691ea07d956219a8cc5a22802b45961b877f7903
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.4 MB (277351889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84cd7422e259a6efd45a8100bf092e99ad283039019022e53c7c0a5159a298bd`
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
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 02:10:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 10 Feb 2017 02:15:54 GMT
ENV RUBY_MAJOR=2.2
# Fri, 10 Feb 2017 02:15:54 GMT
ENV RUBY_VERSION=2.2.6
# Fri, 10 Feb 2017 02:15:54 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Fri, 10 Feb 2017 02:15:55 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 10 Feb 2017 02:18:11 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 10 Feb 2017 02:18:11 GMT
ENV BUNDLER_VERSION=1.14.3
# Fri, 10 Feb 2017 02:18:13 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 10 Feb 2017 02:18:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 10 Feb 2017 02:18:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 10 Feb 2017 02:18:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 02:18:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 10 Feb 2017 02:18:15 GMT
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
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05feece943abb0180905a4617fc84be90973964fb9df3016fc0d5ea0a199554e`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c603fc64063a4ca32ba011dbef960ef41bbe1be76c5fca46be8809a750b27b7e`  
		Last Modified: Fri, 10 Feb 2017 18:00:12 GMT  
		Size: 33.2 MB (33192664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9aa6022e3be43283aea4c7fa711f10216171dad0e554a21834c2e093cf8b81`  
		Last Modified: Fri, 10 Feb 2017 17:59:58 GMT  
		Size: 631.7 KB (631731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a155b2aee7477bc949d440111fd4215efffa58d9f0b2b09c76b5a0e36fd3707a`  
		Last Modified: Fri, 10 Feb 2017 17:59:58 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2`

```console
$ docker pull ruby@sha256:7da997e5e9d9a3cd78dc0c3f691ea07d956219a8cc5a22802b45961b877f7903
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.4 MB (277351889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84cd7422e259a6efd45a8100bf092e99ad283039019022e53c7c0a5159a298bd`
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
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 02:10:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 10 Feb 2017 02:15:54 GMT
ENV RUBY_MAJOR=2.2
# Fri, 10 Feb 2017 02:15:54 GMT
ENV RUBY_VERSION=2.2.6
# Fri, 10 Feb 2017 02:15:54 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Fri, 10 Feb 2017 02:15:55 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 10 Feb 2017 02:18:11 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 10 Feb 2017 02:18:11 GMT
ENV BUNDLER_VERSION=1.14.3
# Fri, 10 Feb 2017 02:18:13 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 10 Feb 2017 02:18:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 10 Feb 2017 02:18:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 10 Feb 2017 02:18:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 02:18:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 10 Feb 2017 02:18:15 GMT
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
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05feece943abb0180905a4617fc84be90973964fb9df3016fc0d5ea0a199554e`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c603fc64063a4ca32ba011dbef960ef41bbe1be76c5fca46be8809a750b27b7e`  
		Last Modified: Fri, 10 Feb 2017 18:00:12 GMT  
		Size: 33.2 MB (33192664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9aa6022e3be43283aea4c7fa711f10216171dad0e554a21834c2e093cf8b81`  
		Last Modified: Fri, 10 Feb 2017 17:59:58 GMT  
		Size: 631.7 KB (631731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a155b2aee7477bc949d440111fd4215efffa58d9f0b2b09c76b5a0e36fd3707a`  
		Last Modified: Fri, 10 Feb 2017 17:59:58 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6-slim`

```console
$ docker pull ruby@sha256:86b0ae9308dfbe11c0d9628b55743df9d842483e86c555fde24b08d767e65b04
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.3 MB (95314225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d35f741839104ee62684142513bdcdad8ab1089518c6d388503487b1389c3dbb`
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
# Wed, 25 Jan 2017 18:08:18 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 25 Jan 2017 18:10:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 25 Jan 2017 18:10:49 GMT
ENV BUNDLER_VERSION=1.14.3
# Wed, 25 Jan 2017 18:10:50 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 25 Jan 2017 18:10:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Jan 2017 18:10:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Jan 2017 18:10:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2017 18:10:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Jan 2017 18:10:52 GMT
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
	-	`sha256:759aaf3bf184b4692bcec722e430b1de0efcc5ebde1900ed83ef473c51d13d25`  
		Last Modified: Wed, 25 Jan 2017 18:33:14 GMT  
		Size: 33.3 MB (33326682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d391bd471e9bc64130a292130fcc4209eda0d1104ace90657ee4a56936cce2`  
		Last Modified: Wed, 25 Jan 2017 18:33:04 GMT  
		Size: 631.7 KB (631727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d548a23aa17d0f8419147686fdfa8b4f1637c6d592d2e13747c673f78a94b3c`  
		Last Modified: Wed, 25 Jan 2017 18:33:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-slim`

```console
$ docker pull ruby@sha256:86b0ae9308dfbe11c0d9628b55743df9d842483e86c555fde24b08d767e65b04
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.3 MB (95314225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d35f741839104ee62684142513bdcdad8ab1089518c6d388503487b1389c3dbb`
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
# Wed, 25 Jan 2017 18:08:18 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 25 Jan 2017 18:10:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 25 Jan 2017 18:10:49 GMT
ENV BUNDLER_VERSION=1.14.3
# Wed, 25 Jan 2017 18:10:50 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 25 Jan 2017 18:10:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Jan 2017 18:10:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Jan 2017 18:10:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2017 18:10:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Jan 2017 18:10:52 GMT
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
	-	`sha256:759aaf3bf184b4692bcec722e430b1de0efcc5ebde1900ed83ef473c51d13d25`  
		Last Modified: Wed, 25 Jan 2017 18:33:14 GMT  
		Size: 33.3 MB (33326682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d391bd471e9bc64130a292130fcc4209eda0d1104ace90657ee4a56936cce2`  
		Last Modified: Wed, 25 Jan 2017 18:33:04 GMT  
		Size: 631.7 KB (631727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d548a23aa17d0f8419147686fdfa8b4f1637c6d592d2e13747c673f78a94b3c`  
		Last Modified: Wed, 25 Jan 2017 18:33:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6-alpine`

```console
$ docker pull ruby@sha256:1c49035572ab1f4f1ac3462f178fe11bdea4ab5f67d64668522f9e4011964404
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35985489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c396adb54f6cfba35c433e972b9acb3bec3a036ba9de89449afbfb36e8ce3da`
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
# Wed, 25 Jan 2017 18:10:53 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 25 Jan 2017 18:12:53 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 25 Jan 2017 18:12:53 GMT
ENV BUNDLER_VERSION=1.14.3
# Wed, 25 Jan 2017 18:12:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 25 Jan 2017 18:12:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Jan 2017 18:12:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Jan 2017 18:12:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2017 18:12:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Jan 2017 18:12:57 GMT
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
	-	`sha256:aa9df02142e776c3230156e9765e6bacea682771641384792353fa12eb6de734`  
		Last Modified: Wed, 25 Jan 2017 18:33:58 GMT  
		Size: 33.0 MB (33040337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d3624ba89f13bb2fea8bfe092a62ec89f170af71ac55576bef22a23a6c9bc3`  
		Last Modified: Wed, 25 Jan 2017 18:33:48 GMT  
		Size: 631.7 KB (631712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcb839d6d2b4b4e39c0fe5c4b7e36f7548575101abd631f3109f8799f3cab1f`  
		Last Modified: Wed, 25 Jan 2017 18:33:48 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-alpine`

```console
$ docker pull ruby@sha256:1c49035572ab1f4f1ac3462f178fe11bdea4ab5f67d64668522f9e4011964404
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35985489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c396adb54f6cfba35c433e972b9acb3bec3a036ba9de89449afbfb36e8ce3da`
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
# Wed, 25 Jan 2017 18:10:53 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 25 Jan 2017 18:12:53 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 25 Jan 2017 18:12:53 GMT
ENV BUNDLER_VERSION=1.14.3
# Wed, 25 Jan 2017 18:12:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 25 Jan 2017 18:12:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Jan 2017 18:12:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Jan 2017 18:12:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2017 18:12:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Jan 2017 18:12:57 GMT
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
	-	`sha256:aa9df02142e776c3230156e9765e6bacea682771641384792353fa12eb6de734`  
		Last Modified: Wed, 25 Jan 2017 18:33:58 GMT  
		Size: 33.0 MB (33040337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d3624ba89f13bb2fea8bfe092a62ec89f170af71ac55576bef22a23a6c9bc3`  
		Last Modified: Wed, 25 Jan 2017 18:33:48 GMT  
		Size: 631.7 KB (631712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcb839d6d2b4b4e39c0fe5c4b7e36f7548575101abd631f3109f8799f3cab1f`  
		Last Modified: Wed, 25 Jan 2017 18:33:48 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.6-onbuild`

```console
$ docker pull ruby@sha256:156ced0cb64e27e9a2b2f3b538efd9662261febde029ee7cf7b25fd44eb6c503
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.6-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.4 MB (277352201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0bcc569898573c84c9a5080982f33a9de20d1238ab6cce8c5cab967269e5ba`
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
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 02:10:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 10 Feb 2017 02:15:54 GMT
ENV RUBY_MAJOR=2.2
# Fri, 10 Feb 2017 02:15:54 GMT
ENV RUBY_VERSION=2.2.6
# Fri, 10 Feb 2017 02:15:54 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Fri, 10 Feb 2017 02:15:55 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 10 Feb 2017 02:18:11 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 10 Feb 2017 02:18:11 GMT
ENV BUNDLER_VERSION=1.14.3
# Fri, 10 Feb 2017 02:18:13 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 10 Feb 2017 02:18:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 10 Feb 2017 02:18:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 10 Feb 2017 02:18:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 02:18:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 10 Feb 2017 02:18:15 GMT
CMD ["irb"]
# Fri, 10 Feb 2017 02:18:16 GMT
RUN bundle config --global frozen 1
# Fri, 10 Feb 2017 02:18:17 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 02:18:17 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 02:18:18 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Fri, 10 Feb 2017 02:18:18 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Fri, 10 Feb 2017 02:18:18 GMT
ONBUILD RUN bundle install
# Fri, 10 Feb 2017 02:18:18 GMT
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
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05feece943abb0180905a4617fc84be90973964fb9df3016fc0d5ea0a199554e`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c603fc64063a4ca32ba011dbef960ef41bbe1be76c5fca46be8809a750b27b7e`  
		Last Modified: Fri, 10 Feb 2017 18:00:12 GMT  
		Size: 33.2 MB (33192664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9aa6022e3be43283aea4c7fa711f10216171dad0e554a21834c2e093cf8b81`  
		Last Modified: Fri, 10 Feb 2017 17:59:58 GMT  
		Size: 631.7 KB (631731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a155b2aee7477bc949d440111fd4215efffa58d9f0b2b09c76b5a0e36fd3707a`  
		Last Modified: Fri, 10 Feb 2017 17:59:58 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7d23485e66830634e66dc0f6f87519c01b30bc627fb0e8fbf1333e0356b9f1`  
		Last Modified: Fri, 10 Feb 2017 18:00:54 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7046a7b4a77e2c29404942b3929975f870f5d2fc54f9fe28ec57a01f80b49027`  
		Last Modified: Fri, 10 Feb 2017 18:00:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-onbuild`

```console
$ docker pull ruby@sha256:156ced0cb64e27e9a2b2f3b538efd9662261febde029ee7cf7b25fd44eb6c503
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.4 MB (277352201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0bcc569898573c84c9a5080982f33a9de20d1238ab6cce8c5cab967269e5ba`
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
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 02:10:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 10 Feb 2017 02:15:54 GMT
ENV RUBY_MAJOR=2.2
# Fri, 10 Feb 2017 02:15:54 GMT
ENV RUBY_VERSION=2.2.6
# Fri, 10 Feb 2017 02:15:54 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Fri, 10 Feb 2017 02:15:55 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 10 Feb 2017 02:18:11 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 10 Feb 2017 02:18:11 GMT
ENV BUNDLER_VERSION=1.14.3
# Fri, 10 Feb 2017 02:18:13 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 10 Feb 2017 02:18:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 10 Feb 2017 02:18:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 10 Feb 2017 02:18:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 02:18:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 10 Feb 2017 02:18:15 GMT
CMD ["irb"]
# Fri, 10 Feb 2017 02:18:16 GMT
RUN bundle config --global frozen 1
# Fri, 10 Feb 2017 02:18:17 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 02:18:17 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 02:18:18 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Fri, 10 Feb 2017 02:18:18 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Fri, 10 Feb 2017 02:18:18 GMT
ONBUILD RUN bundle install
# Fri, 10 Feb 2017 02:18:18 GMT
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
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05feece943abb0180905a4617fc84be90973964fb9df3016fc0d5ea0a199554e`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c603fc64063a4ca32ba011dbef960ef41bbe1be76c5fca46be8809a750b27b7e`  
		Last Modified: Fri, 10 Feb 2017 18:00:12 GMT  
		Size: 33.2 MB (33192664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9aa6022e3be43283aea4c7fa711f10216171dad0e554a21834c2e093cf8b81`  
		Last Modified: Fri, 10 Feb 2017 17:59:58 GMT  
		Size: 631.7 KB (631731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a155b2aee7477bc949d440111fd4215efffa58d9f0b2b09c76b5a0e36fd3707a`  
		Last Modified: Fri, 10 Feb 2017 17:59:58 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7d23485e66830634e66dc0f6f87519c01b30bc627fb0e8fbf1333e0356b9f1`  
		Last Modified: Fri, 10 Feb 2017 18:00:54 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7046a7b4a77e2c29404942b3929975f870f5d2fc54f9fe28ec57a01f80b49027`  
		Last Modified: Fri, 10 Feb 2017 18:00:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3`

```console
$ docker pull ruby@sha256:d4ff8e156b316f3fb11d313b983e5c80c2f90b8849e9e07411b1315c0c2e22c1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279322663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e38e33b9bda38217bc2d6792d73527286e7adc81bd6478ab0d1138d9bdb0b444`
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
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 02:10:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 10 Feb 2017 02:18:19 GMT
ENV RUBY_MAJOR=2.3
# Fri, 10 Feb 2017 02:18:19 GMT
ENV RUBY_VERSION=2.3.3
# Fri, 10 Feb 2017 02:18:20 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Fri, 10 Feb 2017 02:18:20 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 10 Feb 2017 02:20:42 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 10 Feb 2017 02:20:42 GMT
ENV BUNDLER_VERSION=1.14.3
# Fri, 10 Feb 2017 02:20:44 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 10 Feb 2017 02:20:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 10 Feb 2017 02:20:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 10 Feb 2017 02:20:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 02:20:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 10 Feb 2017 02:20:46 GMT
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
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05feece943abb0180905a4617fc84be90973964fb9df3016fc0d5ea0a199554e`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010e0e5d549c6b48fb08b2e2c490fdeae6e10152f2f48cd4e21409af430255dd`  
		Last Modified: Fri, 10 Feb 2017 18:01:45 GMT  
		Size: 35.2 MB (35163438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1175fd9946e78ae450712c20c4af2eae98b10ef2906f6c8d32e39f055101417`  
		Last Modified: Fri, 10 Feb 2017 18:01:30 GMT  
		Size: 631.7 KB (631730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d3fadacd4ad91d21ffabdf100990c67e58430413b79abd12ec4104d3c6d691`  
		Last Modified: Fri, 10 Feb 2017 18:01:30 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3`

```console
$ docker pull ruby@sha256:d4ff8e156b316f3fb11d313b983e5c80c2f90b8849e9e07411b1315c0c2e22c1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279322663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e38e33b9bda38217bc2d6792d73527286e7adc81bd6478ab0d1138d9bdb0b444`
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
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 02:10:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 10 Feb 2017 02:18:19 GMT
ENV RUBY_MAJOR=2.3
# Fri, 10 Feb 2017 02:18:19 GMT
ENV RUBY_VERSION=2.3.3
# Fri, 10 Feb 2017 02:18:20 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Fri, 10 Feb 2017 02:18:20 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 10 Feb 2017 02:20:42 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 10 Feb 2017 02:20:42 GMT
ENV BUNDLER_VERSION=1.14.3
# Fri, 10 Feb 2017 02:20:44 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 10 Feb 2017 02:20:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 10 Feb 2017 02:20:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 10 Feb 2017 02:20:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 02:20:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 10 Feb 2017 02:20:46 GMT
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
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05feece943abb0180905a4617fc84be90973964fb9df3016fc0d5ea0a199554e`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010e0e5d549c6b48fb08b2e2c490fdeae6e10152f2f48cd4e21409af430255dd`  
		Last Modified: Fri, 10 Feb 2017 18:01:45 GMT  
		Size: 35.2 MB (35163438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1175fd9946e78ae450712c20c4af2eae98b10ef2906f6c8d32e39f055101417`  
		Last Modified: Fri, 10 Feb 2017 18:01:30 GMT  
		Size: 631.7 KB (631730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d3fadacd4ad91d21ffabdf100990c67e58430413b79abd12ec4104d3c6d691`  
		Last Modified: Fri, 10 Feb 2017 18:01:30 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3-slim`

```console
$ docker pull ruby@sha256:7766dc688808ba753f998d0c6b33c6bd7598065815b31522db3403ac6c18bff5
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97303779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40ea46ae0e654c6e17307f39091cd9772262195098236b51fc3dbd76a50e77a0`
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
# Wed, 25 Jan 2017 18:15:29 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 25 Jan 2017 18:18:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 25 Jan 2017 18:18:15 GMT
ENV BUNDLER_VERSION=1.14.3
# Wed, 25 Jan 2017 18:18:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 25 Jan 2017 18:18:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Jan 2017 18:18:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Jan 2017 18:18:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2017 18:18:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Jan 2017 18:18:18 GMT
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
	-	`sha256:b287983f6d43db1adac1a5f1eb1d2deacd6ca8a2cc0150dd0e532dac9a62c9a5`  
		Last Modified: Wed, 25 Jan 2017 18:36:04 GMT  
		Size: 35.3 MB (35316236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6096fb71ac430c9942408c32a9908f9874a3601a24f3d8e81ab1b1f0c98dbb`  
		Last Modified: Wed, 25 Jan 2017 18:35:52 GMT  
		Size: 631.7 KB (631726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a58a8377c3d5f87d4bfdd4f13ac5468b88572e9f9e7c131b929d2522210ce`  
		Last Modified: Wed, 25 Jan 2017 18:35:52 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-slim`

```console
$ docker pull ruby@sha256:7766dc688808ba753f998d0c6b33c6bd7598065815b31522db3403ac6c18bff5
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97303779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40ea46ae0e654c6e17307f39091cd9772262195098236b51fc3dbd76a50e77a0`
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
# Wed, 25 Jan 2017 18:15:29 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 25 Jan 2017 18:18:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 25 Jan 2017 18:18:15 GMT
ENV BUNDLER_VERSION=1.14.3
# Wed, 25 Jan 2017 18:18:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 25 Jan 2017 18:18:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Jan 2017 18:18:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Jan 2017 18:18:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2017 18:18:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Jan 2017 18:18:18 GMT
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
	-	`sha256:b287983f6d43db1adac1a5f1eb1d2deacd6ca8a2cc0150dd0e532dac9a62c9a5`  
		Last Modified: Wed, 25 Jan 2017 18:36:04 GMT  
		Size: 35.3 MB (35316236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6096fb71ac430c9942408c32a9908f9874a3601a24f3d8e81ab1b1f0c98dbb`  
		Last Modified: Wed, 25 Jan 2017 18:35:52 GMT  
		Size: 631.7 KB (631726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a58a8377c3d5f87d4bfdd4f13ac5468b88572e9f9e7c131b929d2522210ce`  
		Last Modified: Wed, 25 Jan 2017 18:35:52 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3-alpine`

```console
$ docker pull ruby@sha256:068f61d6a477f16e392046d192d81f38b14803ae5eb38ddfe254bdce4d7c82c0
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42925738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ebcac0773050008b1b64b4c0aa1598bdc30e50035e2a7f16151025b42b8a71b`
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
# Wed, 25 Jan 2017 18:18:18 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 25 Jan 2017 18:20:25 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 25 Jan 2017 18:20:25 GMT
ENV BUNDLER_VERSION=1.14.3
# Wed, 25 Jan 2017 18:20:27 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 25 Jan 2017 18:20:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Jan 2017 18:20:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Jan 2017 18:20:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2017 18:20:28 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Jan 2017 18:20:29 GMT
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
	-	`sha256:1cb0f49adcafd1f597dad518a1bacff21625ca63a3bf275957940f8a4fcf8d1a`  
		Last Modified: Wed, 25 Jan 2017 18:36:51 GMT  
		Size: 40.0 MB (39980583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337afa2c2cf41d1fc4d588f3a33bd1cf1fe027d76029ea683f84394f19876993`  
		Last Modified: Wed, 25 Jan 2017 18:36:39 GMT  
		Size: 631.7 KB (631713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ee8d36ef6e2e614c8387fe9aa70211f2cdfa644b2d3e9cffe893fc357fc985`  
		Last Modified: Wed, 25 Jan 2017 18:36:39 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-alpine`

```console
$ docker pull ruby@sha256:068f61d6a477f16e392046d192d81f38b14803ae5eb38ddfe254bdce4d7c82c0
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42925738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ebcac0773050008b1b64b4c0aa1598bdc30e50035e2a7f16151025b42b8a71b`
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
# Wed, 25 Jan 2017 18:18:18 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 25 Jan 2017 18:20:25 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 25 Jan 2017 18:20:25 GMT
ENV BUNDLER_VERSION=1.14.3
# Wed, 25 Jan 2017 18:20:27 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 25 Jan 2017 18:20:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Jan 2017 18:20:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Jan 2017 18:20:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2017 18:20:28 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Jan 2017 18:20:29 GMT
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
	-	`sha256:1cb0f49adcafd1f597dad518a1bacff21625ca63a3bf275957940f8a4fcf8d1a`  
		Last Modified: Wed, 25 Jan 2017 18:36:51 GMT  
		Size: 40.0 MB (39980583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337afa2c2cf41d1fc4d588f3a33bd1cf1fe027d76029ea683f84394f19876993`  
		Last Modified: Wed, 25 Jan 2017 18:36:39 GMT  
		Size: 631.7 KB (631713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ee8d36ef6e2e614c8387fe9aa70211f2cdfa644b2d3e9cffe893fc357fc985`  
		Last Modified: Wed, 25 Jan 2017 18:36:39 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.3-onbuild`

```console
$ docker pull ruby@sha256:64a46c27a41859e75e133974a4358b200ebcdf64064b2783902e89992ed5e28a
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279322974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08497660349f6673fbea2af2ddb4aecce5d0cee37b91c4cf9e900e958fde698d`
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
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 02:10:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 10 Feb 2017 02:18:19 GMT
ENV RUBY_MAJOR=2.3
# Fri, 10 Feb 2017 02:18:19 GMT
ENV RUBY_VERSION=2.3.3
# Fri, 10 Feb 2017 02:18:20 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Fri, 10 Feb 2017 02:18:20 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 10 Feb 2017 02:20:42 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 10 Feb 2017 02:20:42 GMT
ENV BUNDLER_VERSION=1.14.3
# Fri, 10 Feb 2017 02:20:44 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 10 Feb 2017 02:20:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 10 Feb 2017 02:20:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 10 Feb 2017 02:20:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 02:20:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 10 Feb 2017 02:20:46 GMT
CMD ["irb"]
# Fri, 10 Feb 2017 02:20:47 GMT
RUN bundle config --global frozen 1
# Fri, 10 Feb 2017 02:20:48 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 02:20:49 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 02:20:49 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Fri, 10 Feb 2017 02:20:49 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Fri, 10 Feb 2017 02:20:49 GMT
ONBUILD RUN bundle install
# Fri, 10 Feb 2017 02:20:50 GMT
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
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05feece943abb0180905a4617fc84be90973964fb9df3016fc0d5ea0a199554e`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010e0e5d549c6b48fb08b2e2c490fdeae6e10152f2f48cd4e21409af430255dd`  
		Last Modified: Fri, 10 Feb 2017 18:01:45 GMT  
		Size: 35.2 MB (35163438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1175fd9946e78ae450712c20c4af2eae98b10ef2906f6c8d32e39f055101417`  
		Last Modified: Fri, 10 Feb 2017 18:01:30 GMT  
		Size: 631.7 KB (631730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d3fadacd4ad91d21ffabdf100990c67e58430413b79abd12ec4104d3c6d691`  
		Last Modified: Fri, 10 Feb 2017 18:01:30 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:326bae27896487fc1ddc409fbf719aa66dd8e7fb2bce66176698ac7ee2f1ebb3`  
		Last Modified: Fri, 10 Feb 2017 18:02:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b611e4bdda6fc3e28ce6a3be32bafbf73278211a0099da2931687686d34c3f20`  
		Last Modified: Fri, 10 Feb 2017 18:02:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-onbuild`

```console
$ docker pull ruby@sha256:64a46c27a41859e75e133974a4358b200ebcdf64064b2783902e89992ed5e28a
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279322974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08497660349f6673fbea2af2ddb4aecce5d0cee37b91c4cf9e900e958fde698d`
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
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 02:10:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 10 Feb 2017 02:18:19 GMT
ENV RUBY_MAJOR=2.3
# Fri, 10 Feb 2017 02:18:19 GMT
ENV RUBY_VERSION=2.3.3
# Fri, 10 Feb 2017 02:18:20 GMT
ENV RUBY_DOWNLOAD_SHA256=1a4fa8c2885734ba37b97ffdb4a19b8fba0e8982606db02d936e65bac07419dc
# Fri, 10 Feb 2017 02:18:20 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 10 Feb 2017 02:20:42 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 10 Feb 2017 02:20:42 GMT
ENV BUNDLER_VERSION=1.14.3
# Fri, 10 Feb 2017 02:20:44 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 10 Feb 2017 02:20:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 10 Feb 2017 02:20:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 10 Feb 2017 02:20:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 02:20:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 10 Feb 2017 02:20:46 GMT
CMD ["irb"]
# Fri, 10 Feb 2017 02:20:47 GMT
RUN bundle config --global frozen 1
# Fri, 10 Feb 2017 02:20:48 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 02:20:49 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 02:20:49 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Fri, 10 Feb 2017 02:20:49 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Fri, 10 Feb 2017 02:20:49 GMT
ONBUILD RUN bundle install
# Fri, 10 Feb 2017 02:20:50 GMT
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
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05feece943abb0180905a4617fc84be90973964fb9df3016fc0d5ea0a199554e`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010e0e5d549c6b48fb08b2e2c490fdeae6e10152f2f48cd4e21409af430255dd`  
		Last Modified: Fri, 10 Feb 2017 18:01:45 GMT  
		Size: 35.2 MB (35163438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1175fd9946e78ae450712c20c4af2eae98b10ef2906f6c8d32e39f055101417`  
		Last Modified: Fri, 10 Feb 2017 18:01:30 GMT  
		Size: 631.7 KB (631730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d3fadacd4ad91d21ffabdf100990c67e58430413b79abd12ec4104d3c6d691`  
		Last Modified: Fri, 10 Feb 2017 18:01:30 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:326bae27896487fc1ddc409fbf719aa66dd8e7fb2bce66176698ac7ee2f1ebb3`  
		Last Modified: Fri, 10 Feb 2017 18:02:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b611e4bdda6fc3e28ce6a3be32bafbf73278211a0099da2931687686d34c3f20`  
		Last Modified: Fri, 10 Feb 2017 18:02:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.0`

```console
$ docker pull ruby@sha256:29c25abb1a99c749f3bafcb5a18789cbca5b13d2140830ad999155f55de5f835
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266772194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d410559b78aaf282617698db85ed6aebb193750cbc06178de46199347ba1fda`
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
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 02:10:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 10 Feb 2017 02:10:41 GMT
ENV RUBY_MAJOR=2.4
# Fri, 10 Feb 2017 02:10:41 GMT
ENV RUBY_VERSION=2.4.0
# Fri, 10 Feb 2017 02:10:42 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Fri, 10 Feb 2017 02:10:42 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 10 Feb 2017 02:13:23 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 10 Feb 2017 02:13:23 GMT
ENV BUNDLER_VERSION=1.14.3
# Fri, 10 Feb 2017 02:13:25 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 10 Feb 2017 02:13:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 10 Feb 2017 02:13:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 10 Feb 2017 02:13:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 02:13:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 10 Feb 2017 02:13:27 GMT
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
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05feece943abb0180905a4617fc84be90973964fb9df3016fc0d5ea0a199554e`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b798840fde2fd121850be3e773f69a27e1771628a23b6522a242744ff7cfbc57`  
		Last Modified: Fri, 10 Feb 2017 18:03:08 GMT  
		Size: 22.6 MB (22612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a997dd23f420c2fadc31a135d7727e14af7b9f71df53f55876e71a2c39233e`  
		Last Modified: Fri, 10 Feb 2017 18:03:00 GMT  
		Size: 631.7 KB (631728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a54f1f188730dbb7211e8420bafba054489f4399ae2e12e6b538105be9385a`  
		Last Modified: Fri, 10 Feb 2017 18:03:00 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4`

```console
$ docker pull ruby@sha256:29c25abb1a99c749f3bafcb5a18789cbca5b13d2140830ad999155f55de5f835
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266772194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d410559b78aaf282617698db85ed6aebb193750cbc06178de46199347ba1fda`
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
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 02:10:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 10 Feb 2017 02:10:41 GMT
ENV RUBY_MAJOR=2.4
# Fri, 10 Feb 2017 02:10:41 GMT
ENV RUBY_VERSION=2.4.0
# Fri, 10 Feb 2017 02:10:42 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Fri, 10 Feb 2017 02:10:42 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 10 Feb 2017 02:13:23 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 10 Feb 2017 02:13:23 GMT
ENV BUNDLER_VERSION=1.14.3
# Fri, 10 Feb 2017 02:13:25 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 10 Feb 2017 02:13:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 10 Feb 2017 02:13:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 10 Feb 2017 02:13:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 02:13:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 10 Feb 2017 02:13:27 GMT
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
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05feece943abb0180905a4617fc84be90973964fb9df3016fc0d5ea0a199554e`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b798840fde2fd121850be3e773f69a27e1771628a23b6522a242744ff7cfbc57`  
		Last Modified: Fri, 10 Feb 2017 18:03:08 GMT  
		Size: 22.6 MB (22612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a997dd23f420c2fadc31a135d7727e14af7b9f71df53f55876e71a2c39233e`  
		Last Modified: Fri, 10 Feb 2017 18:03:00 GMT  
		Size: 631.7 KB (631728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a54f1f188730dbb7211e8420bafba054489f4399ae2e12e6b538105be9385a`  
		Last Modified: Fri, 10 Feb 2017 18:03:00 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2`

```console
$ docker pull ruby@sha256:29c25abb1a99c749f3bafcb5a18789cbca5b13d2140830ad999155f55de5f835
```

-	Platforms:
	-	linux; amd64

### `ruby:2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266772194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d410559b78aaf282617698db85ed6aebb193750cbc06178de46199347ba1fda`
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
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 02:10:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 10 Feb 2017 02:10:41 GMT
ENV RUBY_MAJOR=2.4
# Fri, 10 Feb 2017 02:10:41 GMT
ENV RUBY_VERSION=2.4.0
# Fri, 10 Feb 2017 02:10:42 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Fri, 10 Feb 2017 02:10:42 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 10 Feb 2017 02:13:23 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 10 Feb 2017 02:13:23 GMT
ENV BUNDLER_VERSION=1.14.3
# Fri, 10 Feb 2017 02:13:25 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 10 Feb 2017 02:13:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 10 Feb 2017 02:13:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 10 Feb 2017 02:13:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 02:13:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 10 Feb 2017 02:13:27 GMT
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
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05feece943abb0180905a4617fc84be90973964fb9df3016fc0d5ea0a199554e`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b798840fde2fd121850be3e773f69a27e1771628a23b6522a242744ff7cfbc57`  
		Last Modified: Fri, 10 Feb 2017 18:03:08 GMT  
		Size: 22.6 MB (22612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a997dd23f420c2fadc31a135d7727e14af7b9f71df53f55876e71a2c39233e`  
		Last Modified: Fri, 10 Feb 2017 18:03:00 GMT  
		Size: 631.7 KB (631728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a54f1f188730dbb7211e8420bafba054489f4399ae2e12e6b538105be9385a`  
		Last Modified: Fri, 10 Feb 2017 18:03:00 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:latest`

```console
$ docker pull ruby@sha256:29c25abb1a99c749f3bafcb5a18789cbca5b13d2140830ad999155f55de5f835
```

-	Platforms:
	-	linux; amd64

### `ruby:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266772194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d410559b78aaf282617698db85ed6aebb193750cbc06178de46199347ba1fda`
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
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 02:10:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 10 Feb 2017 02:10:41 GMT
ENV RUBY_MAJOR=2.4
# Fri, 10 Feb 2017 02:10:41 GMT
ENV RUBY_VERSION=2.4.0
# Fri, 10 Feb 2017 02:10:42 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Fri, 10 Feb 2017 02:10:42 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 10 Feb 2017 02:13:23 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 10 Feb 2017 02:13:23 GMT
ENV BUNDLER_VERSION=1.14.3
# Fri, 10 Feb 2017 02:13:25 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 10 Feb 2017 02:13:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 10 Feb 2017 02:13:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 10 Feb 2017 02:13:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 02:13:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 10 Feb 2017 02:13:27 GMT
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
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05feece943abb0180905a4617fc84be90973964fb9df3016fc0d5ea0a199554e`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b798840fde2fd121850be3e773f69a27e1771628a23b6522a242744ff7cfbc57`  
		Last Modified: Fri, 10 Feb 2017 18:03:08 GMT  
		Size: 22.6 MB (22612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a997dd23f420c2fadc31a135d7727e14af7b9f71df53f55876e71a2c39233e`  
		Last Modified: Fri, 10 Feb 2017 18:03:00 GMT  
		Size: 631.7 KB (631728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a54f1f188730dbb7211e8420bafba054489f4399ae2e12e6b538105be9385a`  
		Last Modified: Fri, 10 Feb 2017 18:03:00 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.0-slim`

```console
$ docker pull ruby@sha256:8e47a99d10acf457d7eea044290292fa9b2b21818ef308896ac846196b2abcc3
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.0-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84734507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b73f338ecdc4edd4556d4caadb7aed45257c0c97b9bbc73671fb58d100a5526`
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
# Wed, 25 Jan 2017 18:23:18 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 25 Jan 2017 18:26:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 25 Jan 2017 18:26:23 GMT
ENV BUNDLER_VERSION=1.14.3
# Wed, 25 Jan 2017 18:26:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 25 Jan 2017 18:26:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Jan 2017 18:26:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Jan 2017 18:26:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2017 18:26:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Jan 2017 18:26:26 GMT
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
	-	`sha256:59e2bb94bd358cd4471a23bb8adbc57e03f472b8af1e547a230700a7aa1574d3`  
		Last Modified: Wed, 25 Jan 2017 18:39:23 GMT  
		Size: 22.7 MB (22746954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585db7cea983d9e248f30d42cef95d4afafae4a15ace33503ac9a18d25979509`  
		Last Modified: Wed, 25 Jan 2017 18:39:10 GMT  
		Size: 631.7 KB (631737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151b43961f8b7712570dc4b5dc6791299ace4ba43188c58db834e73c703d79c6`  
		Last Modified: Wed, 25 Jan 2017 18:39:10 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-slim`

```console
$ docker pull ruby@sha256:8e47a99d10acf457d7eea044290292fa9b2b21818ef308896ac846196b2abcc3
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84734507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b73f338ecdc4edd4556d4caadb7aed45257c0c97b9bbc73671fb58d100a5526`
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
# Wed, 25 Jan 2017 18:23:18 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 25 Jan 2017 18:26:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 25 Jan 2017 18:26:23 GMT
ENV BUNDLER_VERSION=1.14.3
# Wed, 25 Jan 2017 18:26:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 25 Jan 2017 18:26:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Jan 2017 18:26:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Jan 2017 18:26:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2017 18:26:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Jan 2017 18:26:26 GMT
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
	-	`sha256:59e2bb94bd358cd4471a23bb8adbc57e03f472b8af1e547a230700a7aa1574d3`  
		Last Modified: Wed, 25 Jan 2017 18:39:23 GMT  
		Size: 22.7 MB (22746954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585db7cea983d9e248f30d42cef95d4afafae4a15ace33503ac9a18d25979509`  
		Last Modified: Wed, 25 Jan 2017 18:39:10 GMT  
		Size: 631.7 KB (631737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151b43961f8b7712570dc4b5dc6791299ace4ba43188c58db834e73c703d79c6`  
		Last Modified: Wed, 25 Jan 2017 18:39:10 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-slim`

```console
$ docker pull ruby@sha256:8e47a99d10acf457d7eea044290292fa9b2b21818ef308896ac846196b2abcc3
```

-	Platforms:
	-	linux; amd64

### `ruby:2-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84734507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b73f338ecdc4edd4556d4caadb7aed45257c0c97b9bbc73671fb58d100a5526`
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
# Wed, 25 Jan 2017 18:23:18 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 25 Jan 2017 18:26:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 25 Jan 2017 18:26:23 GMT
ENV BUNDLER_VERSION=1.14.3
# Wed, 25 Jan 2017 18:26:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 25 Jan 2017 18:26:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Jan 2017 18:26:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Jan 2017 18:26:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2017 18:26:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Jan 2017 18:26:26 GMT
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
	-	`sha256:59e2bb94bd358cd4471a23bb8adbc57e03f472b8af1e547a230700a7aa1574d3`  
		Last Modified: Wed, 25 Jan 2017 18:39:23 GMT  
		Size: 22.7 MB (22746954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585db7cea983d9e248f30d42cef95d4afafae4a15ace33503ac9a18d25979509`  
		Last Modified: Wed, 25 Jan 2017 18:39:10 GMT  
		Size: 631.7 KB (631737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151b43961f8b7712570dc4b5dc6791299ace4ba43188c58db834e73c703d79c6`  
		Last Modified: Wed, 25 Jan 2017 18:39:10 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:slim`

```console
$ docker pull ruby@sha256:8e47a99d10acf457d7eea044290292fa9b2b21818ef308896ac846196b2abcc3
```

-	Platforms:
	-	linux; amd64

### `ruby:slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84734507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b73f338ecdc4edd4556d4caadb7aed45257c0c97b9bbc73671fb58d100a5526`
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
# Wed, 25 Jan 2017 18:23:18 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 25 Jan 2017 18:26:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 25 Jan 2017 18:26:23 GMT
ENV BUNDLER_VERSION=1.14.3
# Wed, 25 Jan 2017 18:26:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 25 Jan 2017 18:26:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Jan 2017 18:26:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Jan 2017 18:26:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2017 18:26:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Jan 2017 18:26:26 GMT
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
	-	`sha256:59e2bb94bd358cd4471a23bb8adbc57e03f472b8af1e547a230700a7aa1574d3`  
		Last Modified: Wed, 25 Jan 2017 18:39:23 GMT  
		Size: 22.7 MB (22746954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585db7cea983d9e248f30d42cef95d4afafae4a15ace33503ac9a18d25979509`  
		Last Modified: Wed, 25 Jan 2017 18:39:10 GMT  
		Size: 631.7 KB (631737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151b43961f8b7712570dc4b5dc6791299ace4ba43188c58db834e73c703d79c6`  
		Last Modified: Wed, 25 Jan 2017 18:39:10 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.0-alpine`

```console
$ docker pull ruby@sha256:4a79c68f85528d1fabdf670e4d2555fe76fdc69cf08599188fc156f0015ae246
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.0-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27137807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48de60a8463d2888b8586fac963b4cf5c4e8f41fa3d4e219daa3141769ae6853`
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
# Wed, 25 Jan 2017 18:26:27 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 25 Jan 2017 18:28:59 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 25 Jan 2017 18:29:00 GMT
ENV BUNDLER_VERSION=1.14.3
# Wed, 25 Jan 2017 18:29:01 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 25 Jan 2017 18:29:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Jan 2017 18:29:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Jan 2017 18:29:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2017 18:29:03 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Jan 2017 18:29:03 GMT
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
	-	`sha256:28e7090e28c4b25521b2f6ed0c8e152a3ea02aba9cdca1719be82b61674d567d`  
		Last Modified: Wed, 25 Jan 2017 18:40:31 GMT  
		Size: 24.2 MB (24192647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33ad99ef8513e2ac80027dbb5efbb1841075b33368e0cffc3bb5989c312977c`  
		Last Modified: Wed, 25 Jan 2017 18:40:28 GMT  
		Size: 631.7 KB (631720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7047f69104d7e978cd133e34867ae209855d96701102b1bb1ebea29a43dc803e`  
		Last Modified: Wed, 25 Jan 2017 18:40:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-alpine`

```console
$ docker pull ruby@sha256:4a79c68f85528d1fabdf670e4d2555fe76fdc69cf08599188fc156f0015ae246
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27137807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48de60a8463d2888b8586fac963b4cf5c4e8f41fa3d4e219daa3141769ae6853`
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
# Wed, 25 Jan 2017 18:26:27 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 25 Jan 2017 18:28:59 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 25 Jan 2017 18:29:00 GMT
ENV BUNDLER_VERSION=1.14.3
# Wed, 25 Jan 2017 18:29:01 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 25 Jan 2017 18:29:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Jan 2017 18:29:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Jan 2017 18:29:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2017 18:29:03 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Jan 2017 18:29:03 GMT
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
	-	`sha256:28e7090e28c4b25521b2f6ed0c8e152a3ea02aba9cdca1719be82b61674d567d`  
		Last Modified: Wed, 25 Jan 2017 18:40:31 GMT  
		Size: 24.2 MB (24192647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33ad99ef8513e2ac80027dbb5efbb1841075b33368e0cffc3bb5989c312977c`  
		Last Modified: Wed, 25 Jan 2017 18:40:28 GMT  
		Size: 631.7 KB (631720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7047f69104d7e978cd133e34867ae209855d96701102b1bb1ebea29a43dc803e`  
		Last Modified: Wed, 25 Jan 2017 18:40:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-alpine`

```console
$ docker pull ruby@sha256:4a79c68f85528d1fabdf670e4d2555fe76fdc69cf08599188fc156f0015ae246
```

-	Platforms:
	-	linux; amd64

### `ruby:2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27137807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48de60a8463d2888b8586fac963b4cf5c4e8f41fa3d4e219daa3141769ae6853`
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
# Wed, 25 Jan 2017 18:26:27 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 25 Jan 2017 18:28:59 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 25 Jan 2017 18:29:00 GMT
ENV BUNDLER_VERSION=1.14.3
# Wed, 25 Jan 2017 18:29:01 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 25 Jan 2017 18:29:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Jan 2017 18:29:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Jan 2017 18:29:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2017 18:29:03 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Jan 2017 18:29:03 GMT
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
	-	`sha256:28e7090e28c4b25521b2f6ed0c8e152a3ea02aba9cdca1719be82b61674d567d`  
		Last Modified: Wed, 25 Jan 2017 18:40:31 GMT  
		Size: 24.2 MB (24192647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33ad99ef8513e2ac80027dbb5efbb1841075b33368e0cffc3bb5989c312977c`  
		Last Modified: Wed, 25 Jan 2017 18:40:28 GMT  
		Size: 631.7 KB (631720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7047f69104d7e978cd133e34867ae209855d96701102b1bb1ebea29a43dc803e`  
		Last Modified: Wed, 25 Jan 2017 18:40:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:alpine`

```console
$ docker pull ruby@sha256:4a79c68f85528d1fabdf670e4d2555fe76fdc69cf08599188fc156f0015ae246
```

-	Platforms:
	-	linux; amd64

### `ruby:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27137807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48de60a8463d2888b8586fac963b4cf5c4e8f41fa3d4e219daa3141769ae6853`
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
# Wed, 25 Jan 2017 18:26:27 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 25 Jan 2017 18:28:59 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ac_cv_func_isnan=yes ac_cv_func_isinf=yes 		./configure --disable-install-doc --enable-shared 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 25 Jan 2017 18:29:00 GMT
ENV BUNDLER_VERSION=1.14.3
# Wed, 25 Jan 2017 18:29:01 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 25 Jan 2017 18:29:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Jan 2017 18:29:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Jan 2017 18:29:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2017 18:29:03 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Jan 2017 18:29:03 GMT
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
	-	`sha256:28e7090e28c4b25521b2f6ed0c8e152a3ea02aba9cdca1719be82b61674d567d`  
		Last Modified: Wed, 25 Jan 2017 18:40:31 GMT  
		Size: 24.2 MB (24192647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33ad99ef8513e2ac80027dbb5efbb1841075b33368e0cffc3bb5989c312977c`  
		Last Modified: Wed, 25 Jan 2017 18:40:28 GMT  
		Size: 631.7 KB (631720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7047f69104d7e978cd133e34867ae209855d96701102b1bb1ebea29a43dc803e`  
		Last Modified: Wed, 25 Jan 2017 18:40:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.0-onbuild`

```console
$ docker pull ruby@sha256:f23fe3b6b9014751216ee2d0cf07154a5a594b18dc1ac60b6df20f17cf29e691
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.0-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266772506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a7090831e4a31fcae33b2a6cfcc2c896dbe527eb4782505e99cd84cb2d1482e`
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
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 02:10:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 10 Feb 2017 02:10:41 GMT
ENV RUBY_MAJOR=2.4
# Fri, 10 Feb 2017 02:10:41 GMT
ENV RUBY_VERSION=2.4.0
# Fri, 10 Feb 2017 02:10:42 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Fri, 10 Feb 2017 02:10:42 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 10 Feb 2017 02:13:23 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 10 Feb 2017 02:13:23 GMT
ENV BUNDLER_VERSION=1.14.3
# Fri, 10 Feb 2017 02:13:25 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 10 Feb 2017 02:13:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 10 Feb 2017 02:13:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 10 Feb 2017 02:13:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 02:13:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 10 Feb 2017 02:13:27 GMT
CMD ["irb"]
# Fri, 10 Feb 2017 02:13:28 GMT
RUN bundle config --global frozen 1
# Fri, 10 Feb 2017 02:13:29 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 02:13:30 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 02:13:30 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Fri, 10 Feb 2017 02:13:30 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Fri, 10 Feb 2017 02:13:30 GMT
ONBUILD RUN bundle install
# Fri, 10 Feb 2017 02:13:31 GMT
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
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05feece943abb0180905a4617fc84be90973964fb9df3016fc0d5ea0a199554e`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b798840fde2fd121850be3e773f69a27e1771628a23b6522a242744ff7cfbc57`  
		Last Modified: Fri, 10 Feb 2017 18:03:08 GMT  
		Size: 22.6 MB (22612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a997dd23f420c2fadc31a135d7727e14af7b9f71df53f55876e71a2c39233e`  
		Last Modified: Fri, 10 Feb 2017 18:03:00 GMT  
		Size: 631.7 KB (631728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a54f1f188730dbb7211e8420bafba054489f4399ae2e12e6b538105be9385a`  
		Last Modified: Fri, 10 Feb 2017 18:03:00 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0926fb55d164feecf57725bd6f5a6bc0db03268adab7379fca9791ef523f0dd`  
		Last Modified: Fri, 10 Feb 2017 18:04:21 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18137cf8de057e54a42be127d9d94a9e67801089d249b48f3403a2bbfc6cf45a`  
		Last Modified: Fri, 10 Feb 2017 18:04:21 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-onbuild`

```console
$ docker pull ruby@sha256:f23fe3b6b9014751216ee2d0cf07154a5a594b18dc1ac60b6df20f17cf29e691
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266772506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a7090831e4a31fcae33b2a6cfcc2c896dbe527eb4782505e99cd84cb2d1482e`
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
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 02:10:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 10 Feb 2017 02:10:41 GMT
ENV RUBY_MAJOR=2.4
# Fri, 10 Feb 2017 02:10:41 GMT
ENV RUBY_VERSION=2.4.0
# Fri, 10 Feb 2017 02:10:42 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Fri, 10 Feb 2017 02:10:42 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 10 Feb 2017 02:13:23 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 10 Feb 2017 02:13:23 GMT
ENV BUNDLER_VERSION=1.14.3
# Fri, 10 Feb 2017 02:13:25 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 10 Feb 2017 02:13:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 10 Feb 2017 02:13:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 10 Feb 2017 02:13:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 02:13:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 10 Feb 2017 02:13:27 GMT
CMD ["irb"]
# Fri, 10 Feb 2017 02:13:28 GMT
RUN bundle config --global frozen 1
# Fri, 10 Feb 2017 02:13:29 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 02:13:30 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 02:13:30 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Fri, 10 Feb 2017 02:13:30 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Fri, 10 Feb 2017 02:13:30 GMT
ONBUILD RUN bundle install
# Fri, 10 Feb 2017 02:13:31 GMT
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
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05feece943abb0180905a4617fc84be90973964fb9df3016fc0d5ea0a199554e`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b798840fde2fd121850be3e773f69a27e1771628a23b6522a242744ff7cfbc57`  
		Last Modified: Fri, 10 Feb 2017 18:03:08 GMT  
		Size: 22.6 MB (22612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a997dd23f420c2fadc31a135d7727e14af7b9f71df53f55876e71a2c39233e`  
		Last Modified: Fri, 10 Feb 2017 18:03:00 GMT  
		Size: 631.7 KB (631728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a54f1f188730dbb7211e8420bafba054489f4399ae2e12e6b538105be9385a`  
		Last Modified: Fri, 10 Feb 2017 18:03:00 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0926fb55d164feecf57725bd6f5a6bc0db03268adab7379fca9791ef523f0dd`  
		Last Modified: Fri, 10 Feb 2017 18:04:21 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18137cf8de057e54a42be127d9d94a9e67801089d249b48f3403a2bbfc6cf45a`  
		Last Modified: Fri, 10 Feb 2017 18:04:21 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-onbuild`

```console
$ docker pull ruby@sha256:f23fe3b6b9014751216ee2d0cf07154a5a594b18dc1ac60b6df20f17cf29e691
```

-	Platforms:
	-	linux; amd64

### `ruby:2-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266772506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a7090831e4a31fcae33b2a6cfcc2c896dbe527eb4782505e99cd84cb2d1482e`
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
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 02:10:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 10 Feb 2017 02:10:41 GMT
ENV RUBY_MAJOR=2.4
# Fri, 10 Feb 2017 02:10:41 GMT
ENV RUBY_VERSION=2.4.0
# Fri, 10 Feb 2017 02:10:42 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Fri, 10 Feb 2017 02:10:42 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 10 Feb 2017 02:13:23 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 10 Feb 2017 02:13:23 GMT
ENV BUNDLER_VERSION=1.14.3
# Fri, 10 Feb 2017 02:13:25 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 10 Feb 2017 02:13:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 10 Feb 2017 02:13:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 10 Feb 2017 02:13:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 02:13:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 10 Feb 2017 02:13:27 GMT
CMD ["irb"]
# Fri, 10 Feb 2017 02:13:28 GMT
RUN bundle config --global frozen 1
# Fri, 10 Feb 2017 02:13:29 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 02:13:30 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 02:13:30 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Fri, 10 Feb 2017 02:13:30 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Fri, 10 Feb 2017 02:13:30 GMT
ONBUILD RUN bundle install
# Fri, 10 Feb 2017 02:13:31 GMT
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
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05feece943abb0180905a4617fc84be90973964fb9df3016fc0d5ea0a199554e`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b798840fde2fd121850be3e773f69a27e1771628a23b6522a242744ff7cfbc57`  
		Last Modified: Fri, 10 Feb 2017 18:03:08 GMT  
		Size: 22.6 MB (22612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a997dd23f420c2fadc31a135d7727e14af7b9f71df53f55876e71a2c39233e`  
		Last Modified: Fri, 10 Feb 2017 18:03:00 GMT  
		Size: 631.7 KB (631728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a54f1f188730dbb7211e8420bafba054489f4399ae2e12e6b538105be9385a`  
		Last Modified: Fri, 10 Feb 2017 18:03:00 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0926fb55d164feecf57725bd6f5a6bc0db03268adab7379fca9791ef523f0dd`  
		Last Modified: Fri, 10 Feb 2017 18:04:21 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18137cf8de057e54a42be127d9d94a9e67801089d249b48f3403a2bbfc6cf45a`  
		Last Modified: Fri, 10 Feb 2017 18:04:21 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:onbuild`

```console
$ docker pull ruby@sha256:f23fe3b6b9014751216ee2d0cf07154a5a594b18dc1ac60b6df20f17cf29e691
```

-	Platforms:
	-	linux; amd64

### `ruby:onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266772506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a7090831e4a31fcae33b2a6cfcc2c896dbe527eb4782505e99cd84cb2d1482e`
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
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 02:10:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 10 Feb 2017 02:10:41 GMT
ENV RUBY_MAJOR=2.4
# Fri, 10 Feb 2017 02:10:41 GMT
ENV RUBY_VERSION=2.4.0
# Fri, 10 Feb 2017 02:10:42 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Fri, 10 Feb 2017 02:10:42 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Fri, 10 Feb 2017 02:13:23 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 10 Feb 2017 02:13:23 GMT
ENV BUNDLER_VERSION=1.14.3
# Fri, 10 Feb 2017 02:13:25 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 10 Feb 2017 02:13:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 10 Feb 2017 02:13:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 10 Feb 2017 02:13:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 02:13:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 10 Feb 2017 02:13:27 GMT
CMD ["irb"]
# Fri, 10 Feb 2017 02:13:28 GMT
RUN bundle config --global frozen 1
# Fri, 10 Feb 2017 02:13:29 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 02:13:30 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 02:13:30 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Fri, 10 Feb 2017 02:13:30 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Fri, 10 Feb 2017 02:13:30 GMT
ONBUILD RUN bundle install
# Fri, 10 Feb 2017 02:13:31 GMT
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
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05feece943abb0180905a4617fc84be90973964fb9df3016fc0d5ea0a199554e`  
		Last Modified: Fri, 10 Feb 2017 17:58:30 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b798840fde2fd121850be3e773f69a27e1771628a23b6522a242744ff7cfbc57`  
		Last Modified: Fri, 10 Feb 2017 18:03:08 GMT  
		Size: 22.6 MB (22612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a997dd23f420c2fadc31a135d7727e14af7b9f71df53f55876e71a2c39233e`  
		Last Modified: Fri, 10 Feb 2017 18:03:00 GMT  
		Size: 631.7 KB (631728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a54f1f188730dbb7211e8420bafba054489f4399ae2e12e6b538105be9385a`  
		Last Modified: Fri, 10 Feb 2017 18:03:00 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0926fb55d164feecf57725bd6f5a6bc0db03268adab7379fca9791ef523f0dd`  
		Last Modified: Fri, 10 Feb 2017 18:04:21 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18137cf8de057e54a42be127d9d94a9e67801089d249b48f3403a2bbfc6cf45a`  
		Last Modified: Fri, 10 Feb 2017 18:04:21 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
