## `rails:onbuild`

```console
$ docker pull rails@sha256:09cd6e2636e1f964a823665369f9afe1b6278fbab33787e1bb466fe8ec3e40f8
```

-	Platforms:
	-	linux; amd64

### `rails:onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.5 MB (294532188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fe770f770ac6bdf8a4a120c1b23574e02562d9da70582b481eed716ab915011`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Thu, 29 Dec 2016 19:24:38 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 29 Dec 2016 19:24:46 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 29 Dec 2016 19:24:47 GMT
EXPOSE 3000/tcp
# Thu, 29 Dec 2016 19:24:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:684b2332263e3735b60527df3ecb6f2a6b97e63db3f56f606f73c66b4e161fb1`  
		Last Modified: Thu, 29 Dec 2016 19:26:10 GMT  
		Size: 2.9 MB (2879830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd817f803871f0031e4a9c09c148c6075caf6cbf88583218831c14a801a950b`  
		Last Modified: Thu, 29 Dec 2016 19:26:14 GMT  
		Size: 13.7 MB (13730543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
