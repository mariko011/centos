## `ruby:2-onbuild`

```console
$ docker pull ruby@sha256:11c56ce45fdb200b9da96122a3a1614f42a27064df5a6f6d2b0c6cd65c963994
```

-	Platforms:
	-	linux; amd64

### `ruby:2-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277921531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc5be8a0a674e89c6992e437e173ff5075f8d7567e8c1930676d085f21a5f40`
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
# Fri, 16 Dec 2016 03:33:14 GMT
RUN bundle config --global frozen 1
# Fri, 16 Dec 2016 03:33:15 GMT
RUN mkdir -p /usr/src/app
# Fri, 16 Dec 2016 03:33:15 GMT
WORKDIR /usr/src/app
# Fri, 16 Dec 2016 03:33:16 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Fri, 16 Dec 2016 03:33:16 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Fri, 16 Dec 2016 03:33:16 GMT
ONBUILD RUN bundle install
# Fri, 16 Dec 2016 03:33:16 GMT
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
	-	`sha256:81cf204ae25eefef4b878db4e839a6fbe86b6195fc6823b23e9bdea3eac2e100`  
		Last Modified: Wed, 21 Dec 2016 20:04:32 GMT  
		Size: 612.6 KB (612600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c097f43e0fe9b8162ad07459fee5c1227ab2741cfe8445c3cce8f6c62a6a8b`  
		Last Modified: Wed, 21 Dec 2016 20:04:32 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60bd00e67faf3cc89508d98656545f17895c515d8ef0f10d885378cc9b2bcb5a`  
		Last Modified: Wed, 21 Dec 2016 20:05:54 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec21fb6a29d8545e02953a929361d4bb39738524bc5a8cd80a727174f092557f`  
		Last Modified: Wed, 21 Dec 2016 20:05:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
