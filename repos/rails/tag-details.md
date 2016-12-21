<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rails`

-	[`rails:5.0.0.1`](#rails5001)
-	[`rails:5.0.0`](#rails500)
-	[`rails:5.0`](#rails50)
-	[`rails:5`](#rails5)
-	[`rails:latest`](#railslatest)
-	[`rails:onbuild`](#railsonbuild)

## `rails:5.0.0.1`

```console
$ docker pull rails@sha256:5b285f921549727c509a1818682dc91c770856013d74a27f70074f894d1d0d92
```

-	Platforms:
	-	linux; amd64

### `rails:5.0.0.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.7 MB (317725551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2775275adbbb44ac82067686cb53bbada909693f0e49fce10f51eb0997d8e85`
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
# Mon, 21 Nov 2016 20:37:40 GMT
ENV RUBY_VERSION=2.3.3
# Mon, 21 Nov 2016 20:37:41 GMT
ENV RUBY_DOWNLOAD_SHA256=241408c8c555b258846368830a06146e4849a1d58dcaf6b14a3b6a73058115b7
# Mon, 21 Nov 2016 20:37:41 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 06 Dec 2016 23:32:00 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 06 Dec 2016 23:32:02 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 06 Dec 2016 23:32:03 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 06 Dec 2016 23:32:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 06 Dec 2016 23:32:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 06 Dec 2016 23:32:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Dec 2016 23:32:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 06 Dec 2016 23:32:06 GMT
CMD ["irb"]
# Wed, 07 Dec 2016 23:22:54 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:23:06 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:23:07 GMT
ENV RAILS_VERSION=5.0.0.1
# Wed, 07 Dec 2016 23:24:02 GMT
RUN gem install rails --version "$RAILS_VERSION"
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
	-	`sha256:ced7008d07bda42290ea1035c4198f9d7bf935a0ead6efa922dc0d79a2f166ec`  
		Last Modified: Tue, 06 Dec 2016 23:54:22 GMT  
		Size: 35.1 MB (35074887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc51033eba0081cdb1a329ded782e871d66ef0a6670b793b027e0035a902c30a`  
		Last Modified: Tue, 06 Dec 2016 23:54:09 GMT  
		Size: 612.6 KB (612605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119befbbc1af185fde8289322ac4032168c643b94fe9097a3193734bdc8fb8c8`  
		Last Modified: Tue, 06 Dec 2016 23:54:09 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ec8642e861eb7bc25be47fdb9772784f82594dba1e1436021439741b25f6d4`  
		Last Modified: Wed, 07 Dec 2016 23:24:48 GMT  
		Size: 2.9 MB (2879758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ec3023a7b1c05648bcde8ac74784990539e1cf9fb48b118375c386af361909`  
		Last Modified: Wed, 07 Dec 2016 23:24:51 GMT  
		Size: 13.7 MB (13730621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328e25427e95987db91989b823452fbb7dc56aac64505e313d2e9216e7bf344e`  
		Last Modified: Wed, 07 Dec 2016 23:24:53 GMT  
		Size: 23.2 MB (23234832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rails:5.0.0`

```console
$ docker pull rails@sha256:9aeaa278bed93b2d6fc681e44fcdd90b15ef1d05a481c20a245b2e20bc3b8180
```

-	Platforms:
	-	linux; amd64

### `rails:5.0.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.8 MB (317768184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5481a20f7c90b88876c6bbceba02487ccbc7ba8521163dfea57aab66c0ad6099`
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
# Mon, 19 Dec 2016 17:13:53 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 17:14:02 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 17:14:02 GMT
ENV RAILS_VERSION=5.0.0.1
# Mon, 19 Dec 2016 17:14:54 GMT
RUN gem install rails --version "$RAILS_VERSION"
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
	-	`sha256:ad60288390d1a867baa8666f34c9bb3e38fe468a205067452430247b7a4cc0f5`  
		Last Modified: Wed, 21 Dec 2016 20:56:42 GMT  
		Size: 2.9 MB (2879834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb0013b19626e194b6315ee809a2cdc7af579de8728bb974012f1c00932d4f5`  
		Last Modified: Wed, 21 Dec 2016 20:56:46 GMT  
		Size: 13.7 MB (13730714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f867c4204633f04503a67b90a34a141a688a4b330500d5f6a73a48938866e3`  
		Last Modified: Wed, 21 Dec 2016 20:56:48 GMT  
		Size: 23.2 MB (23236418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rails:5.0`

```console
$ docker pull rails@sha256:9aeaa278bed93b2d6fc681e44fcdd90b15ef1d05a481c20a245b2e20bc3b8180
```

-	Platforms:
	-	linux; amd64

### `rails:5.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.8 MB (317768184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5481a20f7c90b88876c6bbceba02487ccbc7ba8521163dfea57aab66c0ad6099`
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
# Mon, 19 Dec 2016 17:13:53 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 17:14:02 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 17:14:02 GMT
ENV RAILS_VERSION=5.0.0.1
# Mon, 19 Dec 2016 17:14:54 GMT
RUN gem install rails --version "$RAILS_VERSION"
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
	-	`sha256:ad60288390d1a867baa8666f34c9bb3e38fe468a205067452430247b7a4cc0f5`  
		Last Modified: Wed, 21 Dec 2016 20:56:42 GMT  
		Size: 2.9 MB (2879834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb0013b19626e194b6315ee809a2cdc7af579de8728bb974012f1c00932d4f5`  
		Last Modified: Wed, 21 Dec 2016 20:56:46 GMT  
		Size: 13.7 MB (13730714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f867c4204633f04503a67b90a34a141a688a4b330500d5f6a73a48938866e3`  
		Last Modified: Wed, 21 Dec 2016 20:56:48 GMT  
		Size: 23.2 MB (23236418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rails:5`

```console
$ docker pull rails@sha256:9aeaa278bed93b2d6fc681e44fcdd90b15ef1d05a481c20a245b2e20bc3b8180
```

-	Platforms:
	-	linux; amd64

### `rails:5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.8 MB (317768184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5481a20f7c90b88876c6bbceba02487ccbc7ba8521163dfea57aab66c0ad6099`
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
# Mon, 19 Dec 2016 17:13:53 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 17:14:02 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 17:14:02 GMT
ENV RAILS_VERSION=5.0.0.1
# Mon, 19 Dec 2016 17:14:54 GMT
RUN gem install rails --version "$RAILS_VERSION"
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
	-	`sha256:ad60288390d1a867baa8666f34c9bb3e38fe468a205067452430247b7a4cc0f5`  
		Last Modified: Wed, 21 Dec 2016 20:56:42 GMT  
		Size: 2.9 MB (2879834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb0013b19626e194b6315ee809a2cdc7af579de8728bb974012f1c00932d4f5`  
		Last Modified: Wed, 21 Dec 2016 20:56:46 GMT  
		Size: 13.7 MB (13730714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f867c4204633f04503a67b90a34a141a688a4b330500d5f6a73a48938866e3`  
		Last Modified: Wed, 21 Dec 2016 20:56:48 GMT  
		Size: 23.2 MB (23236418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rails:latest`

```console
$ docker pull rails@sha256:9aeaa278bed93b2d6fc681e44fcdd90b15ef1d05a481c20a245b2e20bc3b8180
```

-	Platforms:
	-	linux; amd64

### `rails:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.8 MB (317768184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5481a20f7c90b88876c6bbceba02487ccbc7ba8521163dfea57aab66c0ad6099`
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
# Mon, 19 Dec 2016 17:13:53 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 17:14:02 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 17:14:02 GMT
ENV RAILS_VERSION=5.0.0.1
# Mon, 19 Dec 2016 17:14:54 GMT
RUN gem install rails --version "$RAILS_VERSION"
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
	-	`sha256:ad60288390d1a867baa8666f34c9bb3e38fe468a205067452430247b7a4cc0f5`  
		Last Modified: Wed, 21 Dec 2016 20:56:42 GMT  
		Size: 2.9 MB (2879834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb0013b19626e194b6315ee809a2cdc7af579de8728bb974012f1c00932d4f5`  
		Last Modified: Wed, 21 Dec 2016 20:56:46 GMT  
		Size: 13.7 MB (13730714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f867c4204633f04503a67b90a34a141a688a4b330500d5f6a73a48938866e3`  
		Last Modified: Wed, 21 Dec 2016 20:56:48 GMT  
		Size: 23.2 MB (23236418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rails:onbuild`

```console
$ docker pull rails@sha256:0c294505e7bd5d4a63c20843a9a8dd98cb779c1a83810447da3c6c29c79d0b6b
```

-	Platforms:
	-	linux; amd64

### `rails:onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.5 MB (294532230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7a9a1ae4a29672b974c2c5901123fa7088e5070509f5c5dceded3627ad9f13b`
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
# Mon, 19 Dec 2016 17:15:01 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 17:15:08 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 17:15:08 GMT
EXPOSE 3000/tcp
# Mon, 19 Dec 2016 17:15:09 GMT
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
	-	`sha256:ef5f024e45d8bfddddc8c4896f6e8bb700d263d8fdec8d8740e4badc5b76a359`  
		Last Modified: Wed, 21 Dec 2016 20:58:16 GMT  
		Size: 2.9 MB (2879884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d08a64c23438f2cefde33fa7031e8df32ded0e1c4c084c9d4dcf0bd601dc78`  
		Last Modified: Wed, 21 Dec 2016 20:58:18 GMT  
		Size: 13.7 MB (13730815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
